.class public Lcom/hunantv/imgo/report/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/hunantv/imgo/report/d;


# instance fields
.field private a:Lcom/mgtv/task/m;

.field private b:Lcom/mgtv/task/m;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mgtv/task/h;

    invoke-static {}, Lcom/hunantv/imgo/util/ThreadManager;->geStatisticsThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mgtv/task/h;-><init>(Ljava/util/concurrent/Executor;Z)V

    new-instance v1, Lcom/mgtv/task/m;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v0, v3}, Lcom/mgtv/task/m;-><init>(Landroid/content/Context;Lcom/mgtv/task/h;Lcom/mgtv/task/k;)V

    iput-object v1, p0, Lcom/hunantv/imgo/report/d;->b:Lcom/mgtv/task/m;

    new-instance v0, Lcom/mgtv/task/h;

    invoke-static {}, Lcom/hunantv/imgo/util/ThreadManager;->getMediumExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/mgtv/task/h;-><init>(Ljava/util/concurrent/Executor;Z)V

    new-instance v1, Lcom/mgtv/task/m;

    invoke-direct {v1, p1, v0, v3}, Lcom/mgtv/task/m;-><init>(Landroid/content/Context;Lcom/mgtv/task/h;Lcom/mgtv/task/k;)V

    iput-object v1, p0, Lcom/hunantv/imgo/report/d;->a:Lcom/mgtv/task/m;

    return-void
.end method

.method public static a()Lcom/hunantv/imgo/report/d;
    .locals 2

    .line 1
    sget-object v0, Lcom/hunantv/imgo/report/d;->c:Lcom/hunantv/imgo/report/d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/hunantv/imgo/report/d;

    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hunantv/imgo/report/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hunantv/imgo/report/d;->c:Lcom/hunantv/imgo/report/d;

    .line 3
    :cond_0
    sget-object v0, Lcom/hunantv/imgo/report/d;->c:Lcom/hunantv/imgo/report/d;

    return-object v0
.end method

.method private a(Z)Lcom/mgtv/task/m;
    .locals 0

    if-eqz p1, :cond_0

    .line 18
    iget-object p0, p0, Lcom/hunantv/imgo/report/d;->a:Lcom/mgtv/task/m;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/hunantv/imgo/report/d;->b:Lcom/mgtv/task/m;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/hunantv/imgo/net/RequestParams;)V
    .locals 2

    .line 11
    invoke-virtual {p2}, Lcom/hunantv/imgo/net/RequestParams;->getParamsMap()Ljava/util/Map;

    move-result-object p2

    .line 12
    invoke-static {p2}, Lcom/hunantv/imgo/util/o;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 13
    :cond_0
    new-instance v0, Lcom/mgtv/task/http/HttpParams;

    invoke-direct {v0}, Lcom/mgtv/task/http/HttpParams;-><init>()V

    .line 14
    invoke-virtual {v0, p2}, Lcom/mgtv/task/http/HttpParams;->putParams(Ljava/util/Map;)Lcom/mgtv/task/http/HttpParams;

    const/4 p2, 0x0

    .line 15
    invoke-direct {p0, p2}, Lcom/hunantv/imgo/report/d;->a(Z)Lcom/mgtv/task/m;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/mgtv/task/m;->a(Z)Lcom/mgtv/task/m;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/task/m;->a()Lcom/mgtv/task/m;

    move-result-object p2

    const/16 v1, 0x2710

    invoke-virtual {p2, v1}, Lcom/mgtv/task/m;->b(I)Lcom/mgtv/task/m;

    move-result-object p2

    new-instance v1, Lcom/hunantv/imgo/report/d$4;

    invoke-direct {v1, p0}, Lcom/hunantv/imgo/report/d$4;-><init>(Lcom/hunantv/imgo/report/d;)V

    invoke-virtual {p2, p1, v0, v1}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/report/a;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lcom/mgtv/task/http/HttpParams;

    invoke-direct {v1}, Lcom/mgtv/task/http/HttpParams;-><init>()V

    .line 7
    sget-object v2, Lcom/mgtv/task/http/HttpParams$Type;->HEADER:Lcom/mgtv/task/http/HttpParams$Type;

    invoke-virtual {v1, v0, v2}, Lcom/mgtv/task/http/HttpParams;->putParams(Ljava/util/Map;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;

    .line 8
    const-string v0, "POST"

    invoke-virtual {v1, v0}, Lcom/mgtv/task/http/HttpParams;->setMethod(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, p2}, Lcom/mgtv/task/http/HttpParams;->setBodyJson(Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    const/4 p2, 0x0

    .line 10
    invoke-direct {p0, p2}, Lcom/hunantv/imgo/report/d;->a(Z)Lcom/mgtv/task/m;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/mgtv/task/m;->a(Z)Lcom/mgtv/task/m;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/task/m;->a()Lcom/mgtv/task/m;

    move-result-object p2

    const/16 v0, 0x2710

    invoke-virtual {p2, v0}, Lcom/mgtv/task/m;->b(I)Lcom/mgtv/task/m;

    move-result-object p2

    new-instance v0, Lcom/hunantv/imgo/report/d$3;

    invoke-direct {v0, p0, p3}, Lcom/hunantv/imgo/report/d$3;-><init>(Lcom/hunantv/imgo/report/d;Lcom/hunantv/imgo/report/a;)V

    invoke-virtual {p2, p1, v1, v0}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v1, Lcom/mgtv/task/http/HttpParams;

    invoke-direct {v1}, Lcom/mgtv/task/http/HttpParams;-><init>()V

    .line 22
    sget-object v3, Lcom/mgtv/task/http/HttpParams$Type;->HEADER:Lcom/mgtv/task/http/HttpParams$Type;

    invoke-virtual {v1, v0, v3}, Lcom/mgtv/task/http/HttpParams;->putParams(Ljava/util/Map;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;

    .line 23
    invoke-virtual {v1, p3}, Lcom/mgtv/task/http/HttpParams;->setMethod(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1, p2}, Lcom/mgtv/task/http/HttpParams;->setBodyJson(Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 25
    invoke-virtual {v1, v2}, Lcom/mgtv/task/http/HttpParams;->setContentTypeS(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 26
    invoke-direct {p0, p2}, Lcom/hunantv/imgo/report/d;->a(Z)Lcom/mgtv/task/m;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/mgtv/task/m;->a(Z)Lcom/mgtv/task/m;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/task/m;->a()Lcom/mgtv/task/m;

    move-result-object p2

    const/16 p3, 0x2710

    invoke-virtual {p2, p3}, Lcom/mgtv/task/m;->b(I)Lcom/mgtv/task/m;

    move-result-object p2

    new-instance p3, Lcom/hunantv/imgo/report/d$2;

    invoke-direct {p3, p0}, Lcom/hunantv/imgo/report/d$2;-><init>(Lcom/hunantv/imgo/report/d;)V

    invoke-virtual {p2, p1, v1, p3}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-static {p2}, Lcom/hunantv/imgo/report/b;->a(Ljava/util/Map;)Lcom/mgtv/task/http/HttpParams;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0}, Lcom/hunantv/imgo/report/d;->a(Z)Lcom/mgtv/task/m;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mgtv/task/m;->a(Z)Lcom/mgtv/task/m;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/report/a;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/mgtv/task/http/HttpParams;

    invoke-direct {v1}, Lcom/mgtv/task/http/HttpParams;-><init>()V

    sget-object v2, Lcom/mgtv/task/http/HttpParams$Type;->HEADER:Lcom/mgtv/task/http/HttpParams$Type;

    invoke-virtual {v1, v0, v2}, Lcom/mgtv/task/http/HttpParams;->putParams(Ljava/util/Map;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;

    const-string v0, "data"

    invoke-virtual {v1, v0, p2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/hunantv/imgo/report/d;->a(Z)Lcom/mgtv/task/m;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/mgtv/task/m;->a(Z)Lcom/mgtv/task/m;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/task/m;->a()Lcom/mgtv/task/m;

    move-result-object p2

    const/16 v0, 0x2710

    invoke-virtual {p2, v0}, Lcom/mgtv/task/m;->b(I)Lcom/mgtv/task/m;

    move-result-object p2

    new-instance v0, Lcom/hunantv/imgo/report/d$1;

    invoke-direct {v0, p0, p3}, Lcom/hunantv/imgo/report/d$1;-><init>(Lcom/hunantv/imgo/report/d;Lcom/hunantv/imgo/report/a;)V

    invoke-virtual {p2, p1, v1, v0}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    return-void
.end method
