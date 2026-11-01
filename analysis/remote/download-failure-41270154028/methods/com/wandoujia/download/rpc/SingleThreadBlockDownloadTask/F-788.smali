.method public final F(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Ljava/io/InputStream;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/16 v0, 0x1000

    new-array v3, v0, [B

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v6, p2

    :try_start_0
    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static/range {p1 .. p1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->q(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    invoke-virtual {v1, v2, v7}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->x(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Ljava/io/IOException;)V

    const/4 v0, 0x0

    :goto_1
    iget-wide v7, v2, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->k:J

    const/4 v11, -0x1

    const-wide/16 v12, 0x0

    cmp-long v14, v7, v12

    if-lez v14, :cond_4

    if-ne v0, v11, :cond_2

    iget-wide v3, v2, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->j:J

    cmp-long v0, v3, v7

    if-ltz v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->q(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    new-instance v0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$RetryDownloadException;

    const-string v2, "the state bytesRead is smaller than excepted!"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$RetryDownloadException;-><init>(Ljava/lang/String;Lo/yf7;)V

    throw v0

    :cond_2
    int-to-long v14, v0

    iget-wide v9, v2, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->j:J

    add-long v16, v14, v9

    cmp-long v11, v16, v7

    if-lez v11, :cond_3

    sub-long/2addr v7, v9

    long-to-int v0, v7

    invoke-virtual {v1, v2, v3, v0}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->I(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;[BI)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v2, v3, v0}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->I(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;[BI)V

    iget-object v0, v1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->b:Lcom/wandoujia/download/rpc/g;

    iget-wide v7, v0, Lcom/wandoujia/download/rpc/g;->s:J

    cmp-long v0, v7, v12

    if-lez v0, :cond_0

    const-wide/16 v9, 0x3e8

    mul-long v14, v14, v9

    div-long/2addr v14, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    sub-long/2addr v14, v7

    cmp-long v0, v14, v12

    if-lez v0, :cond_0

    :try_start_1
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    invoke-static/range {p1 .. p1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->q(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    goto :goto_0

    :cond_4
    if-ne v0, v11, :cond_5

    :goto_2
    return-void

    :cond_5
    invoke-virtual {v1, v2, v3, v0}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->I(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;[BI)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bytesRead:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SingleDownload"

    invoke-static {v8, v7}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->b:Lcom/wandoujia/download/rpc/g;

    iget-wide v7, v7, Lcom/wandoujia/download/rpc/g;->s:J

    cmp-long v9, v7, v12

    if-lez v9, :cond_0

    int-to-long v9, v0

    const-wide/16 v14, 0x3e8

    mul-long v9, v9, v14

    div-long/2addr v9, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    sub-long/2addr v9, v7

    cmp-long v0, v9, v12

    if-lez v0, :cond_0

    :try_start_2
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    invoke-static/range {p1 .. p1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->q(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    goto/16 :goto_0
.end method
