.method public final p(Z)Lo/qv4;
    .locals 7

    sget-object v0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->g:Lcom/snaptube/player_guide/PlayerGuideAdPos;

    invoke-static {v0}, Lo/q23;->p(Lcom/snaptube/player_guide/PlayerGuideAdPos;)Lcom/snaptube/player_guide/IPlayerGuideConfig$a;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/snaptube/player_guide/IPlayerGuideConfig$Key;->UNINSTALLED_NEW_USER_IMPRESSION_STRATEGY:Lcom/snaptube/player_guide/IPlayerGuideConfig$Key;

    :goto_0
    invoke-virtual {v1}, Lcom/snaptube/player_guide/IPlayerGuideConfig$Key;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/snaptube/player_guide/IPlayerGuideConfig$Key;->UNINSTALLED_OLD_USER_IMPRESSION_STRATEGY:Lcom/snaptube/player_guide/IPlayerGuideConfig$Key;

    goto :goto_0

    :goto_1
    new-instance v2, Lo/qv4;

    new-instance v3, Lo/ul3;

    const/4 v4, 0x4

    if-eqz p1, :cond_1

    const/4 v5, -0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x4

    :goto_2
    const/4 v6, 0x1

    invoke-direct {v3, v6, v5}, Lo/ul3;-><init>(II)V

    new-instance v5, Lo/ul3;

    if-eqz p1, :cond_2

    goto :goto_3

    :cond_2
    const/4 v6, 0x4

    :goto_3
    invoke-direct {v5, v6, v4}, Lo/ul3;-><init>(II)V

    invoke-direct {v2, v3, v5}, Lo/qv4;-><init>(Lo/ul3;Lo/ul3;)V

    invoke-static {v0, v1, v2}, Lcom/snaptube/player_guide/h;->i(Lcom/snaptube/player_guide/IPlayerGuideConfig$a;Ljava/lang/String;Lo/qv4;)Lo/qv4;

    move-result-object p1

    return-object p1
.end method
