.method public final synthetic Y0(Lcom/wandoujia/base/utils/RxBus$d;)V
    .locals 3

    iget v0, p1, Lcom/wandoujia/base/utils/RxBus$d;->a:I

    const/16 v1, 0x41c

    if-eq v0, v1, :cond_5

    const/16 v1, 0x4be

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/16 p1, 0x4bb

    if-eq v0, p1, :cond_1

    const/16 p1, 0x4bc

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/ads/activity/SplashAdActivity;->S0()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v2}, Lcom/snaptube/ads/activity/SplashAdActivity;->e1(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/snaptube/ads/activity/SplashAdActivity;->S0()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/snaptube/ads/activity/SplashAdActivity;->e1(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/snaptube/ads/activity/SplashAdActivity;->S0()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/wandoujia/base/utils/RxBus$d;->d:Ljava/lang/Object;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    invoke-virtual {p0, v2}, Lcom/snaptube/ads/activity/SplashAdActivity;->e1(I)V

    goto :goto_0

    :cond_4
    iput-boolean v2, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->k:Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/snaptube/ads/activity/SplashAdActivity;->S0()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/snaptube/ads/activity/SplashAdActivity;->e1(I)V

    :cond_6
    :goto_0
    return-void
.end method
