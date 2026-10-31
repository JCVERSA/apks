.method public static getOfficialSiteUrl()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPrefContent()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.official_site_url"

    const-string v2, "https://www.snaptube.com"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
