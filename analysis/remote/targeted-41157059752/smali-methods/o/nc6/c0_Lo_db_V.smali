.method public final c0(Lo/db;)V
    .locals 14

    const/4 v13, 0x6

    invoke-virtual {p1}, Lo/db;->l()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v13, 0x6

    invoke-virtual {p1}, Lo/db;->i()Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x6

    invoke-virtual {p1}, Lo/db;->c()Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    move-result-object v10

    const/4 v13, 0x3

    invoke-virtual {p1}, Lo/db;->j()J

    move-result-wide v7

    const/4 v13, 0x1

    invoke-virtual {v10}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v13, 0x5

    if-eqz v1, :cond_1

    const/4 v13, 0x7

    invoke-virtual {v10}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdVastUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v13, 0x4

    if-nez v1, :cond_0

    const/4 v13, 0x5

    goto :goto_0

    :cond_0
    sget p1, Lcom/snaptube/premium/base/ui/R$id;->nativeAdPlayerContainer:I

    const/4 v13, 0x6

    invoke-virtual {v9, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v13, 0x5

    check-cast p1, Lcom/snaptube/ads/view/AdPlayerContainer;

    const/4 v13, 0x2

    if-eqz p1, :cond_6

    const/4 v13, 0x7

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/snaptube/ads/view/AdPlayerContainer;->H0(Z)V

    const/4 v13, 0x2

    goto/16 :goto_5

    :cond_1
    :goto_0
    const/4 v13, 0x6

    invoke-virtual {v10}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getTrackingModel()Lo/ga8;

    move-result-object v1

    const/4 v13, 0x7

    invoke-static {v1}, Lcom/snaptube/ad/tracker/TrackManager;->k(Lo/ga8;)V

    sget v1, Lcom/snaptube/premium/base/ui/R$id;->nativeAdPlayerContainer:I

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/snaptube/ads/view/AdPlayerContainer;

    const/4 v13, 0x2

    if-eqz v2, :cond_2

    const/4 v13, 0x4

    check-cast v1, Lcom/snaptube/ads/view/AdPlayerContainer;

    :goto_1
    move-object v11, v1

    const/4 v13, 0x0

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    new-instance v1, Lcom/snaptube/ads/view/AdPlayerContainer;

    const/4 v13, 0x6

    invoke-direct {v1, v0}, Lcom/snaptube/ads/view/AdPlayerContainer;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :goto_2
    new-instance v0, Lo/kc6;

    invoke-direct {v0, v9}, Lo/kc6;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v11, v0}, Lcom/snaptube/ads/view/AdPlayerContainer;->setAdPlayerViewListener(Lcom/snaptube/ads/view/AdPlayerView$b;)V

    const/4 v13, 0x2

    const/4 v0, 0x0

    const/4 v13, 0x3

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v13, 0x7

    invoke-virtual {v10}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdPos()Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x5

    invoke-virtual {v11, v0}, Lcom/snaptube/ads/view/AdPlayerContainer;->setPlacement(Ljava/lang/String;)V

    const/4 v13, 0x6

    invoke-virtual {p1}, Lo/db;->l()Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lcom/snaptube/ads/view/SplashAdView;

    const/4 v13, 0x0

    if-eqz v0, :cond_3

    new-instance v12, Lo/nc6$e;

    move-object v0, v12

    move-object v1, p0

    move-object v2, v11

    move-object v2, v11

    move-object v4, v9

    move-object v4, v9

    move-object v5, v10

    move-object v5, v10

    move-object v6, p1

    const/4 v13, 0x1

    invoke-direct/range {v0 .. v8}, Lo/nc6$e;-><init>(Lo/nc6;Lcom/snaptube/ads/view/AdPlayerContainer;Ljava/lang/String;Landroid/view/ViewGroup;Lnet/pubnative/mediation/request/model/PubnativeAdModel;Lo/db;J)V

    invoke-virtual {v11, v12}, Lcom/snaptube/ads/view/AdPlayerContainer;->c0(Lcom/snaptube/ads/view/AdPlayerContainer$g;)V

    const/4 v13, 0x6

    goto :goto_3

    :cond_3
    const/4 v13, 0x6

    instance-of v0, v10, Lnet/pubnative/mediation/adapter/model/SnaptubeNativeAdModel;

    if-eqz v0, :cond_4

    move-object v0, v10

    move-object v0, v10

    check-cast v0, Lnet/pubnative/mediation/adapter/model/SnaptubeNativeAdModel;

    invoke-virtual {v0}, Lnet/pubnative/mediation/adapter/model/SnaptubeNativeAdModel;->isVastVideo()Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_4

    instance-of v0, v9, Lcom/snaptube/ads/nativead/AdView;

    const/4 v13, 0x2

    if-eqz v0, :cond_4

    move-object v0, v9

    move-object v0, v9

    const/4 v13, 0x1

    check-cast v0, Lcom/snaptube/ads/nativead/AdView;

    invoke-virtual {p1}, Lo/db;->b()I

    move-result p1

    const/4 v13, 0x3

    int-to-float p1, p1

    const/4 v13, 0x0

    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    :cond_4
    :goto_3
    sget p1, Lcom/snaptube/ads/R$id;->nativeAdCover:I

    invoke-virtual {v9, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, v9, Lcom/snaptube/ads/nativead/AdView;

    const/4 v13, 0x4

    if-eqz v0, :cond_5

    const/4 v13, 0x4

    check-cast v9, Lcom/snaptube/ads/nativead/AdView;

    goto :goto_4

    :cond_5
    const/4 v13, 0x4

    const/4 v9, 0x0

    :goto_4
    const/4 v13, 0x6

    invoke-virtual {v11, v10, p1, v9}, Lcom/snaptube/ads/view/AdPlayerContainer;->d0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;Landroid/view/View;Lcom/snaptube/ads/nativead/AdView;)V

    :cond_6
    :goto_5
    return-void
.end method
