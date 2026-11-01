.method public j0(Ljava/lang/String;Z)I
    .locals 2

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0, p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->R(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "filePath"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "has_auto_retry"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide p1, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->e1(JLandroid/content/ContentValues;Z)I

    move-result p1

    return p1
.end method
