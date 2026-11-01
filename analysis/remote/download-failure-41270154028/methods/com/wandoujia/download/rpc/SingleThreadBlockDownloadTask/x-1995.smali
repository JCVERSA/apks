.method public final x(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Ljava/io/IOException;)V
    .locals 6

    invoke-static {p1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->q(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->t()Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$NetworkType;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    instance-of v0, p2, Lorg/apache/http/conn/ConnectTimeoutException;

    if-nez v0, :cond_2

    instance-of v0, p2, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->h:I

    const/4 v3, 0x5

    if-ge v0, v3, :cond_1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->h:I

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    shl-int v0, v1, v0

    int-to-long v0, v0

    const-wide/16 v4, 0x1f4

    mul-long v0, v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->q(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    :goto_0
    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$RetryDownloadException;

    const-string v0, "meet IO exception, we need retry"

    invoke-direct {p1, v0, p2, v2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$RetryDownloadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lo/yf7;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->EXCEED_MAX_RETRY_TIMES:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    const-string v1, "While getting data, IOException has been happens, and retried times has reached MAX_RETRIES"

    invoke-direct {p1, v0, v1, p2, v2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Ljava/lang/Throwable;Lo/zf7;)V

    throw p1

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->a:Landroid/content/Context;

    invoke-static {p1}, Lo/q55;->z(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->INTERNET_NO_ACCESS:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    const-string v1, "no network access"

    invoke-direct {p1, v0, v1, p2, v2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Ljava/lang/Throwable;Lo/zf7;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->CONNECTION_TIMEOUT:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    const-string v1, "unable to connect server."

    invoke-direct {p1, v0, v1, p2, v2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Ljava/lang/Throwable;Lo/zf7;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->QUEUED_FOR_WIFI_OR_USB:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    const-string v1, "WIFI is disconnected, can\'t getting data"

    invoke-direct {p1, v0, v1, p2, v2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Ljava/lang/Throwable;Lo/zf7;)V

    throw p1
.end method
