.method public static ffmpegExecCommand(J[Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->loadLibrary()V

    sget-boolean v0, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sLibLoaded:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->execCommand(J[Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
