.method public static k(ZLjava/util/List;Lcom/snaptube/extractor/pluginlib/models/Format;)[Lcom/snaptube/extractor/pluginlib/models/Format;
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v4}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->M4A_128K:Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;

    invoke-virtual {v6}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->M4A_256K:Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;

    invoke-virtual {v6}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/snaptube/extractor/pluginlib/models/Format;->getQuality()I

    move-result v5

    invoke-virtual {v4}, Lcom/snaptube/extractor/pluginlib/models/Format;->getQuality()I

    move-result v6

    if-ge v5, v6, :cond_0

    :cond_2
    move-object v3, v4

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_a

    const/4 v1, 0x1

    aput-object v3, v0, v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_5
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isYoutubeHDTag(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz p0, :cond_7

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->getOriginCodec(Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;

    move-result-object p0

    if-eqz p0, :cond_6

    :try_start_0
    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/Format;->clone()Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0, v1}, Lo/if9;->a(Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;Lcom/snaptube/extractor/pluginlib/models/Format;)Lcom/snaptube/extractor/pluginlib/models/Format;

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Lcom/snaptube/taskManager/task/TaskException;

    sget-object p2, Lcom/snaptube/taskManager/task/TaskError;->CLONE_VIDEO_FORMAT_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/snaptube/taskManager/task/TaskException;-><init>(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p0, Lcom/snaptube/taskManager/task/TaskException;

    sget-object p1, Lcom/snaptube/taskManager/task/TaskError;->UNKNOWN_FORMAT:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/snaptube/taskManager/task/TaskException;-><init>(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    const/4 p0, 0x0

    aput-object v1, v0, p0

    return-object v0

    :cond_8
    new-instance p0, Lcom/snaptube/taskManager/task/TaskException;

    sget-object p1, Lcom/snaptube/taskManager/task/TaskError;->UNKNOWN_FORMAT:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/snaptube/taskManager/task/TaskException;-><init>(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Lcom/snaptube/taskManager/task/TaskException;

    sget-object p1, Lcom/snaptube/taskManager/task/TaskError;->HD_VIDEO_FORMAT_NOT_FOUND:Lcom/snaptube/taskManager/task/TaskError;

    invoke-direct {p0, p1, v2}, Lcom/snaptube/taskManager/task/TaskException;-><init>(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Lcom/snaptube/taskManager/task/TaskException;

    sget-object p1, Lcom/snaptube/taskManager/task/TaskError;->HD_AUDIO_STREAM_NOT_FOUND:Lcom/snaptube/taskManager/task/TaskError;

    invoke-direct {p0, p1, v2}, Lcom/snaptube/taskManager/task/TaskException;-><init>(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    throw p0
.end method
