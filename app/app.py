from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
	return render_template('index.html')

@app.route('/about-the-author')
def about_the_author():
	return render_template('about-the-author.html')

@app.errorhandler(404)
def page_not_found(_error):
	return render_template('errors/404.html'), 404

if __name__ == '__main__':
	app.run(host='0.0.0.0', port=8000)
