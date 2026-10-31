.method public static b(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 4

    sget-object v0, Lo/xi7;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "unknown"

    if-nez v0, :cond_0

    sget-object v0, Lo/xi7;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lo/xi7;->b:Ljava/lang/String;

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {p0}, Lcom/snaptube/premium/app/PhoenixApplication;->T(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    invoke-static {p0}, Lo/xl;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lo/cj0;->m(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    invoke-static {v0}, Lo/cj0;->m(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lo/xi7;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {p0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    sput-object v1, Lo/xi7;->b:Ljava/lang/String;

    :goto_2
    sget-object p0, Lo/xi7;->b:Ljava/lang/String;

    return-object p0
.end method
