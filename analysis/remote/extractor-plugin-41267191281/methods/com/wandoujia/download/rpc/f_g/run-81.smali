.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/wandoujia/download/rpc/f$g;->a:Lcom/wandoujia/download/rpc/f;

    invoke-static {v0}, Lcom/wandoujia/download/rpc/f;->f(Lcom/wandoujia/download/rpc/f;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/download/rpc/f$g;->a:Lcom/wandoujia/download/rpc/f;

    invoke-static {v0}, Lcom/wandoujia/download/rpc/f;->c(Lcom/wandoujia/download/rpc/f;)Lcom/wandoujia/download/rpc/h;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/download/rpc/h;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/x29;->K(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/download/rpc/f$g;->a:Lcom/wandoujia/download/rpc/f;

    new-instance v1, Lcom/wandoujia/download/rpc/g;

    iget-object v2, p0, Lcom/wandoujia/download/rpc/f$g;->a:Lcom/wandoujia/download/rpc/f;

    invoke-static {v2}, Lcom/wandoujia/download/rpc/f;->c(Lcom/wandoujia/download/rpc/f;)Lcom/wandoujia/download/rpc/h;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/wandoujia/download/rpc/g;-><init>(Lcom/wandoujia/download/rpc/h;)V

    invoke-static {v0, v1}, Lcom/wandoujia/download/rpc/f;->p(Lcom/wandoujia/download/rpc/f;Lcom/wandoujia/download/rpc/g;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/download/rpc/f$g;->a:Lcom/wandoujia/download/rpc/f;

    invoke-static {v0}, Lcom/wandoujia/download/rpc/f;->s(Lcom/wandoujia/download/rpc/f;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/f$g;->a:Lcom/wandoujia/download/rpc/f;

    new-instance v1, Lcom/wandoujia/download/rpc/g;

    iget-object v2, p0, Lcom/wandoujia/download/rpc/f$g;->a:Lcom/wandoujia/download/rpc/f;

    invoke-static {v2}, Lcom/wandoujia/download/rpc/f;->c(Lcom/wandoujia/download/rpc/f;)Lcom/wandoujia/download/rpc/h;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/wandoujia/download/rpc/g;-><init>(Lcom/wandoujia/download/rpc/h;)V

    invoke-static {v0, v1}, Lcom/wandoujia/download/rpc/f;->p(Lcom/wandoujia/download/rpc/f;Lcom/wandoujia/download/rpc/g;)Z

    return-void

    :cond_1
    new-instance v2, Lcom/snaptube/premium/extractor/a$a;

    iget-object v3, p0, Lcom/wandoujia/download/rpc/f$g;->a:Lcom/wandoujia/download/rpc/f;

    invoke-static {v3}, Lcom/wandoujia/download/rpc/f;->c(Lcom/wandoujia/download/rpc/f;)Lcom/wandoujia/download/rpc/h;

    move-result-object v3

    iget-object v3, v3, Lcom/wandoujia/download/rpc/h;->k:Ljava/lang/String;

    const-string v4, "download_retry"

    invoke-direct {v2, v3, v4}, Lcom/snaptube/premium/extractor/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/snaptube/premium/extractor/a$a;->c(Z)Lcom/snaptube/premium/extractor/a$a;

    move-result-object v1

    const-string v2, "RETRY_FROM_FORBIDDEN"

    invoke-virtual {v1, v2}, Lcom/snaptube/premium/extractor/a$a;->b(Ljava/lang/String;)Lcom/snaptube/premium/extractor/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snaptube/premium/extractor/a$a;->a()Lcom/snaptube/premium/extractor/a;

    move-result-object v1

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;->z(Lcom/snaptube/premium/extractor/a;)Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getExtractorType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getFormats()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snaptube/extractor/pluginlib/models/Format;

    :try_start_0
    invoke-virtual {v3}, Lcom/snaptube/extractor/pluginlib/models/Format;->clone()Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, p0, Lcom/wandoujia/download/rpc/f$g;->a:Lcom/wandoujia/download/rpc/f;

    invoke-static {v4, v3}, Lcom/wandoujia/download/rpc/f;->n(Lcom/wandoujia/download/rpc/f;Lcom/snaptube/extractor/pluginlib/models/Format;)Z

    iget-object v4, p0, Lcom/wandoujia/download/rpc/f$g;->a:Lcom/wandoujia/download/rpc/f;

    invoke-static {v4, v3}, Lcom/wandoujia/download/rpc/f;->o(Lcom/wandoujia/download/rpc/f;Lcom/snaptube/extractor/pluginlib/models/Format;)Z

    invoke-virtual {p0, v0, v3}, Lcom/wandoujia/download/rpc/f$g;->a(Ljava/lang/String;Lcom/snaptube/extractor/pluginlib/models/Format;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/download/rpc/f$g;->a:Lcom/wandoujia/download/rpc/f;

    invoke-static {v0}, Lcom/wandoujia/download/rpc/f;->c(Lcom/wandoujia/download/rpc/f;)Lcom/wandoujia/download/rpc/h;

    move-result-object v0

    iput-object v2, v0, Lcom/wandoujia/download/rpc/h;->N:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/wandoujia/download/rpc/f$g;->a:Lcom/wandoujia/download/rpc/f;

    new-instance v1, Lcom/wandoujia/download/rpc/g;

    iget-object v2, p0, Lcom/wandoujia/download/rpc/f$g;->a:Lcom/wandoujia/download/rpc/f;

    invoke-static {v2}, Lcom/wandoujia/download/rpc/f;->c(Lcom/wandoujia/download/rpc/f;)Lcom/wandoujia/download/rpc/h;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/wandoujia/download/rpc/g;-><init>(Lcom/wandoujia/download/rpc/h;)V

    invoke-static {v0, v1}, Lcom/wandoujia/download/rpc/f;->p(Lcom/wandoujia/download/rpc/f;Lcom/wandoujia/download/rpc/g;)Z

    return-void
.end method
