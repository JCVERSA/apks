.method public static e()Z
    .locals 14

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->K()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lo/az7;->a0(Ljava/io/File;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lo/hs7;->k()[Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v3, v1

    :goto_1
    const/4 v4, 0x0

    if-eqz v3, :cond_6

    array-length v5, v3

    if-nez v5, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    array-length v5, v3

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v5, :cond_5

    aget-object v9, v3, v8

    if-eqz v9, :cond_4

    invoke-static {v9}, Lo/az7;->a0(Ljava/io/File;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    return v2

    :cond_3
    invoke-static {v10}, Lo/yj2;->y(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v13, v6, v11

    if-gez v13, :cond_4

    invoke-static {v9}, Lo/yj2;->d(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v1, v10

    move-wide v6, v11

    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v1}, Lcom/snaptube/premium/configs/Config;->q5(Ljava/lang/String;)V

    return v2

    :cond_6
    :goto_4
    return v4
.end method
