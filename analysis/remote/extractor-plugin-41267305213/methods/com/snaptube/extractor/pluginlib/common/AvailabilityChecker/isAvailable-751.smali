.method public isAvailable()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    invoke-static {v0}, Lo/ja9;->c(Landroid/content/Context;)Z

    move-result v0

    xor-int/2addr v1, v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->isAvailable(Z)Z

    move-result v0

    return v0
.end method
