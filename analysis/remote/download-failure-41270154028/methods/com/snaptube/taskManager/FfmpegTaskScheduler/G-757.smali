.method public final G()V
    .locals 11

    sget-object v0, Lcom/snaptube/plugin/PluginId;->FFMPEG:Lcom/snaptube/plugin/PluginId;

    invoke-virtual {v0}, Lcom/snaptube/plugin/PluginId;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    iget-object v2, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->f:Lo/p40;

    invoke-virtual {v2}, Lo/p40;->h()I

    move-result v2

    if-ge v1, v2, :cond_c

    iget-object v1, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    if-gtz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v1, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v2, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;

    iget-object v3, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->h:Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;->b()Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_3

    :cond_2
    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_b

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->S3()Z

    move-result v5

    if-eqz v5, :cond_a

    iget v5, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->b:I

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    if-ne v5, v6, :cond_3

    iget-object v4, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->c:Ljava/lang/String;

    iget-object v5, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->d:Ljava/lang/String;

    iget-object v6, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->e:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "jni_webm"

    goto :goto_1

    :cond_3
    if-nez v5, :cond_4

    iget-object v4, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->f:Ljava/lang/String;

    iget-object v5, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->e:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->k(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "jni_mp3"

    goto :goto_1

    :cond_4
    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    iget-object v4, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->f:Ljava/lang/String;

    iget-object v5, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->e:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->k(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "process_extract_mp3"

    goto :goto_1

    :cond_5
    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    iget-object v4, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->c:Ljava/lang/String;

    iget-object v5, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->d:Ljava/lang/String;

    iget-object v6, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->e:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "process_combine_hd"

    goto :goto_1

    :cond_6
    const/4 v6, 0x4

    if-ne v5, v6, :cond_7

    iget-object v4, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->f:Ljava/lang/String;

    iget-object v5, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->e:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->k(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "process_m4a_mp3"

    goto :goto_1

    :cond_7
    const/4 v6, 0x5

    if-ne v5, v6, :cond_8

    iget-object v4, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->f:Ljava/lang/String;

    iget-object v5, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->d:Ljava/lang/String;

    iget-object v6, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->e:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "process_combine_images"

    goto :goto_1

    :cond_8
    const/4 v6, 0x6

    if-ne v5, v6, :cond_9

    const-string v4, "process_combine_ts"

    :cond_9
    move-object v6, v4

    move-wide v4, v7

    :goto_1
    cmp-long v9, v4, v7

    if-gez v9, :cond_a

    invoke-static {v6}, Lcom/snaptube/dataadapter/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "ffmpeg_no_enough_space"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "need space "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    move-object v4, v6

    move-wide v5, v9

    invoke-static/range {v3 .. v8}, Lo/ne2;->c(Lcom/snaptube/taskManager/datasets/TaskInfo;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    iget-object v1, v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;->h:Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;

    sget-object v2, Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;->WARNING:Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;->c(Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->G()V

    monitor-exit v0

    return-void

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->H(Lcom/snaptube/taskManager/FfmpegTaskScheduler$d;J)V

    :cond_b
    monitor-exit v0

    return-void

    :cond_c
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
