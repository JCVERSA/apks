.method public static v(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x5

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x5

    const-string v1, "alemebd"

    const-string v1, "enabled"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    invoke-static {v1, p0}, Lo/od;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const/4 v2, 0x0

    return p0
.end method
