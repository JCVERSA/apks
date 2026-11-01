.method public static onProcessProgress(JJJ)V
    .locals 0

    sget-object p2, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sProcessProgressHashMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lo/u88;->a(Ljava/lang/Object;)V

    return-void
.end method
