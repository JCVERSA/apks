.method private t2()V
    .locals 6

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    const/16 v1, 0x419

    const/16 v2, 0x4f2

    const/16 v3, 0x449

    const/16 v4, 0x448

    const/16 v5, 0x460

    filled-new-array {v3, v4, v5, v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/utils/RxBus;->c([I)Lrx/c;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/base/utils/RxBus;->f:Lcom/wandoujia/base/utils/RxBus$e;

    invoke-virtual {v0, v1}, Lrx/c;->g(Lrx/c$c;)Lrx/c;

    move-result-object v0

    new-instance v1, Lo/sa2;

    invoke-direct {v1, p0}, Lo/sa2;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;)V

    new-instance v2, Lo/ta2;

    invoke-direct {v2}, Lo/ta2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lrx/c;->u0(Lo/l3;Lo/l3;)Lo/wu7;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->z0(Lo/wu7;)V

    return-void
.end method
