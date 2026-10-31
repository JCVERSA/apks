.method public static j(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v6, "appops"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    :try_start_0
    const-string v6, "android.app.AppOpsManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "checkOpNoThrow"

    new-array v8, v1, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    aput-object v9, v8, v2

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v6, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const-class v6, Ljava/lang/Integer;

    invoke-virtual {p1, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object v4, v1, v2

    aput-object v5, v1, v0

    invoke-virtual {v7, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lo/de5;->d(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    new-instance p0, Ljava/lang/UnknownError;

    const-string p1, "illegal access"

    invoke-direct {p0, p1}, Ljava/lang/UnknownError;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Ljava/lang/UnknownError;

    const-string p1, "invocation target"

    invoke-direct {p0, p1}, Ljava/lang/UnknownError;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2
    new-instance p0, Ljava/lang/UnknownError;

    const-string p1, "no such field"

    invoke-direct {p0, p1}, Ljava/lang/UnknownError;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_3
    new-instance p0, Ljava/lang/UnknownError;

    const-string p1, "no such method"

    invoke-direct {p0, p1}, Ljava/lang/UnknownError;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_4
    new-instance p0, Ljava/lang/UnknownError;

    const-string p1, "class not found"

    invoke-direct {p0, p1}, Ljava/lang/UnknownError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
