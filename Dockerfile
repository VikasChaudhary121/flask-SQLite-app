FROM python:3.8-slim
WORKDIR /app
COPY requirement.txt /app
RUN pip3 install -r requirement.txt 
COPY . .
ENV Name=boks
EXPOSE 5000
CMD ["python","app.py"]
