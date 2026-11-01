.method public declared-synchronized downloadConfig(Lnet/pubnative/mediation/config/model/PubnativeConfigRequestModel;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/pubnative/mediation/config/PubnativeConfigManager;->TAG:Ljava/lang/String;

    const-string v1, "downloadConfig"

    invoke-static {v0, v1}, Lcom/snaptube/util/ProductionEnv;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lnet/pubnative/mediation/config/model/PubnativeConfigRequestModel;->context:Landroid/content/Context;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lnet/pubnative/mediation/config/model/PubnativeConfigRequestModel;->getAppToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lnet/pubnative/mediation/config/PubnativeConfigManager;->downloadingConfig:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lnet/pubnative/mediation/config/model/PubnativeConfigRequestModel;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lnet/pubnative/mediation/config/PubnativeConfigManager;->getConfigDownloadBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v2, p1, Lnet/pubnative/mediation/config/model/PubnativeConfigRequestModel;->parameters:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Lnet/pubnative/mediation/config/model/PubnativeConfigRequestModel;->parameters:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    const-string v2, "manufacturer"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lnet/pubnative/mediation/config/PubnativeConfigManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloadConfigurl >> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/snaptube/util/ProductionEnv;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lnet/pubnative/mediation/config/PubnativeConfigManager;->shouldDownloadConfig()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object p1, p1, Lnet/pubnative/mediation/config/model/PubnativeConfigRequestModel;->listener:Lnet/pubnative/mediation/config/PubnativeConfigManager$Listener;

    invoke-virtual {p0, p1, v1}, Lnet/pubnative/mediation/config/PubnativeConfigManager;->invokeLoaded(Lnet/pubnative/mediation/config/PubnativeConfigManager$Listener;Lnet/pubnative/mediation/config/model/PubnativeConfigModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lnet/pubnative/mediation/config/PubnativeConfigManager;->pubnativeMediationDelegate:Lnet/pubnative/mediation/dragger/PubnativeMediationDelegate;

    if-nez v1, :cond_2

    iget-object v1, p1, Lnet/pubnative/mediation/config/model/PubnativeConfigRequestModel;->context:Landroid/content/Context;

    invoke-static {v1}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/pubnative/mediation/config/PubnativeConfigManager$Injector;

    invoke-interface {v1, p0}, Lnet/pubnative/mediation/config/PubnativeConfigManager$Injector;->injector(Lnet/pubnative/mediation/config/PubnativeConfigManager;)V

    :cond_2
    iget-object v1, p0, Lnet/pubnative/mediation/config/PubnativeConfigManager;->pubnativeMediationDelegate:Lnet/pubnative/mediation/dragger/PubnativeMediationDelegate;

    if-eqz v1, :cond_3

    new-instance v4, Lnet/pubnative/mediation/config/PubnativeConfigManager$b;

    invoke-direct {v4, p0, v2, v3, p1}, Lnet/pubnative/mediation/config/PubnativeConfigManager$b;-><init>(Lnet/pubnative/mediation/config/PubnativeConfigManager;JLnet/pubnative/mediation/config/model/PubnativeConfigRequestModel;)V

    invoke-interface {v1, v0, v4}, Lnet/pubnative/mediation/dragger/PubnativeMediationDelegate;->fetchMediationConfig(Ljava/lang/String;Lnet/pubnative/mediation/config/PubnativeConfigManager$ConfigFetchListener;)V

    goto :goto_1

    :cond_3
    new-instance v1, Lnet/pubnative/mediation/task/PubnativeHttpTask;

    iget-object v2, p1, Lnet/pubnative/mediation/config/model/PubnativeConfigRequestModel;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lnet/pubnative/mediation/task/PubnativeHttpTask;-><init>(Landroid/content/Context;)V

    new-instance v2, Lnet/pubnative/mediation/config/PubnativeConfigManager$c;

    invoke-direct {v2, p0, p1}, Lnet/pubnative/mediation/config/PubnativeConfigManager$c;-><init>(Lnet/pubnative/mediation/config/PubnativeConfigManager;Lnet/pubnative/mediation/config/model/PubnativeConfigRequestModel;)V

    invoke-virtual {v1, v2}, Lnet/pubnative/mediation/task/PubnativeHttpTask;->setListener(Lnet/pubnative/mediation/task/PubnativeHttpTask$Listener;)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_4
    iget-object p1, p1, Lnet/pubnative/mediation/config/model/PubnativeConfigRequestModel;->listener:Lnet/pubnative/mediation/config/PubnativeConfigManager$Listener;

    invoke-virtual {p0, p1, v1}, Lnet/pubnative/mediation/config/PubnativeConfigManager;->invokeLoaded(Lnet/pubnative/mediation/config/PubnativeConfigManager$Listener;Lnet/pubnative/mediation/config/model/PubnativeConfigModel;)V

    goto :goto_1

    :cond_5
    iget-object v0, p1, Lnet/pubnative/mediation/config/model/PubnativeConfigRequestModel;->context:Landroid/content/Context;

    iget-object p1, p1, Lnet/pubnative/mediation/config/model/PubnativeConfigRequestModel;->listener:Lnet/pubnative/mediation/config/PubnativeConfigManager$Listener;

    invoke-virtual {p0, v0, p1}, Lnet/pubnative/mediation/config/PubnativeConfigManager;->serveStoredConfig(Landroid/content/Context;Lnet/pubnative/mediation/config/PubnativeConfigManager$Listener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
