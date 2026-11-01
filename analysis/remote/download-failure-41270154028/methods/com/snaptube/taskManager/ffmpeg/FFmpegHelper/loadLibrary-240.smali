.method public static declared-synchronized loadLibrary()V
    .locals 4

    const-class v0, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sLibLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sPluginName:Ljava/lang/String;

    sget-object v2, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sPluginVersion:Ljava/lang/String;

    sget-object v3, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sLibName:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lo/c16;->D(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sLibLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
