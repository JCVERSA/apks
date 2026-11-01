.method public static final declared-synchronized c()V
    .locals 8

    const-class v0, Lcom/snaptube/player_guide/view/PreDownloadHelper;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/q55;->G(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PreDownloadHelper"

    const-string v2, "\u975e Wifi \u4e0b\u4e0d\u8fdb\u884c\u9759\u9ed8\u4e0b\u8f7d"

    invoke-static {v1, v2}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v1, Lo/g9;->a:Lo/g9$a;

    invoke-virtual {v1}, Lo/g9$a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "PreDownloadHelper"

    const-string v2, "\u4e0d\u662f\u65b0\u624b\u671f\u4e0d\u8fdb\u884c\u9759\u9ed8\u4e0b\u8f7d"

    invoke-static {v1, v2}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :cond_1
    :try_start_2
    invoke-static {}, Lo/dp1;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-static {v1}, Lo/x61;->a(Lkotlin/coroutines/CoroutineContext;)Lo/w61;

    move-result-object v2

    new-instance v5, Lcom/snaptube/player_guide/view/PreDownloadHelper$preDownloadApk$1;

    const/4 v1, 0x0

    invoke-direct {v5, v1}, Lcom/snaptube/player_guide/view/PreDownloadHelper$preDownloadApk$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lo/wd0;->d(Lo/w61;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lo/rx2;ILjava/lang/Object;)Lo/tt3;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
