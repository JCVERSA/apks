.method private updateContext(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    :cond_1
    :goto_0
    return-void
.end method
