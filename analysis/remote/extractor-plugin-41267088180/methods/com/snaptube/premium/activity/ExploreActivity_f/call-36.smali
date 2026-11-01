.method public call()V
    .locals 3

    invoke-static {}, Lcom/snaptube/mixed_list/data/youtube/YouTubeSettingCache;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/snaptube/premium/settings/ContentLocationFragment;->f3(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->with(Landroid/content/Context;)Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->forceCheck()V

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity$f;->a:Lcom/snaptube/premium/activity/ExploreActivity;

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/snaptube/premium/activity/ExploreActivity;->V0(Lcom/snaptube/premium/activity/ExploreActivity;J)V

    return-void
.end method
