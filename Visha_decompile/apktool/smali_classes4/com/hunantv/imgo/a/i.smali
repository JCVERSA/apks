.class public Lcom/hunantv/imgo/a/i;
.super Lcom/hunantv/imgo/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/imgo/a/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/hunantv/imgo/a/i;
    .locals 1

    .line 1
    new-instance v0, Lcom/hunantv/imgo/a/i;

    invoke-direct {v0, p0}, Lcom/hunantv/imgo/a/i;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/hunantv/imgo/data/PlayErrorData;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/hunantv/imgo/a/b;->a:Lcom/hunantv/imgo/report/d;

    invoke-virtual {p0}, Lcom/hunantv/imgo/a/i;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/hunantv/imgo/data/PlayErrorData;->getRequestParams()Lcom/hunantv/imgo/net/RequestParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hunantv/imgo/net/RequestParams;->toJson()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/hunantv/imgo/report/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/report/a;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/hunantv/imgo/report/c;->s()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
