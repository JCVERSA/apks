.method private doCheck()V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lo/ld2;->v(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->result:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->isSessionNeedRefresh()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkDone:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->remoteCheckStartTime:J

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkRemote:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
