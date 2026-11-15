.class public abstract Lcom/therouter/router/RouteMapKt;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Lcom/therouter/router/RegexpKeyedMap;

.field private static volatile b:Z

.field private static final c:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/therouter/router/RegexpKeyedMap;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/therouter/router/RegexpKeyedMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/therouter/router/RouteMapKt;->a:Lcom/therouter/router/RegexpKeyedMap;

    .line 7
    .line 8
    new-instance v0, Lcom/google/gson/Gson;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/therouter/router/RouteMapKt;->c:Lcom/google/gson/Gson;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/therouter/router/RouteMapKt;->h()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/therouter/router/RouteMapKt;->g(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final c(Lcom/therouter/router/RouteItem;)V
    .locals 2

    .line 1
    const-string v0, "routeItem"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-static {p0}, Lcom/therouter/router/RouteMapKt;->d(Lcom/therouter/router/RouteItem;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    sget-object v0, Lcom/therouter/router/RouteMapKt;->a:Lcom/therouter/router/RegexpKeyedMap;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    invoke-static {p0}, Lcom/therouter/router/RouteMapKt;->d(Lcom/therouter/router/RouteItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v0

    .line 38
    throw p0
.end method

.method private static final d(Lcom/therouter/router/RouteItem;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/therouter/router/RouteItem;->getPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "/"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/lit8 v1, v1, -0x1

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "substring(...)"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v2, "add "

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/4 v2, 0x4

    .line 49
    const-string v3, "addRouteItem"

    .line 50
    .line 51
    invoke-static {v3, v1, v4, v2, v4}, Lcom/therouter/TheRouterKt;->f(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    sget-object v1, Lcom/therouter/router/RouteMapKt;->a:Lcom/therouter/router/RegexpKeyedMap;

    .line 55
    .line 56
    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public static final e(Ljava/util/Collection;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/therouter/router/RouteItem;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public static final f(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/therouter/router/h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/therouter/router/h;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/therouter/TheRouterThreadPool;->f(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final g(Landroid/content/Context;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x4

    .line 3
    const-string v2, "RouteMap"

    .line 4
    .line 5
    const-string v3, "will be add route map from\uff1a initDefaultRouteMap()"

    .line 6
    .line 7
    invoke-static {v2, v3, v0, v1, v0}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, La/TheRouterServiceProvideInjecter;->c()V

    .line 11
    .line 12
    .line 13
    sget-boolean v0, La/TheRouterServiceProvideInjecter;->asm:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-static {p0}, Lcom/therouter/inject/DebugOnlyKt;->a(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/therouter/inject/DebugOnlyKt;->c()Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/therouter/router/d;

    .line 39
    .line 40
    invoke-interface {v0}, Lcom/therouter/router/d;->init()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p0, 0x1

    .line 45
    sput-boolean p0, Lcom/therouter/router/RouteMapKt;->b:Z

    .line 46
    .line 47
    invoke-static {}, Lcom/therouter/router/RouteMapKt;->j()V

    .line 48
    .line 49
    .line 50
    new-instance p0, Lcom/therouter/router/i;

    .line 51
    .line 52
    invoke-direct {p0}, Lcom/therouter/router/i;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-static {p0}, Lcom/therouter/TheRouterThreadPool;->g(Ljava/lang/Runnable;)Z

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private static final h()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/therouter/router/NavigatorKt;->k()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final i()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/therouter/router/RouteMapKt;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final j()V
    .locals 7

    .line 1
    const-string v0, "RouteMap"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    .line 4
    .line 5
    invoke-static {}, Lcom/therouter/c;->c()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {}, Lcom/therouter/a;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {v2, v3}, Lcom/therouter/router/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "UTF-8"

    .line 18
    .line 19
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    .line 27
    .line 28
    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    .line 30
    .line 31
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v4, "\n"

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v3

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const-string v4, "toString(...)"

    .line 58
    .line 59
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v5, "will be add route map from assets: "

    .line 68
    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    const/4 v5, 0x4

    .line 80
    const/4 v6, 0x0

    .line 81
    invoke-static {v0, v4, v6, v5, v6}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-nez v4, :cond_1

    .line 89
    .line 90
    sget-object v4, Lcom/therouter/router/RouteMapKt;->c:Lcom/google/gson/Gson;

    .line 91
    .line 92
    new-instance v5, Lcom/therouter/router/RouteMapKt$initRouteMap$1$1$list$1;

    .line 93
    .line 94
    invoke-direct {v5}, Lcom/therouter/router/RouteMapKt$initRouteMap$1$1$list$1;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v4, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    const-string v4, "fromJson(...)"

    .line 106
    .line 107
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    check-cast v3, Ljava/util/List;

    .line 111
    .line 112
    check-cast v3, Ljava/util/Collection;

    .line 113
    .line 114
    invoke-static {v3}, Lcom/therouter/router/RouteMapKt;->e(Ljava/util/Collection;)V

    .line 115
    .line 116
    .line 117
    :cond_1
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    .line 119
    :try_start_3
    invoke-static {v2, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    .line 121
    .line 122
    :try_start_4
    invoke-static {v1, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 123
    .line 124
    .line 125
    goto :goto_4

    .line 126
    :catch_0
    move-exception v1

    .line 127
    goto :goto_3

    .line 128
    :catchall_1
    move-exception v2

    .line 129
    goto :goto_2

    .line 130
    :goto_1
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 131
    :catchall_2
    move-exception v4

    .line 132
    :try_start_6
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 136
    :goto_2
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 137
    :catchall_3
    move-exception v3

    .line 138
    :try_start_8
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 142
    :goto_3
    new-instance v2, Lcom/therouter/router/RouteMapKt$initRouteMap$2;

    .line 143
    .line 144
    invoke-direct {v2, v1}, Lcom/therouter/router/RouteMapKt$initRouteMap$2;-><init>(Ljava/lang/Exception;)V

    .line 145
    .line 146
    .line 147
    const-string v1, "initRouteMap InputStreamReader error"

    .line 148
    .line 149
    invoke-static {v0, v1, v2}, Lcom/therouter/TheRouterKt;->c(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 150
    .line 151
    .line 152
    :goto_4
    return-void
.end method

.method public static final k(Ljava/lang/String;)Lcom/therouter/router/RouteItem;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {p0}, Lcom/therouter/router/RouteMapKt;->l(Ljava/lang/String;)Lcom/therouter/router/RouteItem;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    sget-object v0, Lcom/therouter/router/RouteMapKt;->a:Lcom/therouter/router/RegexpKeyedMap;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    invoke-static {p0}, Lcom/therouter/router/RouteMapKt;->l(Ljava/lang/String;)Lcom/therouter/router/RouteItem;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit v0

    .line 32
    return-object p0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v0

    .line 35
    throw p0
.end method

.method private static final l(Ljava/lang/String;)Lcom/therouter/router/RouteItem;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    :cond_0
    invoke-static {p0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/therouter/router/Navigator;->o()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v0, "/"

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {p0, v0, v2, v1, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    add-int/lit8 v0, v0, -0x1

    .line 29
    .line 30
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string v0, "substring(...)"

    .line 35
    .line 36
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    sget-object v0, Lcom/therouter/router/RouteMapKt;->a:Lcom/therouter/router/RegexpKeyedMap;

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Lcom/therouter/router/RegexpKeyedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/therouter/router/RouteItem;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/therouter/router/RouteItem;->copy()Lcom/therouter/router/RouteItem;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    :cond_2
    if-nez v3, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {v3, p0}, Lcom/therouter/router/RouteItem;->setPath(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-object v3
.end method
