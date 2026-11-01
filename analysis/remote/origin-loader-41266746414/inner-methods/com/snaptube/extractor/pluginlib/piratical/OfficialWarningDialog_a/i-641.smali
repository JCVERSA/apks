.method public final i(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const-string v0, "guide_download"

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "guide_uninstall"

    .line 8
    .line 9
    invoke-virtual {p0, p1, v1}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    return p1
.end method
