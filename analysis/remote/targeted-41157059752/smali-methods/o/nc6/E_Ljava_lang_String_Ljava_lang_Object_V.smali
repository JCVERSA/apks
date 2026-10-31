.method public E(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    return-void

    :cond_0
    const/4 v0, 0x3

    check-cast p2, Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    invoke-static {p2}, Lo/nc6;->e0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V

    return-void
.end method
