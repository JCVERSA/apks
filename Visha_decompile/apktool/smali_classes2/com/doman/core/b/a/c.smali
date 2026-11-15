.class public final Lcom/doman/core/b/a/c;
.super Lcom/doman/core/b/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/doman/core/b/a/d<",
        "Ljava/lang/String;",
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/doman/core/b/a/c$1;

    invoke-direct {v0}, Lcom/doman/core/b/a/c$1;-><init>()V

    sput-object v0, Lcom/doman/core/b/a/c;->l:Lcom/android/net/p$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/doman/core/b/e;Ljava/lang/String;Lcom/android/net/p$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/doman/core/b/e;",
            "Ljava/lang/String;",
            "Lcom/android/net/p$b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/doman/core/b/a/c;->l:Lcom/android/net/p$a;

    invoke-direct {p0, p3, v0}, Lcom/doman/core/b/a/d;-><init>(Ljava/lang/String;Lcom/android/net/p$a;)V

    const-string p3, "ApplistRequest"

    iput-object p3, p0, Lcom/doman/core/b/a/c;->p:Ljava/lang/String;

    iput-object p1, p0, Lcom/doman/core/b/a/d;->m:Landroid/content/Context;

    iput-object p2, p0, Lcom/doman/core/b/a/c;->n:Lcom/doman/core/b/e;

    iput-object p4, p0, Lcom/doman/core/b/a/c;->o:Lcom/android/net/p$b;

    return-void
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "ok"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/doman/core/webview/c;->au:Ljava/lang/String;

    invoke-static {v1}, Lcom/doman/core/webview/c;->a(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "success"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    const-string p0, "data"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/doman/core/b/c;->c:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/doman/core/d/c/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public final synthetic c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/doman/core/b/a/c;->d(Ljava/lang/String;)Ljava/lang/String;

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

    iget-object v0, p0, Lcom/doman/core/b/a/c;->n:Lcom/doman/core/b/e;

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/doman/core/b/a/c;->o:Lcom/android/net/p$b;

    return-object p0
.end method
