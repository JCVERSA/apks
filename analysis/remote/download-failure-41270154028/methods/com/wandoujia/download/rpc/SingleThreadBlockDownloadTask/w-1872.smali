.method public final w(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Lorg/apache/http/HttpResponse;)V
    .locals 3

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    iput v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->p:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->b:Lcom/wandoujia/download/rpc/g;

    iget-boolean v1, v1, Lcom/wandoujia/download/rpc/g;->p:Z

    if-nez v1, :cond_0

    iget-object p2, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->c:Ljava/io/File;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p1, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->c:Ljava/io/File;

    invoke-static {p1}, Lo/yj2;->r(Ljava/io/File;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->h:J

    goto :goto_1

    :cond_0
    const/16 v1, 0xce

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->A(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Lorg/apache/http/HttpResponse;)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x1a0

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->z(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    goto :goto_1

    :cond_3
    const/16 v1, 0x12d

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12f

    if-eq v0, v1, :cond_5

    const/16 v1, 0x133

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p2, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->HTTP_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->p:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p2, v0, p1, v1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Lo/zf7;)V

    throw p2

    :cond_5
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->y(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Lorg/apache/http/HttpResponse;)V

    :cond_6
    :goto_1
    return-void
.end method
