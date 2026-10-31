.method public static final J(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 6

    const-string v0, "context"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u5c1d\u8bd5\u5c55\u793a\u4e0b\u8f7d\u540e\u5e7f\u544a\u6216\u5bfc\u6d41"

    const-string v1, "StartDownloadAdViewModel"

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->a:Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;

    invoke-virtual {v0, p1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->w(Landroid/os/Bundle;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string p0, "\u4e0b\u8f7d\u540e\u5e7f\u544a\u573a\u666f\u4e0d\u7b26\u5408"

    invoke-static {v1, p0}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    sget-object v1, Lo/g9;->a:Lo/g9$a;

    invoke-virtual {v1}, Lo/g9$a;->a()Z

    move-result v1

    invoke-static {}, Lo/q23;->b0()Lcom/snaptube/player_guide/IPlayerGuide;

    move-result-object v2

    sget-object v4, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->g:Lcom/snaptube/player_guide/PlayerGuideAdPos;

    invoke-interface {v2, v4}, Lcom/snaptube/player_guide/IPlayerGuide;->b(Lcom/snaptube/player_guide/PlayerGuideAdPos;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->q()I

    move-result v1

    invoke-virtual {v0, p0, p1, v4, v1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->K(Landroid/content/Context;Landroid/os/Bundle;II)Z

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->p(Z)Lo/qv4;

    move-result-object v1

    invoke-virtual {v1}, Lo/qv4;->a()Lo/ul3;

    move-result-object v2

    invoke-virtual {v2}, Lo/ul3;->b()I

    move-result v2

    invoke-virtual {v1}, Lo/qv4;->a()Lo/ul3;

    move-result-object v5

    invoke-virtual {v5}, Lo/ul3;->a()I

    move-result v5

    invoke-virtual {v0, p0, p1, v2, v5}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->K(Landroid/content/Context;Landroid/os/Bundle;II)Z

    move-result p0

    invoke-virtual {v1}, Lo/qv4;->b()Lo/ul3;

    move-result-object v2

    invoke-virtual {v2}, Lo/ul3;->b()I

    move-result v2

    invoke-virtual {v1}, Lo/qv4;->b()Lo/ul3;

    move-result-object v1

    invoke-virtual {v1}, Lo/ul3;->a()I

    move-result v1

    invoke-virtual {v0, p1, p0, v2, v1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->L(Landroid/os/Bundle;ZII)Z

    move-result p1

    if-nez p0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    :goto_0
    return v3
.end method
