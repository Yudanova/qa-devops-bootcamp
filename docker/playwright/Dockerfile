FROM python:3.11-slim


WORKDIR /app


COPY requirements.txt .


RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    python -m playwright install && \
    apt-get update && apt-get install -y curl unzip && \
    curl -o allure.zip -L https://github.com/allure-framework/allure2/releases/latest/download/allure-2.27.0.zip && \
    unzip allure.zip -d /opt/ && \
    mv /opt/allure-2.27.0 /opt/allure && \
    ln -s /opt/allure/bin/allure /usr/bin/allure && \
    rm -rf /root/.cache/pip && \
    rm -rf allure.zip


COPY tests/ ./tests/
COPY conftest.py .
COPY allure.config .
COPY other-configs/ ./other-configs/


CMD ["pytest", "tests/", "--html=reports/report.html", "--self-contained-html", "--alluredir=reports/allure-results"]
