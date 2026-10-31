.method public final V0()Z
    .locals 2

    iget-object v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->h:Ljava/lang/String;

    const-string v1, "cold_launch"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
