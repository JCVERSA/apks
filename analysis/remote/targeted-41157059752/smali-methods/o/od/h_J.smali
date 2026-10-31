.method public static h()J
    .locals 4

    const/4 v3, 0x7

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v3, 0x0

    const-string v1, "/selfbuild/adx_banner/impression_timeout"

    sget v2, Lo/od;->a:I

    const/4 v3, 0x6

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x2

    int-to-long v0, v0

    const/4 v3, 0x3

    return-wide v0
.end method
