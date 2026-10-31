.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    new-instance v1, Lcom/snaptube/ads/activity/SplashAdActivity$a;

    invoke-direct {v1, p0}, Lcom/snaptube/ads/activity/SplashAdActivity$a;-><init>(Lcom/snaptube/ads/activity/SplashAdActivity;)V

    invoke-static {p0, v1}, Lcom/snaptube/ad/tracker/activity/AdActivityTracker;->g(Landroidx/fragment/app/FragmentActivity;Lcom/snaptube/ad/tracker/activity/a$b;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "entrance"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "hot_launch"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->g:Z

    const-string v4, "pos"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->j:Ljava/lang/String;

    new-instance v5, Lcom/snaptube/ads/activity/SplashImpressionSceneTracker;

    invoke-direct {v5, v4}, Lcom/snaptube/ads/activity/SplashImpressionSceneTracker;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->m:Lcom/snaptube/ads/activity/SplashImpressionSceneTracker;

    const-string v4, "show_cover_bg"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iget-boolean v6, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->g:Z

    if-nez v6, :cond_1

    if-nez v4, :cond_2

    :cond_1
    invoke-static {p0}, Lo/mm8;->a(Landroid/app/Activity;)V

    sget v6, Lcom/snaptube/ads/R$style;->P4_Theme_AdSplashTransparent:I

    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    :cond_2
    invoke-super {p0, p1}, Lcom/snaptube/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->h:Ljava/lang/String;

    const-string p1, "ad_splash_activity_on_create"

    invoke-direct {p0, p1}, Lcom/snaptube/ads/activity/SplashAdActivity;->j1(Ljava/lang/String;)V

    sget-object p1, Lcom/snaptube/ads/base/AdsPos;->INTERSTITIAL_LAUNCH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {p1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->j:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/snaptube/ads/base/AdsPos;->HOT_SPLASH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {p1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->j:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    sget-object p1, Lcom/snaptube/ads/SplashScreenWrapper;->a:Lcom/snaptube/ads/SplashScreenWrapper;

    invoke-virtual {p1, p0}, Lcom/snaptube/ads/SplashScreenWrapper;->h(Landroid/app/Activity;)V

    :cond_4
    sget p1, Lcom/snaptube/ads/R$layout;->activity_splash_ad:I

    invoke-virtual {p0, p1}, Lcom/snaptube/base/BaseActivity;->setContentView(I)V

    sget p1, Lcom/snaptube/ads/R$id;->ad_splash_cover:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget v3, Lcom/snaptube/ads/R$id;->splash_layout:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {p0}, Lo/xk7;->d(Landroid/content/Context;)I

    move-result v6

    invoke-static {v3, v6, v5, v0, v0}, Lo/sr7;->x(Landroid/view/View;IZZZ)V

    invoke-direct {p0}, Lcom/snaptube/ads/activity/SplashAdActivity;->R0()V

    invoke-virtual {p0}, Lcom/snaptube/ads/activity/SplashAdActivity;->b1()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snaptube/ads/activity/SplashAdActivity$c;

    invoke-interface {v3, p0}, Lcom/snaptube/ads/activity/SplashAdActivity$c;->F(Lcom/snaptube/ads/activity/SplashAdActivity;)V

    const-string v3, "force_show"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v6, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->d:Lo/b7;

    iget-object v7, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->j:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lo/b7;->a(Ljava/lang/String;)Lo/h9;

    move-result-object v6

    iget-boolean v7, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->g:Z

    if-eqz v7, :cond_5

    if-eqz v6, :cond_5

    iget-object v6, v6, Lo/h9;->c:Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->getAdForm()Lcom/snaptube/ads_log_v2/AdForm;

    move-result-object v6

    sget-object v7, Lcom/snaptube/ads_log_v2/AdForm;->NATIVE:Lcom/snaptube/ads_log_v2/AdForm;

    if-ne v6, v7, :cond_5

    const/4 v6, 0x1

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    :goto_0
    if-eqz v4, :cond_6

    if-eqz v6, :cond_7

    :cond_6
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object p1, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->j:Ljava/lang/String;

    invoke-static {p1}, Lo/iq7;->c(Ljava/lang/String;)Lo/iq7$b;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->i:Lo/iq7$b;

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object p1

    const/16 v2, 0x4be

    const/16 v4, 0x41c

    const/16 v7, 0x4bc

    const/16 v8, 0x4bb

    filled-new-array {v7, v8, v2, v4}, [I

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/wandoujia/base/utils/RxBus;->c([I)Lrx/c;

    move-result-object p1

    new-instance v2, Lo/fn7;

    invoke-direct {v2, p0}, Lo/fn7;-><init>(Lcom/snaptube/ads/activity/SplashAdActivity;)V

    invoke-virtual {p1, v2}, Lrx/c;->t0(Lo/l3;)Lo/wu7;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->f:Lo/wu7;

    new-instance p1, Lo/m01;

    invoke-virtual {p0, v1}, Lcom/snaptube/ads/activity/SplashAdActivity;->J0(Landroid/content/Intent;)J

    move-result-wide v7

    invoke-direct {p1, p0, v7, v8}, Lo/m01;-><init>(Landroid/app/Activity;J)V

    iput-object p1, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->b:Lo/m01;

    invoke-virtual {p1, v3}, Lo/m01;->c(Z)V

    iget-object p1, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->b:Lo/m01;

    iget-object v2, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/snaptube/ads/activity/SplashAdActivity;->Q0()Lo/d1$b;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lo/m01;->k(Ljava/lang/String;Lo/un7;)Z

    move-result p1

    sget v2, Lcom/snaptube/ads/R$id;->container:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->l:Landroid/view/View;

    instance-of v2, v2, Lcom/snaptube/ads/view/SplashAdView;

    if-eqz v2, :cond_8

    const-string v2, "use_cache"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->l:Landroid/view/View;

    check-cast v2, Lcom/snaptube/ads/view/SplashAdView;

    invoke-virtual {v2, v0}, Lcom/snaptube/ads/view/SplashAdView;->setUseCache(Z)V

    iget-object v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->l:Landroid/view/View;

    check-cast v0, Lcom/snaptube/ads/view/SplashAdView;

    const-string v2, "waterfall_load_time_out"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/ads/view/SplashAdView;->setWaterFallLoadTimeout(J)V

    if-eqz v6, :cond_8

    iget-object v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->l:Landroid/view/View;

    check-cast v0, Lcom/snaptube/ads/view/SplashAdView;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/ads/view/SplashAdView;->setMinSplashDuration(J)V

    :cond_8
    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->c:Lo/hh3;

    invoke-interface {p1}, Lo/hh3;->a()V

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object p1

    const/16 v0, 0x448

    invoke-virtual {p1, v0}, Lcom/wandoujia/base/utils/RxBus;->f(I)V

    invoke-virtual {p0, v5}, Lcom/snaptube/ads/activity/SplashAdActivity;->e1(I)V

    :goto_1
    const-string p1, "ad_splash_activity_on_create_end"

    invoke-direct {p0, p1}, Lcom/snaptube/ads/activity/SplashAdActivity;->j1(Ljava/lang/String;)V

    return-void
.end method
