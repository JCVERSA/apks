.method public static N2()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->v1()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/base/config/GlobalConfig;->CONTENT_DIRS:[Ljava/lang/String;

    sget-object v2, Lcom/wandoujia/base/config/GlobalConfig$ContentDir;->DOWNLOAD:Lcom/wandoujia/base/config/GlobalConfig$ContentDir;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/snaptube/premium/configs/Config;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/wandoujia/download/storage/DownloadRootDirStore;->a:Lcom/wandoujia/download/storage/DownloadRootDirStore;

    invoke-virtual {v1, v0}, Lcom/wandoujia/download/storage/DownloadRootDirStore;->w(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
