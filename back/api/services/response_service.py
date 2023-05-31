from configs.db_config import db
from models.response_model import Response
from datetime import datetime


def create_response(tally_id_responses, questionnaire_id, user_id, submission_date):
    
    formatted_submission_date = datetime.strptime(submission_date, '%Y-%m-%dT%H:%M:%S.%fZ')
    response = Response(
        tally_id=tally_id_responses,
        questionnaire_id=questionnaire_id,
        user_id=user_id,
        submission_date=formatted_submission_date,
    )

    # Add response to database
    db.session.add(response)
    db.session.commit()
    return response


def get_response(tally_id):
    response = db.session.query(Response).filter_by(tally_id_responses=tally_id).first()
    if not response:
        return None

    return response


def get_responses():
    responses = db.session.query(Response).all()
    if not responses:
        return None

    return responses

