.method public static t2()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.whatsapp"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "pref.content_config"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "key.whatsapp_package_name"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
