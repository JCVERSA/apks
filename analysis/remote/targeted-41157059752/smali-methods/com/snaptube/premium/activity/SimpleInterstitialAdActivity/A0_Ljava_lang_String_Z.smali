.method public final A0(Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/snaptube/ads_log_v2/c;->h()Lcom/snaptube/ads_log_v2/c;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snaptube/ads_log_v2/c;->d([Ljava/lang/String;)V

    const v0, 0x7f0900a5

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0063

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09023c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snaptube/ads/view/SplashAdView;

    iget-object v1, p0, Lcom/snaptube/premium/activity/SimpleInterstitialAdActivity;->c:Lo/d1$b;

    invoke-virtual {v0, v1}, Lcom/snaptube/ads/view/SplashAdView;->setCallback(Lo/d1$b;)V

    invoke-static {p1}, Lo/od;->r(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/ads/view/SplashAdView;->setShowAdTimeout(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {v0, v3}, Lcom/snaptube/ads/view/SplashAdView;->setShouldIgnoreShowAdTimeout(Z)V

    :goto_0
    invoke-static {p1}, Lo/od;->s(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snaptube/ads/view/SplashAdView;->setCtaViewIds([I)V

    goto :goto_1

    :cond_1
    const v1, 0x7f0906ac

    const v2, 0x7f0906a7

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snaptube/ads/view/SplashAdView;->setCtaViewIds([I)V

    :goto_1
    invoke-virtual {v0, p1}, Lcom/snaptube/ads/view/SplashAdView;->q2(Ljava/lang/String;)V

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :goto_2
    invoke-static {p1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method
