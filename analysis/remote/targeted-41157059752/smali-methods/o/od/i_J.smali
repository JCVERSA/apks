.method public static i()J
    .locals 4

    const/4 v3, 0x6

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v3, 0x7

    const-string v1, "/selfbuild/adx_banner/impression_valid_time"

    sget v2, Lo/od;->b:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x6

    int-to-long v0, v0

    return-wide v0
.end method
