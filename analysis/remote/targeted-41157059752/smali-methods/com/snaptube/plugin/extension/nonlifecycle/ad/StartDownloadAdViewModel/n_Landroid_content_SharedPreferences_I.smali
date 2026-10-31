.method public final n(Landroid/content/SharedPreferences;)I
    .locals 2

    sget-object v0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method
