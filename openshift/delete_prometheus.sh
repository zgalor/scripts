#!/bin/sh
oc process -f prometheus_template.yaml | oc delete -f -

