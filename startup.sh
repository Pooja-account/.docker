#!/usr/bin/env bash

#Development
export \
    APP_SETTINGS="app.config.DevlopmentConfig"
export MONGO_URI='app.config.StagingConfig'

flask run --host=0.0.0.0
