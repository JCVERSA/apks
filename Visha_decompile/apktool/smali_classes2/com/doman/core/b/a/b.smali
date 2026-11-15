.class public final Lcom/doman/core/b/a/b;
.super Lcom/android/net/toolbox/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/net/toolbox/m<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static l:I = 0x0

.field public static m:I = 0x1

.field private static o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private n:Lcom/doman/core/a/e;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/doman/core/a/e;)V
    .locals 6

    iget-object v2, p5, Lcom/doman/core/a/e;->b:Ljava/lang/String;

    new-instance v4, Lcom/doman/core/b/a/b$1;

    invoke-direct {v4, p5}, Lcom/doman/core/b/a/b$1;-><init>(Lcom/doman/core/a/e;)V

    new-instance v5, Lcom/doman/core/b/a/b$2;

    invoke-direct {v5, p5}, Lcom/doman/core/b/a/b$2;-><init>(Lcom/doman/core/a/e;)V

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/net/toolbox/m;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/net/p$b;Lcom/android/net/p$a;)V

    iput-object p5, p0, Lcom/doman/core/b/a/b;->n:Lcom/doman/core/a/e;

    iput-object p3, p0, Lcom/doman/core/b/a/b;->p:Ljava/lang/String;

    iput-object p4, p0, Lcom/doman/core/b/a/b;->q:Ljava/lang/String;

    new-instance p1, Lcom/android/net/e;

    const/4 p2, 0x1

    const/high16 p3, 0x3f800000    # 1.0f

    const/16 p4, 0x61a8

    invoke-direct {p1, p4, p2, p3}, Lcom/android/net/e;-><init>(IIF)V

    iput-object p1, p0, Lcom/android/net/n;->j:Lcom/android/net/r;

    return-void
.end method

.method public static synthetic a(ILjava/lang/String;Lcom/doman/core/a/e;)V
    .locals 3

    .line 2
    if-eqz p2, :cond_2

    :try_start_0
    iget-object v0, p2, Lcom/doman/core/a/e;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "httpcode"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const-string p0, "body"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    sget-object p0, Lcom/doman/core/b/a/b;->o:Ljava/util/Map;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p0, Lorg/json/JSONObject;

    sget-object p1, Lcom/doman/core/b/a/b;->o:Ljava/util/Map;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p1, "header"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object p0

    invoke-virtual {p0}, Lcom/doman/core/CoreMain;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/doman/core/b/b;->a(Landroid/content/Context;)Lcom/doman/core/b/b;

    move-result-object p0

    iget-object p1, p2, Lcom/doman/core/a/e;->f:Ljava/lang/String;

    invoke-static {}, Lcom/doman/core/d/f;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/doman/core/b/b;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/doman/core/b/c;->a(Landroid/content/Context;)Lcom/doman/core/b/c;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v1}, Lcom/doman/core/b/c;->a(Lorg/json/JSONObject;)V

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/doman/core/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0, p2}, Lcom/doman/core/b/c;->a(Lcom/doman/core/b/f;Ljava/util/Map;)Lcom/doman/core/b/e;

    move-result-object p2

    new-instance v0, Lcom/doman/core/b/a/a;

    invoke-direct {v0, p2, p1}, Lcom/doman/core/b/a/a;-><init>(Lcom/doman/core/b/e;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/doman/core/b/c;->a:Lcom/android/net/o;

    invoke-virtual {p0, v0}, Lcom/android/net/o;->a(Lcom/android/net/n;)Lcom/android/net/n;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :catchall_0
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/net/k;)Lcom/android/net/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/net/k;",
            ")",
            "Lcom/android/net/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p0, p1, Lcom/android/net/k;->c:Ljava/util/Map;

    sput-object p0, Lcom/doman/core/b/a/b;->o:Ljava/util/Map;

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/net/k;->b:[B

    invoke-static {p0}, Lcom/android/net/toolbox/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    new-instance v0, Ljava/lang/String;

    iget-object p0, p1, Lcom/android/net/k;->b:[B

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-static {p1}, Lcom/android/net/toolbox/g;->a(Lcom/android/net/k;)Lcom/android/net/b$a;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/net/p;->a(Ljava/lang/Object;Lcom/android/net/b$a;)Lcom/android/net/p;

    move-result-object p0

    return-object p0
.end method

.method public final c()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/doman/core/b/a/b;->n:Lcom/doman/core/a/e;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/doman/core/a/e;->d:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/doman/core/b/a/b;->n:Lcom/doman/core/a/e;

    iget-object p0, v1, Lcom/doman/core/a/e;->d:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    iget-object v1, p0, Lcom/doman/core/b/a/b;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/doman/core/b/a/b;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/doman/core/b/a/b;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "referer"

    iget-object p0, p0, Lcom/doman/core/b/a/b;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final i()Lcom/android/net/n$b;
    .locals 0

    sget-object p0, Lcom/android/net/n$b;->c:Lcom/android/net/n$b;

    return-object p0
.end method
