.method public final s()Lcom/snaptube/player_guide/IPlayerGuide;
    .locals 2

    sget-object v0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->h:Lo/t14;

    invoke-interface {v0}, Lo/t14;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/snaptube/player_guide/IPlayerGuide;

    return-object v0
.end method
