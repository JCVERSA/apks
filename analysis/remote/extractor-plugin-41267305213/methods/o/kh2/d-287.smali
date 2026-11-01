.method public d()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/kh2;->a:Landroid/content/Context;

    invoke-static {v2}, Lo/az7;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lang"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "region"

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/wandoujia/download/storage/DownloadRootDirStore;->a:Lcom/wandoujia/download/storage/DownloadRootDirStore;

    invoke-virtual {v1}, Lcom/wandoujia/download/storage/DownloadRootDirStore;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "download_dir"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/snaptube/plugin/PluginId;->VIDEO_SEARCH_ENGINE:Lcom/snaptube/plugin/PluginId;

    invoke-virtual {v1}, Lcom/snaptube/plugin/PluginId;->getCurrentVersionWithBackup()Ljava/lang/String;

    move-result-object v1

    const-string v2, "plugin_video_search_engine"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/snaptube/plugin/PluginId;->SITE_EXTRACTOR:Lcom/snaptube/plugin/PluginId;

    invoke-virtual {v1}, Lcom/snaptube/plugin/PluginId;->getCurrentVersionWithBackup()Ljava/lang/String;

    move-result-object v1

    const-string v2, "plugin_site_extractor"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/snaptube/plugin/PluginId;->YOUTUBE_DATA_ADAPTER:Lcom/snaptube/plugin/PluginId;

    invoke-virtual {v1}, Lcom/snaptube/plugin/PluginId;->getCurrentVersionWithBackup()Ljava/lang/String;

    move-result-object v1

    const-string v2, "plugin_ytb_data_adapter"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s3_log_download_url"

    invoke-virtual {p0}, Lo/kh2;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo/sq5;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "storage_permission"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lo/kh2;->a:Landroid/content/Context;

    invoke-static {v1}, Lo/ym8;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vip_check"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->o4()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "spf_enabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "plus_enabled"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "storage_info"

    invoke-static {}, Lo/rh2;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo/hs7;->n()Lo/hs7;

    move-result-object v1

    invoke-virtual {v1}, Lo/hs7;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "has_ext_sd_storage"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lo/kh2;->a:Landroid/content/Context;

    invoke-static {v1}, Lo/q55;->F(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "is_use_vpn"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/if9;->r(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "is_download_enabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
