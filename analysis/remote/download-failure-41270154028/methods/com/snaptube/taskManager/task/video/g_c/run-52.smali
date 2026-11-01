.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g$c;->e:Lcom/snaptube/taskManager/task/video/g;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/g$c;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/g$c;->b:Ljava/io/File;

    iget-object v3, p0, Lcom/snaptube/taskManager/task/video/g$c;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/snaptube/taskManager/task/video/g$c;->d:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v5, Lcom/snaptube/taskManager/task/video/g$c$a;

    invoke-direct {v5, p0}, Lcom/snaptube/taskManager/task/video/g$c$a;-><init>(Lcom/snaptube/taskManager/task/video/g$c;)V

    invoke-virtual/range {v0 .. v5}, Lo/du1;->D0(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcom/snaptube/taskManager/task/TaskError;Lo/du1$g;)V

    return-void
.end method
