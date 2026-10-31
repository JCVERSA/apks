.method public final b2(J)V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->C:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->C:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
