.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcom/snaptube/ads/keeper/DaemonApplication;->mHasAttachBaseContext:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snaptube/ads/keeper/DaemonApplication;->mHasAttachBaseContext:Z

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/snaptube/ads/keeper/DaemonApplication;->mDaemonClient:Lo/kb3;

    invoke-interface {v0, p1}, Lo/kb3;->onAttachBaseContext(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/snaptube/ads/keeper/DaemonApplication;->attachBaseContextByDaemon(Landroid/content/Context;)V

    return-void
.end method
