.method public final a2()V
    .locals 5

    iget-boolean v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->z:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->z:Z

    sget-object v0, Lcom/snaptube/ads/base/AdsPos;->START_DOWNLOAD_INTERSTITIAL:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v0}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/od;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "launch"

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->A(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->k:Ldagger/Lazy;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/snaptube/ads/base/AdsPos;->NATIVE_YOUTUBE_DETAILS_TOP_BANNER:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v0}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/od;->c(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "ad_request_scene"

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/snaptube/premium/activity/ExploreActivity;->k:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/gb;

    invoke-virtual {v0}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/jb;->e(Ljava/lang/String;)Lo/jb;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lo/jb;->f(Ljava/lang/String;Ljava/lang/Object;)Lo/jb;

    move-result-object v0

    invoke-interface {v2, v0}, Lo/gb;->c(Lo/jb;)V

    :cond_1
    sget-object v0, Lcom/snaptube/ads/base/AdsPos;->NATIVE_YOUTUBE_DETAILS_BANNER:Lcom/snaptube/ads/base/AdsPos;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Lcom/snaptube/ads/base/AdsPos;->subPos(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/od;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/snaptube/premium/activity/ExploreActivity;->k:Ldagger/Lazy;

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/gb;

    invoke-static {v0}, Lo/jb;->e(Ljava/lang/String;)Lo/jb;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lo/jb;->f(Ljava/lang/String;Ljava/lang/Object;)Lo/jb;

    move-result-object v0

    invoke-interface {v4, v0}, Lo/gb;->c(Lo/jb;)V

    :cond_2
    sget-object v0, Lcom/snaptube/ads/base/AdsPos;->NATIVE_MYFILE_ALL_PLAY_LIST:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v0, v2}, Lcom/snaptube/ads/base/AdsPos;->subPos(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/od;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lo/ra2;

    invoke-direct {v1, p0, v0}, Lo/ra2;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/wandoujia/base/utils/ThreadPool;->a(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method
