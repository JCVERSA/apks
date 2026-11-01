.class public abstract Lm/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 4

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    new-array v0, v0, [Ljava/lang/Class;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p0

    .line 8
    if-ge v1, v2, :cond_6

    .line 9
    .line 10
    aget-object v2, p0, v1

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const-class v2, Ljava/lang/Object;

    .line 20
    .line 21
    :goto_1
    const-class v3, Ljava/lang/Integer;

    .line 22
    .line 23
    if-ne v2, v3, :cond_1

    .line 24
    .line 25
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_1
    const-class v3, Ljava/lang/Boolean;

    .line 29
    .line 30
    if-ne v2, v3, :cond_2

    .line 31
    .line 32
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    const-class v3, Ljava/lang/Float;

    .line 36
    .line 37
    if-ne v2, v3, :cond_3

    .line 38
    .line 39
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    const-class v3, Ljava/lang/Double;

    .line 43
    .line 44
    if-ne v2, v3, :cond_4

    .line 45
    .line 46
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 47
    .line 48
    :cond_4
    :goto_2
    aput-object v2, v0, v1

    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_5
    const/4 v0, 0x0

    .line 54
    :cond_6
    return-object v0
.end method

.method public static varargs b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p2}, Lm/a;->a([Ljava/lang/Object;)[Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "org.mozilla.javascript.Scriptable"

    .line 6
    .line 7
    invoke-static {v1}, Lm/a;->h(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x5

    .line 12
    new-array v3, v2, [Ljava/lang/Class;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object v1, v3, v4

    .line 16
    .line 17
    const-class v1, Ljava/lang/String;

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    aput-object v1, v3, v5

    .line 21
    .line 22
    const/4 v6, 0x2

    .line 23
    aput-object v1, v3, v6

    .line 24
    .line 25
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 26
    .line 27
    const/4 v7, 0x3

    .line 28
    aput-object v1, v3, v7

    .line 29
    .line 30
    const-class v1, Ljava/lang/Object;

    .line 31
    .line 32
    const/4 v8, 0x4

    .line 33
    aput-object v1, v3, v8

    .line 34
    .line 35
    const-string v1, "evaluateString"

    .line 36
    .line 37
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    new-array v1, v2, [Ljava/lang/Object;

    .line 46
    .line 47
    aput-object p1, v1, v4

    .line 48
    .line 49
    aput-object p2, v1, v5

    .line 50
    .line 51
    aput-object p3, v1, v6

    .line 52
    .line 53
    aput-object p4, v1, v7

    .line 54
    .line 55
    aput-object p5, v1, v8

    .line 56
    .line 57
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "org.mozilla.javascript.Scriptable"

    .line 6
    .line 7
    invoke-static {v1}, Lm/a;->h(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "org.mozilla.javascript.Context"

    .line 12
    .line 13
    invoke-static {v2}, Lm/a;->h(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x4

    .line 18
    new-array v4, v3, [Ljava/lang/Class;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    aput-object v2, v4, v5

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    aput-object v1, v4, v2

    .line 25
    .line 26
    const/4 v6, 0x2

    .line 27
    aput-object v1, v4, v6

    .line 28
    .line 29
    const-class v1, [Ljava/lang/Object;

    .line 30
    .line 31
    const/4 v7, 0x3

    .line 32
    aput-object v1, v4, v7

    .line 33
    .line 34
    const-string v1, "call"

    .line 35
    .line 36
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-array v1, v3, [Ljava/lang/Object;

    .line 41
    .line 42
    aput-object p1, v1, v5

    .line 43
    .line 44
    aput-object p2, v1, v2

    .line 45
    .line 46
    aput-object p3, v1, v6

    .line 47
    .line 48
    aput-object p4, v1, v7

    .line 49
    .line 50
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "org.mozilla.javascript.Scriptable"

    .line 6
    .line 7
    invoke-static {v1}, Lm/a;->h(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x2

    .line 12
    new-array v3, v2, [Ljava/lang/Class;

    .line 13
    .line 14
    const-class v4, Ljava/lang/String;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    aput-object v4, v3, v5

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    aput-object v1, v3, v4

    .line 21
    .line 22
    const-string v1, "get"

    .line 23
    .line 24
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-array v1, v2, [Ljava/lang/Object;

    .line 29
    .line 30
    aput-object p1, v1, v5

    .line 31
    .line 32
    aput-object p2, v1, v4

    .line 33
    .line 34
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public static varargs f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p2}, Lm/a;->a([Ljava/lang/Object;)[Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :catch_1
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :catch_2
    move-exception p0

    .line 20
    goto :goto_0

    .line 21
    :catch_3
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :catch_4
    move-exception p0

    .line 24
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public static varargs g(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p2, p3}, Lm/a;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
