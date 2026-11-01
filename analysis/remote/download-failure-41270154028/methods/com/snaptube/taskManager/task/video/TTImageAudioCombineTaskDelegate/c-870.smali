.method public c(I)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->w()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->u(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
