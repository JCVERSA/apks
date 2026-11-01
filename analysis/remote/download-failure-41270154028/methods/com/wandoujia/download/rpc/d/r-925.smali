.method public r(Lcom/wandoujia/download/rpc/InnerDownloadRequest;)Lcom/wandoujia/download/rpc/h;
    .locals 4

    iget-object v0, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->a:Ljava/lang/String;

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/wandoujia/download/rpc/d;->l:Ljava/util/Set;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/wandoujia/download/rpc/d;->l:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    :try_start_2
    iget-object v2, p0, Lcom/wandoujia/download/rpc/d;->l:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, p0, Lcom/wandoujia/download/rpc/d;->j:Lcom/wandoujia/download/rpc/b;

    invoke-virtual {v1, v0}, Lcom/wandoujia/download/rpc/b;->c(Ljava/lang/String;)Lcom/wandoujia/download/rpc/h;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v2

    const/16 v3, 0xbd

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v2

    const/16 v3, 0xbf

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v2

    const/16 v3, 0xc0

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v2

    const/16 v3, 0xc1

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v2

    const/16 v3, 0xc4

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result v2

    const/16 v3, 0xc5

    if-ne v2, v3, :cond_5

    goto :goto_2

    :catchall_1
    move-exception p1

    goto/16 :goto_6

    :cond_2
    :goto_2
    iget-boolean v2, v1, Lcom/wandoujia/download/rpc/h;->p:Z

    iget-boolean v3, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->r:Z

    if-eq v2, v3, :cond_4

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const-string v2, "ERROR! DownloadInfo already existed! Cancel existing invisible task."

    invoke-static {v1, v2}, Lcom/wandoujia/download/rpc/d;->h(Lcom/wandoujia/download/rpc/h;Ljava/lang/String;)V

    iget-wide v1, v1, Lcom/wandoujia/download/rpc/h;->a:J

    invoke-virtual {p0, v1, v2}, Lcom/wandoujia/download/rpc/d;->e(J)Z

    goto :goto_4

    :cond_4
    :goto_3
    const-string v2, "ERROR! DownloadInfo already existed! Returning empty DownloadInfo."

    invoke-static {v1, v2}, Lcom/wandoujia/download/rpc/d;->h(Lcom/wandoujia/download/rpc/h;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->a:Ljava/lang/String;

    const-string v2, "ERROR! DownloadInfo already existed! Returning empty DownloadInfo."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snaptube/taskManager/task/TaskTrace;->log(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/d;->d(Lcom/wandoujia/download/rpc/InnerDownloadRequest;)Lcom/wandoujia/download/rpc/h;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v1, p0, Lcom/wandoujia/download/rpc/d;->l:Ljava/util/Set;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lcom/wandoujia/download/rpc/d;->l:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/wandoujia/download/rpc/d;->l:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-object p1

    :catchall_2
    move-exception p1

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :cond_5
    :goto_4
    :try_start_6
    iget-object v1, p0, Lcom/wandoujia/download/rpc/d;->j:Lcom/wandoujia/download/rpc/b;

    invoke-virtual {v1, p1}, Lcom/wandoujia/download/rpc/b;->a(Lcom/wandoujia/download/rpc/InnerDownloadRequest;)Lcom/wandoujia/download/rpc/h;

    move-result-object v1

    const-string v2, "downloadInfo added into DB."

    invoke-static {v1, v2}, Lcom/wandoujia/download/rpc/d;->h(Lcom/wandoujia/download/rpc/h;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iget-object v2, p0, Lcom/wandoujia/download/rpc/d;->l:Ljava/util/Set;

    monitor-enter v2

    :try_start_7
    iget-object v3, p0, Lcom/wandoujia/download/rpc/d;->l:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/wandoujia/download/rpc/d;->l:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/wandoujia/download/rpc/h;->a()Lcom/wandoujia/download/rpc/h;

    move-result-object p1

    invoke-static {}, Lo/it1;->b()Lo/it1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/it1;->f(Lcom/wandoujia/download/rpc/h;)V

    invoke-virtual {p0, v1}, Lcom/wandoujia/download/rpc/d;->g(Lcom/wandoujia/download/rpc/h;)Lcom/wandoujia/download/rpc/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/download/rpc/f;->g0()V

    return-object p1

    :cond_6
    const/4 v0, 0x0

    const-string v1, "ERROR! DownloadInfo already existed! Returning empty DownloadInfo."

    invoke-static {v0, v1}, Lcom/wandoujia/download/rpc/d;->h(Lcom/wandoujia/download/rpc/h;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->a:Ljava/lang/String;

    const-string v1, "ERROR! DownloadInfo already existed! Returning empty DownloadInfo."

    const-string v2, "pos-2"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snaptube/taskManager/task/TaskTrace;->log(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/d;->d(Lcom/wandoujia/download/rpc/InnerDownloadRequest;)Lcom/wandoujia/download/rpc/h;

    move-result-object p1

    return-object p1

    :catchall_3
    move-exception p1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p1

    :goto_5
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_6
    iget-object v1, p0, Lcom/wandoujia/download/rpc/d;->l:Ljava/util/Set;

    monitor-enter v1

    :try_start_b
    iget-object v2, p0, Lcom/wandoujia/download/rpc/d;->l:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/wandoujia/download/rpc/d;->l:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw p1

    :catchall_4
    move-exception p1

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw p1
.end method
