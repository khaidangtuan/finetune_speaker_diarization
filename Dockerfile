FROM python:3.10
COPY ./pip.ini /root/.config/pip/pip.conf
COPY requirements.txt ./requirements.txt

RUN pip --trusted-host download.pytorch.org install -U torch==2.3.0 -U torchvision==0.18.0 -U torchaudio==2.3.0 -U torchtext==0.18.0 --index-url https://download.pytorch.org/whl/cpu
RUN pip install -r ./requirements.txt

RUN apt-get update && apt-get install -y curl

ENTRYPOINT ["sleep", "infinity"]