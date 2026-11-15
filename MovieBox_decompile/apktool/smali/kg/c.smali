.class public final Lkg/c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkg/c$a;
    }
.end annotation


# static fields
.field public static final e:Lkg/c$a;

.field private static final f:Lkotlin/Lazy;

.field private static final g:Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lokhttp3/OkHttpClient;

.field private c:Lretrofit2/k0;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkg/c$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lkg/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lkg/c;->e:Lkg/c$a;

    .line 8
    .line 9
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 10
    .line 11
    new-instance v1, Lkg/b;

    .line 12
    .line 13
    invoke-direct {v1}, Lkg/b;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lkg/c;->f:Lkotlin/Lazy;

    .line 21
    .line 22
    const-string v0, "one_room_net_thread"

    .line 23
    .line 24
    sput-object v0, Lkg/c;->g:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "NetServiceGenerator"

    .line 5
    .line 6
    iput-object v0, p0, Lkg/c;->a:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lkg/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->a:Lcom/tn/lib/net/dns/or/CacheIpPool;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/tn/lib/net/dns/or/CacheIpPool;->h()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lkg/c;->j()Lokhttp3/OkHttpClient;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lkg/c;->b:Lokhttp3/OkHttpClient;

    .line 26
    .line 27
    new-instance v0, Lretrofit2/k0$b;

    .line 28
    .line 29
    invoke-direct {v0}, Lretrofit2/k0$b;-><init>()V

    .line 30
    .line 31
    .line 32
    sget-object v1, Lgg/a;->a:Lgg/a$a;

    .line 33
    .line 34
    invoke-virtual {v1}, Lgg/a$a;->a()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->c(Ljava/lang/String;)Lretrofit2/k0$b;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lkg/c;->b:Lokhttp3/OkHttpClient;

    .line 43
    .line 44
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->g(Lokhttp3/OkHttpClient;)Lretrofit2/k0$b;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {}, Lfg/a;->f()Lfg/a;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->b(Lretrofit2/k$a;)Lretrofit2/k0$b;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v1, Lkg/a;

    .line 60
    .line 61
    invoke-direct {v1, p0}, Lkg/a;-><init>(Lkg/c;)V

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x6

    .line 65
    invoke-static {v2, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1}, Ley/a;->a(Ljava/util/concurrent/Executor;)Lio/reactivex/rxjava3/core/Scheduler;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1}, Lj00/g;->e(Lio/reactivex/rxjava3/core/Scheduler;)Lj00/g;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->a(Lretrofit2/e$a;)Lretrofit2/k0$b;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lretrofit2/k0$b;->e()Lretrofit2/k0;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Lkg/c;->c:Lretrofit2/k0;

    .line 86
    .line 87
    return-void
.end method

.method public static synthetic a(Lkg/c;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkg/c;->c(Lkg/c;Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b()Lkg/c;
    .locals 1

    .line 1
    invoke-static {}, Lkg/c;->i()Lkg/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final c(Lkg/c;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    sget-object v1, Lkg/c;->g:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lkg/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "-"

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-direct {v0, p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/16 p0, 0xa

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public static final synthetic d()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lkg/c;->f:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method private final e(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lretrofit2/k0$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lretrofit2/k0$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lretrofit2/k0$b;->e()Lretrofit2/k0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lretrofit2/k0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method private final f()Lokhttp3/Interceptor;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/chromium/net/CronetEngine$Builder;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lorg/chromium/net/CronetEngine$Builder;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lorg/chromium/net/CronetEngine$Builder;->enableQuic(Z)Lorg/chromium/net/CronetEngine$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, v1}, Lorg/chromium/net/CronetEngine$Builder;->enableBrotli(Z)Lorg/chromium/net/CronetEngine$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "api3.aoneroom.com"

    .line 20
    .line 21
    const/16 v3, 0x1bb

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3, v3}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "api4.aoneroom.com"

    .line 28
    .line 29
    invoke-virtual {v1, v2, v3, v3}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "api4sg.aoneroom.com"

    .line 34
    .line 35
    invoke-virtual {v1, v2, v3, v3}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "api5.aoneroom.com"

    .line 40
    .line 41
    invoke-virtual {v1, v2, v3, v3}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "api6.aoneroom.com"

    .line 46
    .line 47
    invoke-virtual {v1, v2, v3, v3}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, " api7.aoneroom.com "

    .line 52
    .line 53
    invoke-virtual {v1, v2, v3, v3}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, " api8.aoneroom.com"

    .line 58
    .line 59
    invoke-virtual {v1, v2, v3, v3}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v2, "api6sg.aoneroom.com"

    .line 64
    .line 65
    invoke-virtual {v1, v2, v3, v3}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v2, "api.inmoviebox.com"

    .line 70
    .line 71
    invoke-virtual {v1, v2, v3, v3}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v2, "test-mse-api.aoneroom.com"

    .line 76
    .line 77
    invoke-virtual {v1, v2, v3, v3}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lorg/chromium/net/CronetEngine$Builder;->build()Lorg/chromium/net/CronetEngine;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const-string v1, "build(...)"

    .line 85
    .line 86
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Lcom/google/net/cronet/okhttptransport/a;->j(Lorg/chromium/net/CronetEngine;)Lcom/google/net/cronet/okhttptransport/a$b;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/google/net/cronet/okhttptransport/a$b;->a()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lokhttp3/Interceptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v2, "e "

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    const-string v1, "error"

    .line 123
    .line 124
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    const/4 v0, 0x0

    .line 128
    return-object v0
.end method

.method private static final i()Lkg/c;
    .locals 1

    .line 1
    new-instance v0, Lkg/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lkg/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final j()Lokhttp3/OkHttpClient;
    .locals 7

    .line 1
    sget-object v0, Lag/a;->a:Lag/a$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lag/a$a;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 12
    .line 13
    :goto_0
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    .line 14
    .line 15
    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Llg/a;->a()Ljavax/net/ssl/SSLSocketFactory;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "createSSLSocketFactory(...)"

    .line 23
    .line 24
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Llg/a;

    .line 28
    .line 29
    invoke-direct {v3}, Llg/a;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    new-instance v3, Llg/a$a;

    .line 37
    .line 38
    invoke-direct {v3}, Llg/a$a;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 49
    .line 50
    const-wide/16 v3, 0x28

    .line 51
    .line 52
    invoke-virtual {v0, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-wide/16 v5, 0x14

    .line 57
    .line 58
    invoke-virtual {v0, v5, v6, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0, v5, v6, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sget-object v2, Ljg/a;->a:Ljg/a$a;

    .line 71
    .line 72
    invoke-virtual {v2}, Ljg/a$a;->a()Lokhttp3/Interceptor;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v2, Lig/c;

    .line 81
    .line 82
    invoke-direct {v2}, Lig/c;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    new-instance v2, Lcom/transsion/api/gateway/interceptor/GatewayInterceptor;

    .line 90
    .line 91
    invoke-direct {v2}, Lcom/transsion/api/gateway/interceptor/GatewayInterceptor;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    new-instance v2, Lig/a;

    .line 99
    .line 100
    invoke-direct {v2}, Lig/a;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 104
    .line 105
    .line 106
    sget-object v0, Lig/e;->a:Lig/e;

    .line 107
    .line 108
    invoke-virtual {v0}, Lig/e;->b()Ljava/util/ArrayList;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_1

    .line 121
    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Lokhttp3/Interceptor;

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_1
    sget-object v0, Lag/a;->a:Lag/a$a;

    .line 133
    .line 134
    invoke-virtual {v0}, Lag/a$a;->c()Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_2

    .line 139
    .line 140
    new-instance v0, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;

    .line 141
    .line 142
    new-instance v2, Lcom/tn/lib/net/interceptor/a;

    .line 143
    .line 144
    invoke-direct {v2}, Lcom/tn/lib/net/interceptor/a;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-direct {v0, v2}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;-><init>(Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;)V

    .line 148
    .line 149
    .line 150
    sget-object v2, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;

    .line 151
    .line 152
    invoke-virtual {v0, v2}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->b(Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 156
    .line 157
    .line 158
    :cond_2
    invoke-direct {p0}, Lkg/c;->f()Lokhttp3/Interceptor;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    if-eqz v0, :cond_3

    .line 163
    .line 164
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 165
    .line 166
    .line 167
    :cond_3
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    return-object v0
.end method

.method private final k()V
    .locals 3

    .line 1
    sget-object v0, Lbg/a;->a:Lbg/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lbg/a;->a(I)V

    .line 5
    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lbg/a;->b(J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final g()Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/c;->b:Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "service"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lkg/c;->c:Lretrofit2/k0;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lretrofit2/k0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    :cond_0
    invoke-direct {p0, p1}, Lkg/c;->e(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lkg/c;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method
