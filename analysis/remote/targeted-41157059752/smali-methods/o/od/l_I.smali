.method public static l()I
    .locals 4

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v3, 0x4

    const-string v1, "/global/full_screen_impression_interval"

    const/4 v3, 0x2

    const/16 v2, 0x258

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v3, 0x3

    return v0
.end method
