.method public final t(Lo/ys2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V
    .locals 1

    if-nez p5, :cond_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "adData is null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string p2, "AudioPreviewException"

    invoke-static {p2, p1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onAdImpression: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AudioPreviewAd"

    invoke-static {p3, p2}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/snaptube/premium/preview/audio/AudioPreviewAdController;->f:Z

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p1, Lo/ys2;->d:Lcom/snaptube/ads/nativead/AdView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdForm()Lcom/snaptube/ads_log_v2/AdForm;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u9884\u89c8\u9875\u5df2\u586b\u5145\uff0c\u586b\u5145\u7c7b\u578b\uff1a"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lo/b88;->k(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/preview/audio/AudioPreviewAdController;->n(Lo/ys2;)V

    invoke-virtual {p0, p1, p5}, Lcom/snaptube/premium/preview/audio/AudioPreviewAdController;->o(Lo/ys2;Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/preview/audio/AudioPreviewAdController;->g(Lo/ys2;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/snaptube/premium/preview/audio/AudioPreviewAdController;->f:Z

    return-void
.end method
