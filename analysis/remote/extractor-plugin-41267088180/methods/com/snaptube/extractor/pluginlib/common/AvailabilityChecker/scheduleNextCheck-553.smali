.method private scheduleNextCheck()V
    .locals 5

    iget v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkDelayFactor:I

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0x200

    if-le v0, v1, :cond_0

    const/16 v0, 0x200

    :cond_0
    iput v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkDelayFactor:I

    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkStart:Ljava/lang/Runnable;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
