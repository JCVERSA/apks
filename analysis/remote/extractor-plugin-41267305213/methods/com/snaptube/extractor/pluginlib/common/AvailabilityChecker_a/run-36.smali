.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$a;->a:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->access$000(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$a;->a:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->access$100(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$a;->a:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->access$200(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)V

    :cond_1
    :goto_0
    return-void
.end method
