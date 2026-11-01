.method public static final a(Ljava/lang/String;)Z
    .locals 6

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object v0

    const/4 v5, 0x3

    invoke-virtual {v0, p0}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;->g(Ljava/lang/String;)Z

    move-result v0

    const/4 v5, 0x5

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v5, 0x1

    return v1

    :cond_0
    const/4 v5, 0x2

    sget-object v0, Lo/hg7;->b:[Lo/q;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    :try_start_0
    const/4 v5, 0x1

    invoke-virtual {v3, p0}, Lo/q;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, p0}, Lo/q;->a(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x4

    return p0

    :catch_0
    :cond_1
    const/4 v5, 0x5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    const/4 p0, 0x1

    return p0
.end method
