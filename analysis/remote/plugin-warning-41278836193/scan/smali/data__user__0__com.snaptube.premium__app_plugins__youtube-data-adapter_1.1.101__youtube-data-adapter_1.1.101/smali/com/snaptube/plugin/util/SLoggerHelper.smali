.class public Lcom/snaptube/plugin/util/SLoggerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CLAZZ:Ljava/lang/String; = "com.phoenix.slog.SnapTubeLogger"

.field private static final INSTANCE_METHOD:Ljava/lang/String; = "sLogTracker"

.field private static final LOG_METHOD:Ljava/lang/String; = "logYoutubeDataAdapterFail"

.field private static sTarget:Ljava/lang/Object;

.field private static sTargetClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sTargetMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/snaptube/plugin/util/SLoggerHelper;->prepare()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget-object v0, Lcom/snaptube/plugin/util/SLoggerHelper;->sTargetMethod:Ljava/lang/reflect/Method;

    .line 5
    .line 6
    sget-object v1, Lcom/snaptube/plugin/util/SLoggerHelper;->sTarget:Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    new-array v2, v2, [Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object p0, v2, v3

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    aput-object p1, v2, p0

    .line 16
    .line 17
    const/4 p0, 0x2

    .line 18
    aput-object p2, v2, p0

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public static logYoutubeDataAdapterFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/snaptube/plugin/util/SLoggerHelper;->invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static prepare()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, Lcom/snaptube/plugin/util/SLoggerHelper;->sTarget:Ljava/lang/Object;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    sget-object v1, Lcom/snaptube/plugin/util/SLoggerHelper;->sTargetClass:Ljava/lang/Class;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    sget-object v1, Lcom/snaptube/plugin/util/SLoggerHelper;->sTargetMethod:Ljava/lang/reflect/Method;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {}, La/a;->a()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "com.phoenix.slog.SnapTubeLogger"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sput-object v1, Lcom/snaptube/plugin/util/SLoggerHelper;->sTargetClass:Ljava/lang/Class;

    .line 33
    .line 34
    const-string v2, "sLogTracker"

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    sput-object v1, Lcom/snaptube/plugin/util/SLoggerHelper;->sTarget:Ljava/lang/Object;

    .line 49
    .line 50
    sget-object v1, Lcom/snaptube/plugin/util/SLoggerHelper;->sTargetClass:Ljava/lang/Class;

    .line 51
    .line 52
    const-string v2, "logYoutubeDataAdapterFail"

    .line 53
    .line 54
    const/4 v3, 0x3

    .line 55
    new-array v3, v3, [Ljava/lang/Class;

    .line 56
    .line 57
    const-class v4, Ljava/lang/String;

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    aput-object v4, v3, v5

    .line 61
    .line 62
    aput-object v4, v3, v0

    .line 63
    .line 64
    const-class v0, Ljava/lang/Throwable;

    .line 65
    .line 66
    const/4 v4, 0x2

    .line 67
    aput-object v0, v3, v4

    .line 68
    .line 69
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Lcom/snaptube/plugin/util/SLoggerHelper;->sTargetMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :catch_0
    move-exception v0

    .line 77
    goto :goto_0

    .line 78
    :catch_1
    move-exception v0

    .line 79
    goto :goto_1

    .line 80
    :catch_2
    move-exception v0

    .line 81
    goto :goto_2

    .line 82
    :catch_3
    move-exception v0

    .line 83
    goto :goto_3

    .line 84
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    goto :goto_4

    .line 88
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    .line 90
    .line 91
    goto :goto_4

    .line 92
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 97
    .line 98
    .line 99
    :goto_4
    return-void
.end method
