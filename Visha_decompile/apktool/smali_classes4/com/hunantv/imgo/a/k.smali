.class public Lcom/hunantv/imgo/a/k;
.super Lcom/hunantv/imgo/a/b;
.source "SourceFile"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/imgo/a/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/hunantv/imgo/a/k;
    .locals 1

    .line 1
    new-instance v0, Lcom/hunantv/imgo/a/k;

    invoke-direct {v0, p0}, Lcom/hunantv/imgo/a/k;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 2
    new-instance v0, Lcom/hunantv/imgo/data/BigDataWifiData;

    invoke-direct {v0}, Lcom/hunantv/imgo/data/BigDataWifiData;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/hunantv/imgo/a/b;->a:Lcom/hunantv/imgo/report/d;

    invoke-virtual {p0}, Lcom/hunantv/imgo/a/k;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/hunantv/imgo/data/BigDataWifiData;->getRequestParams()Lcom/hunantv/imgo/net/RequestParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/imgo/net/RequestParams;->toJson()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lcom/hunantv/imgo/report/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/report/a;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/hunantv/imgo/report/c;->r()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
