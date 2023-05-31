from configs.db_config import db
from models.own_model import Own

def create_own(questionnaire_id, question_id):
    own = Own(questionnaire_id, question_id)

    # Add association to database
    db.session.add(own)
    db.session.commit()

    return own