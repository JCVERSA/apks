.method public final q()J
    .locals 4

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->v()Ljava/util/ArrayList;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/Format;->isImage()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-gez v2, :cond_1

    invoke-static {}, Lo/xu0;->p()V

    goto :goto_0

    :cond_2
    :goto_1
    int-to-long v0, v2

    const-wide/16 v2, 0x3

    mul-long v0, v0, v2

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->e:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    if-nez v2, :cond_3

    const-string v2, "videoInfo"

    invoke-static {v2}, Lo/or3;->w(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_3
    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getDurationInSecond()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method
