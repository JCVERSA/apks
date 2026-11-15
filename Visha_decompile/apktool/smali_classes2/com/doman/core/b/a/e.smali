.class public final Lcom/doman/core/b/a/e;
.super Lcom/doman/core/b/a/d;
.source "SourceFile"


# instance fields
.field private l:Lcom/doman/core/b/e;

.field private n:Lcom/android/net/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/net/p$b<",
            "Ljava/util/List<",
            "Lcom/doman/core/a/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/doman/core/b/e;Lcom/android/net/p$b;Lcom/android/net/p$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/doman/core/b/e;",
            "Lcom/android/net/p$b<",
            "Ljava/util/List<",
            "Lcom/doman/core/a/d;",
            ">;>;",
            "Lcom/android/net/p$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p5}, Lcom/doman/core/b/a/d;-><init>(Ljava/lang/String;Lcom/android/net/p$a;)V

    const-string p2, "GCTAG"

    iput-object p2, p0, Lcom/doman/core/b/a/e;->o:Ljava/lang/String;

    iput-object p1, p0, Lcom/doman/core/b/a/d;->m:Landroid/content/Context;

    iput-object p3, p0, Lcom/doman/core/b/a/e;->l:Lcom/doman/core/b/e;

    iput-object p4, p0, Lcom/doman/core/b/a/e;->n:Lcom/android/net/p$b;

    return-void
.end method

.method private static d(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/doman/core/a/d;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "success"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v3

    :cond_1
    const-string p0, "data"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "null"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/doman/core/b/c;->c:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/doman/core/d/c/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-gtz p0, :cond_3

    return-object v3

    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p0, :cond_6

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_4

    new-instance v6, Lcom/doman/core/a/d;

    invoke-direct {v6}, Lcom/doman/core/a/d;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string/jumbo v7, "type"

    invoke-virtual {v5, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/doman/core/a/d;->b:I

    const-string v7, "iv"

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/doman/core/a/d;->d:J

    const-string v7, "cadd"

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/doman/core/a/d;->c:Ljava/lang/String;

    const-string v7, "screen"

    invoke-virtual {v5, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/doman/core/a/d;->g:I

    const-string v7, "eadd"

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/doman/core/a/d;->e:Ljava/lang/String;

    const-string v7, "front"

    invoke-virtual {v5, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/doman/core/a/d;->f:I

    const-string v7, "extra"

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/doman/core/a/d;->h:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return-object v3

    :catchall_1
    :cond_6
    return-object v1
.end method


# virtual methods
.method public final synthetic c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/doman/core/b/a/e;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/doman/core/b/a/e;->l:Lcom/doman/core/b/e;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/net/n;->f()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, v0, Lcom/doman/core/b/e;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public final i()Lcom/android/net/n$b;
    .locals 0

    sget-object p0, Lcom/android/net/n$b;->a:Lcom/android/net/n$b;

    return-object p0
.end method

.method public final n()Lcom/android/net/p$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/net/p$b<",
            "Ljava/util/List<",
            "Lcom/doman/core/a/d;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/doman/core/b/a/e;->n:Lcom/android/net/p$b;

    return-object p0
.end method
