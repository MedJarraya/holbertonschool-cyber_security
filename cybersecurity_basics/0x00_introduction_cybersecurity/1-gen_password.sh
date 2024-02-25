#!/bin/bash
openssl rand -base64 $1 | tr -dc '[:alnum:]'
