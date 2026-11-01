.method public final d(Lcom/snaptube/taskManager/datasets/TaskInfo;)Lrx/c;
    .locals 3

    const-string v0, "taskInfo"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/snaptube/premium/extractor/a$a;

    invoke-virtual {p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object p1

    const-string v1, "partial_info"

    invoke-direct {v0, p1, v1}, Lcom/snaptube/premium/extractor/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/snaptube/premium/extractor/a$a;->c(Z)Lcom/snaptube/premium/extractor/a$a;

    move-result-object v0

    const-string v1, "title"

    const-string v2, "thumbnail"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/cn5;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "required_fields"

    invoke-virtual {v0, v2, v1}, Lcom/snaptube/premium/extractor/a$a;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/snaptube/premium/extractor/a$a;

    move-result-object v0

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snaptube/premium/extractor/a$a;->a()Lcom/snaptube/premium/extractor/a;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;->f(Lcom/snaptube/premium/extractor/a;I)Lrx/c;

    move-result-object p1

    sget-object v0, Lcom/snaptube/taskManager/task/video/AdditionExtractManager$getTitleAndCoverInfo$1;->INSTANCE:Lcom/snaptube/taskManager/task/video/AdditionExtractManager$getTitleAndCoverInfo$1;

    new-instance v1, Lo/id;

    invoke-direct {v1, v0}, Lo/id;-><init>(Lo/dx2;)V

    invoke-virtual {p1, v1}, Lrx/c;->H(Lo/xw2;)Lrx/c;

    move-result-object p1

    const-string v0, "flatMap(...)"

    invoke-static {p1, v0}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
