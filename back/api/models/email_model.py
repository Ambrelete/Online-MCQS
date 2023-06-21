from configs.db_config import db


class Email(db.Model):
    __tablename__ = "Emails"

    id_email = db.Column(db.Integer, primary_key=True, autoincrement=True)
    email = db.Column(db.String(100))

    # constructor
    def __init__(self, email):
        self.email = email
