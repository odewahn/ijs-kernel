# Create a new Dockerfile
FROM jupyter/notebook:latest

USER root

# assume ipython and ipython notebook taken care of by parent Dockerfile
RUN apt-get update -y
Run apt-get install -y nodejs-legacy npm libzmq3-dev
Run npm install -g ijavascript

EXPOSE 8888

CMD ijs --no-browser --port 8888 --ip=*


LABEL metadata.launchbot.io="eyJQcm9qZWN0VGFnIjoianMtbm9kZSIsIlByb2plY3ROYW1lIjoiamF2YXNjcmlwdC1ub2RlLWp1cHl0ZXIiLCJQcm9qZWN0RGVzY3JpcHRpb24iOiJLZXJuZWwgd2l0aCBqYXZhc2NyaXB0IGtlcm5lbCBmb3IganVweXRlciBub3RlYm9vayIsIlByb2plY3RIb21lcGFnZSI6IiIsIlBvcnRNYXBwaW5ncyI6W119"
