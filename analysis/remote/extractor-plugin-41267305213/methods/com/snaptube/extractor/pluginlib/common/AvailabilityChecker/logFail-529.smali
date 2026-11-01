.method private logFail(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->calculateRemoteCheckDuration()J

    move-result-wide v0

    invoke-static {p1, p2, p3, v0, v1}, Lo/qz;->a(ILjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
