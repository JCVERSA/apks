.method public final r(Landroid/content/SharedPreferences;)J
    .locals 3

    sget-object v0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->d:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
