.method private isUnSupportedVersion(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lo/um8;->a(Landroid/content/Context;)I

    move-result p1

    if-lez p1, :cond_0

    const v0, 0x472eb2

    if-le p1, v0, :cond_1

    :cond_0
    const v0, 0x47e7da

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
