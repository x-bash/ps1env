# shellcheck shell=sh

xrc param/v0

. ./v0

cmd(){
    param <<A
subcommand:
    sub1        "s"
    sub2        "s2"
    sub3        "s3"
A

    echo "subcomand: $PARAM_SUBCMD"
}

cmd_cli(){
    cli init "cmd1>"
    cli alias "+sub1" "cmd sub1"
    cli alias "+sub2" "cmd sub2"
    cli alias "+sub3" "cmd sub3"
}
