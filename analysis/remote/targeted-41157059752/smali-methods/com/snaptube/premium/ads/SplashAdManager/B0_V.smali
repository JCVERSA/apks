.method public B0()V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, -0x1

    const-string v4, "key.splash_ad_used_days"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-wide/16 v5, -0x1

    const-string v7, "key.splash_ad_last_use_time_millis"

    invoke-interface {v2, v7, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    if-gez v3, :cond_0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getFirstLaunchAppDay()J

    move-result-wide v5

    long-to-int v6, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    sub-long v5, v0, v5

    sget-object v8, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    cmp-long v10, v5, v8

    if-lez v10, :cond_1

    add-int/lit8 v6, v3, 0x1

    goto :goto_0

    :cond_1
    move v6, v3

    :goto_0
    if-eq v3, v6, :cond_2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method
