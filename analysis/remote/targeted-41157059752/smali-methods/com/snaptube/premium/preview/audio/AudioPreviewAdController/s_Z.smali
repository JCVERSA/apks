.method public final s()Z
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/preview/audio/AudioPreviewAdController;->a:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "extra_is_secret_media"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    return v1
.end method
