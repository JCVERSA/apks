.method public a(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    const/4 v1, 0x1

    iget-object v0, p0, Lo/nc6;->i:Lo/gb;

    invoke-interface {v0, p1}, Lo/gb;->e(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x5

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    move v1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
