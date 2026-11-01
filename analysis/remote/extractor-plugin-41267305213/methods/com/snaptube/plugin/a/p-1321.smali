.method public final p(Landroid/content/Context;Lcom/snaptube/plugin/PluginId;Ljava/lang/String;Z)Z
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->C2()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lo/q55;->G(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDownloadPluginInMobileNetworkEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/snaptube/plugin/a;->z(Lcom/snaptube/plugin/PluginId;)Lcom/snaptube/plugin/PluginStatus;

    move-result-object p1

    invoke-virtual {p2}, Lcom/snaptube/plugin/PluginId;->shouldDownload()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-boolean v1, p0, Lcom/snaptube/plugin/a;->j:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/snaptube/plugin/PluginStatus;->NEED_UPGRADE:Lcom/snaptube/plugin/PluginStatus;

    if-ne p1, v1, :cond_4

    :cond_3
    invoke-virtual {p0, p2, p3}, Lcom/snaptube/plugin/a;->Q(Lcom/snaptube/plugin/PluginId;Ljava/lang/String;)Z

    if-eqz p4, :cond_4

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object p1

    const/16 p3, 0x454

    invoke-virtual {p1, p3, p2}, Lcom/wandoujia/base/utils/RxBus;->g(ILjava/lang/Object;)V

    :cond_4
    return v0
.end method
