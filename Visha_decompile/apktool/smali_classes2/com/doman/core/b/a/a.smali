.class public final Lcom/doman/core/b/a/a;
.super Lcom/android/net/toolbox/o;
.source "SourceFile"


# static fields
.field public static l:I = 0x0

.field public static m:I = 0x1


# instance fields
.field private n:Lcom/doman/core/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/doman/core/b/e;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/doman/core/b/a/a$1;

    invoke-direct {v0}, Lcom/doman/core/b/a/a$1;-><init>()V

    new-instance v1, Lcom/doman/core/b/a/a$2;

    invoke-direct {v1}, Lcom/doman/core/b/a/a$2;-><init>()V

    const/4 v2, 0x1

    invoke-direct {p0, v2, p2, v0, v1}, Lcom/android/net/toolbox/o;-><init>(ILjava/lang/String;Lcom/android/net/p$b;Lcom/android/net/p$a;)V

    iput-object p1, p0, Lcom/doman/core/b/a/a;->n:Lcom/doman/core/b/e;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdTrackingCbRequest tracking:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "TrkCbR"

    invoke-static {p2, p1}, Lcom/doman/core/d/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/net/e;

    const/16 p2, 0x61a8

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v2, v0}, Lcom/android/net/e;-><init>(IIF)V

    iput-object p1, p0, Lcom/android/net/n;->j:Lcom/android/net/r;

    return-void
.end method


# virtual methods
.method public final c()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/doman/core/webview/b;->a()Lcom/doman/core/webview/b;

    move-result-object v0

    iget-object v1, v0, Lcom/doman/core/webview/b;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/doman/core/CoreMain;->getUA()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/doman/core/webview/b;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, v0, Lcom/doman/core/webview/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/doman/core/CoreMain;->getUA()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "User-Agent"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/doman/core/b/a/a;->n:Lcom/doman/core/b/e;

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

    sget-object p0, Lcom/android/net/n$b;->c:Lcom/android/net/n$b;

    return-object p0
.end method
