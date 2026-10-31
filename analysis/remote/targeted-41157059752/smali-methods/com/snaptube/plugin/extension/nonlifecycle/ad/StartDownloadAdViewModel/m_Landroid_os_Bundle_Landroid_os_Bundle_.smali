.method public final m(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lo/g9;->a:Lo/g9$a;

    invoke-virtual {v1}, Lo/g9$a;->a()Z

    move-result v1

    invoke-static {}, Lo/q23;->b0()Lcom/snaptube/player_guide/IPlayerGuide;

    move-result-object v2

    sget-object v3, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->g:Lcom/snaptube/player_guide/PlayerGuideAdPos;

    invoke-interface {v2, v3}, Lcom/snaptube/player_guide/IPlayerGuide;->b(Lcom/snaptube/player_guide/PlayerGuideAdPos;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lo/yn5;->a(Landroid/os/Bundle;ZZ)Landroid/os/Bundle;

    sget-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->a:Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;

    invoke-virtual {v1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->t()D

    move-result-wide v1

    const-string v3, "key_preload_block_percentage"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "frequency_host"

    invoke-static {p1}, Lo/dn0;->h(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
