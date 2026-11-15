.class public abstract Lcom/hunantv/imgo/net/ImgoHttpCallBack;
.super Lcom/mgtv/task/http/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mgtv/task/http/c<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:Ljava/util/concurrent/Executor;

.field private static final c:Lcom/mgtv/task/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hunantv/imgo/net/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hunantv/imgo/net/ImgoHttpCallBack;->a:Ljava/lang/String;

    new-instance v0, Lcom/hunantv/imgo/net/ImgoHttpCallBack$1;

    invoke-direct {v0}, Lcom/hunantv/imgo/net/ImgoHttpCallBack$1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/hunantv/imgo/net/ImgoHttpCallBack;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/mgtv/task/h;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/mgtv/task/h;-><init>(Ljava/util/concurrent/Executor;Z)V

    sput-object v1, Lcom/hunantv/imgo/net/ImgoHttpCallBack;->c:Lcom/mgtv/task/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/task/http/c;-><init>()V

    return-void
.end method

.method private a(Lcom/hunantv/imgo/net/ImgoErrorStatisticsData;)V
    .locals 4

    .line 30
    sget-object v0, Lcom/hunantv/imgo/net/ImgoHttpCallBack;->a:Ljava/lang/String;

    .line 31
    new-instance v1, Lcom/mgtv/task/http/HttpParams;

    invoke-direct {v1}, Lcom/mgtv/task/http/HttpParams;-><init>()V

    .line 32
    const-class v2, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData;

    invoke-static {p1, v2}, Lcom/mgtv/json/a;->a(Lcom/mgtv/json/JsonInterface;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 33
    new-instance p1, Lcom/mgtv/task/m;

    sget-object v2, Lcom/hunantv/imgo/net/ImgoHttpCallBack;->c:Lcom/mgtv/task/h;

    const/4 v3, 0x0

    invoke-direct {p1, v3, v2, v3}, Lcom/mgtv/task/m;-><init>(Landroid/content/Context;Lcom/mgtv/task/h;Lcom/mgtv/task/k;)V

    .line 34
    invoke-virtual {p1, v3}, Lcom/mgtv/task/m;->a(Lcom/mgtv/task/http/retry/c;)Lcom/mgtv/task/m;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/mgtv/task/m;->a(Z)Lcom/mgtv/task/m;

    move-result-object p1

    const/4 v2, 0x0

    .line 35
    invoke-virtual {p1, v2}, Lcom/mgtv/task/m;->c(I)Lcom/mgtv/task/m;

    move-result-object p1

    new-instance v2, Lcom/hunantv/imgo/net/ImgoHttpCallBack$2;

    invoke-direct {v2, p0}, Lcom/hunantv/imgo/net/ImgoHttpCallBack$2;-><init>(Lcom/hunantv/imgo/net/ImgoHttpCallBack;)V

    .line 36
    invoke-virtual {p1, v0, v1, v2}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    return-void
.end method

.method private a(Lcom/mgtv/task/http/HttpTraceObject;)V
    .locals 7

    .line 8
    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpTraceObject;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpTraceObject;->getHttpStatus()I

    move-result v1

    .line 10
    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpTraceObject;->getResponse()Ljava/lang/String;

    move-result-object v2

    .line 11
    const-string v3, "http request failured"

    const-string v4, "01.100"

    if-eqz v0, :cond_3

    .line 12
    instance-of v5, v0, Ljava/net/SocketTimeoutException;

    if-eqz v5, :cond_0

    .line 13
    const-string v3, "01.100-2"

    const-string v4, "http request timeout"

    goto :goto_2

    .line 14
    :cond_0
    instance-of v5, v0, Lcom/mgtv/task/http/HttpFormatException;

    if-eqz v5, :cond_2

    .line 15
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16
    const-string v3, "01.100002"

    goto :goto_0

    .line 17
    :cond_1
    const-string v3, "01.100001"

    .line 18
    :goto_0
    const-string v4, "http request success but parse json failured"

    goto :goto_2

    .line 19
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    goto :goto_2

    .line 20
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 21
    :goto_2
    new-instance v5, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;

    invoke-direct {v5}, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;-><init>()V

    .line 22
    invoke-virtual {v5, v3}, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;->b(Ljava/lang/String;)Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;

    move-result-object v3

    .line 23
    invoke-virtual {v3, v4}, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;->a(Ljava/lang/String;)Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;

    move-result-object v3

    .line 24
    const-string v4, "url"

    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpTraceObject;->getFinalUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;

    move-result-object p1

    const-string v4, "statusCode"

    .line 25
    invoke-virtual {p1, v4, v1}, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;->a(Ljava/lang/String;I)Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;

    move-result-object p1

    const-string v1, "response"

    .line 26
    invoke-virtual {p1, v1, v2}, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;

    move-result-object p1

    .line 27
    invoke-virtual {p1, v0}, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;->a(Ljava/lang/Throwable;)Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;

    .line 28
    invoke-static {}, Lcom/hunantv/imgo/net/NetworkStateManager;->a()Lcom/hunantv/imgo/net/NetworkStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hunantv/imgo/net/NetworkStateManager;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "dns"

    invoke-virtual {v3, v0, p1}, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;

    .line 29
    invoke-virtual {v3}, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;->a()Lcom/hunantv/imgo/net/ImgoErrorStatisticsData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hunantv/imgo/net/ImgoHttpCallBack;->a(Lcom/hunantv/imgo/net/ImgoErrorStatisticsData;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mgtv/task/http/HttpResponseObject;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/mgtv/task/http/c;->a(Lcom/mgtv/task/http/HttpResponseObject;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3
    check-cast p2, Lcom/mgtv/task/http/HttpTraceObject;

    .line 4
    instance-of p1, p3, Ljava/lang/Exception;

    if-eqz p1, :cond_0

    .line 5
    check-cast p3, Ljava/lang/Exception;

    invoke-virtual {p2, p3}, Lcom/mgtv/task/http/HttpTraceObject;->setException(Ljava/lang/Exception;)V

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/mgtv/task/http/HttpTraceObject;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/mgtv/task/http/HttpTraceObject;->getHttpStatus()I

    move-result p1

    const/16 p3, 0xc8

    if-eq p1, p3, :cond_2

    .line 7
    :cond_1
    invoke-direct {p0, p2}, Lcom/hunantv/imgo/net/ImgoHttpCallBack;->a(Lcom/mgtv/task/http/HttpTraceObject;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mgtv/task/http/HttpResponseObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/hunantv/imgo/net/ImgoHttpCallBack;->a(Lcom/mgtv/task/http/HttpResponseObject;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a_()Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;
    .locals 2

    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/task/http/HttpTraceObject;->getHttpStatus()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    sget-object p0, Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;->HTTP_ERROR:Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/task/http/HttpTraceObject;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mgtv/task/http/HttpTraceObject;->getResponse()Ljava/lang/String;

    instance-of p0, v0, Lcom/mgtv/task/http/HttpFormatException;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;->PARSE_ERROR:Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;->BUSINESS_ERROR:Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

    return-object p0
.end method
