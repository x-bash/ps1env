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
    cli_init "cmd1>"
    cli_bind "+sub1" "cmd sub1"
    cli_bind "+sub2" "cmd sub2"
    cli_bind "+sub3" "cmd sub3"
    cli_bind "+q" "cli_reset"
}
