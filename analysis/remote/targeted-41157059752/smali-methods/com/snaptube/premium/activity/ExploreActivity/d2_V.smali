.method public final d2()V
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    const/16 v1, 0x477

    const/16 v2, 0x479

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/utils/RxBus;->c([I)Lrx/c;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/base/utils/RxBus;->f:Lcom/wandoujia/base/utils/RxBus$e;

    invoke-virtual {v0, v1}, Lrx/c;->g(Lrx/c$c;)Lrx/c;

    move-result-object v0

    new-instance v1, Lcom/snaptube/premium/activity/ExploreActivity$h;

    invoke-direct {v1, p0}, Lcom/snaptube/premium/activity/ExploreActivity$h;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;)V

    new-instance v2, Lcom/snaptube/premium/activity/ExploreActivity$i;

    invoke-direct {v2, p0}, Lcom/snaptube/premium/activity/ExploreActivity$i;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;)V

    invoke-virtual {v0, v1, v2}, Lrx/c;->u0(Lo/l3;Lo/l3;)Lo/wu7;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->u:Lo/wu7;

    return-void
.end method
