.method public final synthetic Q1(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setTitle(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setThumbnailUrl(Ljava/lang/String;)V

    :cond_1
    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    return-void

    :cond_2
    new-instance p1, Lcom/snaptube/taskManager/task/TaskException;

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->EXTRACT_VIDEO_INFO_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    invoke-direct {p1, v0}, Lcom/snaptube/taskManager/task/TaskException;-><init>(Lcom/snaptube/taskManager/task/TaskError;)V

    throw p1
.end method
