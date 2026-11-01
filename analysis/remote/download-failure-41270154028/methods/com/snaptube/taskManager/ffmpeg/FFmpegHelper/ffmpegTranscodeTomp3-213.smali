.method public static ffmpegTranscodeTomp3(JLjava/lang/String;Ljava/lang/String;II)I
    .locals 1

    invoke-static {}, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->loadLibrary()V

    sget-boolean v0, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sLibLoaded:Z

    if-eqz v0, :cond_0

    invoke-static/range {p0 .. p5}, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->transcodeTomp3(JLjava/lang/String;Ljava/lang/String;II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
