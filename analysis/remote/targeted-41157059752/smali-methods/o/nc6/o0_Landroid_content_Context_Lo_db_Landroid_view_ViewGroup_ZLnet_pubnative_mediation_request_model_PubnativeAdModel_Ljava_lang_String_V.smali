.method public final o0(Landroid/content/Context;Lo/db;Landroid/view/ViewGroup;ZLnet/pubnative/mediation/request/model/PubnativeAdModel;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    invoke-virtual/range {p2 .. p2}, Lo/db;->j()J

    move-result-wide v5

    sget v0, Lcom/snaptube/ads/R$id;->nativeAdCover:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    sget v0, Lcom/snaptube/ads/R$id;->nativeAdIcon:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    sget v0, Lcom/snaptube/ads/R$id;->nativeAdIconBg:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    sget v0, Lcom/snaptube/ads/R$id;->nativeAdBody:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    sget v0, Lcom/snaptube/ads/R$id;->nativeAdSocialContext:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    sget v0, Lcom/snaptube/ads/R$id;->nativeAdCallToAction:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    instance-of v0, v12, Lo/jj3;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-static {v12, v13, v3}, Lcom/snaptube/ads/nativead/AdImagePlaceholderHelper;->b(Landroid/view/View;Landroid/view/View;Z)V

    :cond_0
    move-object/from16 v2, p2

    move-object/from16 v2, p2

    invoke-virtual {v8, v2}, Lo/nc6;->c0(Lo/db;)V

    const/16 v1, 0x8

    if-nez p4, :cond_5

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/snaptube/ads/R$id;->nativeAdTitle:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_2

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getBrand()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcom/snaptube/ads/R$id;->nativeAdBrand:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_3

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz v12, :cond_4

    if-eqz v13, :cond_4

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    if-eqz v13, :cond_5

    invoke-virtual {v13, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_0
    new-instance v0, Lo/nc6$c;

    invoke-direct {v0, v8, v10}, Lo/nc6$c;-><init>(Lo/nc6;Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V

    if-eqz p4, :cond_6

    new-instance v16, Lo/nc6$d;

    move-object v11, v0

    move-object/from16 v0, v16

    move-object/from16 v0, v16

    const/16 v17, 0x8

    move-object/from16 v1, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p3

    move-object/from16 v3, p3

    move-object v8, v4

    move-object v8, v4

    move-object/from16 v4, p5

    move-object/from16 v4, p5

    move-object/from16 v18, v14

    move-object/from16 v18, v14

    move-object v14, v7

    move-object v14, v7

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lo/nc6$d;-><init>(Lo/nc6;Ljava/lang/String;Landroid/view/ViewGroup;Lnet/pubnative/mediation/request/model/PubnativeAdModel;JLo/db;)V

    goto :goto_1

    :cond_6
    move-object v11, v0

    move-object v11, v0

    move-object v8, v4

    move-object/from16 v18, v14

    move-object/from16 v18, v14

    const/16 v17, 0x8

    move-object v14, v7

    move-object v14, v7

    :goto_1
    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getBannerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdVastUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getTrackingModel()Lo/ga8;

    move-result-object v1

    invoke-static {v1}, Lcom/snaptube/ad/tracker/TrackManager;->a(Lo/ga8;)V

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getTrackingModel()Lo/ga8;

    move-result-object v1

    invoke-static {v1}, Lcom/snaptube/ad/tracker/TrackManager;->h(Lo/ga8;)V

    :cond_7
    sget v1, Lcom/snaptube/ads/R$id;->nativeAdTitle:I

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v10, v1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->withTitle(Landroid/view/View;)Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    move-result-object v1

    sget v2, Lcom/snaptube/ads/R$id;->nativeAdBrand:I

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->withBrand(Landroid/view/View;)Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    move-result-object v1

    invoke-virtual {v1, v14}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->withSocailContext(Landroid/view/View;)Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    move-result-object v1

    invoke-virtual {v1, v15}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->withDescription(Landroid/view/View;)Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    move-result-object v1

    invoke-virtual {v1, v13, v11}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->withIcon(Landroid/view/View;Lo/e54;)Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    move-result-object v1

    invoke-virtual {v1, v12, v0}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->withAdCover(Landroid/view/View;Lo/e54;)Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    move-result-object v0

    invoke-virtual {v0, v8}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->withCallToAction(Landroid/view/View;)Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    move-result-object v0

    sget v1, Lcom/snaptube/ads/R$id;->nativeStarRating:I

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/snaptube/ads/R$id;->nativeStarRatingText:I

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->withRating(Landroid/view/View;Landroid/view/View;)Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    sget v0, Lcom/snaptube/ads/R$id;->nativeAdIcon2:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdPos()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdForm()Lcom/snaptube/ads_log_v2/AdForm;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->setImage(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/snaptube/ads_log_v2/AdForm;)V

    sget v0, Lcom/snaptube/ads/R$id;->nativeAdIcon1:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdPos()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdForm()Lcom/snaptube/ads_log_v2/AdForm;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->setImage(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/snaptube/ads_log_v2/AdForm;)V

    if-eqz v18, :cond_8

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    move-object/from16 v1, p1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lo/zl1;->b(Landroid/content/Context;I)I

    move-result v1

    const/16 v2, 0xf0

    move-object/from16 v3, v18

    move-object/from16 v3, v18

    invoke-static {v3, v0, v1, v2}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->setBlurBg(Landroid/view/View;Ljava/lang/String;II)V

    :cond_8
    sget v0, Lcom/snaptube/ads/R$id;->nativeAdVideoTitle:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_9

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getVideoTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    sget v0, Lcom/snaptube/ads/R$id;->nativeAdVideoDesc:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_a

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getVideoDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    sget v0, Lcom/snaptube/ads/R$id;->nativeDownloadCount:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_c

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getCount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v3, 0x8

    goto :goto_2

    :cond_b
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    instance-of v0, v8, Lo/og3;

    if-eqz v0, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v0, p0

    move-object v1, v8

    iget-object v2, v0, Lo/nc6;->g:Lo/sd;

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    move-object v4, v1

    check-cast v4, Lo/og3;

    invoke-interface {v2, v3, v4}, Lo/sd;->c(Ljava/lang/String;Lo/og3;)V

    goto :goto_3

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v0, p0

    move-object v1, v8

    :goto_3
    if-nez v15, :cond_e

    instance-of v2, v14, Landroid/widget/TextView;

    if-eqz v2, :cond_e

    invoke-virtual/range {p5 .. p5}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getSocialContext()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v10, v14}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->withDescription(Landroid/view/View;)Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    :cond_e
    instance-of v2, v9, Lo/pe3;

    if-eqz v2, :cond_11

    move-object v2, v9

    check-cast v2, Lo/pe3;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lo/pe3$a;->a(Lo/pe3;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10

    if-eqz v1, :cond_f

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    aput-object v9, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v10, v1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->withCallToActions(Ljava/util/List;)Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    goto :goto_4

    :cond_f
    invoke-virtual {v10, v9}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->withCallToAction(Landroid/view/View;)Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    goto :goto_4

    :cond_10
    invoke-virtual {v10, v2}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->withCallToActions(Ljava/util/List;)Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    :cond_11
    :goto_4
    return-void
.end method
