.method public static declared-synchronized s0()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/snaptube/premium/configs/Config;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/snaptube/premium/configs/Config;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/cm;->M(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "tube_apk_share"

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/snaptube/premium/configs/Config;->O4(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    sput-object v1, Lcom/snaptube/premium/configs/Config;->e:Ljava/lang/String;

    :cond_1
    sget-object v1, Lcom/snaptube/premium/configs/Config;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
