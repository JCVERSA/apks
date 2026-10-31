.method public static n(Ljava/lang/String;)I
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x5

    const/4 v1, -0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v4, 0x5

    invoke-static {}, Lo/od;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v4, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    const-string v3, "/"

    const/4 v4, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    const-string p0, "/min_valid_impression_area_percentage"

    const/4 v4, 0x0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x4

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v4, 0x7

    return p0
.end method
