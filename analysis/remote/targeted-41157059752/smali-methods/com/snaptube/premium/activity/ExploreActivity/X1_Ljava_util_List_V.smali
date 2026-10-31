.method public final X1(Ljava/util/List;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    invoke-static {}, Lo/sq5;->c()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lo/uh;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lo/sq5;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->E()Lcom/snaptube/media/MediaFileScanner;

    move-result-object p1

    sget-object v0, Lcom/snaptube/media/MediaFileScanner$From;->FILES_ACTIVITY_START:Lcom/snaptube/media/MediaFileScanner$From;

    invoke-virtual {p1, v0}, Lcom/snaptube/media/MediaFileScanner;->B(Lcom/snaptube/media/MediaFileScanner$From;)V

    :cond_3
    return-void
.end method
