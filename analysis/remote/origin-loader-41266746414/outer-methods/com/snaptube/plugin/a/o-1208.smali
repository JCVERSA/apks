.method public final o(Landroid/content/Context;[Lcom/snaptube/plugin/PluginId;Ljava/lang/String;)Z
    .locals 8

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->C2()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lo/q55;->G(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDownloadPluginInMobileNetworkEnabled()Z

    move-result v3

    array-length v4, p2

    :goto_0
    if-ge v1, v4, :cond_8

    aget-object v5, p2, v1

    invoke-virtual {p0, v5}, Lcom/snaptube/plugin/a;->v(Lcom/snaptube/plugin/PluginId;)Lcom/dayuwuxian/em/api/proto/PluginInfo;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_4

    sget-object v7, Lcom/snaptube/plugin/PluginId;->FFMPEG:Lcom/snaptube/plugin/PluginId;

    if-ne v5, v7, :cond_2

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->R3()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0, p1}, Lcom/snaptube/plugin/a;->P(Landroid/content/Context;)Z

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v6, v6, Lcom/dayuwuxian/em/api/proto/PluginInfo;->size:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/snaptube/plugin/a;->B(J)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v5}, Lcom/snaptube/plugin/a;->z(Lcom/snaptube/plugin/PluginId;)Lcom/snaptube/plugin/PluginStatus;

    move-result-object v6

    invoke-virtual {v5}, Lcom/snaptube/plugin/PluginId;->shouldDownload()Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    sget-object v7, Lcom/snaptube/plugin/PluginStatus;->NOT_INSTALLED:Lcom/snaptube/plugin/PluginStatus;

    if-eq v6, v7, :cond_6

    sget-object v7, Lcom/snaptube/plugin/PluginStatus;->NEED_UPGRADE:Lcom/snaptube/plugin/PluginStatus;

    if-ne v6, v7, :cond_7

    :cond_6
    invoke-virtual {p0, v5, p3}, Lcom/snaptube/plugin/a;->Q(Lcom/snaptube/plugin/PluginId;Ljava/lang/String;)Z

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    return v2
.end method
