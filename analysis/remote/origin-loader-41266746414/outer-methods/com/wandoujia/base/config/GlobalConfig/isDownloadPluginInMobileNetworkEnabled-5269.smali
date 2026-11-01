.method public static isDownloadPluginInMobileNetworkEnabled()Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.enable_plugin_download_in_mobile"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
