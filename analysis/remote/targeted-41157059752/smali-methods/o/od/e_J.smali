.method public static e()J
    .locals 4

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v3, 0x2

    const-string v1, "uctmrti/e_naalb/eoeosmn"

    const-string v1, "/bannerad/close_timeout"

    const/4 v3, 0x4

    const/16 v2, 0x1388

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x2

    int-to-long v0, v0

    return-wide v0
.end method
