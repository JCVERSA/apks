.method public static r(Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x4

    const-string v0, "%eoi_tcap/onrot_udssaul"

    const-string v0, "/%s/auto_close_duration"

    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v3, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x7

    aput-object p0, v1, v2

    const/4 v3, 0x3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x1

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v3, 0x5

    return p0
.end method
