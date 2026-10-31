.method public final v2()V
    .locals 4

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->s:Landroid/os/Handler;

    new-instance v1, Lo/ua2;

    invoke-direct {v1, p0}, Lo/ua2;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
