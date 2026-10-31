.method public final d0(Landroid/content/Context;Lo/db;)V
    .locals 13

    invoke-virtual {p2}, Lo/db;->l()Landroid/view/ViewGroup;

    move-result-object v7

    const/4 v12, 0x6

    invoke-virtual {p2}, Lo/db;->c()Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    move-result-object v8

    invoke-virtual {p2}, Lo/db;->k()Z

    move-result v9

    const/4 v12, 0x5

    invoke-virtual {p2}, Lo/db;->i()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x6

    instance-of v11, v7, Lcom/snaptube/ads/view/SplashAdView;

    if-eqz v11, :cond_0

    const/4 v12, 0x7

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdxBannerHtml()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v12, 0x4

    new-instance p1, Lnet/pubnative/mediation/exception/AdPosRequestException;

    const/4 v12, 0x1

    const-string p2, "format_error"

    const/4 v0, 0x3

    const/4 v12, 0x7

    invoke-direct {p1, p2, v0}, Lnet/pubnative/mediation/exception/AdPosRequestException;-><init>(Ljava/lang/String;I)V

    const/4 v12, 0x0

    invoke-virtual {p0, v10, p1}, Lo/aa;->q(Ljava/lang/String;Lnet/pubnative/mediation/exception/AdException;)V

    return-void

    :cond_0
    iget-object v0, p0, Lo/nc6;->e:Lcom/snaptube/ads/feedback/callback/FeedbackLayoutDecorator;

    const/4 v12, 0x1

    if-eqz v0, :cond_1

    const/4 v12, 0x7

    invoke-virtual {v0, v7}, Lcom/snaptube/ads/feedback/callback/FeedbackLayoutDecorator;->e(Landroid/view/ViewGroup;)V

    :cond_1
    const/4 v12, 0x3

    invoke-virtual {p0, v8}, Lo/nc6;->l0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V

    const/4 v12, 0x2

    invoke-virtual {p2}, Lo/db;->g()I

    move-result v0

    const/4 v12, 0x3

    invoke-virtual {p2}, Lo/db;->h()I

    move-result v1

    const/4 v12, 0x7

    invoke-virtual {p2}, Lo/db;->f()I

    move-result v2

    invoke-virtual {p2}, Lo/db;->e()I

    move-result v3

    invoke-virtual {v8, v0, v1, v2, v3}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->setBannerMargin(IIII)V

    invoke-virtual {p2}, Lo/db;->a()I

    move-result v0

    const/4 v12, 0x1

    invoke-virtual {v8, v0}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->setBannerWidth(I)V

    const/4 v12, 0x1

    invoke-virtual {p2}, Lo/db;->b()I

    move-result v0

    const/4 v12, 0x3

    invoke-virtual {v8, v0}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->setBannerRadius(I)V

    const/4 v12, 0x7

    invoke-virtual {v8, p1, v7}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->interceptBindData(Landroid/content/Context;Landroid/view/ViewGroup;)Z

    move-result v0

    const/4 v12, 0x6

    if-eqz v0, :cond_2

    const/4 v12, 0x2

    return-void

    :cond_2
    invoke-virtual {v8, v7}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->bindAdxBanner(Landroid/view/ViewGroup;)Z

    move-result v0

    const/4 v12, 0x3

    if-eqz v0, :cond_4

    if-eqz v9, :cond_4

    iget-object p2, p0, Lo/nc6;->e:Lcom/snaptube/ads/feedback/callback/FeedbackLayoutDecorator;

    if-eqz p2, :cond_3

    const/4 v12, 0x3

    invoke-virtual {p2, p1, v7, v10, v8}, Lcom/snaptube/ads/feedback/callback/FeedbackLayoutDecorator;->b(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V

    :cond_3
    invoke-static {v7, v8}, Lcom/snaptube/ad/tracker/TrackManager;->i(Landroid/view/View;Lo/ji3;)V

    const/4 v12, 0x2

    invoke-static {}, Lcom/PinkiePie;->DianePie()V

    const/4 v12, 0x2

    invoke-virtual {v8, p1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->trackLifecycle(Landroid/content/Context;)V

    const/4 v12, 0x3

    return-void

    :cond_4
    invoke-static {v7}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->findAdxBanner(Landroid/view/ViewGroup;)Lcom/snaptube/base/view/AdxBannerContainer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/snaptube/base/view/AdxBannerContainer;->unbind()V

    :cond_5
    sget v0, Lcom/snaptube/ads/R$id;->adchoice_container:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v12, 0x3

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v12, 0x7

    if-eqz v0, :cond_6

    const/4 v12, 0x2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v12, 0x6

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v12, 0x6

    invoke-virtual {v8, v1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdvertisingDisclosureView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    const/4 v12, 0x7

    if-eqz v1, :cond_6

    const/4 v12, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    invoke-virtual {v8}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdForm()Lcom/snaptube/ads_log_v2/AdForm;

    move-result-object v0

    const/4 v12, 0x3

    sget-object v1, Lcom/snaptube/ads_log_v2/AdForm;->NATIVE:Lcom/snaptube/ads_log_v2/AdForm;

    const/4 v12, 0x3

    if-eq v0, v1, :cond_7

    const/4 v12, 0x0

    instance-of v0, v8, Lo/nc3;

    if-eqz v0, :cond_8

    :cond_7
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v2, p2

    move-object v3, v7

    const/4 v12, 0x6

    move v4, v11

    move v4, v11

    move-object v5, v8

    move-object v6, v10

    const/4 v12, 0x2

    invoke-virtual/range {v0 .. v6}, Lo/nc6;->o0(Landroid/content/Context;Lo/db;Landroid/view/ViewGroup;ZLnet/pubnative/mediation/request/model/PubnativeAdModel;Ljava/lang/String;)V

    :cond_8
    const/4 v12, 0x3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x7

    const-string v1, "shouldTrack="

    const/4 v12, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x3

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x3

    const-string v1, "PubNativeAdManager"

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x6

    if-eqz v9, :cond_a

    const/4 v12, 0x0

    if-eqz v11, :cond_9

    const/4 v12, 0x6

    instance-of v0, v8, Lnet/pubnative/mediation/adapter/model/SnaptubeNativeAdModel;

    if-eqz v0, :cond_9

    move-object v0, v8

    move-object v0, v8

    const/4 v12, 0x0

    check-cast v0, Lnet/pubnative/mediation/adapter/model/SnaptubeNativeAdModel;

    const/4 v12, 0x2

    new-instance v1, Lo/nc6$b;

    invoke-direct {v1, p0, v8, p2}, Lo/nc6$b;-><init>(Lo/nc6;Lnet/pubnative/mediation/request/model/PubnativeAdModel;Lo/db;)V

    const/4 v12, 0x2

    invoke-virtual {v0, v1}, Lnet/pubnative/mediation/adapter/model/SnaptubeNativeAdModel;->setSnaptubeAdListener(Lcom/snaptube/ads/selfbuild/request/model/SnaptubeAdModel$f;)V

    :cond_9
    invoke-static {v7, v8}, Lcom/snaptube/ad/tracker/TrackManager;->i(Landroid/view/View;Lo/ji3;)V

    const/4 v12, 0x5

    invoke-static {}, Lcom/PinkiePie;->DianePie()V

    invoke-virtual {v8, p1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->trackLifecycle(Landroid/content/Context;)V

    :cond_a
    sget p1, Lcom/snaptube/ads/R$id;->btn_remove_ad:I

    const/4 v12, 0x7

    invoke-virtual {v7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lo/nc6;->e:Lcom/snaptube/ads/feedback/callback/FeedbackLayoutDecorator;

    if-eqz p2, :cond_b

    if-eqz p1, :cond_b

    const/4 v12, 0x5

    invoke-virtual {p2, p1, v10, v8}, Lcom/snaptube/ads/feedback/callback/FeedbackLayoutDecorator;->c(Landroid/view/View;Ljava/lang/String;Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V

    :cond_b
    const/4 v12, 0x2

    return-void
.end method
