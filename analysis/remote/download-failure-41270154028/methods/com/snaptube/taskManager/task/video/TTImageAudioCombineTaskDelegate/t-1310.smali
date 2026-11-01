.method public final t(Lcom/snaptube/extractor/pluginlib/models/Format;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->e:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    const/4 v1, 0x0

    const-string v2, "videoInfo"

    if-nez v0, :cond_0

    invoke-static {v2}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lo/wd9;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/or3;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->e:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    if-nez v0, :cond_1

    invoke-static {v2}, Lo/or3;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method
