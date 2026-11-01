.method public check()V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->result:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkStart:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
