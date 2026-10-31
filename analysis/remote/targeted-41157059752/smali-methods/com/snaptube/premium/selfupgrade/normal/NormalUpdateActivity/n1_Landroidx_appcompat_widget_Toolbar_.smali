.method public n1()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/normal/NormalUpdateActivity;->q:Lo/xh8;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lo/or3;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lo/xh8;->e:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method
