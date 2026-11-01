.method public final f(Lcom/snaptube/taskManager/task/video/g;Ljava/lang/String;Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 7

    const-string v0, "task"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldFilePath"

    invoke-static {p2, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newTaskInfo"

    invoke-static {p3, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-virtual {p3}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/snaptube/taskManager/task/TaskError;->MP3_RENAME_FILE_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v6, Lo/gd;

    invoke-direct {v6, p1}, Lo/gd;-><init>(Lcom/snaptube/taskManager/task/video/g;)V

    const-string v4, "addition extract"

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lo/du1;->D0(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcom/snaptube/taskManager/task/TaskError;Lo/du1$g;)V

    invoke-virtual {p3}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object p3

    const-string v0, "getFilePath(...)"

    invoke-static {p3, v0}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/snaptube/taskManager/task/video/AdditionExtractManager;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
