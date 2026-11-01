.method public run()V
    .locals 4

    const-class v0, Lcom/snaptube/taskManager/CombinTask;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/snaptube/taskManager/CombinTask;->audioFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/snaptube/taskManager/CombinTask;->videoFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/snaptube/taskManager/CombinTask;->outputFilePath:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/snaptube/taskManager/CombinTask;->combvideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/snaptube/taskManager/CombinTask;->listener:Lcom/snaptube/taskManager/CombinTask$a;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lcom/snaptube/taskManager/CombinTask$a;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    const/4 v2, -0x1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v1, p0, Lcom/snaptube/taskManager/CombinTask;->listener:Lcom/snaptube/taskManager/CombinTask$a;

    if-eqz v1, :cond_0

    invoke-interface {v1, v2}, Lcom/snaptube/taskManager/CombinTask$a;->a(I)V

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    iget-object v3, p0, Lcom/snaptube/taskManager/CombinTask;->listener:Lcom/snaptube/taskManager/CombinTask$a;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/snaptube/taskManager/CombinTask;->listener:Lcom/snaptube/taskManager/CombinTask$a;

    invoke-interface {v3, v2}, Lcom/snaptube/taskManager/CombinTask$a;->a(I)V

    :cond_1
    throw v1

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
