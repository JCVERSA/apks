.class public Lcom/hunantv/imgo/a/g;
.super Lcom/hunantv/imgo/a/b;
.source "SourceFile"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/imgo/a/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/hunantv/imgo/a/g;
    .locals 1

    .line 1
    new-instance v0, Lcom/hunantv/imgo/a/g;

    invoke-direct {v0, p0}, Lcom/hunantv/imgo/a/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/hunantv/imgo/data/KbbData;

    const-string v1, "0"

    invoke-direct {v0, v1, p1}, Lcom/hunantv/imgo/data/KbbData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/hunantv/imgo/data/KbbData;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/hunantv/imgo/a/g$1;

    invoke-direct {v0, p0}, Lcom/hunantv/imgo/a/g$1;-><init>(Lcom/hunantv/imgo/a/g;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lcom/mgtv/json/a;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 6
    new-instance v0, Lcom/hunantv/imgo/net/RequestParams;

    invoke-direct {v0, p1}, Lcom/hunantv/imgo/net/RequestParams;-><init>(Ljava/util/Map;)V

    .line 7
    iget-object p1, p0, Lcom/hunantv/imgo/a/b;->a:Lcom/hunantv/imgo/report/d;

    invoke-virtual {p0}, Lcom/hunantv/imgo/a/g;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/hunantv/imgo/net/RequestParams;->toJson()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/hunantv/imgo/report/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/report/a;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/hunantv/imgo/report/c;->v()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
