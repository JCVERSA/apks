.method public static t(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "/selfbuild/%s/ad_video_loop_play"

    const/4 v4, 0x1

    const/4 v1, 0x1

    const/4 v4, 0x7

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput-object p0, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x0

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v4, 0x5

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const/4 v4, 0x0

    return p0
.end method
