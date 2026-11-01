.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$c;->a:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->access$000(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$c;->a:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->access$100(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$c;->a:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->access$900(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$c;->a:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->access$1000(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    return-void
.end method
