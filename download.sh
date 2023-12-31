#!/bin/bash

DESTINATION=$1

# clone Flectra directory
git clone --depth=1 https://github.com/6Ministers/bookstack-docker-compose-for-business-books $DESTINATION
rm -rf $DESTINATION/.git


