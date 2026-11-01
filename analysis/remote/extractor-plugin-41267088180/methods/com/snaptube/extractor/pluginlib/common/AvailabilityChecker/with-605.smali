.method public static with(Landroid/content/Context;)Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->instance:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    if-nez v0, :cond_1

    const-class v0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->instance:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    if-nez v1, :cond_0

    new-instance v1, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    invoke-direct {v1, p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->instance:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object v0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->instance:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    invoke-direct {v0, p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->updateContext(Landroid/content/Context;)V

    sget-object p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->instance:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    return-object p0
.end method
