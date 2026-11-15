.class public Lcom/mgtv/downloader/statistics/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/mgtv/downloader/statistics/b;


# instance fields
.field private a:Lcom/mgtv/task/m;

.field private b:Lcom/mgtv/task/m;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mgtv/task/h;

    invoke-static {}, Lcom/hunantv/imgo/util/ThreadManager;->geStatisticsThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mgtv/task/h;-><init>(Ljava/util/concurrent/Executor;Z)V

    new-instance v1, Lcom/mgtv/task/m;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/mgtv/task/m;-><init>(Landroid/content/Context;Lcom/mgtv/task/h;Lcom/mgtv/task/k;)V

    iput-object v1, p0, Lcom/mgtv/downloader/statistics/b;->b:Lcom/mgtv/task/m;

    new-instance v1, Lcom/mgtv/task/m;

    invoke-direct {v1, p1, v0, v2}, Lcom/mgtv/task/m;-><init>(Landroid/content/Context;Lcom/mgtv/task/h;Lcom/mgtv/task/k;)V

    iput-object v1, p0, Lcom/mgtv/downloader/statistics/b;->a:Lcom/mgtv/task/m;

    return-void
.end method

.method public static a()Lcom/mgtv/downloader/statistics/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/mgtv/downloader/statistics/b;->c:Lcom/mgtv/downloader/statistics/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/mgtv/downloader/statistics/b;

    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mgtv/downloader/statistics/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mgtv/downloader/statistics/b;->c:Lcom/mgtv/downloader/statistics/b;

    .line 3
    :cond_0
    sget-object v0, Lcom/mgtv/downloader/statistics/b;->c:Lcom/mgtv/downloader/statistics/b;

    return-object v0
.end method

.method private a(Z)Lcom/mgtv/task/m;
    .locals 0

    if-eqz p1, :cond_0

    .line 9
    iget-object p0, p0, Lcom/mgtv/downloader/statistics/b;->a:Lcom/mgtv/task/m;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/downloader/statistics/b;->b:Lcom/mgtv/task/m;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/mgtv/downloader/net/RequestParams;)V
    .locals 2

    .line 4
    invoke-virtual {p2}, Lcom/mgtv/downloader/net/RequestParams;->getParamsMap()Ljava/util/Map;

    move-result-object p2

    .line 5
    invoke-static {p2}, Lcom/mgtv/downloader/statistics/b/a;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/mgtv/task/http/HttpParams;

    invoke-direct {v0}, Lcom/mgtv/task/http/HttpParams;-><init>()V

    .line 7
    sget-object v1, Lcom/mgtv/task/http/HttpParams$Type;->BODY:Lcom/mgtv/task/http/HttpParams$Type;

    invoke-virtual {v0, p2, v1}, Lcom/mgtv/task/http/HttpParams;->putParams(Ljava/util/Map;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;

    const/4 p2, 0x0

    .line 8
    invoke-direct {p0, p2}, Lcom/mgtv/downloader/statistics/b;->a(Z)Lcom/mgtv/task/m;

    move-result-object p2

    const/16 v1, 0x2710

    invoke-virtual {p2, v1}, Lcom/mgtv/task/m;->b(I)Lcom/mgtv/task/m;

    move-result-object p2

    new-instance v1, Lcom/mgtv/downloader/statistics/b$1;

    invoke-direct {v1, p0}, Lcom/mgtv/downloader/statistics/b$1;-><init>(Lcom/mgtv/downloader/statistics/b;)V

    invoke-virtual {p2, p1, v0, v1}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    return-void
.end method
