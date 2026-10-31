.method public final synthetic R1(Lcom/wandoujia/base/utils/RxBus$d;)V
    .locals 3

    iget v0, p1, Lcom/wandoujia/base/utils/RxBus$d;->a:I

    const/16 v1, 0x419

    if-eq v0, v1, :cond_3

    const/16 v1, 0x448

    if-eq v0, v1, :cond_2

    const/16 v1, 0x460

    if-eq v0, v1, :cond_1

    const/16 p1, 0x4f2

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->u1()V

    sget-object p1, Lo/a58;->a:Landroid/os/Handler;

    new-instance v0, Lo/ma2;

    invoke-direct {v0}, Lo/ma2;-><init>()V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->o1(Lcom/wandoujia/base/utils/RxBus$d;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->u1()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->t1(Lcom/wandoujia/base/utils/RxBus$d;)V

    :goto_0
    return-void
.end method
