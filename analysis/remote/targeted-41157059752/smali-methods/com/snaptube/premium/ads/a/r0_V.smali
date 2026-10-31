.method public final r0()V
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->d:Lo/wu7;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/wu7;->unsubscribe()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snaptube/premium/ads/a;->d:Lo/wu7;

    :cond_0
    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    const/16 v1, 0x41c

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/utils/RxBus;->c([I)Lrx/c;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/base/utils/RxBus;->f:Lcom/wandoujia/base/utils/RxBus$e;

    invoke-virtual {v0, v1}, Lrx/c;->g(Lrx/c$c;)Lrx/c;

    move-result-object v0

    new-instance v1, Lo/yd;

    invoke-direct {v1, p0}, Lo/yd;-><init>(Lcom/snaptube/premium/ads/a;)V

    new-instance v2, Lo/zd;

    invoke-direct {v2}, Lo/zd;-><init>()V

    invoke-virtual {v0, v1, v2}, Lrx/c;->u0(Lo/l3;Lo/l3;)Lo/wu7;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/ads/a;->d:Lo/wu7;

    return-void
.end method
