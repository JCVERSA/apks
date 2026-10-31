.method private j1(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/snaptube/ads/activity/SplashAdActivity;->V0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ILoggerManager"

    invoke-static {v0}, Lo/zh4;->b(Ljava/lang/String;)Lo/vd3;

    move-result-object v0

    check-cast v0, Lo/qd3;

    invoke-interface {v0, p1}, Lo/qd3;->j(Ljava/lang/String;)V

    return-void
.end method
