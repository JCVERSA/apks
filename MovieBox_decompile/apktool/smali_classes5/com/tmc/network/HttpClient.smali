.class public final Lcom/tmc/network/HttpClient;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tmc/network/HttpClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0013\u0008\u0007\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J!\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0010\u0010\t\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\nH\u0002\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\r\u001a\u0004\u0018\u00010\u0003J\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0006\u0010\u0013\u001a\u00020\u0014J\u0010\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/tmc/network/HttpClient;",
        "",
        "config",
        "Lcom/tmc/network/HttpClientConfig;",
        "(Lcom/tmc/network/HttpClientConfig;)V",
        "mOkHttpClient",
        "Lokhttp3/OkHttpClient;",
        "createSSLSocketFactory",
        "Ljavax/net/ssl/SSLSocketFactory;",
        "trustManagers",
        "",
        "Ljavax/net/ssl/TrustManager;",
        "([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;",
        "getConfig",
        "getOkHttpClient",
        "newCall",
        "Lokhttp3/Call;",
        "request",
        "Lokhttp3/Request;",
        "resetHttpClient",
        "",
        "setConfig",
        "Companion",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/tmc/network/HttpClient$Companion;

.field private static ifForceUseCache:Z

.field private static ifInitAnalytics:Z

.field private static ifTestMode:Z

.field private static ifUseCache:Z

.field private static initInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private static progressListener:Lcom/tmc/network/ProgressListener;


# instance fields
.field private config:Lcom/tmc/network/HttpClientConfig;

.field private mOkHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tmc/network/HttpClient$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/tmc/network/HttpClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/tmc/network/HttpClient;->Companion:Lcom/tmc/network/HttpClient$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/tmc/network/HttpClient;-><init>(Lcom/tmc/network/HttpClientConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/tmc/network/HttpClientConfig;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/tmc/network/HttpClientConfig;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/tmc/network/HttpClientConfig;-><init>(IJLjava/util/concurrent/TimeUnit;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tmc/network/HttpClient;->setConfig(Lcom/tmc/network/HttpClientConfig;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tmc/network/HttpClientConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 5
    new-instance p1, Lcom/tmc/network/HttpClientConfig;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/tmc/network/HttpClientConfig;-><init>(IJLjava/util/concurrent/TimeUnit;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/tmc/network/HttpClient;-><init>(Lcom/tmc/network/HttpClientConfig;)V

    return-void
.end method

.method public static final synthetic access$getIfForceUseCache$cp()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tmc/network/HttpClient;->ifForceUseCache:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getIfUseCache$cp()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tmc/network/HttpClient;->ifUseCache:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getInitInterceptors$cp()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/tmc/network/HttpClient;->initInterceptors:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$setIfForceUseCache$cp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/tmc/network/HttpClient;->ifForceUseCache:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setIfInitAnalytics$cp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/tmc/network/HttpClient;->ifInitAnalytics:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setIfTestMode$cp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/tmc/network/HttpClient;->ifTestMode:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setIfUseCache$cp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/tmc/network/HttpClient;->ifUseCache:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setInitInterceptors$cp(Ljava/util/List;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/tmc/network/HttpClient;->initInterceptors:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setProgressListener$cp(Lcom/tmc/network/ProgressListener;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/tmc/network/HttpClient;->progressListener:Lcom/tmc/network/ProgressListener;

    .line 2
    .line 3
    return-void
.end method

.method private final createSSLSocketFactory([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "TLSv1.2"

    .line 3
    .line 4
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    new-instance v2, Ljava/security/SecureRandom;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0, p1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    sget-object v1, Lrf/b;->a:Lrf/b;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Lrf/b;->e(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final getConfig()Lcom/tmc/network/HttpClientConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final declared-synchronized getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tmc/network/HttpClient;->mOkHttpClient:Lokhttp3/OkHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public final declared-synchronized newCall(Lokhttp3/Request;)Lokhttp3/Call;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tmc/network/HttpClient;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :goto_0
    monitor-exit p0

    .line 16
    return-object p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw p1
.end method

.method public final declared-synchronized resetHttpClient()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    .line 4
    .line 5
    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    .line 9
    .line 10
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/tmc/network/HttpClientConfig;->getTimeoutConnect()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 18
    .line 19
    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    .line 24
    .line 25
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/tmc/network/HttpClientConfig;->getTimeoutWrite()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    .line 37
    .line 38
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/tmc/network/HttpClientConfig;->getTimeoutRead()J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    new-instance v2, Lokhttp3/ConnectionPool;

    .line 50
    .line 51
    iget-object v3, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    .line 52
    .line 53
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/tmc/network/HttpClientConfig;->getMaxIdleConnections()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    iget-object v4, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    .line 61
    .line 62
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Lcom/tmc/network/HttpClientConfig;->getKeepAliveDuration()J

    .line 66
    .line 67
    .line 68
    move-result-wide v4

    .line 69
    iget-object v6, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    .line 70
    .line 71
    const/4 v7, 0x0

    .line 72
    if-nez v6, :cond_0

    .line 73
    .line 74
    move-object v6, v7

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v6}, Lcom/tmc/network/HttpClientConfig;->getKeepAliveTimeUnit()Ljava/util/concurrent/TimeUnit;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    :goto_0
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {v2, v3, v4, v5, v6}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    sget-boolean v2, Lcom/tmc/network/HttpClient;->ifUseCache:Z

    .line 91
    .line 92
    if-eqz v2, :cond_1

    .line 93
    .line 94
    new-instance v2, Ljava/io/File;

    .line 95
    .line 96
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    const-string v4, "s_cache"

    .line 101
    .line 102
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    new-instance v3, Lokhttp3/Cache;

    .line 106
    .line 107
    const/high16 v4, 0xa00000

    .line 108
    .line 109
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    check-cast v4, Ljava/lang/Long;

    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 116
    .line 117
    .line 118
    move-result-wide v4

    .line 119
    invoke-direct {v3, v2, v4, v5}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v3}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    goto :goto_1

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    goto/16 :goto_10

    .line 129
    .line 130
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    .line 131
    .line 132
    if-nez v2, :cond_2

    .line 133
    .line 134
    move-object v2, v7

    .line 135
    goto :goto_2

    .line 136
    :cond_2
    invoke-virtual {v2}, Lcom/tmc/network/HttpClientConfig;->getInterceptors()Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    :goto_2
    if-eqz v2, :cond_6

    .line 141
    .line 142
    new-instance v2, Lcom/transsion/api/gateway/interceptor/GatewayInterceptor;

    .line 143
    .line 144
    invoke-direct {v2}, Lcom/transsion/api/gateway/interceptor/GatewayInterceptor;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 148
    .line 149
    .line 150
    sget-object v2, Lcom/tmc/network/HttpClient;->progressListener:Lcom/tmc/network/ProgressListener;

    .line 151
    .line 152
    if-eqz v2, :cond_3

    .line 153
    .line 154
    new-instance v3, Lcom/tmc/network/DownloadInterceptor;

    .line 155
    .line 156
    invoke-direct {v3, v2}, Lcom/tmc/network/DownloadInterceptor;-><init>(Lcom/tmc/network/ProgressListener;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v3}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 160
    .line 161
    .line 162
    :cond_3
    iget-object v2, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    .line 163
    .line 164
    if-nez v2, :cond_4

    .line 165
    .line 166
    move-object v2, v7

    .line 167
    goto :goto_3

    .line 168
    :cond_4
    invoke-virtual {v2}, Lcom/tmc/network/HttpClientConfig;->getInterceptors()Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    :goto_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-eqz v3, :cond_6

    .line 184
    .line 185
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    check-cast v3, Lokhttp3/Interceptor;

    .line 190
    .line 191
    if-nez v3, :cond_5

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_5
    invoke-virtual {v1, v3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 195
    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_6
    const-string v2, "mininetwork"

    .line 199
    .line 200
    const/4 v3, 0x3

    .line 201
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-eqz v2, :cond_7

    .line 206
    .line 207
    new-instance v2, Lof/b;

    .line 208
    .line 209
    new-instance v3, Lof/a;

    .line 210
    .line 211
    invoke-direct {v3}, Lof/a;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-direct {v2, v3}, Lof/b;-><init>(Lof/b$b;)V

    .line 215
    .line 216
    .line 217
    sget-object v3, Lcom/tmc/network/log/LogLevel;->BODY:Lcom/tmc/network/log/LogLevel;

    .line 218
    .line 219
    invoke-virtual {v2, v3}, Lof/b;->e(Lcom/tmc/network/log/LogLevel;)Lof/b;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2, v3}, Lof/b;->f(Lcom/tmc/network/log/LogLevel;)Lof/b;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 226
    .line 227
    .line 228
    :cond_7
    sget-object v2, Lcom/tmc/network/HttpClient;->initInterceptors:Ljava/util/List;

    .line 229
    .line 230
    if-nez v2, :cond_8

    .line 231
    .line 232
    goto :goto_6

    .line 233
    :cond_8
    check-cast v2, Ljava/lang/Iterable;

    .line 234
    .line 235
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    if-eqz v3, :cond_9

    .line 244
    .line 245
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    check-cast v3, Lokhttp3/Interceptor;

    .line 250
    .line 251
    invoke-virtual {v1, v3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 252
    .line 253
    .line 254
    goto :goto_5

    .line 255
    :cond_9
    :goto_6
    iget-object v2, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    .line 256
    .line 257
    if-nez v2, :cond_a

    .line 258
    .line 259
    move-object v2, v7

    .line 260
    goto :goto_7

    .line 261
    :cond_a
    invoke-virtual {v2}, Lcom/tmc/network/HttpClientConfig;->getNetworkInterceptors()Ljava/util/List;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    :goto_7
    if-eqz v2, :cond_d

    .line 266
    .line 267
    iget-object v2, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    .line 268
    .line 269
    if-nez v2, :cond_b

    .line 270
    .line 271
    move-object v2, v7

    .line 272
    goto :goto_8

    .line 273
    :cond_b
    invoke-virtual {v2}, Lcom/tmc/network/HttpClientConfig;->getNetworkInterceptors()Ljava/util/List;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    :goto_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    if-eqz v3, :cond_d

    .line 289
    .line 290
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    check-cast v3, Lokhttp3/Interceptor;

    .line 295
    .line 296
    if-nez v3, :cond_c

    .line 297
    .line 298
    goto :goto_9

    .line 299
    :cond_c
    invoke-virtual {v1, v3}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 300
    .line 301
    .line 302
    goto :goto_9

    .line 303
    :cond_d
    iget-object v2, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    .line 304
    .line 305
    if-nez v2, :cond_e

    .line 306
    .line 307
    move-object v2, v7

    .line 308
    goto :goto_a

    .line 309
    :cond_e
    invoke-virtual {v2}, Lcom/tmc/network/HttpClientConfig;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    :goto_a
    if-eqz v2, :cond_10

    .line 314
    .line 315
    new-instance v2, Lokhttp3/Dispatcher;

    .line 316
    .line 317
    iget-object v3, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    .line 318
    .line 319
    if-nez v3, :cond_f

    .line 320
    .line 321
    move-object v3, v7

    .line 322
    goto :goto_b

    .line 323
    :cond_f
    invoke-virtual {v3}, Lcom/tmc/network/HttpClientConfig;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    :goto_b
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    invoke-direct {v2, v3}, Lokhttp3/Dispatcher;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    .line 334
    .line 335
    .line 336
    :cond_10
    iget-object v2, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    .line 337
    .line 338
    if-nez v2, :cond_11

    .line 339
    .line 340
    move-object v2, v7

    .line 341
    goto :goto_c

    .line 342
    :cond_11
    invoke-virtual {v2}, Lcom/tmc/network/HttpClientConfig;->getCertificatePinner()Lokhttp3/CertificatePinner;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    :goto_c
    if-eqz v2, :cond_13

    .line 347
    .line 348
    iget-object v2, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    .line 349
    .line 350
    if-nez v2, :cond_12

    .line 351
    .line 352
    goto :goto_d

    .line 353
    :cond_12
    invoke-virtual {v2}, Lcom/tmc/network/HttpClientConfig;->getCertificatePinner()Lokhttp3/CertificatePinner;

    .line 354
    .line 355
    .line 356
    move-result-object v7

    .line 357
    :goto_d
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1, v7}, Lokhttp3/OkHttpClient$Builder;->certificatePinner(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient$Builder;

    .line 361
    .line 362
    .line 363
    :cond_13
    sget-object v2, Lnf/b;->c:Lnf/b$a;

    .line 364
    .line 365
    invoke-virtual {v2}, Lnf/b$a;->a()Lokhttp3/EventListener$Factory;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory(Lokhttp3/EventListener$Factory;)Lokhttp3/OkHttpClient$Builder;

    .line 370
    .line 371
    .line 372
    iget-object v2, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    .line 373
    .line 374
    if-nez v2, :cond_14

    .line 375
    .line 376
    goto :goto_e

    .line 377
    :cond_14
    invoke-virtual {v2}, Lcom/tmc/network/HttpClientConfig;->getLocalDns()Lokhttp3/Dns;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    if-nez v2, :cond_15

    .line 382
    .line 383
    goto :goto_e

    .line 384
    :cond_15
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 385
    .line 386
    .line 387
    :goto_e
    sget-boolean v2, Lcom/tmc/network/HttpClient;->ifTestMode:Z

    .line 388
    .line 389
    if-eqz v2, :cond_17

    .line 390
    .line 391
    new-instance v2, Lcom/tmc/network/HttpClient$resetHttpClient$trustAllCerts$1;

    .line 392
    .line 393
    invoke-direct {v2}, Lcom/tmc/network/HttpClient$resetHttpClient$trustAllCerts$1;-><init>()V

    .line 394
    .line 395
    .line 396
    const/4 v3, 0x1

    .line 397
    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    .line 398
    .line 399
    aput-object v2, v3, v0

    .line 400
    .line 401
    invoke-direct {p0, v3}, Lcom/tmc/network/HttpClient;->createSSLSocketFactory([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    aget-object v0, v3, v0

    .line 409
    .line 410
    if-eqz v0, :cond_16

    .line 411
    .line 412
    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .line 413
    .line 414
    invoke-virtual {v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 415
    .line 416
    .line 417
    new-instance v0, Lcom/tmc/network/HttpClient$resetHttpClient$3;

    .line 418
    .line 419
    invoke-direct {v0}, Lcom/tmc/network/HttpClient$resetHttpClient$3;-><init>()V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 423
    .line 424
    .line 425
    goto :goto_f

    .line 426
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    .line 427
    .line 428
    const-string v1, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager"

    .line 429
    .line 430
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    throw v0

    .line 434
    :cond_17
    :goto_f
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    iput-object v0, p0, Lcom/tmc/network/HttpClient;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 439
    .line 440
    invoke-static {v0}, Lcom/transsion/api/gateway/GateWaySdk;->setOkHttpClient(Lokhttp3/OkHttpClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    .line 442
    .line 443
    monitor-exit p0

    .line 444
    return-void

    .line 445
    :goto_10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    throw v0
.end method

.method public final setConfig(Lcom/tmc/network/HttpClientConfig;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/tmc/network/HttpClient;->resetHttpClient()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
