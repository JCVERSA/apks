.method public C0()Z
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->b:Ljava/lang/String;

    const-class v1, Lcom/snaptube/ads/activity/SplashAdActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
