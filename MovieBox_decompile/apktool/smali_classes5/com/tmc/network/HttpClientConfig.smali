.class public final Lcom/tmc/network/HttpClientConfig;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tmc/network/HttpClientConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001c\u0018\u0000 ,2\u00020\u0001:\u0001,B\'\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00002\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000fJ\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00002\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000fJ\u0008\u0010\u0019\u001a\u0004\u0018\u00010\nJ\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u000cJ\u0010\u0010\u001b\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u000eJ\u0006\u0010\u001c\u001a\u00020\u0005J\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0007J\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0011J\u0006\u0010\u001f\u001a\u00020\u0003J\u0010\u0010 \u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u000eJ\u0006\u0010!\u001a\u00020\u0005J\u0006\u0010\"\u001a\u00020\u0005J\u0006\u0010#\u001a\u00020\u0005J\u0012\u0010$\u001a\u0004\u0018\u00010\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u0012\u0010%\u001a\u0004\u0018\u00010\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u001a\u0010&\u001a\u0004\u0018\u00010\u00002\u0010\u0010\r\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u000eJ\u0010\u0010\'\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0012\u0010(\u001a\u0004\u0018\u00010\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010)\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u0002\u001a\u00020\u0003J\u001a\u0010*\u001a\u0004\u0018\u00010\u00002\u0010\u0010\u0012\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u000eJ \u0010+\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0005R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\r\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0012\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006-"
    }
    d2 = {
        "Lcom/tmc/network/HttpClientConfig;",
        "",
        "maxIdleConnections",
        "",
        "keepAliveDuration",
        "",
        "keepAliveTimeUnit",
        "Ljava/util/concurrent/TimeUnit;",
        "(IJLjava/util/concurrent/TimeUnit;)V",
        "certificatePinner",
        "Lokhttp3/CertificatePinner;",
        "executorService",
        "Ljava/util/concurrent/ExecutorService;",
        "interceptors",
        "",
        "Lokhttp3/Interceptor;",
        "localDns",
        "Lokhttp3/Dns;",
        "networkInterceptors",
        "timeoutConnect",
        "timeoutRead",
        "timeoutWrite",
        "addInterceptor",
        "interceptor",
        "addNetInterceptor",
        "getCertificatePinner",
        "getExecutorService",
        "getInterceptors",
        "getKeepAliveDuration",
        "getKeepAliveTimeUnit",
        "getLocalDns",
        "getMaxIdleConnections",
        "getNetworkInterceptors",
        "getTimeoutConnect",
        "getTimeoutRead",
        "getTimeoutWrite",
        "setCertificatePinner",
        "setExecutorService",
        "setInterceptors",
        "setKeepAliveDuration",
        "setKeepAliveTimeUnit",
        "setMaxIdleConnections",
        "setNetworkInterceptors",
        "setTimeout",
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
.field public static final Companion:Lcom/tmc/network/HttpClientConfig$Companion;

.field public static final DEFAULT_CONNECT_TIMEOUT:J = 0x2710L

.field public static final DEFAULT_KEEP_ALIVE_DURATION_MINUTES:J = 0x5L

.field private static final DEFAULT_KEEP_ALIVE_DURATION_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

.field public static final DEFAULT_MAX_IDLE_CONNECTIONS:I = 0x5

.field public static final DEFAULT_READ_TIMEOUT:J = 0x7530L

.field public static final DEFAULT_WRITE_TIMEOUT:J = 0x7530L


# instance fields
.field private certificatePinner:Lokhttp3/CertificatePinner;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private keepAliveDuration:J

.field private keepAliveTimeUnit:Ljava/util/concurrent/TimeUnit;

.field private localDns:Lokhttp3/Dns;

.field private maxIdleConnections:I

.field private networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private timeoutConnect:J

.field private timeoutRead:J

.field private timeoutWrite:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tmc/network/HttpClientConfig$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/tmc/network/HttpClientConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/tmc/network/HttpClientConfig;->Companion:Lcom/tmc/network/HttpClientConfig$Companion;

    .line 8
    .line 9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    sput-object v0, Lcom/tmc/network/HttpClientConfig;->DEFAULT_KEEP_ALIVE_DURATION_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tmc/network/HttpClientConfig;-><init>(IJLjava/util/concurrent/TimeUnit;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const/4 v5, 0x6

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/tmc/network/HttpClientConfig;-><init>(IJLjava/util/concurrent/TimeUnit;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 3
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/tmc/network/HttpClientConfig;-><init>(IJLjava/util/concurrent/TimeUnit;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/tmc/network/HttpClientConfig;->maxIdleConnections:I

    .line 6
    iput-wide p2, p0, Lcom/tmc/network/HttpClientConfig;->keepAliveDuration:J

    .line 7
    iput-object p4, p0, Lcom/tmc/network/HttpClientConfig;->keepAliveTimeUnit:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p1, 0x2710

    .line 8
    iput-wide p1, p0, Lcom/tmc/network/HttpClientConfig;->timeoutConnect:J

    const-wide/16 p1, 0x7530

    .line 9
    iput-wide p1, p0, Lcom/tmc/network/HttpClientConfig;->timeoutRead:J

    .line 10
    iput-wide p1, p0, Lcom/tmc/network/HttpClientConfig;->timeoutWrite:J

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tmc/network/HttpClientConfig;->interceptors:Ljava/util/List;

    .line 12
    new-instance p2, Lcom/tmc/network/LogInterceptor;

    invoke-direct {p2}, Lcom/tmc/network/LogInterceptor;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object p1, Lcom/tmc/network/HttpClient;->Companion:Lcom/tmc/network/HttpClient$Companion;

    invoke-virtual {p1}, Lcom/tmc/network/HttpClient$Companion;->isForceUseCacheMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/tmc/network/HttpClientConfig;->interceptors:Ljava/util/List;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/tmc/network/NetCacheInterceptor;

    invoke-direct {p2}, Lcom/tmc/network/NetCacheInterceptor;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tmc/network/HttpClientConfig;->networkInterceptors:Ljava/util/List;

    .line 16
    new-instance p2, Lcom/tmc/network/InitNetworkInterceptor;

    invoke-direct {p2}, Lcom/tmc/network/InitNetworkInterceptor;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object p1, Lcom/tmc/network/strategy/LocalDnsStrategy;->c:Lcom/tmc/network/strategy/LocalDnsStrategy$a;

    invoke-virtual {p1}, Lcom/tmc/network/strategy/LocalDnsStrategy$a;->a()Lcom/tmc/network/strategy/LocalDnsStrategy;

    move-result-object p1

    iput-object p1, p0, Lcom/tmc/network/HttpClientConfig;->localDns:Lokhttp3/Dns;

    return-void
.end method

.method public synthetic constructor <init>(IJLjava/util/concurrent/TimeUnit;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x5

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const-wide/16 p2, 0x5

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    .line 18
    sget-object p4, Lcom/tmc/network/HttpClientConfig;->DEFAULT_KEEP_ALIVE_DURATION_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 19
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tmc/network/HttpClientConfig;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static final synthetic access$getDEFAULT_KEEP_ALIVE_DURATION_TIME_UNIT$cp()Ljava/util/concurrent/TimeUnit;
    .locals 1

    .line 1
    sget-object v0, Lcom/tmc/network/HttpClientConfig;->DEFAULT_KEEP_ALIVE_DURATION_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final addInterceptor(Lokhttp3/Interceptor;)Lcom/tmc/network/HttpClientConfig;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tmc/network/HttpClientConfig;->interceptors:Ljava/util/List;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/tmc/network/HttpClientConfig;->interceptors:Ljava/util/List;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/tmc/network/HttpClientConfig;->interceptors:Ljava/util/List;

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    :goto_0
    return-object p0
.end method

.method public final addNetInterceptor(Lokhttp3/Interceptor;)Lcom/tmc/network/HttpClientConfig;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tmc/network/HttpClientConfig;->networkInterceptors:Ljava/util/List;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/tmc/network/HttpClientConfig;->networkInterceptors:Ljava/util/List;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/tmc/network/HttpClientConfig;->networkInterceptors:Ljava/util/List;

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    :goto_0
    return-object p0
.end method

.method public final getCertificatePinner()Lokhttp3/CertificatePinner;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/HttpClientConfig;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/HttpClientConfig;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tmc/network/HttpClientConfig;->interceptors:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getKeepAliveDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/HttpClientConfig;->keepAliveDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getKeepAliveTimeUnit()Ljava/util/concurrent/TimeUnit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/HttpClientConfig;->keepAliveTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLocalDns()Lokhttp3/Dns;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/HttpClientConfig;->localDns:Lokhttp3/Dns;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMaxIdleConnections()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tmc/network/HttpClientConfig;->maxIdleConnections:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNetworkInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tmc/network/HttpClientConfig;->networkInterceptors:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTimeoutConnect()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/HttpClientConfig;->timeoutConnect:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTimeoutRead()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/HttpClientConfig;->timeoutRead:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTimeoutWrite()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tmc/network/HttpClientConfig;->timeoutWrite:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final setCertificatePinner(Lokhttp3/CertificatePinner;)Lcom/tmc/network/HttpClientConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tmc/network/HttpClientConfig;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setExecutorService(Ljava/util/concurrent/ExecutorService;)Lcom/tmc/network/HttpClientConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tmc/network/HttpClientConfig;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setInterceptors(Ljava/util/List;)Lcom/tmc/network/HttpClientConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;)",
            "Lcom/tmc/network/HttpClientConfig;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tmc/network/HttpClientConfig;->interceptors:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setKeepAliveDuration(J)Lcom/tmc/network/HttpClientConfig;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tmc/network/HttpClientConfig;->keepAliveDuration:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final setKeepAliveTimeUnit(Ljava/util/concurrent/TimeUnit;)Lcom/tmc/network/HttpClientConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tmc/network/HttpClientConfig;->keepAliveTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setMaxIdleConnections(I)Lcom/tmc/network/HttpClientConfig;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tmc/network/HttpClientConfig;->maxIdleConnections:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final setNetworkInterceptors(Ljava/util/List;)Lcom/tmc/network/HttpClientConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;)",
            "Lcom/tmc/network/HttpClientConfig;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tmc/network/HttpClientConfig;->networkInterceptors:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setTimeout(JJJ)Lcom/tmc/network/HttpClientConfig;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tmc/network/HttpClientConfig;->timeoutConnect:J

    .line 2
    .line 3
    iput-wide p3, p0, Lcom/tmc/network/HttpClientConfig;->timeoutRead:J

    .line 4
    .line 5
    iput-wide p5, p0, Lcom/tmc/network/HttpClientConfig;->timeoutWrite:J

    .line 6
    .line 7
    return-object p0
.end method
