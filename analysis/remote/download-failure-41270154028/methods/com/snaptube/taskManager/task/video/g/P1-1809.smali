.method public final synthetic P1(Ljava/lang/Throwable;)Lrx/c;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/zc2;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lrx/c;->D(Ljava/lang/Throwable;)Lrx/c;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->h3()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/snaptube/premium/extractor/ExtractorDiskCache;->a:Lcom/snaptube/premium/extractor/ExtractorDiskCache;

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/premium/extractor/ExtractorDiskCache;->a(Ljava/lang/String;Z)Lcom/snaptube/extractor/pluginlib/models/ExtractResult;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;->m(Lcom/snaptube/extractor/pluginlib/models/ExtractResult;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;->j()Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object p1

    sget-object v1, Lcom/snaptube/extractor/pluginlib/models/VideoInfo$ExtractFrom;->DISK_CACHE:Lcom/snaptube/extractor/pluginlib/models/VideoInfo$ExtractFrom;

    invoke-virtual {p1, v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setExtractFrom(Lcom/snaptube/extractor/pluginlib/models/VideoInfo$ExtractFrom;)V

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;->j()Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object p1

    invoke-static {p1}, Lrx/c;->Q(Ljava/lang/Object;)Lrx/c;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->f4()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lrx/c;->D(Ljava/lang/Throwable;)Lrx/c;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/if9;->D(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->queryCodec(Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isNeedNativeMux()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lrx/c;->D(Ljava/lang/Throwable;)Lrx/c;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-static {v0}, Lo/z08;->a(Lcom/snaptube/taskManager/datasets/TaskInfo;)Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lrx/c;->Q(Ljava/lang/Object;)Lrx/c;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    invoke-static {p1}, Lrx/c;->D(Ljava/lang/Throwable;)Lrx/c;

    move-result-object p1

    return-object p1
.end method
