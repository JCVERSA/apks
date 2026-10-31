.method public final l0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 v3, 0x3

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "di:naobf"

    const-string v1, "ad_info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getProvider()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    const-string v1, "|"

    const/4 v3, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    invoke-virtual {p1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdPos()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    invoke-virtual {p1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdGlobalId()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x4

    iget-object v0, p0, Lo/nc6;->j:Lo/rh3;

    const/4 v3, 0x1

    const/4 v1, 0x3

    const/4 v3, 0x0

    const-string v2, "tudrbNetMgAneaiPav"

    const-string v2, "PubNativeAdManager"

    const/4 v3, 0x7

    invoke-interface {v0, v1, v2, p1}, Lo/rh3;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
