FROM windj007/jupyter-keras-tools:8.0
MAINTAINER Roman <windj007@gmail.com>

RUN apt-get update && apt-get install -yqq unzip openjdk-8-jre
RUN cd /root && \
    wget http://www.maltparser.org/mco/english_parser/engmalt.linear-1.7.mco && \
    wget http://maltparser.org/dist/maltparser-1.8.1.zip && \
    unzip maltparser-1.8.1.zip
RUN python -c "import nltk; nltk.download('averaged_perceptron_tagger'); nltk.download('wordnet')"
RUN pip install git+https://github.com/biplab-iitb/practNLPTools
