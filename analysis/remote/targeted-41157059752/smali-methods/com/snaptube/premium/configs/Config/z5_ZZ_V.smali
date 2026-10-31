.method public static z5(ZZ)V
    .locals 1

    if-eqz p0, :cond_0

    const-string p0, "KEY_VIDEO_PLAYER_USED"

    goto :goto_0

    :cond_0
    const-string p0, "KEY_MUSIC_PLAYER_USED"

    :goto_0
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/snaptube/premium/configs/Config;->Q6(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method
