@echo off
python setup.py sdist
twine upload dist/*
@REM pip install activity_calendar_widget
