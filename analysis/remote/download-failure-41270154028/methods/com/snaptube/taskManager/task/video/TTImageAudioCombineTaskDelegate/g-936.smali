.method public g(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;)V
    .locals 3

    const-string v0, "videoInfo"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetFormat"

    invoke-static {p2, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->e:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    iput-object p2, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->f:Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getFormats()Ljava/util/List;

    move-result-object p1

    const-string v0, "getFormats(...)"

    invoke-static {p1, v0}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/Format;->isImage()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->F0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->v()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->w()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lo/wd9;->h(Ljava/io/File;)V

    invoke-static {}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->y()Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->E()V

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->B()V

    return-void
.end method
