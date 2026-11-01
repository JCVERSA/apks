.method public onStoragePermissionGranted()V
    .locals 5

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    invoke-static {v0}, Lo/ld2;->r(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v2, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lo/ld2;->C(Landroid/content/Context;J)V

    :cond_0
    return-void
.end method
