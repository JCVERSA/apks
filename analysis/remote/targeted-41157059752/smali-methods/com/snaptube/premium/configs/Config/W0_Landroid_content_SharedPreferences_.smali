.method public static declared-synchronized W0()Landroid/content/SharedPreferences;
    .locals 2

    const-class v0, Lcom/snaptube/premium/configs/Config;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/snaptube/premium/configs/Config;->c:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    sget-object v1, Lo/bm5;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/snaptube/premium/configs/Config;->N1(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/snaptube/premium/configs/Config;->c:Landroid/content/SharedPreferences;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/snaptube/premium/configs/Config;->c:Landroid/content/SharedPreferences;
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
