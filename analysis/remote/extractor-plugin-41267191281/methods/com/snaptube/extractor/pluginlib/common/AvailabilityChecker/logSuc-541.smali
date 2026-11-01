.method private logSuc(IJ)V
    .locals 2

    invoke-direct {p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->calculateRemoteCheckDuration()J

    move-result-wide v0

    invoke-static {p1, p2, p3, v0, v1}, Lo/qz;->b(IJJ)V

    return-void
.end method
