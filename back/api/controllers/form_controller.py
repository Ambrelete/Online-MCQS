from flask import Blueprint, request, jsonify, render_template, redirect, url_for
from services.form_service import get_forms, get_csv
import csv

form = Blueprint("form", __name__)


@form.route("/", methods=["GET"])
def get_forms():
    print("get_forms() called")
    forms = get_forms()
    return 'coucou', 200

@form.route("/csv", methods=["GET"])
def get_csv_data():
    print("get_csv_data() called")
    data = get_csv()
    return data, 200

