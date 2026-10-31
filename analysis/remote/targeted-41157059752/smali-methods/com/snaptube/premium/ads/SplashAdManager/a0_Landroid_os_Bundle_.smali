.method public a0()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_last_background_mills"

    iget-wide v2, p0, Lcom/snaptube/premium/ads/SplashAdManager;->m:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "key_full_screen_ad_imp_millis"

    iget-wide v2, p0, Lcom/snaptube/premium/ads/SplashAdManager;->i:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method
