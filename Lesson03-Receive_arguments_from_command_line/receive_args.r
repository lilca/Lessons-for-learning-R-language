# Receive arguments following "--args" when you set "trailingOnly=TRUE" in a argument of "commandArgs()"
# commandArgs()の引数にtrailingOnly=TRUEを設定すると、--argsにつづく引数を受け取る
arg1 <- commandArgs(trailingOnly=TRUE)[1]
print(arg1)

# Other than above case, receive command line
# 上記以外の場合、コマンドラインを受け取る
cmd1 <- commandArgs()[1]
cmd2 <- commandArgs()[2]
cmd3 <- commandArgs()[3]
cmd4 <- commandArgs()[4]
print(cmd1)
print(cmd2)
print(cmd3)
print(cmd4)

