.method public static j(Ljava/util/List;Lcom/snaptube/extractor/pluginlib/models/Format;)[Lcom/snaptube/extractor/pluginlib/models/Format;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snaptube/extractor/pluginlib/models/Format;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/snaptube/video/videoextractor/impl/facebook/FacebookCodec;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    aput-object p1, v0, v1

    :cond_1
    aget-object p0, v0, v1

    if-eqz p0, :cond_2

    return-object v0

    :cond_2
    new-instance p0, Lcom/snaptube/taskManager/task/TaskException;

    sget-object p1, Lcom/snaptube/taskManager/task/TaskError;->HD_AUDIO_STREAM_NOT_FOUND:Lcom/snaptube/taskManager/task/TaskError;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/snaptube/taskManager/task/TaskException;-><init>(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    throw p0
.end method
