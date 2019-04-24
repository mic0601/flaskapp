from flask import Flask


def create_app():
    app = Flask(__name__)
    app.secret_key = 'XxxxxxX'
    registry_blueprint(app)
    return app


def registry_blueprint(app):
    from app.web import web
    app.register_blueprint(web)
