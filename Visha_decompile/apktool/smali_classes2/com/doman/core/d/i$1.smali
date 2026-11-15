.class final Lcom/doman/core/d/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doman/core/d/i;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/a/f;

.field final synthetic b:Lcom/doman/core/d/i;


# direct methods
.method public constructor <init>(Lcom/doman/core/d/i;Lcom/doman/core/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/d/i$1;->b:Lcom/doman/core/d/i;

    iput-object p2, p0, Lcom/doman/core/d/i$1;->a:Lcom/doman/core/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    sget-object v0, Lcom/doman/core/webview/c;->at:Ljava/lang/String;

    invoke-static {v0}, Lcom/doman/core/webview/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/doman/core/d/i$1;->b:Lcom/doman/core/d/i;

    invoke-virtual {v0}, Lcom/doman/core/d/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/doman/core/d/i$1;->a:Lcom/doman/core/a/f;

    iget-object v1, v1, Lcom/doman/core/a/f;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p0, Lcom/doman/core/webview/c;->av:Ljava/lang/String;

    const-string v0, "error:url is empty"

    invoke-static {p0, v0}, Lcom/doman/core/webview/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/doman/core/d/f;->a()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v2

    invoke-virtual {v2}, Lcom/doman/core/CoreMain;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/doman/core/b/b;->a(Landroid/content/Context;)Lcom/doman/core/b/b;

    move-result-object v2

    new-instance v3, Lcom/doman/core/d/i$1$1;

    invoke-direct {v3, p0}, Lcom/doman/core/d/i$1$1;-><init>(Lcom/doman/core/d/i$1;)V

    iget-object p0, v2, Lcom/doman/core/b/b;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/doman/core/b/c;->a(Landroid/content/Context;)Lcom/doman/core/b/c;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v4}, Lcom/doman/core/b/c;->a(Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "app"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/doman/core/b/c;->c:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/doman/core/d/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "params"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0, v2}, Lcom/doman/core/b/c;->a(Lcom/doman/core/b/f;Ljava/util/Map;)Lcom/doman/core/b/e;

    move-result-object v0

    new-instance v2, Lcom/doman/core/b/a/c;

    iget-object v4, p0, Lcom/doman/core/b/c;->b:Landroid/content/Context;

    invoke-direct {v2, v4, v0, v1, v3}, Lcom/doman/core/b/a/c;-><init>(Landroid/content/Context;Lcom/doman/core/b/e;Ljava/lang/String;Lcom/android/net/p$b;)V

    iget-object p0, p0, Lcom/doman/core/b/c;->a:Lcom/android/net/o;

    invoke-virtual {p0, v2}, Lcom/android/net/o;->a(Lcom/android/net/n;)Lcom/android/net/n;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/doman/core/webview/c;->av:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error:96 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/doman/core/webview/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :catch_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-string p0, "key_applist_uoloadtime"

    invoke-static {p0, v0, v1}, Lcom/doman/core/d/l;->a(Ljava/lang/String;J)V

    return-void
.end method
