.class public abstract Lcom/doman/core/b/a/d;
.super Lcom/android/net/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/net/n<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static l:Ljava/lang/String;


# instance fields
.field protected m:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/net/p$a;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/net/n;-><init>(ILjava/lang/String;Lcom/android/net/p$a;)V

    sput-object p1, Lcom/doman/core/b/a/d;->l:Ljava/lang/String;

    new-instance p1, Lcom/android/net/e;

    const/16 p2, 0x61a8

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0, v1}, Lcom/android/net/e;-><init>(IIF)V

    iput-object p1, p0, Lcom/android/net/n;->j:Lcom/android/net/r;

    return-void
.end method

.method private static b(Lcom/android/net/k;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/net/k;->b:[B

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/net/k;->c:Ljava/util/Map;

    invoke-static {v2}, Lcom/android/net/toolbox/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/net/k;->b:[B

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v1

    :cond_1
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    const-string v0, "ok"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "success"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return v1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "validateResponseSuccess"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseRequest"

    invoke-static {v0, p0}, Lcom/doman/core/d/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/net/k;)Lcom/android/net/p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/net/k;",
            ")",
            "Lcom/android/net/p<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/doman/core/b/a/d;->b(Lcom/android/net/k;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/doman/core/b/a/d;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/doman/core/b/a/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    new-instance p0, Lcom/android/net/m;

    invoke-direct {p0, p1}, Lcom/android/net/m;-><init>(Lcom/android/net/k;)V

    invoke-static {p0}, Lcom/android/net/p;->a(Lcom/android/net/u;)Lcom/android/net/p;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p1}, Lcom/android/net/toolbox/g;->a(Lcom/android/net/k;)Lcom/android/net/b$a;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/net/p;->a(Ljava/lang/Object;Lcom/android/net/b$a;)Lcom/android/net/p;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/doman/core/b/a/d;->n()Lcom/android/net/p$b;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/net/p$b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public abstract c(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract n()Lcom/android/net/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/net/p$b<",
            "TT;>;"
        }
    .end annotation
.end method
