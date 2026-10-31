.method public final synthetic k0(Lcom/wandoujia/base/utils/RxBus$d;)V
    .locals 2

    iget v0, p1, Lcom/wandoujia/base/utils/RxBus$d;->a:I

    const/16 v1, 0x41c

    if-ne v0, v1, :cond_1

    invoke-static {}, Lo/s5;->f()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p1, Lcom/wandoujia/base/utils/RxBus$d;->e:Ljava/lang/Object;

    check-cast p1, Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/ads/a;->m0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V

    :cond_0
    const p1, 0x7f110041

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lo/yh7;->b(Landroid/app/Activity;II)Lo/yh7$c;

    move-result-object p1

    invoke-virtual {p1}, Lo/yh7$c;->f()V

    :cond_1
    return-void
.end method
