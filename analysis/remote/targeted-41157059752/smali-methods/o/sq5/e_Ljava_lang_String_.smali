.method public static e()Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    return-object v0

    :cond_0
    const-string v0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    return-object v0
.end method
