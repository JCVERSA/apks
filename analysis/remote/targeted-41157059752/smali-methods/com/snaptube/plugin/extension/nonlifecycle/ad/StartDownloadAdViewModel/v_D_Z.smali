.method public final v(D)Z
    .locals 9

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lo/g9;->a:Lo/g9$a;

    invoke-virtual {v1}, Lo/g9$a;->a()Z

    move-result v1

    invoke-static {}, Lo/q23;->b0()Lcom/snaptube/player_guide/IPlayerGuide;

    move-result-object v2

    sget-object v3, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->g:Lcom/snaptube/player_guide/PlayerGuideAdPos;

    invoke-interface {v2, v3}, Lcom/snaptube/player_guide/IPlayerGuide;->b(Lcom/snaptube/player_guide/PlayerGuideAdPos;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->q()I

    move-result v4

    int-to-double v4, v4

    mul-double v4, v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v0}, Lo/or3;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->l(Landroid/content/SharedPreferences;)I

    move-result v5

    if-ltz v5, :cond_0

    if-ge v5, v4, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0, v1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->p(Z)Lo/qv4;

    move-result-object v1

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->q()I

    move-result v4

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lo/qv4;->a()Lo/ul3;

    move-result-object v4

    invoke-virtual {v4}, Lo/ul3;->a()I

    move-result v4

    :goto_0
    const/4 v5, 0x1

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lo/qv4;->a()Lo/ul3;

    move-result-object v1

    invoke-virtual {v1}, Lo/ul3;->b()I

    move-result v1

    :goto_1
    if-ltz v4, :cond_6

    if-gtz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v0}, Lo/or3;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->n(Landroid/content/SharedPreferences;)I

    move-result v2

    int-to-double v6, v2

    int-to-double v1, v1

    mul-double v1, v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    cmpg-double v8, v6, v1

    if-gez v8, :cond_4

    return v3

    :cond_4
    int-to-double v1, v4

    mul-double v1, v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-virtual {p0, v0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->k(Landroid/content/SharedPreferences;)I

    move-result p2

    if-ltz p2, :cond_5

    if-ge p2, p1, :cond_5

    return v3

    :cond_5
    return v5

    :cond_6
    :goto_2
    return v3
.end method
