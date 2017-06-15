#!/bin/sh
# run from master to create prometheus
oc process -f prometheus_template.yaml -p SERVICE_SIGNER_CERT="$(cat /etc/origin/master/service-signer.crt)" -p PROMETHEUS_HOSTNAME="prometheus.${HOSTNAME}" | oc create -f -

