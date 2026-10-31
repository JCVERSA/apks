.method public static a()Z
    .locals 3

    invoke-static {}, Lo/y6;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/y6;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.enable_ad_block"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
