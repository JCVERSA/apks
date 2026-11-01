.method public static n(Lcom/wandoujia/download/utils/CrcCalculator;[BI)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/wandoujia/download/utils/CrcCalculator;->a([BI)V
    :try_end_0
    .catch Lcom/wandoujia/download/utils/CrcCalculator$CrcVerifiedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object p2, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->CRC_VERIFY_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v0}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Lo/zf7;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method
