.method private final r()V
    .locals 5

    iget-wide v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->h:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->y()Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    move-result-object v0

    iget-wide v1, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->h:J

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->n(J)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->h:J

    :cond_0
    return-void
.end method
