.method public final u(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->v()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/Format;->isImage()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lo/ft7;->a:Lo/ft7;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "image%03d.jpg"

    invoke-static {v1, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "audio.tmp"

    :goto_0
    return-object p1
.end method
