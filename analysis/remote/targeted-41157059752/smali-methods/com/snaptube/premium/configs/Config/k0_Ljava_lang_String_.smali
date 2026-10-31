.method public static k0()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->e1()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.lp_official_url"

    const-string v2, "https://www.larkplayer.com"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
