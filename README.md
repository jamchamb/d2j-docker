# d2j-docker

Simple dex2jar Docker.

## Usage

Build:

    $ docker build -t jamchamb/d2j-docker .

Run:

    $ docker run --rm -v $PWD:/work -it jamchamb/d2j-docker base.apk
    dex2jar base.apk -> ./base-dex2jar.jar
    WARN: ignored invalid inner class name , treat as anonymous inner class.
    WARN: ignored invalid inner class name , treat as anonymous inner class.
