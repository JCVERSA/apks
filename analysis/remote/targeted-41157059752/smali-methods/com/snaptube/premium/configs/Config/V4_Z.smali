.method public static V4()Z
    .locals 3

    const-string v0, "pref.switches"

    invoke-static {v0}, Lcom/snaptube/premium/configs/Config;->N1(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.refresh_on_back_pressed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
