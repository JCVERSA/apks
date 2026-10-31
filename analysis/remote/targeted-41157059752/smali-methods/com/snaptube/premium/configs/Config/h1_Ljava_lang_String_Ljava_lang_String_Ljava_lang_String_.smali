.method public static h1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const-string v1, "pref.content_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
