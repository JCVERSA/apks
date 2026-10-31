.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->onWindowFocusChanged(Z)V

    sget-object v0, Lcom/snaptube/premium/activity/ExploreActivity;->F:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object p1, Lcom/snaptube/premium/app/PhoenixApplication;->E:Lcom/snaptube/premium/log/LaunchLogger;

    const-string v0, "main_content_visible"

    invoke-virtual {p1, v0}, Lcom/snaptube/premium/log/LaunchLogger;->I(Ljava/lang/String;)Z

    invoke-virtual {p1, v0}, Lcom/snaptube/premium/log/LaunchLogger;->j(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/snaptube/premium/log/LaunchLogger;->A(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/snaptube/premium/activity/ExploreActivity;->s:Landroid/os/Handler;

    new-instance v0, Lo/qa2;

    invoke-direct {v0}, Lo/qa2;-><init>()V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->a2()V

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/premium/app/PhoenixApplication;->t()V

    :cond_0
    return-void
.end method
