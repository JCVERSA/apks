.method public static N0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/snaptube/ads/activity/SplashAdActivity;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/snaptube/ads/base/AdsPos;->INTERSTITIAL_LAUNCH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v0}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/iq7;->c(Ljava/lang/String;)Lo/iq7$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lo/iq7$b;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/snaptube/ads/activity/SplashAdActivity;->o:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/snaptube/ads/activity/SplashAdActivity;->o:Ljava/lang/String;

    return-object v0
.end method
