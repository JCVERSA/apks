.class public final Lcom/doman/core/c/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/c/d;


# direct methods
.method public constructor <init>(Lcom/doman/core/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/c/d$1;->a:Lcom/doman/core/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/doman/core/d/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/doman/core/CoreMain;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doman/core/b/b;->a(Landroid/content/Context;)Lcom/doman/core/b/b;

    move-result-object v0

    new-instance v5, Lcom/doman/core/c/d$1$1;

    invoke-direct {v5, p0}, Lcom/doman/core/c/d$1$1;-><init>(Lcom/doman/core/c/d$1;)V

    new-instance v6, Lcom/doman/core/c/d$1$2;

    invoke-direct {v6, p0}, Lcom/doman/core/c/d$1$2;-><init>(Lcom/doman/core/c/d$1;)V

    iget-object p0, v0, Lcom/doman/core/b/b;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/doman/core/b/c;->a(Landroid/content/Context;)Lcom/doman/core/b/c;

    move-result-object p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v1}, Lcom/doman/core/b/c;->a(Lorg/json/JSONObject;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/doman/core/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "params"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/doman/core/b/f;->a:Lcom/doman/core/b/f;

    invoke-static {}, Lcom/doman/core/manager/a;->a()Lcom/doman/core/manager/a;

    invoke-static {}, Lcom/doman/core/manager/a;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/doman/core/b/f;->l:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/doman/core/b/c;->a(Lcom/doman/core/b/f;Ljava/util/Map;)Lcom/doman/core/b/e;

    move-result-object v4

    new-instance v0, Lcom/doman/core/b/a/a/b;

    iget-object v2, p0, Lcom/doman/core/b/c;->b:Landroid/content/Context;

    invoke-static {}, Lcom/doman/core/manager/a;->a()Lcom/doman/core/manager/a;

    invoke-static {}, Lcom/doman/core/manager/a;->e()Ljava/lang/String;

    move-result-object v3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/doman/core/b/a/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/doman/core/b/e;Lcom/android/net/p$b;Lcom/android/net/p$a;)V

    iget-object p0, p0, Lcom/doman/core/b/c;->a:Lcom/android/net/o;

    invoke-virtual {p0, v0}, Lcom/android/net/o;->a(Lcom/android/net/n;)Lcom/android/net/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
