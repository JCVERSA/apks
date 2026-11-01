.method public final q1()Lcom/snaptube/taskManager/task/video/g$d;
    .locals 4

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/yj2;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isMp3Tag(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v1}, Lo/bf2;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isWebM2Mp3Tag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/snaptube/taskManager/task/video/j;

    iget-object v1, p0, Lo/k08;->b:Landroid/content/Context;

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-direct {v0, v1, p0, v2}, Lcom/snaptube/taskManager/task/video/j;-><init>(Landroid/content/Context;Lcom/snaptube/taskManager/task/video/g;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    return-object v0

    :cond_1
    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isYoutubeWebMTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/snaptube/taskManager/task/video/k;

    iget-object v1, p0, Lo/k08;->b:Landroid/content/Context;

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-direct {v0, v1, p0, v2}, Lcom/snaptube/taskManager/task/video/k;-><init>(Landroid/content/Context;Lo/k08;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    return-object v0

    :cond_2
    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isYoutubeHDTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/snaptube/taskManager/task/video/i;

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-direct {v0, p0, v1}, Lcom/snaptube/taskManager/task/video/i;-><init>(Lo/k08;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    return-object v0

    :cond_3
    sget-object v1, Lcom/snaptube/video/videoextractor/impl/tiktok/TikTokCodec;->PHOTO_VIDEO:Lcom/snaptube/video/videoextractor/impl/tiktok/TikTokCodec;

    invoke-virtual {v1}, Lcom/snaptube/video/videoextractor/impl/tiktok/TikTokCodec;->getTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v2, v2, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;

    iget-object v1, p0, Lo/k08;->b:Landroid/content/Context;

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-direct {v0, v1, p0, v2}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;-><init>(Landroid/content/Context;Lo/k08;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    return-object v0

    :cond_4
    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/snaptube/extractor/pluginlib/utils/MediaUtil;->p(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lo/bs8;

    iget-object v1, p0, Lo/k08;->b:Landroid/content/Context;

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-direct {v0, v1, p0, v2}, Lo/bs8;-><init>(Landroid/content/Context;Lo/du1;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    return-object v0

    :cond_5
    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/utils/MediaUtil;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Lcom/snaptube/taskManager/task/video/e;

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-direct {v0, p0, v1}, Lcom/snaptube/taskManager/task/video/e;-><init>(Lcom/snaptube/taskManager/task/video/g;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    return-object v0

    :cond_6
    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/utils/MediaUtil;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/utils/MediaUtil;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->Y1()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/snaptube/taskManager/task/video/f;

    iget-object v1, p0, Lo/k08;->b:Landroid/content/Context;

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v3, p0, Lcom/snaptube/taskManager/task/video/g;->t:Lo/dv8;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/snaptube/taskManager/task/video/f;-><init>(Landroid/content/Context;Lo/k08;Lcom/snaptube/taskManager/datasets/TaskInfo;Lo/dv8;)V

    return-object v0

    :cond_8
    new-instance v0, Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v2}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate;-><init>(Lcom/snaptube/taskManager/task/video/g;Ljava/io/File;)V

    return-object v0

    :cond_9
    :goto_0
    new-instance v0, Lo/lg4;

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-direct {v0, p0, v1}, Lo/lg4;-><init>(Lcom/snaptube/taskManager/task/video/g;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    return-object v0

    :cond_a
    :goto_1
    new-instance v0, Lcom/snaptube/taskManager/task/video/d;

    iget-object v1, p0, Lo/k08;->b:Landroid/content/Context;

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-direct {v0, v1, p0, v2}, Lcom/snaptube/taskManager/task/video/d;-><init>(Landroid/content/Context;Lcom/snaptube/taskManager/task/video/g;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    return-object v0
.end method
