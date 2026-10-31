.method public static D2(Z)Z
    .locals 2

    if-eqz p0, :cond_0

    const-string p0, "KEY_VIDEO_PLAYER_USED"

    goto :goto_0

    :cond_0
    const-string p0, "KEY_MUSIC_PLAYER_USED"

    :goto_0
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
