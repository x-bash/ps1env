xrc param/v0

. ./v0

cmd2(){
    param <<A
subcommand:
    csub1        "s"
    csub2        "s2"
    csub3        "s3"
A

    echo "subcomand: cmd2 $PARAM_SUBCMD"
}

cmd2_cli(){
    cli_init "cmd2>"
    cli_bind "+csub1" "cmd2 csub1"
    cli_bind "+csub2" "cmd2 csub2"
    cli_bind "+csub3" "cmd2 csub3"
}
