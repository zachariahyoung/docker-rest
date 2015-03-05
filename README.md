# docker-rest

[![Build Status](https://travis-ci.org/lukecyca/travis-docker-example.png)](https://travis-ci.org/zachariahyoung/docker-rest)

  How to run the rest service.

    $ docker run -d -p 27017:27017 -p 28017:28017 --name mongodb dockerfile/mongodb mongod --rest --httpinterface
    $ docker run -p 8080:8080 -d  --link mongodb:mongodb  --name docker-rest zachariahyoung/docker-rest
   
