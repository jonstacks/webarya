FROM python:2-onbuild 
EXPOSE 80

RUN rm f /usr/local/bin/arya.py && rm -f /usr/local/bin/arya.pyc
CMD [ "gunicorn", "webarya.webarya:app" ]
