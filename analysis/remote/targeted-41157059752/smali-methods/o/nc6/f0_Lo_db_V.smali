.method public final f0(Lo/db;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doRenderAd params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x7

    const-string v1, "bNamguavtAiMernaed"

    const-string v1, "PubNativeAdManager"

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/db;->c()Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    move-result-object v0

    const/4 v3, 0x7

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getIsRendered()Z

    move-result v2

    const/4 v3, 0x5

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    const-string p1, "pe booip.rers  caerdi s en sdakuerdatSre sndcead"

    const-string p1, "Skip render process because ad data is rendered."

    const/4 v3, 0x5

    invoke-static {v1, p1}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v3, 0x7

    const/4 v1, 0x1

    const/4 v3, 0x5

    invoke-virtual {v0, v1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->setIsRendered(Z)Z

    invoke-virtual {p1}, Lo/db;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    new-instance v2, Lo/nc6$a;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v1}, Lo/nc6$a;-><init>(Lo/nc6;Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v0, v2}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->setListener(Lnet/pubnative/mediation/request/model/PubnativeAdModel$Listener;)V

    iget-object v0, p0, Lo/u25;->c:Landroid/content/Context;

    const/4 v3, 0x6

    invoke-virtual {p0, v0, p1}, Lo/nc6;->d0(Landroid/content/Context;Lo/db;)V

    const/4 v3, 0x7

    return-void
.end method
