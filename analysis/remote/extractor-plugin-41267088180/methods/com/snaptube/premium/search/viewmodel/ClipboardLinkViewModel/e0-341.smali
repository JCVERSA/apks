.method public final e0(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/if9;->r(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->H0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lo/or3;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel;->W()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lo/or3;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel;->a:Z

    :cond_2
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel;->a:Z

    if-eqz v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    iput-object p1, p0, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/snaptube/premium/search/viewmodel/ClipboardLinkViewModel;->b:Lo/y05;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lo/y05;->p(Ljava/lang/Object;)V

    :cond_5
    return v1
.end method
