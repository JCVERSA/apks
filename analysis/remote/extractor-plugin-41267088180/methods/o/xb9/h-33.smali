.method public static h(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 11

    const/4 v10, 0x0

    sget-object v0, Lo/xb9;->d:Lo/lz5;

    const/4 v10, 0x5

    if-eqz v0, :cond_0

    const/4 v10, 0x7

    invoke-virtual {v0}, Lo/lz5;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x5

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/io/File;

    const/4 v10, 0x6

    const-string v2, "dex"

    const/4 v10, 0x7

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "bli"

    const-string v3, "lib"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    const/4 v10, 0x2

    new-instance p0, Lo/lz5;

    const/4 v10, 0x7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const/4 v10, 0x3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object v4, p0

    const/4 v10, 0x2

    invoke-direct/range {v4 .. v9}, Lo/lz5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V

    sput-object p0, Lo/xb9;->d:Lo/lz5;

    invoke-static {p0}, Lo/kz5;->a(Ljava/lang/ClassLoader;)V

    :cond_1
    :try_start_0
    const/4 v10, 0x1

    sget-object p0, Lo/xb9;->d:Lo/lz5;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v10, 0x7

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x3

    return-object p0

    :catch_0
    move-exception p0

    const/4 v10, 0x4

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x4

    const/4 p0, 0x0

    const/4 v10, 0x5

    return-object p0
.end method
