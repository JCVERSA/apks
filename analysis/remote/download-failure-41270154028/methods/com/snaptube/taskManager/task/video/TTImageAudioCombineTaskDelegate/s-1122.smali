.method public final s(Lcom/snaptube/extractor/pluginlib/models/Format;Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest;
    .locals 7

    invoke-static {}, Lcom/phoenix/download/DownloadRequest;->a()Lcom/phoenix/download/DownloadRequest$a;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->e:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    const/4 v2, 0x0

    const-string v3, "videoInfo"

    if-nez v1, :cond_0

    invoke-static {v3}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phoenix/download/DownloadRequest$a;->B(Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phoenix/download/DownloadRequest$a;->D(Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->e:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    if-nez v1, :cond_1

    invoke-static {v3}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phoenix/download/DownloadRequest$a;->y(Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getExt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/wd9;->S(Ljava/lang/String;)Lcom/phoenix/download/DownloadInfo$ContentType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phoenix/download/DownloadRequest$a;->w(Lcom/phoenix/download/DownloadInfo$ContentType;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->t(Lcom/snaptube/extractor/pluginlib/models/Format;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/phoenix/download/DownloadRequest$a;->z(Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object p2

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getSize()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_2

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getSize()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, -0x1

    :goto_0
    invoke-virtual {p2, v0, v1}, Lcom/phoenix/download/DownloadRequest$a;->C(J)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object p2

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->e:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    if-nez v0, :cond_3

    invoke-static {v3}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getDurationInSecond()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {p2, v1, v0}, Lcom/phoenix/download/DownloadRequest$a;->v(Ljava/lang/String;Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object p2

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->e:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    if-nez v0, :cond_4

    invoke-static {v3}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "thumbnail"

    invoke-virtual {p2, v1, v0}, Lcom/phoenix/download/DownloadRequest$a;->v(Ljava/lang/String;Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object p2

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->e:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    if-nez v0, :cond_5

    invoke-static {v3}, Lo/or3;->w(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v2, v0

    :goto_1
    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/phoenix/download/DownloadRequest$a;->A(Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object p2

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/phoenix/download/DownloadRequest$a;->x(Ljava/util/Map;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object p2

    const-string v0, "format"

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/phoenix/download/DownloadRequest$a;->v(Ljava/lang/String;Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phoenix/download/DownloadRequest$a;->u()Lcom/phoenix/download/DownloadRequest;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
