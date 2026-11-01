.method public final z(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V
    .locals 5

    iget v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->g:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object v1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->HTTP_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->p:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, v2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Lo/zf7;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->j:J

    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$RetryDownloadException;

    const-string v0, "we get \'416\' response code, which need to restart."

    invoke-direct {p1, v0, v2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$RetryDownloadException;-><init>(Ljava/lang/String;Lo/yf7;)V

    throw p1
.end method
