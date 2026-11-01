.method private final w()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->i:Lo/t14;

    invoke-interface {v0}, Lo/t14;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method
