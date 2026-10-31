.method public static d(Ljava/lang/String;)J
    .locals 4

    const/4 v3, 0x7

    const-string v0, "/selfbuild/%s/ad_video_log_position"

    const/4 v1, 0x1

    move v3, v1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput-object p0, v1, v2

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x5

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v3, 0x4

    const/16 v1, 0x7d0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v3, 0x6

    int-to-long v0, p0

    return-wide v0
.end method
