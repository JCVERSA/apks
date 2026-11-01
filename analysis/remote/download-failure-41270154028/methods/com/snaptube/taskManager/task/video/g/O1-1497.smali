.method public final synthetic O1(Lcom/snaptube/extractor/pluginlib/models/Format;)V
    .locals 7

    if-eqz p1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finalFormat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {p0, v1}, Lcom/snaptube/taskManager/task/video/g;->o2(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->W:Z

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->p2()V

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->w1()V

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->isAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/k08;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-static {v1}, Lo/wd9;->F(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/fk3;->l(Landroid/content/Context;Ljava/lang/String;)Lo/f08;

    :cond_0
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/snaptube/video/videoextractor/impl/facebook/FacebookCodec;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snaptube/video/videoextractor/impl/facebook/FacebookCodec;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->R(Ljava/lang/String;)V

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-boolean v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->G:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->M:Ljava/lang/String;

    invoke-static {v1}, Lcom/snaptube/video/videoextractor/impl/facebook/FacebookCodec;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->M:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    iget-object v3, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    iget-object v4, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v6, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->M:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->a1(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->queryCodec(Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->queryCodec(Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;

    move-result-object v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->getOriginTag()I

    move-result v2

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->getOriginTag()I

    move-result v1

    if-eq v2, v1, :cond_4

    new-instance v1, Lcom/snaptube/extractor/pluginlib/models/Format$Builder;

    invoke-direct {v1, v0}, Lcom/snaptube/extractor/pluginlib/models/Format$Builder;-><init>(Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;)V

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/Format$Builder;->a()Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object v0

    invoke-static {v0}, Lo/wd9;->B(Lcom/snaptube/extractor/pluginlib/models/Format;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Lo/wd9;->B(Lcom/snaptube/extractor/pluginlib/models/Format;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->R(Ljava/lang/String;)V

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    iget-object v3, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    iget-object v4, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->a1(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->Y0(JLjava/lang/String;)I

    :cond_5
    :goto_0
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getOriginTag()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "origin_tag"

    invoke-virtual {v0, v1, p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->N(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_6
    new-instance p1, Lcom/snaptube/taskManager/task/TaskException;

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->FORMAT_NOT_FOUND:Lcom/snaptube/taskManager/task/TaskError;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v3, v2, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    iget-object v2, v2, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lo/ca8;->g(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/snaptube/taskManager/task/TaskException;-><init>(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    throw p1
.end method
