FROM python:3.9

COPY requirements.txt .

RUN pip install --upgrade -r requirements.txt

COPY app app/

RUN wget https://www.dropbox.com/s/nmdnatxpylrx03u/skin_finetune.pkl?dl=1 -O app/export.pkl

RUN ls app/

# RUN python app/server.py

EXPOSE 80

CMD ["python", "app/server.py", "serve"]
