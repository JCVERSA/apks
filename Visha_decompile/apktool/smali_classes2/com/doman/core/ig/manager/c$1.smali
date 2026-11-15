.class final Lcom/doman/core/ig/manager/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doman/core/ig/manager/c;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/doman/core/ig/manager/c;


# direct methods
.method public constructor <init>(Lcom/doman/core/ig/manager/c;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/ig/manager/c$1;->d:Lcom/doman/core/ig/manager/c;

    iput-object p2, p0, Lcom/doman/core/ig/manager/c$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/doman/core/ig/manager/c$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/doman/core/ig/manager/c$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/doman/core/ig/manager/c$1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v1, "params"

    const-string v2, "cn_time"

    const-string v3, "extra"

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/doman/core/ig/manager/c$1;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/doman/core/b/b;->a(Landroid/content/Context;)Lcom/doman/core/b/b;

    move-result-object v0

    new-instance v4, Lcom/doman/core/ig/manager/c$1$1;

    invoke-direct {v4, p0}, Lcom/doman/core/ig/manager/c$1$1;-><init>(Lcom/doman/core/ig/manager/c$1;)V

    new-instance v5, Lcom/doman/core/ig/manager/c$1$2;

    invoke-direct {v5, p0}, Lcom/doman/core/ig/manager/c$1$2;-><init>(Lcom/doman/core/ig/manager/c$1;)V

    iget-object p0, p0, Lcom/doman/core/ig/manager/c$1;->c:Ljava/lang/String;

    invoke-static {}, Lcom/doman/core/d/f;->a()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v0, v0, Lcom/doman/core/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/doman/core/b/c;->a(Landroid/content/Context;)Lcom/doman/core/b/c;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v0, v7}, Lcom/doman/core/b/c;->a(Lorg/json/JSONObject;)V

    invoke-virtual {v7, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-wide v8, Lcom/doman/core/ig/manager/WebService;->e:J

    invoke-virtual {v7, v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_0
    :try_start_3
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/doman/core/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v6, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/doman/core/b/f;->h:Lcom/doman/core/b/f;

    invoke-static {p0, v6}, Lcom/doman/core/b/c;->a(Lcom/doman/core/b/f;Ljava/util/Map;)Lcom/doman/core/b/e;

    move-result-object p0

    new-instance v1, Lcom/doman/core/b/a/g;

    iget-object v2, v0, Lcom/doman/core/b/c;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v4, v5}, Lcom/doman/core/b/a/g;-><init>(Landroid/content/Context;Lcom/doman/core/b/e;Lcom/android/net/p$b;Lcom/android/net/p$a;)V

    iget-object p0, v0, Lcom/doman/core/b/c;->a:Lcom/android/net/o;

    invoke-virtual {p0, v1}, Lcom/android/net/o;->a(Lcom/android/net/n;)Lcom/android/net/n;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/doman/core/ig/manager/c$1;->d:Lcom/doman/core/ig/manager/c;

    invoke-static {v0}, Lcom/doman/core/ig/manager/c;->a(Lcom/doman/core/ig/manager/c;)Lcom/doman/core/a/i;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/doman/core/ig/manager/c$1;->d:Lcom/doman/core/ig/manager/c;

    invoke-static {v0}, Lcom/doman/core/ig/manager/c;->a(Lcom/doman/core/ig/manager/c;)Lcom/doman/core/a/i;

    move-result-object v0

    invoke-static {v0}, Lcom/doman/core/ig/manager/c;->c(Lcom/doman/core/a/i;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/doman/core/ig/manager/c$1;->d:Lcom/doman/core/ig/manager/c;

    invoke-static {v0}, Lcom/doman/core/ig/manager/c;->a(Lcom/doman/core/ig/manager/c;)Lcom/doman/core/a/i;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/doman/core/ig/manager/c$1;->d:Lcom/doman/core/ig/manager/c;

    invoke-static {v0}, Lcom/doman/core/ig/manager/c;->a(Lcom/doman/core/ig/manager/c;)Lcom/doman/core/a/i;

    move-result-object v0

    iget-object p0, p0, Lcom/doman/core/ig/manager/c$1;->d:Lcom/doman/core/ig/manager/c;

    invoke-static {p0}, Lcom/doman/core/ig/manager/c;->a(Lcom/doman/core/ig/manager/c;)Lcom/doman/core/a/i;

    move-result-object p0

    iget-wide v1, p0, Lcom/doman/core/a/i;->e:J

    iput-wide v1, v0, Lcom/doman/core/a/i;->e:J

    invoke-static {}, Lcom/doman/core/ig/manager/b;->a()Lcom/doman/core/ig/manager/b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/doman/core/ig/manager/b;->a(Lcom/doman/core/a/i;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/doman/core/ig/manager/c$1;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/doman/core/b/b;->a(Landroid/content/Context;)Lcom/doman/core/b/b;

    move-result-object v0

    iget-object v6, p0, Lcom/doman/core/ig/manager/c$1;->a:Ljava/lang/String;

    new-instance v8, Lcom/doman/core/ig/manager/c$1$3;

    invoke-direct {v8, p0}, Lcom/doman/core/ig/manager/c$1$3;-><init>(Lcom/doman/core/ig/manager/c$1;)V

    new-instance v9, Lcom/doman/core/ig/manager/c$1$4;

    invoke-direct {v9, p0}, Lcom/doman/core/ig/manager/c$1$4;-><init>(Lcom/doman/core/ig/manager/c$1;)V

    iget-object p0, p0, Lcom/doman/core/ig/manager/c$1;->c:Ljava/lang/String;

    invoke-static {}, Lcom/doman/core/d/f;->a()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v0, v0, Lcom/doman/core/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/doman/core/b/c;->a(Landroid/content/Context;)Lcom/doman/core/b/c;

    move-result-object v0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    invoke-virtual {v0, v5}, Lcom/doman/core/b/c;->a(Lorg/json/JSONObject;)V

    if-eqz p0, :cond_4

    invoke-virtual {v5, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    sget-wide v10, Lcom/doman/core/ig/manager/WebService;->e:J

    invoke-virtual {v5, v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_1
    :try_start_5
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/doman/core/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-static {p0, v4}, Lcom/doman/core/b/c;->a(Lcom/doman/core/b/f;Ljava/util/Map;)Lcom/doman/core/b/e;

    move-result-object v7

    new-instance p0, Lcom/doman/core/b/a/g;

    iget-object v5, v0, Lcom/doman/core/b/c;->b:Landroid/content/Context;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/doman/core/b/a/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/doman/core/b/e;Lcom/android/net/p$b;Lcom/android/net/p$a;)V

    iget-object v0, v0, Lcom/doman/core/b/c;->a:Lcom/android/net/o;

    invoke-virtual {v0, p0}, Lcom/android/net/o;->a(Lcom/android/net/n;)Lcom/android/net/n;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_5
    return-void
.end method
