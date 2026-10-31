.method public finish()V
    .locals 2

    invoke-super {p0}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->finish()V

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    const/16 v1, 0x417

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/utils/RxBus;->f(I)V

    return-void
.end method
