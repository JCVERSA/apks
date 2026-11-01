.method public static ffmpegRelease(J)J
    .locals 3

    invoke-static {}, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->loadLibrary()V

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sLibLoaded:Z

    if-eqz v2, :cond_0

    sget-object v0, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sProcessProgressHashMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->release(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide v0
.end method
