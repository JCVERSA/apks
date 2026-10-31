.method public final n1()V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->d:Lo/b7;

    iget-object v1, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/b7;->a(Ljava/lang/String;)Lo/h9;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lo/h9;->c:Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    instance-of v1, v1, Lnet/pubnative/mediation/adapter/model/SnaptubeNativeAdModel;

    if-eqz v1, :cond_0

    new-instance v1, Lo/en7;

    invoke-direct {v1, v0}, Lo/en7;-><init>(Lo/h9;)V

    invoke-static {v1}, Lcom/wandoujia/base/utils/ThreadPool;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
