.method public final x()Z
    .locals 2

    const-string v0, "IAdsManager"

    invoke-static {v0}, Lo/zh4;->b(Ljava/lang/String;)Lo/vd3;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.snaptube.ads.manager.IAdsManager"

    invoke-static {v0, v1}, Lo/or3;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/ba3;

    invoke-interface {v0}, Lo/ba3;->b()Lo/ne3;

    move-result-object v0

    sget-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->b:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/x93;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
