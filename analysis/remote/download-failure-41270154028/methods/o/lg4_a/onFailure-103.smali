.method public onFailure(Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cmd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/lg4$a;->b:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/lg4$a;->c:Lo/lg4;

    iget-object v1, v1, Lcom/snaptube/taskManager/task/video/e;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lo/lg4$a;->c:Lo/lg4;

    iget-object v0, v0, Lcom/snaptube/taskManager/task/video/e;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/lg4$a;->c:Lo/lg4;

    invoke-static {v1}, Lo/lg4;->l(Lo/lg4;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lo/ca8;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object p1, p0, Lo/lg4$a;->c:Lo/lg4;

    iget-object v1, p1, Lcom/snaptube/taskManager/task/video/e;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lo/lg4$a;->a:J

    sub-long v3, v2, v4

    const-string v5, "ffmpeg_fail"

    const-string v2, "process_m4a"

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lo/ne2;->c(Lcom/snaptube/taskManager/datasets/TaskInfo;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lo/lg4$a;->c:Lo/lg4;

    iget-object p1, p1, Lcom/snaptube/taskManager/task/video/e;->a:Lcom/snaptube/taskManager/task/video/g;

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->M4A_CONVERT_MPEG_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {p1, v1, v0}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    return-void
.end method
