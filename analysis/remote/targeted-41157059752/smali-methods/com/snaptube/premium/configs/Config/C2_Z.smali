.method public static C2()Z
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_has_fetched_plugin_info_successfully_vc"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v1, 0x47c3a22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method
