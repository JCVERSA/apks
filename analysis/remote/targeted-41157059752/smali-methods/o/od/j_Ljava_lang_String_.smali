.method public static j()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "/selfbuild/adx_banner/mraid_regex"

    const-string v2, "[^a-zA-Z0-9]mraid\\.js[^a-zA-Z0-9]"

    const/4 v3, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    return-object v0
.end method
