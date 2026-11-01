.method public onProgress(II)V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/CombinTask;->listener:Lcom/snaptube/taskManager/CombinTask$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/snaptube/taskManager/CombinTask$a;->b(II)V

    :cond_0
    return-void
.end method
