.method public final T(ILcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;I)Z
    .locals 1

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->STORAGE_NOT_READY:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->INSUFFICIENT_STORAGE:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->FILE_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->FILE_NOT_FOUND:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->u:Lcom/wandoujia/download/rpc/f$f;

    invoke-interface {v0, p1, p2, p3}, Lcom/wandoujia/download/rpc/f$f;->b(ILcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;I)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
