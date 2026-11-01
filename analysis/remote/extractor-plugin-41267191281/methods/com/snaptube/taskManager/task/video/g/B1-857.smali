.method public final B1(Z)Lrx/c;
    .locals 3

    new-instance v0, Lcom/snaptube/premium/extractor/a$a;

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Lcom/snaptube/premium/extractor/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/snaptube/premium/extractor/a$a;->c(Z)Lcom/snaptube/premium/extractor/a$a;

    move-result-object p1

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    const-string v1, "download_format_tag"

    invoke-virtual {p1, v1, v0}, Lcom/snaptube/premium/extractor/a$a;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/snaptube/premium/extractor/a$a;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snaptube/premium/extractor/a$a;->a()Lcom/snaptube/premium/extractor/a;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;->x(Lcom/snaptube/premium/extractor/a;I)Lrx/c;

    move-result-object p1

    new-instance v0, Lcom/snaptube/taskManager/task/video/g$b;

    invoke-direct {v0, p0}, Lcom/snaptube/taskManager/task/video/g$b;-><init>(Lcom/snaptube/taskManager/task/video/g;)V

    invoke-virtual {p1, v0}, Lrx/c;->H(Lo/xw2;)Lrx/c;

    move-result-object p1

    return-object p1
.end method
