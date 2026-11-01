.method public declared-synchronized tryLoadNewestVersion(Lcom/snaptube/plugin/PluginInstallationStatus;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/snaptube/plugin/PluginId;->c(Lcom/snaptube/plugin/PluginInstallationStatus;)V

    iget p1, p0, Lcom/snaptube/plugin/PluginId;->mLoadCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/snaptube/plugin/PluginId;->mLoadCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
