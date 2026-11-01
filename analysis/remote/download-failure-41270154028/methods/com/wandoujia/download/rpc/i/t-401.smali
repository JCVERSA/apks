.method public final t(Lcom/wandoujia/m3u8download/M3u8DownloadException;)Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;
    .locals 0

    invoke-virtual {p1}, Lcom/wandoujia/m3u8download/M3u8DownloadException;->getErrorCode()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->UNKNOWN_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    :pswitch_0
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->CRC_VERIFY_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    :pswitch_1
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->FILE_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->FILE_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    :pswitch_3
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->DOWNLOAD_SIZE_UNKNOWN:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    :pswitch_4
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->URL_NULL_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    :pswitch_5
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->FILE_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    :pswitch_6
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->FILE_NOT_FOUND:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
