.method public p1()Lo/xy8;
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/normal/NormalUpdateActivity;->q:Lo/xh8;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lo/or3;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lo/xh8;->j:Lo/xy8;

    const-string v1, "upgradeProgressLayout"

    invoke-static {v0, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
