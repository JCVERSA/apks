.method public static m1(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "ISplashAdsManager"

    invoke-static {v0}, Lo/zh4;->b(Ljava/lang/String;)Lo/vd3;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lo/vh3;

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v6}, Lo/vh3;->c(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
