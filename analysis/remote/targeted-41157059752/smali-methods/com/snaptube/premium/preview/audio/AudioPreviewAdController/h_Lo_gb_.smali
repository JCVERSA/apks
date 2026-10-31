.method public final h()Lo/gb;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/preview/audio/AudioPreviewAdController;->d:Lo/gb;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "adRepositoryService"

    invoke-static {v0}, Lo/or3;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
