.method public final y2(Landroid/os/Bundle;)V
    .locals 3

    sget-object v0, Lcom/snaptube/premium/activity/ExploreActivity;->F:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current region: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lo/g86;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->t2()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->q1(Landroid/content/Intent;Z)Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->U1(Landroid/os/Bundle;)Z

    sget-object p1, Lcom/phoenix/slog/SnapTubeLoggerManager;->Instance:Lcom/phoenix/slog/SnapTubeLoggerManager;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/phoenix/slog/SnapTubeLoggerManager;->checkLogcat(J)V

    iget-object p1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->C:Landroid/os/Handler;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/snaptube/premium/activity/ExploreActivity;->l2(J)V

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->C()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/snaptube/premium/activity/ExploreActivity;->b2(J)V

    :cond_1
    return-void
.end method
