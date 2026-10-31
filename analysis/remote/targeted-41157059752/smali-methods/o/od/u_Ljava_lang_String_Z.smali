.method public static u(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "lessudmitfovu_avbd_sm//l%/_deuiole"

    const-string v0, "/selfbuild/%s/ad_video_volume_mute"

    const/4 v1, 0x3

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const/4 v4, 0x3

    return p0
.end method
