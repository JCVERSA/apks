.method public static g(Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x4

    invoke-static {}, Lo/od;->l()I

    move-result v0

    const/4 v3, 0x6

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v3, 0x7

    const-string v2, "__ilrbacrapusofevrtislneenmn__ospse_il"

    const-string v2, "ad_pos_full_screen_impression_interval"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x2

    invoke-static {v2, p0}, Lo/od;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x258

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v3, 0x1

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v3, 0x7

    const/16 v0, 0x12c

    const/4 v3, 0x1

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v3, 0x5

    return p0
.end method
