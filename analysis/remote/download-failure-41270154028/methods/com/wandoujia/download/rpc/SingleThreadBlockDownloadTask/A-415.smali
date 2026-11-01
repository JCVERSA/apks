.method public final A(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Lorg/apache/http/HttpResponse;)V
    .locals 6

    const-string v0, "got HTTP response code 503"

    const-string v1, "download"

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->h:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->h:I

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-ge v0, v2, :cond_3

    const-string v0, "Retry-After"

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p2

    const-wide/16 v4, 0x3e8

    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry-After :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    int-to-long v0, p2

    mul-long v0, v0, v4

    iput-wide v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->e:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-wide v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->e:J

    const-wide/16 v4, 0x64

    cmp-long p2, v0, v4

    if-ltz p2, :cond_0

    const-wide/16 v4, 0x7d0

    cmp-long p2, v0, v4

    if-lez p2, :cond_2

    iput-wide v4, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->e:J

    goto :goto_1

    :cond_0
    iput-wide v4, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->e:J

    goto :goto_1

    :cond_1
    iput-wide v4, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->e:J

    :cond_2
    :goto_1
    :try_start_1
    iget-wide v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->e:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    invoke-static {p1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->q(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    :goto_2
    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$RetryDownloadException;

    const-string p2, "we get \'503\' response code, which means the server is unavailavle, sleep then retry."

    invoke-direct {p1, p2, v3}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$RetryDownloadException;-><init>(Ljava/lang/String;Lo/yf7;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->HTTP_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2, v3}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Lo/zf7;)V

    throw p1
.end method
