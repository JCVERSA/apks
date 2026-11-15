.class public abstract Lcom/mgtv/downloader/net/ImgoHttpCallBack;
.super Lcom/mgtv/task/http/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/downloader/net/ImgoHttpCallBack$ErrorType;
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
.field private static final a:Ljava/util/concurrent/Executor;

.field private static final b:Lcom/mgtv/task/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/mgtv/downloader/net/ImgoHttpCallBack$1;

    invoke-direct {v0}, Lcom/mgtv/downloader/net/ImgoHttpCallBack$1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mgtv/downloader/net/ImgoHttpCallBack;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/mgtv/task/h;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/mgtv/task/h;-><init>(Ljava/util/concurrent/Executor;Z)V

    sput-object v1, Lcom/mgtv/downloader/net/ImgoHttpCallBack;->b:Lcom/mgtv/task/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/task/http/c;-><init>()V

    return-void
.end method

.method private a(Lcom/mgtv/task/http/HttpTraceObject;)V
    .locals 1

    .line 6
    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpTraceObject;->getException()Ljava/lang/Exception;

    move-result-object p0

    .line 7
    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpTraceObject;->getHttpStatus()I

    .line 8
    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpTraceObject;->getResponse()Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_1

    .line 9
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    instance-of p0, p0, Lcom/mgtv/irouting/okhttp/HttpDnsException$HttpFormatException;

    if-eqz p0, :cond_1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_1
    :goto_0
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
    invoke-virtual {p2}, Lcom/mgtv/task/http/HttpTraceObject;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/mgtv/task/http/HttpTraceObject;->getHttpStatus()I

    move-result p1

    const/16 p3, 0xc8

    if-eq p1, p3, :cond_1

    .line 5
    :cond_0
    invoke-direct {p0, p2}, Lcom/mgtv/downloader/net/ImgoHttpCallBack;->a(Lcom/mgtv/task/http/HttpTraceObject;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mgtv/task/http/HttpResponseObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgtv/downloader/net/ImgoHttpCallBack;->a(Lcom/mgtv/task/http/HttpResponseObject;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b()Lcom/mgtv/downloader/net/ImgoHttpCallBack$ErrorType;
    .locals 2

    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/task/http/HttpTraceObject;->getHttpStatus()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    sget-object p0, Lcom/mgtv/downloader/net/ImgoHttpCallBack$ErrorType;->HTTP_ERROR:Lcom/mgtv/downloader/net/ImgoHttpCallBack$ErrorType;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/task/http/HttpTraceObject;->getException()Ljava/lang/Exception;

    move-result-object p0

    instance-of p0, p0, Lcom/mgtv/task/http/HttpFormatException;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/mgtv/downloader/net/ImgoHttpCallBack$ErrorType;->PARSE_ERROR:Lcom/mgtv/downloader/net/ImgoHttpCallBack$ErrorType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/mgtv/downloader/net/ImgoHttpCallBack$ErrorType;->BUSINESS_ERROR:Lcom/mgtv/downloader/net/ImgoHttpCallBack$ErrorType;

    return-object p0
.end method
