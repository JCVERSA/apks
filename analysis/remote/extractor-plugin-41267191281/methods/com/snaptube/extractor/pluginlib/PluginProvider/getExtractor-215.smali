.method public getExtractor(Ljava/lang/String;)Lo/fc3;
    .locals 6

    sget-object v0, Lcom/snaptube/extractor/pluginlib/PluginProvider;->sExtractors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/fc3;

    if-nez v1, :cond_3

    monitor-enter p0

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/fc3;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/snaptube/extractor/pluginlib/PluginProvider;->isUnSupportedVersion(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "own"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/snaptube/extractor/pluginlib/sites/Youtube;

    invoke-direct {v2}, Lcom/snaptube/extractor/pluginlib/sites/Youtube;-><init>()V

    new-instance v3, Lo/b64;

    invoke-direct {v3}, Lo/b64;-><init>()V

    new-instance v4, Lo/hc1;

    invoke-direct {v4}, Lo/hc1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/snaptube/extractor/pluginlib/sites/Facebook;

    invoke-direct {v5}, Lcom/snaptube/extractor/pluginlib/sites/Facebook;-><init>()V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lo/v58;

    invoke-direct {v5}, Lo/v58;-><init>()V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lo/g73;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/snaptube/extractor/pluginlib/sites/ShazamVideoExtractor;

    invoke-direct {v3}, Lcom/snaptube/extractor/pluginlib/sites/ShazamVideoExtractor;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lo/ro7;

    invoke-direct {v3}, Lo/ro7;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/snaptube/extractor/pluginlib/sites/DeezerVideoExtractor;

    invoke-direct {v3}, Lcom/snaptube/extractor/pluginlib/sites/DeezerVideoExtractor;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/snaptube/extractor/pluginlib/sites/TidalVideoExtractor;

    invoke-direct {v3}, Lcom/snaptube/extractor/pluginlib/sites/TidalVideoExtractor;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v3, Lo/ma9;

    invoke-direct {v3}, Lo/ma9;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lo/hi7;

    invoke-direct {v3}, Lo/hi7;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lo/zm8;

    invoke-direct {v3}, Lo/zm8;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lo/id8;

    invoke-direct {v3, v2, v4}, Lo/id8;-><init>(Lcom/snaptube/extractor/pluginlib/sites/Youtube;Lo/hc1;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lo/mg5;

    invoke-direct {v3}, Lo/mg5;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lo/im3;

    invoke-direct {v3}, Lo/im3;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/snaptube/extractor/pluginlib/sites/GoogleSearchVideoExtractor;

    invoke-direct {v3, v2}, Lcom/snaptube/extractor/pluginlib/sites/GoogleSearchVideoExtractor;-><init>(Lo/eg7;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lo/e13;

    new-instance v3, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v3, v4}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;-><init>(Ljava/util/List;)V

    invoke-direct {v2, v3}, Lo/e13;-><init>(Lo/fc3;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lo/yj7;

    invoke-direct {v2}, Lo/yj7;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v2, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;

    invoke-direct {v2, v1}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;-><init>(Ljava/util/List;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    :cond_2
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_2
    return-object v1
.end method
