.method public static l(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p3, 0x1

    if-nez p0, :cond_0

    return p3

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-interface {p0, p4, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    cmp-long p0, v2, p1

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    return p3
.end method
