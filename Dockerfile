FROM python:2-onbuild 
EXPOSE 80

# Hackity hack to remove the problem module from getting loaded. Consider
# changing PYTHONPATH to remove python files in the /usr/local/bin directory
RUN rm -f /usr/local/bin/arya.py && rm -f /usr/local/bin/arya.pyc

CMD [ "gunicorn", "webarya.webarya:app", "-b", "0.0.0.0:80" ]
