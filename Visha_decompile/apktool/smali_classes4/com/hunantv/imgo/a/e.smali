.class public Lcom/hunantv/imgo/a/e;
.super Lcom/hunantv/imgo/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/imgo/a/b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/imgo/data/EventClickData;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/hunantv/imgo/data/EventClickData;->createRequestParams()Lcom/hunantv/imgo/net/RequestParams;

    move-result-object v0

    const-string v1, "dc"

    invoke-virtual {p1}, Lcom/hunantv/imgo/data/CommonData;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hunantv/imgo/data/EventClickData;->getPos()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/hunantv/imgo/data/EventClickData;->getPos()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v1, "pos"

    invoke-virtual {v0, v1, p1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/report/d;->a()Lcom/hunantv/imgo/report/d;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hunantv/imgo/a/e;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/hunantv/imgo/net/RequestParams;->toJsonNew()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/hunantv/imgo/report/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/report/a;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/hunantv/imgo/report/c;->x()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
