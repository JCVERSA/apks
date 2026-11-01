.method public static ffmpegInit(Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper$a;)J
    .locals 5

    invoke-static {}, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->loadLibrary()V

    sget-boolean v0, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sLibLoaded:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->initFFMediaContext()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    if-eqz p0, :cond_0

    sget-object v2, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sProcessProgressHashMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method
