#!/bin/bash

logging=true
log_msg()
{
    local prefix=$1
    local msg=$2
    echo -e "[$prefix] $msg"
}

log_info()
{
    local prefix='\e[32mINFO\e[39m'
    local msg=$1
    log_msg "$prefix" "$msg"
}

log_error()
{
    local prefix='\e[31mINFO\e[39m'
    local msg=$1
    log_msg $prefix $msg
}

print_hello_msg()
{
    local msg="hello world"
    if [ $logging == 'true' ];
    then
          log_info "printing $msg"
    fi

    echo "$msg"
}

print_hello_msg
