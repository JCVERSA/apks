.method public static ffmpegCancel(J)V
    .locals 3

    invoke-static {}, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->loadLibrary()V

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    sget-boolean v0, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sLibLoaded:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->setCancel(J)V

    :cond_0
    return-void
.end method
