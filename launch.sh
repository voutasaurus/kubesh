#!/bin/bash

# Launch a shell in k8s
# usage:
# $ kubesh
# [root@session-username /]# ls
# anaconda-post.log  bin  dev  etc  home  lib  lib64  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var
function kubesh {
    kubectl get pod session-$USER &> /dev/null;
    if [ $? != 0 ]; then
        kubectl run session-$USER --restart=Never --image=voutasaurus/kubesh:latest -- sh -c 'tail -f /dev/null';
        sleep 5;
    fi
    kubectl exec -it session-$USER bash;
}

kubesh
