.method public final B()V
    .locals 9

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->v()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v5}, Lcom/snaptube/extractor/pluginlib/models/Format;->isImage()Z

    move-result v5

    if-eqz v5, :cond_0

    const-wide/32 v5, 0x2a800

    goto :goto_1

    :cond_0
    const-wide/32 v5, 0x100000

    :goto_1
    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3, v4}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->C(J)V

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->j:Lo/uj8$b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lo/zu;->c()V

    :cond_2
    iput-wide v1, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->k:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->v()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v4}, Lcom/snaptube/extractor/pluginlib/models/Format;->getSize()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-gtz v7, :cond_3

    invoke-virtual {v4}, Lcom/snaptube/extractor/pluginlib/models/Format;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-wide v5, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->k:J

    invoke-virtual {v4}, Lcom/snaptube/extractor/pluginlib/models/Format;->getSize()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->k:J

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_5

    return-void

    :cond_5
    new-instance v1, Lo/uj8$b;

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->f:Lcom/snaptube/extractor/pluginlib/models/Format;

    if-nez v2, :cond_6

    const-string v2, "targetFormat"

    invoke-static {v2}, Lo/or3;->w(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_6
    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/Format;->getHeaders()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate$b;

    invoke-direct {v3, p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate$b;-><init>(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)V

    invoke-direct {v1, v0, v2, v3}, Lo/uj8$b;-><init>(Ljava/util/List;Ljava/util/Map;Lo/zu$c;)V

    iput-object v1, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->j:Lo/uj8$b;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/premium/app/PhoenixApplication;->N()Lo/uj8;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->j:Lo/uj8$b;

    invoke-virtual {v0, v1}, Lo/uj8;->b(Lo/zu;)V

    return-void
.end method
