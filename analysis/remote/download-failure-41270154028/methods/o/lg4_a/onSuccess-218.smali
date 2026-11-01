.method public onSuccess(Ljava/lang/String;)V
    .locals 11

    iget-object p1, p0, Lo/lg4$a;->c:Lo/lg4;

    invoke-static {p1}, Lo/lg4;->j(Lo/lg4;)Lo/ee2;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lo/lg4$a;->c:Lo/lg4;

    invoke-static {v0}, Lo/lg4;->l(Lo/lg4;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lo/lg4$a;->c:Lo/lg4;

    iget-object v1, v1, Lcom/snaptube/taskManager/task/video/e;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    :goto_0
    move-wide v9, v1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lo/lg4$a;->c:Lo/lg4;

    iget-object v1, v1, Lcom/snaptube/taskManager/task/video/e;->a:Lcom/snaptube/taskManager/task/video/g;

    const-string v2, "m4aTask"

    sget-object v3, Lcom/snaptube/taskManager/task/TaskError;->M4A_RENAME_FILE_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/snaptube/taskManager/task/video/g;->c2(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcom/snaptube/taskManager/task/TaskError;)V

    iget-object p1, p0, Lo/lg4$a;->c:Lo/lg4;

    iget-object v3, p1, Lcom/snaptube/taskManager/task/video/e;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lo/lg4$a;->a:J

    sub-long v5, v0, v4

    const-string v7, "ffmpeg_succ"

    const-string v8, ""

    const-string v4, "process_m4a"

    invoke-static/range {v3 .. v10}, Lo/ne2;->d(Lcom/snaptube/taskManager/datasets/TaskInfo;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
