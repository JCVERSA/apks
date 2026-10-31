.method public h()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/tracker/ad_track_impression_mapping_field"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
