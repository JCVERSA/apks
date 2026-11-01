.method public load(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    sget-object v0, Lcom/snaptube/plugin/PluginId;->SITE_EXTRACTOR:Lcom/snaptube/plugin/PluginId;

    invoke-virtual {v0}, Lcom/snaptube/plugin/PluginId;->isSupported()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPluginSupported = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", currentVersion = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/snaptube/plugin/PluginId;->getCurrentVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "site_extractor"

    invoke-static {v2, v1}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snaptube/plugin/PluginId;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lo/c16;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->setReadOnly()Z

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/nd2;->a(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->setAppContextToPlugin(Ljava/lang/ClassLoader;Landroid/content/Context;)V

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->with(Landroid/content/Context;)Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->loadPluginImpl(Ljava/lang/ClassLoader;)V

    invoke-static {p1}, Lo/kz5;->a(Ljava/lang/ClassLoader;)V

    invoke-static {}, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;->getInstance()Lo/tg3;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/tg3;->loadPlugin(Ljava/lang/ClassLoader;)V

    invoke-static {}, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->getInstance()Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider;->loadPlugin(Ljava/lang/ClassLoader;)V

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/dv8;->D(Ljava/lang/ClassLoader;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
