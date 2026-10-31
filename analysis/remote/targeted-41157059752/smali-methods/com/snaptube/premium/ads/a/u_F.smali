.method public u()F
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/tracker/ad_track_viewable_area_percentage"

    const/16 v2, 0x32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method
