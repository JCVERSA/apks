.method public onStart()V
    .locals 2

    sget-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->E:Lcom/snaptube/premium/log/LaunchLogger;

    const-string v1, "activity_onStart"

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/LaunchLogger;->I(Ljava/lang/String;)Z

    invoke-static {}, Lo/l82;->a()V

    invoke-super {p0}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->onStart()V

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/LaunchLogger;->j(Ljava/lang/String;)V

    return-void
.end method
