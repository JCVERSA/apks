.method public static O0()Lcom/snaptube/musicPlayer/PlayMode;
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snaptube/musicPlayer/PlayMode;->DEFAULT_PLAY_MODE:Lcom/snaptube/musicPlayer/PlayMode;

    invoke-virtual {v1}, Lcom/snaptube/musicPlayer/PlayMode;->getCode()I

    move-result v1

    const-string v2, "key_music_play_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/snaptube/musicPlayer/PlayMode;->fromInt(I)Lcom/snaptube/musicPlayer/PlayMode;

    move-result-object v0

    return-object v0
.end method
