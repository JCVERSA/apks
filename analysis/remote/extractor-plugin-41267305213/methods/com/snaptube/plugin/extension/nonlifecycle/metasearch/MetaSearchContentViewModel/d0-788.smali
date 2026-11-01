.method public final d0(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)Lrx/c;
    .locals 3

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoInfo"

    invoke-static {p3, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lrx/c;->Q(Ljava/lang/Object;)Lrx/c;

    move-result-object p1

    const-string p2, "just(...)"

    invoke-static {p1, p2}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    sget-object v0, Lcom/snaptube/plugin/extension/nonlifecycle/metasearch/MetaSearchContentViewModel;->a:Lcom/snaptube/plugin/extension/nonlifecycle/metasearch/MetaSearchContentViewModel$a;

    invoke-virtual {v0, p3}, Lcom/snaptube/plugin/extension/nonlifecycle/metasearch/MetaSearchContentViewModel$a;->a(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lo/pu8;->b:Lo/pu8$a;

    invoke-virtual {p3}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/pu8$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/snaptube/plugin/extension/nonlifecycle/metasearch/MetaSearchContentViewModel;->Y(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;)Lrx/c;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Lcom/snaptube/plugin/extension/nonlifecycle/metasearch/MetaSearchContentViewModel$tryQueryMetaContent$1;

    invoke-direct {p2, p3}, Lcom/snaptube/plugin/extension/nonlifecycle/metasearch/MetaSearchContentViewModel$tryQueryMetaContent$1;-><init>(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)V

    new-instance p3, Lo/at4;

    invoke-direct {p3, p2}, Lo/at4;-><init>(Lo/dx2;)V

    invoke-virtual {p1, p3}, Lrx/c;->H(Lo/xw2;)Lrx/c;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p2, Lcom/snaptube/plugin/extension/nonlifecycle/metasearch/MetaSearchContentViewModel$tryQueryMetaContent$2;->INSTANCE:Lcom/snaptube/plugin/extension/nonlifecycle/metasearch/MetaSearchContentViewModel$tryQueryMetaContent$2;

    new-instance p3, Lo/bt4;

    invoke-direct {p3, p2}, Lo/bt4;-><init>(Lo/dx2;)V

    invoke-virtual {p1, p3}, Lrx/c;->e0(Lo/xw2;)Lrx/c;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "search meta fail"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lrx/c;->D(Ljava/lang/Throwable;)Lrx/c;

    move-result-object p1

    const-string p2, "error(...)"

    invoke-static {p1, p2}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "search meta fail extractQueryFromVideoInfo query is empty"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
