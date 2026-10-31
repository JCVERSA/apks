.method public final I()V
    .locals 3

    const-string v0, "StartDownloadAdViewModel"

    const-string v1, "\u8df3\u8f6c gp"

    invoke-static {v0, v1}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->s()Lcom/snaptube/player_guide/IPlayerGuide;

    move-result-object v0

    sget-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->g:Lcom/snaptube/player_guide/PlayerGuideAdPos;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/snaptube/player_guide/IPlayerGuide;->h(Lcom/snaptube/player_guide/PlayerGuideAdPos;Ljava/util/Map;Ljava/util/Map;)Z

    return-void
.end method
