.method public final D(Lcom/wandoujia/mtdownload/impl/StopRequestException;)Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;
    .locals 1

    invoke-virtual {p1}, Lcom/wandoujia/mtdownload/impl/StopRequestException;->getFinalStatus()I

    move-result p1

    const/16 v0, 0x1ef

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1f2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1ec

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->FILE_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    :cond_1
    const/16 v0, 0xc6

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->INSUFFICIENT_STORAGE:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    :cond_2
    const/16 v0, 0x258

    if-lt p1, v0, :cond_3

    const/16 v0, 0x2bb

    if-gt p1, v0, :cond_3

    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->UMP_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    :cond_3
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->HTTP_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/wandoujia/download/rpc/j;->d:Lcom/wandoujia/download/listener/NetworkStatusStub;

    invoke-interface {p1}, Lcom/wandoujia/download/listener/NetworkStatusStub;->a()Lcom/wandoujia/download/listener/NetworkStatusStub$NetworkStatus;

    move-result-object p1

    sget-object v0, Lcom/wandoujia/download/listener/NetworkStatusStub$NetworkStatus;->NETWORK_NO_CONNECTION:Lcom/wandoujia/download/listener/NetworkStatusStub$NetworkStatus;

    if-ne p1, v0, :cond_5

    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->QUEUED_FOR_WIFI_OR_USB:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    :cond_5
    iget-object p1, p0, Lcom/wandoujia/download/rpc/j;->b:Landroid/content/Context;

    invoke-static {p1}, Lo/q55;->z(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->INTERNET_NO_ACCESS:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    :cond_6
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->CONNECTION_TIMEOUT:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1
.end method
