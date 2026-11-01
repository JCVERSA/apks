.method public final v(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Ljava/io/IOException;)V
    .locals 9

    invoke-static {p1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->q(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    iget-object v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/download/utils/StorageUtil;->i(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/yj2;->y(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->b:Lcom/wandoujia/download/rpc/g;

    iget-wide v3, v2, Lcom/wandoujia/download/rpc/g;->h:J

    iget-wide v5, v2, Lcom/wandoujia/download/rpc/g;->g:J

    iget-wide v7, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->j:J

    add-long/2addr v5, v7

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    const/4 v2, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->INSUFFICIENT_STORAGE:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    const-string v1, "insufficient space while writing destination file"

    invoke-direct {p1, v0, v1, p2, v2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Ljava/lang/Throwable;Lo/zf7;)V

    throw p1

    :cond_0
    invoke-static {p1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->o(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->FILE_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1, p2, v2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Ljava/lang/Throwable;Lo/zf7;)V

    throw p1
.end method
