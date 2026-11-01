.method public isAvailable(Z)Z
    .locals 1

    invoke-direct {p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->getResultFormPlugin()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->result:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    return p1

    :cond_1
    iget-object p1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->result:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
