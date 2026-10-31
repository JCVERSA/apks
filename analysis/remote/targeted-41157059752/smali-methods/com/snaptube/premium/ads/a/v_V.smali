.method public v()V
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/base/utils/RxBus$d;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/wandoujia/base/utils/RxBus$d;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/utils/RxBus;->i(Lcom/wandoujia/base/utils/RxBus$d;)V

    return-void
.end method
