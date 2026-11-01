.method public a(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/du1$d;->a:Ljava/lang/StringBuilder;

    const-string v0, "dst size:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/du1$d;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lo/du1$d;->c:Lo/du1$g;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lo/du1$d;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/du1$g;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/du1$d;->e:Lo/du1;

    iget-object v0, p0, Lo/du1$d;->d:Lcom/snaptube/taskManager/task/TaskError;

    iget-object v1, p0, Lo/du1$d;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
