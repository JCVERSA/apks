.method public final R()I
    .locals 2

    iget-object v0, p0, Lcom/wandoujia/download/rpc/f;->a:Lcom/wandoujia/download/rpc/h;

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, v0, Lcom/wandoujia/download/rpc/h;->L:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getMultiThreadTaskMaxDownloadRetryTimes()I

    move-result v0

    return v0

    :cond_1
    return v1
.end method
