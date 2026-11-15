.class public Lcom/hunantv/imgo/a/j;
.super Lcom/hunantv/imgo/a/b;
.source "SourceFile"


# static fields
.field private static volatile d:Lcom/hunantv/imgo/a/j;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/imgo/a/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/hunantv/imgo/a/b;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/hunantv/imgo/a/j;
    .locals 2

    .line 1
    sget-object v0, Lcom/hunantv/imgo/a/j;->d:Lcom/hunantv/imgo/a/j;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/hunantv/imgo/a/j;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/hunantv/imgo/a/j;->d:Lcom/hunantv/imgo/a/j;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/hunantv/imgo/a/j;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/hunantv/imgo/a/j;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/hunantv/imgo/a/j;->d:Lcom/hunantv/imgo/a/j;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_2
    sget-object p0, Lcom/hunantv/imgo/a/j;->d:Lcom/hunantv/imgo/a/j;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 11
    const-string p0, "https://hw-event.log.mgtv.com/dispatcher.do"

    return-object p0
.end method

.method public a(Lcom/hunantv/imgo/data/LiveAPlayData;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 9
    :cond_0
    const-string v0, "aplay"

    invoke-virtual {p1, v0}, Lcom/hunantv/imgo/data/LiveAPlayData;->setAct(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/hunantv/imgo/a/b;->a:Lcom/hunantv/imgo/report/d;

    invoke-virtual {p0}, Lcom/hunantv/imgo/a/j;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/hunantv/imgo/data/LiveAPlayData;->createBaseRequestParams()Lcom/hunantv/imgo/net/RequestParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hunantv/imgo/net/RequestParams;->toJson()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/hunantv/imgo/report/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/report/a;)V

    return-void
.end method

.method public a(Lcom/hunantv/imgo/data/VodAPlayData;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 7
    :cond_0
    const-string v0, "aplay"

    invoke-virtual {p1, v0}, Lcom/hunantv/imgo/data/VodAPlayData;->setAct(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/hunantv/imgo/a/b;->a:Lcom/hunantv/imgo/report/d;

    invoke-virtual {p0}, Lcom/hunantv/imgo/a/j;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/hunantv/imgo/data/VodAPlayData;->createBaseRequestParams()Lcom/hunantv/imgo/net/RequestParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hunantv/imgo/net/RequestParams;->toJson()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/hunantv/imgo/report/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/report/a;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/hunantv/imgo/report/c;->n()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()V
    .locals 1

    invoke-static {}, Lcom/hunantv/imgo/report/d;->a()Lcom/hunantv/imgo/report/d;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/a/b;->a:Lcom/hunantv/imgo/report/d;

    return-void
.end method
