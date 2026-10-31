.method public static s()I
    .locals 5

    sget v0, Lcom/snaptube/premium/configs/Config;->x:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    const-class v0, Lcom/snaptube/premium/configs/Config;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/snaptube/premium/configs/Config;->x:I

    if-ltz v1, :cond_1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "key_bucket_id"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    new-instance v2, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "key_bucket_id"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    sput v2, Lcom/snaptube/premium/configs/Config;->x:I

    monitor-exit v0

    return v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
