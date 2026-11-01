.method public static ffmpegGetErrorMsg(J)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->loadLibrary()V

    sget-boolean v0, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sLibLoaded:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->getErrorMsg(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method
