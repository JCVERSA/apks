.method public final s2()V
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    const/16 v1, 0x402

    const/16 v2, 0x426

    const/16 v3, 0x401

    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/utils/RxBus;->c([I)Lrx/c;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/base/utils/RxBus;->f:Lcom/wandoujia/base/utils/RxBus$e;

    invoke-virtual {v0, v1}, Lrx/c;->g(Lrx/c$c;)Lrx/c;

    move-result-object v0

    new-instance v1, Lcom/snaptube/premium/activity/ExploreActivity$c;

    invoke-direct {v1, p0}, Lcom/snaptube/premium/activity/ExploreActivity$c;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;)V

    invoke-virtual {v0, v1}, Lrx/c;->t0(Lo/l3;)Lo/wu7;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->e:Lo/wu7;

    return-void
.end method
