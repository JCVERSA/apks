.method public static T1()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lo/hs7;->n()Lo/hs7;

    move-result-object v0

    invoke-virtual {v0}, Lo/hs7;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lo/yj2;->y(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-gez v7, :cond_0

    move-object v1, v4

    move-wide v2, v5

    goto :goto_0

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/wandoujia/base/config/GlobalConfig;->CONTENT_DIRS:[Ljava/lang/String;

    sget-object v2, Lcom/wandoujia/base/config/GlobalConfig$ContentDir;->DOWNLOAD:Lcom/wandoujia/base/config/GlobalConfig$ContentDir;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/snaptube/premium/configs/Config;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method
