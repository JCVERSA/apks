.method public static d1(Ljava/lang/String;)V
    .locals 2

    const-string v0, "IAdsManager"

    invoke-static {v0}, Lo/zh4;->b(Ljava/lang/String;)Lo/vd3;

    move-result-object v0

    check-cast v0, Lo/ba3;

    invoke-interface {v0}, Lo/ba3;->h()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lo/ba3;->k([Ljava/lang/String;)V

    return-void
.end method
