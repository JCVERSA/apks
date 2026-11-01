.class public Ll/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/g;


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Ll/f;->e()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "exit"

    .line 4
    .line 5
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    :try_start_0
    const-string v4, "org.mozilla.javascript.Context"

    .line 12
    .line 13
    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :try_start_1
    const-string v4, "enter"

    .line 18
    .line 19
    new-array v5, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {v3, v4, v5}, Lm/a;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const-string v5, "setOptimizationLevel"

    .line 26
    .line 27
    const/4 v6, -0x1

    .line 28
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    new-array v7, v0, [Ljava/lang/Object;

    .line 33
    .line 34
    aput-object v6, v7, v1

    .line 35
    .line 36
    invoke-static {v4, v5, v7}, Lm/a;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    const-string v5, "compileString"

    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    const/4 v7, 0x4

    .line 46
    new-array v7, v7, [Ljava/lang/Object;

    .line 47
    .line 48
    aput-object p0, v7, v1

    .line 49
    .line 50
    const-string p0, ""

    .line 51
    .line 52
    aput-object p0, v7, v0

    .line 53
    .line 54
    const/4 p0, 0x2

    .line 55
    aput-object v6, v7, p0

    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    const/4 v0, 0x3

    .line 59
    aput-object p0, v7, v0

    .line 60
    .line 61
    invoke-static {v4, v5, v7}, Lm/a;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    .line 64
    :try_start_2
    new-array p0, v1, [Ljava/lang/Object;

    .line 65
    .line 66
    invoke-static {v3, v2, p0}, Lm/a;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catch_0
    move-exception p0

    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    new-array v0, v1, [Ljava/lang/Object;

    .line 74
    .line 75
    invoke-static {v3, v2, v0}, Lm/a;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 79
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_0
    :goto_1
    return-void
.end method

.method private static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "exit"

    .line 3
    .line 4
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    :try_start_0
    const-string v3, "org.mozilla.javascript.Context"

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :try_start_1
    const-string v3, "enter"

    .line 17
    .line 18
    new-array v4, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {v2, v3, v4}, Lm/a;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, "setOptimizationLevel"

    .line 25
    .line 26
    const/4 v5, -0x1

    .line 27
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const/4 v6, 0x1

    .line 32
    new-array v6, v6, [Ljava/lang/Object;

    .line 33
    .line 34
    aput-object v5, v6, v0

    .line 35
    .line 36
    invoke-static {v3, v4, v6}, Lm/a;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    const-string v4, "initSafeStandardObjects"

    .line 40
    .line 41
    new-array v5, v0, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {v3, v4, v5}, Lm/a;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const/4 v9, 0x1

    .line 48
    const/4 v10, 0x0

    .line 49
    move-object v5, v3

    .line 50
    move-object v6, v4

    .line 51
    move-object v7, p0

    .line 52
    move-object v8, p1

    .line 53
    invoke-static/range {v5 .. v10}, Lm/a;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v4, p1, v4}, Lm/a;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0, v3, v4, v4, p2}, Lm/a;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :try_start_2
    new-array p1, v0, [Ljava/lang/Object;

    .line 69
    .line 70
    invoke-static {v2, v1, p1}, Lm/a;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    return-object p0

    .line 74
    :catch_0
    move-exception p0

    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    new-array p1, v0, [Ljava/lang/Object;

    .line 78
    .line 79
    invoke-static {v2, v1, p1}, Lm/a;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 83
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :cond_0
    const/4 p0, 0x0

    .line 88
    return-object p0
.end method

.method private static e()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-class v2, Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    const-string v4, "com.snaptubeapp.videoextractor.jsbridge.JavaScriptEnvironment"

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, "run"

    .line 19
    .line 20
    const/4 v5, 0x3

    .line 21
    new-array v5, v5, [Ljava/lang/Class;

    .line 22
    .line 23
    aput-object v2, v5, v1

    .line 24
    .line 25
    aput-object v2, v5, v0

    .line 26
    .line 27
    const-class v6, [Ljava/lang/String;

    .line 28
    .line 29
    const/4 v7, 0x2

    .line 30
    aput-object v6, v5, v7

    .line 31
    .line 32
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    sput-object v4, Ll/f;->a:Ljava/lang/reflect/Method;

    .line 37
    .line 38
    const-string v4, "compileOrThrow"

    .line 39
    .line 40
    new-array v0, v0, [Ljava/lang/Class;

    .line 41
    .line 42
    aput-object v2, v0, v1

    .line 43
    .line 44
    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Ll/f;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Ll/f;->b:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    aput-object p1, v2, v3

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p1}, Ll/f;->c(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    array-length v1, p3

    .line 3
    new-array v1, v1, [Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    :goto_0
    array-length v4, p3

    .line 8
    if-ge v3, v4, :cond_1

    .line 9
    .line 10
    aget-object v4, p3, v3

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    aput-object v4, v1, v3

    .line 19
    .line 20
    :cond_0
    add-int/2addr v3, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    sget-object p3, Ll/f;->a:Ljava/lang/reflect/Method;

    .line 23
    .line 24
    if-eqz p3, :cond_2

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x3

    .line 28
    new-array v4, v4, [Ljava/lang/Object;

    .line 29
    .line 30
    aput-object p1, v4, v2

    .line 31
    .line 32
    aput-object p2, v4, v0

    .line 33
    .line 34
    const/4 p1, 0x2

    .line 35
    aput-object v1, v4, p1

    .line 36
    .line 37
    invoke-virtual {p3, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Ljava/lang/String;

    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_2
    invoke-static {p1, p2, v1}, Ll/f;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method
