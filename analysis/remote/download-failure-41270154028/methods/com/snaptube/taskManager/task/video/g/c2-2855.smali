.method public c2(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcom/snaptube/taskManager/task/TaskError;)V
    .locals 7

    new-instance v6, Lcom/snaptube/taskManager/task/video/g$c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/snaptube/taskManager/task/video/g$c;-><init>(Lcom/snaptube/taskManager/task/video/g;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcom/snaptube/taskManager/task/TaskError;)V

    invoke-static {v6}, Lo/y48;->l(Ljava/lang/Runnable;)V

    return-void
.end method
