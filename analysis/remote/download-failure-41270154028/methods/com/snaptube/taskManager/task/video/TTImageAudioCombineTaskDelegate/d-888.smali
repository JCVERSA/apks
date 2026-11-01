.method public d(I)Lcom/phoenix/download/DownloadRequest;
    .locals 2

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->v()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->u(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->s(Lcom/snaptube/extractor/pluginlib/models/Format;Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest;

    move-result-object p1

    return-object p1
.end method
