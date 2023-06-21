from configs.db_config import db
from models.email_model import Email


def create_email(email_str):
    # Check if email already exists
    existing_email = db.session.query(Email).filter_by(email=email_str).first()
    if existing_email:
        return existing_email

    email = Email(email=email_str)

    # Add email to database
    db.session.add(email)
    db.session.commit()
    return email


def get_emails():
    emails = db.session.query(Email).all()
    return [email.email for email in emails]


def delete_email(email_str):
    email = db.session.query(Email).filter_by(email=email_str).first()
    if email:
        db.session.delete(email)
        db.session.commit()
        return True
    return False
