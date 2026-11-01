.method public final s()V
    .locals 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wandoujia/download/rpc/i;->b:Lcom/wandoujia/download/rpc/g;

    iget-object v1, v1, Lcom/wandoujia/download/rpc/g;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->SUCCESS:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    invoke-direct {p0, v0}, Lcom/wandoujia/download/rpc/i;->u(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->FILE_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    invoke-direct {p0, v0}, Lcom/wandoujia/download/rpc/i;->u(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V

    :goto_0
    return-void
.end method
