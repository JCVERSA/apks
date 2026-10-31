.method public static M2()J
    .locals 5

    const-class v0, Lcom/snaptube/premium/configs/Config;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->R()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "finished_task_count"

    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v3}, Lcom/snaptube/premium/configs/Config;->Q6(Landroid/content/SharedPreferences$Editor;)V

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
