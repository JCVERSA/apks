.method public a(ZLjava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/d$a;->a:Ljava/io/File;

    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/d$a;->b:Lcom/snaptube/taskManager/task/video/d;

    invoke-static {v0}, Lcom/snaptube/taskManager/task/video/d;->j(Lcom/snaptube/taskManager/task/video/d;)Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/d$a;->b:Lcom/snaptube/taskManager/task/video/d;

    invoke-static {v0}, Lcom/snaptube/taskManager/task/video/d;->i(Lcom/snaptube/taskManager/task/video/d;)Lcom/snaptube/taskManager/task/video/g;

    move-result-object v0

    const-string v1, "M4aToMp3Task"

    sget-object v2, Lcom/snaptube/taskManager/task/TaskError;->MP3_RENAME_FILE_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/snaptube/taskManager/task/video/g;->c2(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcom/snaptube/taskManager/task/TaskError;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/d$a;->b:Lcom/snaptube/taskManager/task/video/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/snaptube/taskManager/task/video/d;->c(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/d$a;->b:Lcom/snaptube/taskManager/task/video/d;

    invoke-static {p1}, Lcom/snaptube/taskManager/task/video/d;->j(Lcom/snaptube/taskManager/task/video/d;)Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object p1

    iget-wide v3, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->d:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/d$a;->b:Lcom/snaptube/taskManager/task/video/d;

    invoke-static {p1}, Lcom/snaptube/taskManager/task/video/d;->i(Lcom/snaptube/taskManager/task/video/d;)Lcom/snaptube/taskManager/task/video/g;

    move-result-object p1

    sget-object v3, Lcom/snaptube/taskManager/task/TaskError;->MP3_CONVERT_M4A_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " equal:"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " dsize:"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " dtsize:"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/snaptube/taskManager/task/video/d$a;->b:Lcom/snaptube/taskManager/task/video/d;

    invoke-static {p2}, Lcom/snaptube/taskManager/task/video/d;->j(Lcom/snaptube/taskManager/task/video/d;)Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object p2

    iget-wide v0, p2, Lcom/snaptube/taskManager/datasets/TaskInfo;->d:J

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
