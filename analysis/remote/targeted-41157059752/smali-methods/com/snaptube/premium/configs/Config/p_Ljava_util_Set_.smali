.method public static p()Ljava/util/Set;
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->e1()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.batch_download_audio_formats"

    sget-object v2, Lcom/snaptube/premium/utils/BatchDownloadUtil;->a:Ljava/util/HashSet;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
