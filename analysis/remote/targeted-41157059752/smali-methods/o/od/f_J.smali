.method public static f()J
    .locals 4

    const/4 v3, 0x2

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v3, 0x4

    const-string v1, "/a/noim_diaeelcotvsetou"

    const-string v1, "/nativead/close_timeout"

    const/16 v2, 0x1388

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x7

    int-to-long v0, v0

    const/4 v3, 0x5

    return-wide v0
.end method
