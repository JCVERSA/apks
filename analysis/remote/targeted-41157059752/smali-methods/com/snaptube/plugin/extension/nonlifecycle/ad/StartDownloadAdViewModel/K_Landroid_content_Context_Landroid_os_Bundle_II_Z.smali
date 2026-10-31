.method public final K(Landroid/content/Context;Landroid/os/Bundle;II)Z
    .locals 9

    invoke-virtual {p0, p3, p4, p2}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->u(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    sget-object p3, Lcom/snaptube/ad/frequency/FrequencyControlManager;->a:Lcom/snaptube/ad/frequency/FrequencyControlManager;

    sget-object p4, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->b:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {p4}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pos(...)"

    invoke-static {v0, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v0, p2}, Lcom/snaptube/ad/frequency/FrequencyControlManager;->k(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p4}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v0, p2}, Lcom/snaptube/ad/frequency/FrequencyControlManager;->b(Ljava/lang/String;Landroid/os/Bundle;)Lo/ic;

    move-result-object p2

    sget-object p3, Lo/ic;->c:Lo/ic$a;

    invoke-virtual {p3, p2}, Lo/ic$a;->a(Lo/ic;)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    sget-object p1, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->a:Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;

    invoke-virtual {p4}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3, p2}, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->a(Ljava/lang/String;Lo/ic;)V

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->x()Z

    move-result p2

    const/4 p3, 0x1

    const-string v2, "StartDownloadAdViewModel"

    if-eqz p2, :cond_1

    const-string p2, "\u4e0b\u8f7d\u540e\u5e7f\u544a\u573a\u666f\u6709\u5df2\u52a0\u8f7d\u5e7f\u544a\uff0c\u5c55\u793a\u5e7f\u544a"

    invoke-static {v2, p2}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x1

    const-string v5, "hot_launch"

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/snaptube/ads/activity/SplashAdActivity;->i1(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Z

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "getGenericSharedPrefs(...)"

    invoke-static {p1, p2}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->E(Landroid/content/SharedPreferences;I)V

    sget-object p1, Lo/g9;->a:Lo/g9$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo/g9$a;->b(J)V

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lo/g9$a;->c(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->a:Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;

    invoke-virtual {p4}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p4, Lo/ic$b;

    const-string v1, "no cache"

    const-string v3, ""

    invoke-direct {p4, v1, v3}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p4}, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->a(Ljava/lang/String;Lo/ic;)V

    const-string p1, "\u4e0b\u8f7d\u540e\u5e7f\u544a\u573a\u666f\u65e0\u52a0\u8f7d\u5e7f\u544a\uff0c\u8c03\u7528\u9884\u52a0\u8f7d"

    invoke-static {v2, p1}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "no_cache"

    const/4 p2, 0x0

    invoke-static {p2, p1, p3, p2}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->B(Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return v0
.end method
