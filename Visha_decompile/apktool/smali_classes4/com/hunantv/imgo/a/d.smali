.class public Lcom/hunantv/imgo/a/d;
.super Lcom/hunantv/imgo/a/b;
.source "SourceFile"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/imgo/a/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/hunantv/imgo/a/b;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/hunantv/imgo/a/d;
    .locals 1

    .line 1
    new-instance v0, Lcom/hunantv/imgo/a/d;

    invoke-direct {v0, p0}, Lcom/hunantv/imgo/a/d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public a(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 5
    const-string p0, "https://hw-event.log.mgtv.com/dispatcher.do"

    return-object p0

    .line 6
    :cond_0
    invoke-static {}, Lcom/hunantv/imgo/report/c;->p()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/hunantv/imgo/net/RequestParams;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/hunantv/imgo/net/RequestParams;->getParamsMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "bid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "27.1.1.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/hunantv/imgo/a/b;->a:Lcom/hunantv/imgo/report/d;

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/a/d;->a(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/hunantv/imgo/net/RequestParams;->toJson()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {v1, p0, p1, v0}, Lcom/hunantv/imgo/report/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/report/a;)V

    return-void
.end method
