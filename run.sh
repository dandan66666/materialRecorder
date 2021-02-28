mkdir log
mkdir instance
pip install virtualenv
virtualenv --no-site-packages venv
source venv/bin/activate
pip install -r requirements.txt
export FLASK_APP=app.py
export FLASK_ENV=production
flask init-db
nohup flask run -p <Port> --host 0.0.0.0 &
