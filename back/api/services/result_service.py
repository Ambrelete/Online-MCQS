from configs.db_config import db
from models.result_model import Result


def create_result(id_response, id_question, value):
    print("id_question: ", id_question, "id_response: ", id_response, "value: ", value)
    value = Result(
        id_question=id_question,
        id_response=id_response,
        results=value,
    )

    # Add value to database
    db.session.add(value)
    db.session.commit()
    return value


def get_results_by_response_id(response_id):
    values = db.session.query(Result).filter_by(id_response=response_id).all()
    if not values:
        return None

    return values


def get_results_by_question_id(question_id):
    values = db.session.query(Result).filter_by(id_question=question_id).all()
    if not values:
        return None

    return values


def get_result(response_id, question_id):
    value = (
        db.session.query(Result)
        .filter_by(id_response=response_id, id_question=question_id)
        .first()
    )
    if not value:
        return None

    return value
