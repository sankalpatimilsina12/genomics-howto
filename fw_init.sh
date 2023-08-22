#!/bin/bash

POD=$(microk8s kubectl get pod -l app=fw-fs -n physics-namespace -o jsonpath="{.items[0].metadata.name}")
microk8s kubectl exec $POD -c fw -n physics-namespace -- /bin/sh -c "`cat scripts/fw.sh.cp`"
