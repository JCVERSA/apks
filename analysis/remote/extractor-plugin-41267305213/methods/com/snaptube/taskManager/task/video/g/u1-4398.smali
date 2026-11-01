.method public final u1(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;I)Lrx/c;
    .locals 3

    new-instance v0, Lcom/snaptube/premium/extractor/a$a;

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "partial_info"

    invoke-direct {v0, v1, v2}, Lcom/snaptube/premium/extractor/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/extractor/a$a;->f(Z)Lcom/snaptube/premium/extractor/a$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/extractor/a$a;->c(Z)Lcom/snaptube/premium/extractor/a$a;

    move-result-object v0

    const-string v1, "video_info"

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/snaptube/premium/extractor/a$a;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/snaptube/premium/extractor/a$a;

    iget-object p1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object p1, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    const-string v1, "field_format_tag"

    invoke-virtual {v0, v1, p1}, Lcom/snaptube/premium/extractor/a$a;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/snaptube/premium/extractor/a$a;

    iget-object p1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object p1, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    const-string v1, "download_format_tag"

    invoke-virtual {v0, v1, p1}, Lcom/snaptube/premium/extractor/a$a;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/snaptube/premium/extractor/a$a;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object p1

    invoke-virtual {v0}, Lcom/snaptube/premium/extractor/a$a;->a()Lcom/snaptube/premium/extractor/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;->x(Lcom/snaptube/premium/extractor/a;I)Lrx/c;

    move-result-object p1

    new-instance v0, Lo/kq8;

    invoke-direct {v0, p0, p2, p3}, Lo/kq8;-><init>(Lcom/snaptube/taskManager/task/video/g;Lcom/snaptube/extractor/pluginlib/models/Format;I)V

    invoke-virtual {p1, v0}, Lrx/c;->U(Lo/xw2;)Lrx/c;

    move-result-object p1

    const-wide/16 v0, 0x14

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p3}, Lrx/c;->K0(JLjava/util/concurrent/TimeUnit;)Lrx/c;

    move-result-object p1

    new-instance p3, Lo/lq8;

    invoke-direct {p3, p2}, Lo/lq8;-><init>(Lcom/snaptube/extractor/pluginlib/models/Format;)V

    invoke-virtual {p1, p3}, Lrx/c;->g0(Lo/xw2;)Lrx/c;

    move-result-object p1

    return-object p1
.end method
