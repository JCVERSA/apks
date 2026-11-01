.method public static asyncLoadAll()V
    .locals 5

    invoke-static {}, Lcom/snaptube/plugin/PluginId;->values()[Lcom/snaptube/plugin/PluginId;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/snaptube/plugin/PluginId;->tryLoadNewestVersion(Lcom/snaptube/plugin/PluginInstallationStatus;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
