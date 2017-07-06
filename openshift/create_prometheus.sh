#!/bin/sh
# run from master to create prometheus
oc create namespace prometheus
oc project prometheus
oc process -f prometheus_template.yaml -p NAMESPACE="prometheus" -p SERVICE_SIGNER_CERT="$(cat /etc/origin/master/service-signer.crt)" | oc create -f -

