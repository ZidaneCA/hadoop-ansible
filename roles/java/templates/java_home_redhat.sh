#!/bin/bash
jdk_version=$(ls -al {{jvm_home}}|grep "^d"|grep "java"|awk '{print$NF}')
export JAVA_HOME={{ jvm_home }}/$jdk_version
if ! grep -q "export JAVA_HOME" /etc/bashrc; 
 then echo "export JAVA_HOME={{ jvm_home }}/$jdk_version" >> /etc/bashrc; 
fi