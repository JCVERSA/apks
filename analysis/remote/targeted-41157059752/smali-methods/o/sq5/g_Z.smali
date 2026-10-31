.method public static g()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    invoke-static {}, Lo/sq5;->c()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lo/sq5;->b()Z

    move-result v0

    return v0
.end method
