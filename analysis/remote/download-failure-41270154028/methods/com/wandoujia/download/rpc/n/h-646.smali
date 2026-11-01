.method public final h(Lcom/mobiuspace/youtube/ump/UmpException;)Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->UNKNOWN_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/mobiuspace/youtube/ump/UmpException;->getErrorCode()I

    move-result p1

    const/16 v0, -0x9

    if-eq p1, v0, :cond_3

    const/4 v0, -0x8

    if-eq p1, v0, :cond_2

    const/4 v0, -0x5

    if-eq p1, v0, :cond_2

    const/4 v0, -0x4

    if-eq p1, v0, :cond_1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->UNKNOWN_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->HTTP_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->UMP_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->FILE_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    :goto_0
    return-object p1
.end method
