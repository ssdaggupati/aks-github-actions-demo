from flask import Flask, render_template, request, send_file, session, redirect, url_for
from openai import OpenAI
from werkzeug.utils import secure_filename
from docx import Document
from dotenv import load_dotenv
import os
import requests

# Load environment variables
load_dotenv()

api_key = os.getenv("OPENAI_API_KEY")
project_id = os.getenv("OPENAI_PROJECT_ID")

# New OpenAI client using the updated SDK
client = OpenAI(api_key=api_key, project=project_id)

# Flask App
app = Flask(__name__)
app.secret_key = '1234@abcd'

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/essay', methods=['GET', 'POST'])
def essay():
    if request.method == 'POST':
        topic = request.form.get('topic')
        length = request.form.get('length')
        tone = request.form.get('tone')

        response = client.chat.completions.create(
            model="gpt-3.5-turbo",
            messages=[{
                "role": "user",
                "content": f"Write a {length}, {tone} essay on {topic}."
            }]
        )
        essay_text = response.choices[0].message.content

        doc = Document()
        doc.add_paragraph(essay_text)
        file_path = os.path.join(app.root_path, 'static', 'generated_essay.docx')
        doc.save(file_path)

        return render_template('essay.html', essay=essay_text, download_link='/static/generated_essay.docx')

    return render_template('essay.html')

@app.route('/image', methods=['GET', 'POST'])
def image():
    if request.method == 'POST':
        description = request.form.get('description')
        response = client.images.generate(
            model="dall-e-2",
            prompt=description,
            size="1024x1024"
        )
        image_url = response.data[0].url

        image_file_path = os.path.join(app.root_path, 'static', 'generated_image.png')
        with requests.get(image_url, stream=True) as r:
            if r.status_code == 200:
                with open(image_file_path, 'wb') as f:
                    for chunk in r.iter_content(1024):
                        f.write(chunk)
            else:
                return f"Error downloading image: {r.status_code}", 500

        return render_template('image.html', image_url='/static/generated_image.png')

    return render_template('image.html')

@app.route('/chatbot', methods=['GET', 'POST'])
def chatbot():
    if 'chat_history' not in session:
        session['chat_history'] = []

    if request.method == 'POST':
        user_message = request.form.get('message')
        if user_message:
            try:
                response = client.chat.completions.create(
                    model="gpt-3.5-turbo",
                    messages=[{"role": "user", "content": user_message}]
                )
                bot_response = response.choices[0].message.content
                session['chat_history'].append({"user": user_message, "bot": bot_response})
                session.modified = True
            except Exception as e:
                return render_template('chatbot.html', error_message=str(e), chat_history=session['chat_history'])

    return render_template('chatbot.html', chat_history=session['chat_history'])

@app.route('/clear_chat', methods=['POST'])
def clear_chat():
    session.pop('chat_history', None)
    session.modified = True
    return redirect(url_for('chatbot'))

@app.route('/audio', methods=['GET', 'POST'])
def audio():
    if request.method == 'POST':
        audio_file = request.files['audio']
        file_path = secure_filename(audio_file.filename)
        audio_file.save(file_path)

        with open(file_path, "rb") as f:
            response = client.audio.transcriptions.create(
                model="whisper-1",
                file=f
            )
        transcription = response.text

        transcript_path = os.path.join(app.root_path, 'static', 'transcription.txt')
        with open(transcript_path, 'w') as f:
            f.write(transcription)

        os.remove(file_path)
        return render_template('audio.html', transcription=transcription, transcript_link='/static/transcription.txt')

    return render_template('audio.html')

@app.route('/summary', methods=['GET', 'POST'])
def summary():
    if request.method == 'POST':
        text = request.form.get('text')
        response = client.chat.completions.create(
            model="gpt-3.5-turbo",
            messages=[{"role": "user", "content": f"Summarize the following text: {text}"}]
        )
        summary_text = response.choices[0].message.content
        return render_template('summary.html', summary=summary_text)

    return render_template('summary.html')

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000, debug=True)
