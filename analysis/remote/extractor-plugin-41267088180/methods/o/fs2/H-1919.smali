.method public final H(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lo/uj8$b;Lo/y05;)Lo/uj8$b;
    .locals 5

    const/4 v4, 0x1

    const-string v0, "source"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x5

    const-string v0, "LivooeoDditaefnIv"

    const-string v0, "videoInfoLiveData"

    const/4 v4, 0x7

    invoke-static {p3, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x7

    sget-object v0, Lo/ao0;->a:Lo/ao0$a;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object v1

    const/4 v4, 0x0

    const-string v2, "o(d.rb.)erxgliUtea.VoEtct"

    const-string v2, "getVideoUrlExtractor(...)"

    const/4 v4, 0x0

    invoke-static {v1, v2}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x5

    invoke-virtual {v0, p1, v1}, Lo/ao0$a;->c(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lo/dv8;)Z

    move-result v0

    const/4 v4, 0x7

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    const/4 v4, 0x2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lo/zu;->c()V

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getFormats()Ljava/util/List;

    move-result-object p1

    const/4 v4, 0x3

    if-nez p1, :cond_2

    return-object p2

    :cond_2
    const/4 v4, 0x4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    const/4 v4, 0x4

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x1

    check-cast v2, Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-static {v2}, Lo/or3;->c(Ljava/lang/Object;)V

    const/4 v4, 0x3

    invoke-virtual {p0, v2}, Lo/fs2;->z(Lcom/snaptube/extractor/pluginlib/models/Format;)Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/Format;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    const-string v3, "getDownloadUrl(...)"

    invoke-static {v2, v3}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x5

    if-gtz v1, :cond_5

    return-object p2

    :cond_5
    new-instance p2, Lo/uj8$b;

    const/4 v4, 0x3

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x7

    check-cast v1, Lcom/snaptube/extractor/pluginlib/models/Format;

    const/4 v4, 0x3

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const/4 v4, 0x0

    new-instance v2, Lo/fs2$a;

    const/4 v4, 0x7

    invoke-direct {v2, p1, p3}, Lo/fs2$a;-><init>(Ljava/util/List;Lo/y05;)V

    const/4 v4, 0x0

    invoke-direct {p2, v0, v1, v2}, Lo/uj8$b;-><init>(Ljava/util/List;Ljava/util/Map;Lo/zu$c;)V

    const/4 v4, 0x7

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/premium/app/PhoenixApplication;->N()Lo/uj8;

    move-result-object p1

    const/4 v4, 0x3

    invoke-virtual {p1, p2}, Lo/uj8;->b(Lo/zu;)V

    const/4 v4, 0x5

    return-object p2
.end method
