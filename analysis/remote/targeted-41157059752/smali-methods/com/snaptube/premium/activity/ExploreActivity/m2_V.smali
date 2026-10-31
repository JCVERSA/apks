.method public final m2()V
    .locals 4

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/premium/app/PhoenixApplication;->b()Lcom/snaptube/premium/app/d;

    move-result-object v0

    invoke-interface {v0}, Lo/kk8;->r()Lo/cc9;

    move-result-object v0

    new-instance v1, Lcom/snaptube/premium/activity/ExploreActivity$e;

    invoke-direct {v1, p0}, Lcom/snaptube/premium/activity/ExploreActivity$e;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;)V

    new-instance v2, Lcom/snaptube/premium/activity/ExploreActivity$f;

    invoke-direct {v2, p0}, Lcom/snaptube/premium/activity/ExploreActivity$f;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;)V

    new-instance v3, Lcom/snaptube/premium/activity/ExploreActivity$g;

    invoke-direct {v3, p0}, Lcom/snaptube/premium/activity/ExploreActivity$g;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;)V

    invoke-static {v0, v1, v2, v3}, Lcom/snaptube/mixed_list/data/youtube/YouTubeSettingCache;->requestYoutubeSetting(Lo/cc9;Lo/k3;Lo/k3;Lo/l3;)Lo/wu7;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->r:Lo/wu7;

    :cond_0
    return-void
.end method
