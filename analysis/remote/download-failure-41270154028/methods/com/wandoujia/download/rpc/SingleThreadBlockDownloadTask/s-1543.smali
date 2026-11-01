.method public final s(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Lo/ch;)V
    .locals 2

    iget-object v0, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->b:Lcom/wandoujia/download/rpc/g;

    iget-object v0, v0, Lcom/wandoujia/download/rpc/g;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->D()V

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->r(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->m()V

    :try_start_0
    invoke-static {p2, v0}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->w(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Lorg/apache/http/HttpResponse;)V

    invoke-virtual {p0, p1, p2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->C(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Lorg/apache/http/HttpResponse;)V

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p2

    sget-object v1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->RUNNING:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    invoke-virtual {p0, v1, p1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->B(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    invoke-virtual {p0, p1, p2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->F(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0, p1, p2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->x(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    throw p1

    :cond_0
    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object p2, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->URL_NULL_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    const-string v0, "download url is null"

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Lo/zf7;)V

    throw p1
.end method
