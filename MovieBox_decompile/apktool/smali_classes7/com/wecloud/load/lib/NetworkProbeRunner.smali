.class public final Lcom/wecloud/load/lib/NetworkProbeRunner;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wecloud/load/lib/NetworkProbeRunner$Link;,
        Lcom/wecloud/load/lib/NetworkProbeRunner$Payload;,
        Lcom/wecloud/load/lib/NetworkProbeRunner$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/wecloud/load/lib/NetworkProbeRunner;

.field private static final b:Lcom/google/gson/Gson;

.field private static final c:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/wecloud/load/lib/NetworkProbeRunner;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/wecloud/load/lib/NetworkProbeRunner;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/wecloud/load/lib/NetworkProbeRunner;->a:Lcom/wecloud/load/lib/NetworkProbeRunner;

    .line 7
    .line 8
    new-instance v0, Lcom/google/gson/Gson;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/wecloud/load/lib/NetworkProbeRunner;->b:Lcom/google/gson/Gson;

    .line 14
    .line 15
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 16
    .line 17
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/wecloud/load/lib/NetworkProbeRunner;->c:Lokhttp3/OkHttpClient;

    .line 34
    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Ljava/util/concurrent/atomic/AtomicReference;Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/wecloud/load/lib/NetworkProbeRunner;->i(Ljava/util/concurrent/atomic/AtomicReference;Lokhttp3/Call;)Lokhttp3/EventListener;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    sget-object v0, Lcom/wecloud/load/lib/NetworkProbeRunner;->b:Lcom/google/gson/Gson;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c(Lcom/wecloud/load/lib/NetworkProbeRunner;Lcom/wecloud/load/lib/NetworkProbeRunner$Link;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wecloud/load/lib/NetworkProbeRunner;->g(Lcom/wecloud/load/lib/NetworkProbeRunner$Link;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final d(Ljava/lang/Throwable;)Lkotlin/Pair;
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string p1, "Operation timeout"

    .line 17
    .line 18
    :cond_0
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_1
    instance-of v0, p1, Ljava/net/UnknownHostException;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    const-string p1, "DNS lookup failed"

    .line 40
    .line 41
    :cond_2
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    instance-of v0, p1, Ljava/net/ConnectException;

    .line 47
    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    const/4 v0, 0x2

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-nez p1, :cond_4

    .line 60
    .line 61
    const-string p1, "Failed to connect to host"

    .line 62
    .line 63
    :cond_4
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    goto :goto_1

    .line 68
    :cond_5
    instance-of v0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 69
    .line 70
    if-nez v0, :cond_a

    .line 71
    .line 72
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    .line 73
    .line 74
    if-eqz v0, :cond_6

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_6
    instance-of v0, p1, Ljava/io/IOException;

    .line 78
    .line 79
    const/16 v1, 0x63

    .line 80
    .line 81
    if-eqz v0, :cond_8

    .line 82
    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-nez p1, :cond_7

    .line 92
    .line 93
    const-string p1, "IO error"

    .line 94
    .line 95
    :cond_7
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    goto :goto_1

    .line 100
    :cond_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-nez p1, :cond_9

    .line 109
    .line 110
    const-string p1, "Unknown error"

    .line 111
    .line 112
    :cond_9
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    goto :goto_1

    .line 117
    :cond_a
    :goto_0
    const/4 v0, 0x5

    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-nez p1, :cond_b

    .line 127
    .line 128
    const-string p1, "SSL peer certificate verification failed"

    .line 129
    .line 130
    :cond_b
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    :goto_1
    return-object p1
.end method

.method public static synthetic f(Lcom/wecloud/load/lib/NetworkProbeRunner;Ljava/lang/String;Lkotlinx/coroutines/i0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/wecloud/load/lib/NetworkProbeRunner;->e(Ljava/lang/String;Lkotlinx/coroutines/i0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private final g(Lcom/wecloud/load/lib/NetworkProbeRunner$Link;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/wecloud/load/lib/NetworkProbeRunner$Link;->getRetryCount()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ltz v0, :cond_2

    .line 19
    .line 20
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/wecloud/load/lib/NetworkProbeRunner;->h(Lcom/wecloud/load/lib/NetworkProbeRunner$Link;)Lcom/wecloud/load/lib/n;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lcom/wecloud/load/lib/n;->m()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    return-object v2

    .line 31
    :cond_1
    if-eq v1, v0, :cond_3

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    const/4 v2, 0x0

    .line 37
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/wecloud/load/lib/NetworkProbeRunner$Link;->getUrl()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    const-string v0, ""

    .line 44
    .line 45
    :cond_4
    move-object v4, v0

    .line 46
    if-nez v2, :cond_6

    .line 47
    .line 48
    new-instance v2, Lcom/wecloud/load/lib/n;

    .line 49
    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/wecloud/load/lib/NetworkProbeRunner$Link;->getMethod()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-nez v0, :cond_5

    .line 55
    .line 56
    const-string v0, "GET"

    .line 57
    .line 58
    :cond_5
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    const-string v0, "toUpperCase(...)"

    .line 65
    .line 66
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v13

    .line 77
    const-wide/16 v15, 0x0

    .line 78
    .line 79
    const-string v17, "unknown"

    .line 80
    .line 81
    const/4 v6, 0x0

    .line 82
    const/4 v7, -0x1

    .line 83
    const-string v8, ""

    .line 84
    .line 85
    const-string v9, "Unknown error"

    .line 86
    .line 87
    const/16 v10, 0x63

    .line 88
    .line 89
    const-string v12, ""

    .line 90
    .line 91
    move-object v3, v2

    .line 92
    invoke-direct/range {v3 .. v17}, Lcom/wecloud/load/lib/n;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;JJLjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_6
    return-object v2
.end method

.method private final h(Lcom/wecloud/load/lib/NetworkProbeRunner$Link;)Lcom/wecloud/load/lib/n;
    .locals 42

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/wecloud/load/lib/NetworkProbeRunner$Link;->getUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    move-object v14, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v14, v0

    .line 12
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/wecloud/load/lib/NetworkProbeRunner$Link;->getMethod()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const-string v0, "GET"

    .line 19
    .line 20
    :cond_1
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v15

    .line 26
    const-string v0, "toUpperCase(...)"

    .line 27
    .line 28
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/wecloud/load/lib/NetworkProbeRunner$Link;->getTimeoutMilliseconds()Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const/16 v0, 0x2710

    .line 43
    .line 44
    :goto_1
    const/4 v2, 0x1

    .line 45
    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/wecloud/load/lib/NetworkProbeRunner$Link;->getExpectedStatusCode()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const/4 v4, 0x0

    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    invoke-static {v3}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    move v3, v4

    .line 68
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v17

    .line 72
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 73
    .line 74
    .line 75
    move-result-wide v19

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/wecloud/load/lib/NetworkProbeRunner$Link;->getHeaders()Ljava/util/Map;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    if-nez v5, :cond_4

    .line 81
    .line 82
    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/wecloud/load/lib/NetworkProbeRunner$Link;->getBody()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    if-nez v6, :cond_5

    .line 91
    .line 92
    move-object v6, v1

    .line 93
    :cond_5
    :try_start_0
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    .line 94
    .line 95
    const/4 v8, 0x0

    .line 96
    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    sget-object v9, Lcom/wecloud/load/lib/NetworkProbeRunner;->c:Lokhttp3/OkHttpClient;

    .line 100
    .line 101
    invoke-virtual {v9}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    int-to-long v10, v0

    .line 106
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 107
    .line 108
    invoke-virtual {v9, v10, v11, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    invoke-virtual {v9, v10, v11, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    new-instance v9, Lcom/wecloud/load/lib/m;

    .line 117
    .line 118
    invoke-direct {v9, v7}, Lcom/wecloud/load/lib/m;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v9}, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory(Lokhttp3/EventListener$Factory;)Lokhttp3/OkHttpClient$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    new-instance v9, Lokhttp3/Request$Builder;

    .line 130
    .line 131
    invoke-direct {v9}, Lokhttp3/Request$Builder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v9, v14}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v10

    .line 146
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v11

    .line 150
    if-eqz v11, :cond_6

    .line 151
    .line 152
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v11

    .line 156
    check-cast v11, Ljava/util/Map$Entry;

    .line 157
    .line 158
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v12

    .line 162
    check-cast v12, Ljava/lang/String;

    .line 163
    .line 164
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    check-cast v11, Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v9, v12, v11}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :catchall_0
    move-exception v0

    .line 175
    move-object/from16 v23, v14

    .line 176
    .line 177
    move-object/from16 v24, v15

    .line 178
    .line 179
    goto/16 :goto_16

    .line 180
    .line 181
    :cond_6
    const-string v10, "POST"

    .line 182
    .line 183
    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    if-nez v10, :cond_8

    .line 188
    .line 189
    const-string v10, "PUT"

    .line 190
    .line 191
    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v10

    .line 195
    if-nez v10, :cond_8

    .line 196
    .line 197
    const-string v10, "PATCH"

    .line 198
    .line 199
    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v10

    .line 203
    if-nez v10, :cond_8

    .line 204
    .line 205
    const-string v10, "DELETE"

    .line 206
    .line 207
    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v10

    .line 211
    if-eqz v10, :cond_7

    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_7
    move v10, v4

    .line 215
    goto :goto_5

    .line 216
    :cond_8
    :goto_4
    move v10, v2

    .line 217
    :goto_5
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    check-cast v5, Ljava/lang/Iterable;

    .line 222
    .line 223
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v11

    .line 231
    if-eqz v11, :cond_a

    .line 232
    .line 233
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v11

    .line 237
    move-object v12, v11

    .line 238
    check-cast v12, Ljava/util/Map$Entry;

    .line 239
    .line 240
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v12

    .line 244
    check-cast v12, Ljava/lang/String;

    .line 245
    .line 246
    const-string v13, "Content-Type"

    .line 247
    .line 248
    invoke-static {v12, v13, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 249
    .line 250
    .line 251
    move-result v12

    .line 252
    if-eqz v12, :cond_9

    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_a
    move-object v11, v8

    .line 256
    :goto_6
    check-cast v11, Ljava/util/Map$Entry;

    .line 257
    .line 258
    if-eqz v11, :cond_b

    .line 259
    .line 260
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    check-cast v5, Ljava/lang/String;

    .line 265
    .line 266
    goto :goto_7

    .line 267
    :cond_b
    move-object v5, v8

    .line 268
    :goto_7
    if-eqz v5, :cond_c

    .line 269
    .line 270
    sget-object v11, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 271
    .line 272
    invoke-virtual {v11, v5}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    goto :goto_8

    .line 277
    :cond_c
    move-object v5, v8

    .line 278
    :goto_8
    if-eqz v10, :cond_d

    .line 279
    .line 280
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 281
    .line 282
    .line 283
    move-result v11

    .line 284
    if-lez v11, :cond_d

    .line 285
    .line 286
    sget-object v11, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 287
    .line 288
    invoke-virtual {v11, v6, v5}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    goto :goto_9

    .line 293
    :cond_d
    move-object v5, v8

    .line 294
    :goto_9
    if-eqz v10, :cond_f

    .line 295
    .line 296
    if-nez v5, :cond_e

    .line 297
    .line 298
    sget-object v21, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 299
    .line 300
    new-array v5, v4, [B

    .line 301
    .line 302
    const/16 v26, 0x6

    .line 303
    .line 304
    const/16 v27, 0x0

    .line 305
    .line 306
    const/16 v23, 0x0

    .line 307
    .line 308
    const/16 v24, 0x0

    .line 309
    .line 310
    const/16 v25, 0x0

    .line 311
    .line 312
    move-object/from16 v22, v5

    .line 313
    .line 314
    invoke-static/range {v21 .. v27}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lokhttp3/RequestBody;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    :cond_e
    invoke-virtual {v9, v15, v5}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    goto :goto_a

    .line 327
    :cond_f
    invoke-virtual {v9, v15, v8}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 328
    .line 329
    .line 330
    move-result-object v5

    .line 331
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    :goto_a
    invoke-virtual {v0, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    .line 344
    .line 345
    .line 346
    move-result v6

    .line 347
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 348
    .line 349
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 350
    .line 351
    .line 352
    move-result-wide v9

    .line 353
    sub-long v9, v9, v19

    .line 354
    .line 355
    invoke-virtual {v5, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 356
    .line 357
    .line 358
    move-result-wide v21

    .line 359
    new-instance v10, Ljava/util/LinkedHashMap;

    .line 360
    .line 361
    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 369
    .line 370
    .line 371
    move-result-object v5

    .line 372
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 373
    .line 374
    .line 375
    move-result v9

    .line 376
    if-eqz v9, :cond_10

    .line 377
    .line 378
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v9

    .line 382
    check-cast v9, Lkotlin/Pair;

    .line 383
    .line 384
    invoke-virtual {v9}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v11

    .line 388
    invoke-virtual {v9}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v9

    .line 392
    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    goto :goto_b

    .line 396
    :cond_10
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 397
    .line 398
    .line 399
    move-result-object v5

    .line 400
    if-eqz v5, :cond_11

    .line 401
    .line 402
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v8

    .line 406
    :cond_11
    if-nez v8, :cond_12

    .line 407
    .line 408
    move-object v8, v1

    .line 409
    :cond_12
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 410
    .line 411
    .line 412
    move-result v5

    .line 413
    const/high16 v9, 0x100000

    .line 414
    .line 415
    if-le v5, v9, :cond_13

    .line 416
    .line 417
    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v5

    .line 421
    const-string v8, "substring(...)"

    .line 422
    .line 423
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    move-object v11, v5

    .line 427
    goto :goto_c

    .line 428
    :cond_13
    move-object v11, v8

    .line 429
    :goto_c
    const/16 v12, 0xc8

    .line 430
    .line 431
    if-lez v3, :cond_14

    .line 432
    .line 433
    if-ne v6, v3, :cond_15

    .line 434
    .line 435
    :goto_d
    move v4, v2

    .line 436
    goto :goto_e

    .line 437
    :cond_14
    if-gt v12, v6, :cond_15

    .line 438
    .line 439
    const/16 v5, 0x190

    .line 440
    .line 441
    if-ge v6, v5, :cond_15

    .line 442
    .line 443
    goto :goto_d

    .line 444
    :cond_15
    :goto_e
    invoke-virtual {v0}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    sget-object v5, Lcom/wecloud/load/lib/NetworkProbeRunner$a;->a:[I

    .line 449
    .line 450
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 451
    .line 452
    .line 453
    move-result v0

    .line 454
    aget v0, v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    .line 456
    if-eq v0, v2, :cond_18

    .line 457
    .line 458
    const/4 v2, 0x2

    .line 459
    if-eq v0, v2, :cond_17

    .line 460
    .line 461
    const/4 v2, 0x3

    .line 462
    const-string v5, "HTTP/2"

    .line 463
    .line 464
    if-eq v0, v2, :cond_16

    .line 465
    .line 466
    const/4 v2, 0x4

    .line 467
    if-eq v0, v2, :cond_16

    .line 468
    .line 469
    const/4 v2, 0x5

    .line 470
    if-eq v0, v2, :cond_16

    .line 471
    .line 472
    :try_start_1
    const-string v0, "unknown"

    .line 473
    .line 474
    :goto_f
    move-object/from16 v16, v0

    .line 475
    .line 476
    goto :goto_10

    .line 477
    :cond_16
    move-object/from16 v16, v5

    .line 478
    .line 479
    goto :goto_10

    .line 480
    :cond_17
    const-string v0, "HTTP/1.1"

    .line 481
    .line 482
    goto :goto_f

    .line 483
    :cond_18
    const-string v0, "HTTP/1.0"

    .line 484
    .line 485
    goto :goto_f

    .line 486
    :goto_10
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    check-cast v0, Ljava/lang/String;

    .line 491
    .line 492
    if-nez v0, :cond_19

    .line 493
    .line 494
    move-object v7, v1

    .line 495
    goto :goto_11

    .line 496
    :cond_19
    move-object v7, v0

    .line 497
    :goto_11
    if-eqz v4, :cond_1a

    .line 498
    .line 499
    new-instance v0, Lcom/wecloud/load/lib/n;

    .line 500
    .line 501
    const-string v8, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    .line 503
    const/4 v9, 0x0

    .line 504
    const/4 v5, 0x1

    .line 505
    move-object v2, v0

    .line 506
    move-object v3, v14

    .line 507
    move-object v4, v15

    .line 508
    move v1, v12

    .line 509
    move-wide/from16 v12, v17

    .line 510
    .line 511
    move-object/from16 v23, v14

    .line 512
    .line 513
    move-object/from16 v24, v15

    .line 514
    .line 515
    move-wide/from16 v14, v21

    .line 516
    .line 517
    :try_start_2
    invoke-direct/range {v2 .. v16}, Lcom/wecloud/load/lib/n;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;JJLjava/lang/String;)V

    .line 518
    .line 519
    .line 520
    :goto_12
    move-object/from16 v25, v0

    .line 521
    .line 522
    goto :goto_15

    .line 523
    :catchall_1
    move-exception v0

    .line 524
    goto/16 :goto_16

    .line 525
    .line 526
    :cond_1a
    move v1, v12

    .line 527
    move-object/from16 v23, v14

    .line 528
    .line 529
    move-object/from16 v24, v15

    .line 530
    .line 531
    new-instance v0, Lcom/wecloud/load/lib/n;

    .line 532
    .line 533
    if-lez v3, :cond_1b

    .line 534
    .line 535
    new-instance v2, Ljava/lang/StringBuilder;

    .line 536
    .line 537
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    .line 539
    .line 540
    const-string v4, "Expected status code "

    .line 541
    .line 542
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    const-string v3, ", but got "

    .line 549
    .line 550
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    :goto_13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v2

    .line 560
    move-object v8, v2

    .line 561
    goto :goto_14

    .line 562
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 563
    .line 564
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    .line 566
    .line 567
    const-string v3, "HTTP "

    .line 568
    .line 569
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    goto :goto_13

    .line 576
    :goto_14
    const/16 v9, 0x63

    .line 577
    .line 578
    const/4 v5, 0x0

    .line 579
    move-object v2, v0

    .line 580
    move-object/from16 v3, v23

    .line 581
    .line 582
    move-object/from16 v4, v24

    .line 583
    .line 584
    move-wide/from16 v12, v17

    .line 585
    .line 586
    move-wide/from16 v14, v21

    .line 587
    .line 588
    invoke-direct/range {v2 .. v16}, Lcom/wecloud/load/lib/n;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;JJLjava/lang/String;)V

    .line 589
    .line 590
    .line 591
    goto :goto_12

    .line 592
    :goto_15
    invoke-virtual/range {v25 .. v25}, Lcom/wecloud/load/lib/n;->l()I

    .line 593
    .line 594
    .line 595
    move-result v0

    .line 596
    if-ne v0, v1, :cond_1c

    .line 597
    .line 598
    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    .line 599
    .line 600
    .line 601
    move-result-object v33

    .line 602
    const-string v34, ""

    .line 603
    .line 604
    const/16 v40, 0xe7f

    .line 605
    .line 606
    const/16 v41, 0x0

    .line 607
    .line 608
    const/16 v26, 0x0

    .line 609
    .line 610
    const/16 v27, 0x0

    .line 611
    .line 612
    const/16 v28, 0x0

    .line 613
    .line 614
    const/16 v29, 0x0

    .line 615
    .line 616
    const/16 v30, 0x0

    .line 617
    .line 618
    const/16 v31, 0x0

    .line 619
    .line 620
    const/16 v32, 0x0

    .line 621
    .line 622
    const-wide/16 v35, 0x0

    .line 623
    .line 624
    const-wide/16 v37, 0x0

    .line 625
    .line 626
    const/16 v39, 0x0

    .line 627
    .line 628
    invoke-static/range {v25 .. v41}, Lcom/wecloud/load/lib/n;->b(Lcom/wecloud/load/lib/n;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;JJLjava/lang/String;ILjava/lang/Object;)Lcom/wecloud/load/lib/n;

    .line 629
    .line 630
    .line 631
    move-result-object v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 632
    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 633
    .line 634
    .line 635
    return-object v25

    .line 636
    :goto_16
    :try_start_3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 637
    .line 638
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 639
    .line 640
    .line 641
    move-result-wide v2

    .line 642
    sub-long v2, v2, v19

    .line 643
    .line 644
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 645
    .line 646
    .line 647
    move-result-wide v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 648
    move-object/from16 v1, p0

    .line 649
    .line 650
    :try_start_4
    invoke-direct {v1, v0}, Lcom/wecloud/load/lib/NetworkProbeRunner;->d(Ljava/lang/Throwable;)Lkotlin/Pair;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    move-result-object v2

    .line 658
    check-cast v2, Ljava/lang/Number;

    .line 659
    .line 660
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 661
    .line 662
    .line 663
    move-result v9

    .line 664
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    move-object v8, v0

    .line 669
    check-cast v8, Ljava/lang/String;

    .line 670
    .line 671
    new-instance v0, Lcom/wecloud/load/lib/n;

    .line 672
    .line 673
    const-string v7, ""

    .line 674
    .line 675
    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    .line 676
    .line 677
    .line 678
    move-result-object v10

    .line 679
    const-string v11, ""

    .line 680
    .line 681
    const-string v16, "unknown"

    .line 682
    .line 683
    const/4 v5, 0x0

    .line 684
    const/4 v6, -0x1

    .line 685
    move-object v2, v0

    .line 686
    move-object/from16 v3, v23

    .line 687
    .line 688
    move-object/from16 v4, v24

    .line 689
    .line 690
    move-wide/from16 v12, v17

    .line 691
    .line 692
    invoke-direct/range {v2 .. v16}, Lcom/wecloud/load/lib/n;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;JJLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 693
    .line 694
    .line 695
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 696
    .line 697
    .line 698
    return-object v0

    .line 699
    :catchall_2
    move-exception v0

    .line 700
    goto :goto_17

    .line 701
    :catchall_3
    move-exception v0

    .line 702
    move-object/from16 v1, p0

    .line 703
    .line 704
    :goto_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 705
    .line 706
    .line 707
    throw v0
.end method

.method private static final i(Ljava/util/concurrent/atomic/AtomicReference;Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/wecloud/load/lib/NetworkProbeRunner$b;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/wecloud/load/lib/NetworkProbeRunner$b;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 9
    .line 10
    .line 11
    return-object p1
.end method


# virtual methods
.method public final e(Ljava/lang/String;Lkotlinx/coroutines/i0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p2, v0, p3}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
