.method private calculateRemoteCheckDuration()J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->remoteCheckStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
