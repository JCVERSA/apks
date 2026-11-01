.method public final y(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Lorg/apache/http/HttpResponse;)V
    .locals 5

    iget v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->f:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    const-string v0, "Location"

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/net/URL;

    iget-object v4, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->i:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-static {v0}, Lo/oj8;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->i:Ljava/lang/String;

    new-instance v0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$RetryDownloadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "we get \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\' response code, which need to redirect to "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->i:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$RetryDownloadException;-><init>(Ljava/lang/String;Lo/yf7;)V

    throw v0

    :cond_1
    :goto_0
    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object p2, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->RESOLVE_REDIRECT_URL_FAILED:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    const-string v0, "Redirect URI is null"

    invoke-direct {p1, p2, v0, v2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Lo/zf7;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object p2, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->TOO_MANY_REDIRECTS:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    const-string v0, "too many redirects"

    invoke-direct {p1, p2, v0, v2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Lo/zf7;)V

    throw p1
.end method
