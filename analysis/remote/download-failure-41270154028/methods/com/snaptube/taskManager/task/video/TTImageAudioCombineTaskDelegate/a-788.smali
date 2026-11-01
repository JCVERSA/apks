.method public a()V
    .locals 9

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->j:Lo/uj8$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/zu;->c()V

    :cond_0
    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->r()V

    :try_start_0
    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->y()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x438

    const/16 v2, 0x780

    invoke-virtual {p0, v0, v1, v2}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->A(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UnExpectedException"

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->y()Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    move-result-object v2

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->x()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->q()J

    move-result-wide v6

    new-instance v8, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate$onPostDownload$1;

    invoke-direct {v8, p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate$onPostDownload$1;-><init>(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)V

    invoke-virtual/range {v2 .. v8}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/snaptube/taskManager/FfmpegTaskScheduler$f;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->h:J

    return-void
.end method
