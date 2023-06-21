from flask import Blueprint, jsonify
from services.email_service import get_emails, create_email, delete_email

email = Blueprint("email", __name__)


# endpoint to get all emails
@email.route("/", methods=["GET"])
def get_email():
    print("GET /email")
    response = get_emails()
    return jsonify(response), 200
