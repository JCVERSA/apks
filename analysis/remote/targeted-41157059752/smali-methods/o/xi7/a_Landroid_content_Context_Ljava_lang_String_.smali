.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lo/xi7;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lo/o76;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lo/xi7;->c:Ljava/lang/String;

    :cond_0
    sget-object p0, Lo/xi7;->c:Ljava/lang/String;

    return-object p0
.end method
