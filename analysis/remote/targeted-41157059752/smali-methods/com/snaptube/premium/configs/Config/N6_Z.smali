.method public static N6()Z
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->i1()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.should_load_search_plugin_in_main_activity"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
