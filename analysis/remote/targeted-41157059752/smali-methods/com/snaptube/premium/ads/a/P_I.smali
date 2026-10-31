.method public P()I
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/tracker/ad_track_visibility_polling_interval"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
