.class public final Lcom/doman/core/b/a/a/b;
.super Lcom/doman/core/b/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/doman/core/b/a/d<",
        "Lcom/doman/core/a/j;",
        ">;"
    }
.end annotation


# static fields
.field protected static l:Lcom/android/net/p$a;


# instance fields
.field private n:Lcom/doman/core/b/e;

.field private o:Lcom/android/net/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/net/p$b<",
            "Lcom/doman/core/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/doman/core/b/a/a/b$1;

    invoke-direct {v0}, Lcom/doman/core/b/a/a/b$1;-><init>()V

    sput-object v0, Lcom/doman/core/b/a/a/b;->l:Lcom/android/net/p$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/doman/core/b/e;Lcom/android/net/p$b;Lcom/android/net/p$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/doman/core/b/e;",
            "Lcom/android/net/p$b<",
            "Lcom/doman/core/a/j;",
            ">;",
            "Lcom/android/net/p$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p5}, Lcom/doman/core/b/a/d;-><init>(Ljava/lang/String;Lcom/android/net/p$a;)V

    const-string p2, "AppTaskRequest"

    iput-object p2, p0, Lcom/doman/core/b/a/a/b;->p:Ljava/lang/String;

    iput-object p1, p0, Lcom/doman/core/b/a/d;->m:Landroid/content/Context;

    iput-object p3, p0, Lcom/doman/core/b/a/a/b;->n:Lcom/doman/core/b/e;

    iput-object p4, p0, Lcom/doman/core/b/a/a/b;->o:Lcom/android/net/p$b;

    return-void
.end method

.method private static d(Ljava/lang/String;)Lcom/doman/core/a/j;
    .locals 8

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "success"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v1

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

    goto/16 :goto_1

    :cond_2
    sget-object v2, Lcom/doman/core/b/c;->c:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/doman/core/d/c/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/doman/core/a/j;

    invoke-direct {p0}, Lcom/doman/core/a/j;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v1, "type"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/doman/core/a/j;->e:Ljava/lang/String;

    const-string v1, "dy"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/doman/core/a/j;->a:I

    const-string v1, "fdc"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/doman/core/a/j;->b:I

    const-string v1, "rt"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_4

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/doman/core/a/j;->j:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "target"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/doman/core/a/j;->f:Ljava/lang/String;

    const-string v1, "dy_c"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/doman/core/a/j;->c:I

    const-string/jumbo v1, "wh_l"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/doman/core/a/j;->g:Ljava/lang/String;

    const-string/jumbo v1, "ugt"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doman/core/a/j;->d:Ljava/lang/String;

    const-string v0, "nd_cl"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/doman/core/a/j;->h:Z

    const-string v0, "du"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/doman/core/a/j;->i:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-object v1, p0

    goto :goto_2

    :cond_5
    :goto_1
    :try_start_2
    new-instance p0, Lcom/doman/core/a/j;

    invoke-direct {p0}, Lcom/doman/core/a/j;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    :goto_2
    move-object p0, v1

    :goto_3
    return-object p0
.end method


# virtual methods
.method public final synthetic c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/doman/core/b/a/a/b;->d(Ljava/lang/String;)Lcom/doman/core/a/j;

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

    iget-object v0, p0, Lcom/doman/core/b/a/a/b;->n:Lcom/doman/core/b/e;

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

    sget-object p0, Lcom/android/net/n$b;->b:Lcom/android/net/n$b;

    return-object p0
.end method

.method public final n()Lcom/android/net/p$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/net/p$b<",
            "Lcom/doman/core/a/j;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/doman/core/b/a/a/b;->o:Lcom/android/net/p$b;

    return-object p0
.end method
