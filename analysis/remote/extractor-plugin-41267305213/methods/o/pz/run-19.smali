.method public run()V
    .locals 1

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->with(Landroid/content/Context;)Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->check()V

    return-void
.end method
