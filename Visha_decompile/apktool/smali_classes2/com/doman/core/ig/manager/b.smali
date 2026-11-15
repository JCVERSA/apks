.class public Lcom/doman/core/ig/manager/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/doman/core/ig/proxy/c$a;


# static fields
.field private static d:Lcom/doman/core/ig/manager/b;


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field private c:Lcom/doman/core/ig/proxy/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/doman/core/ig/manager/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/doman/core/ig/manager/b;->d:Lcom/doman/core/ig/manager/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/doman/core/ig/manager/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/doman/core/ig/manager/b;->d:Lcom/doman/core/ig/manager/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/doman/core/ig/manager/b;

    invoke-direct {v1}, Lcom/doman/core/ig/manager/b;-><init>()V

    sput-object v1, Lcom/doman/core/ig/manager/b;->d:Lcom/doman/core/ig/manager/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/doman/core/ig/manager/b;->d:Lcom/doman/core/ig/manager/b;

    return-object v0
.end method

.method public static synthetic a(Lcom/doman/core/ig/manager/b;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/doman/core/ig/manager/b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/doman/core/ig/manager/b;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/doman/core/ig/manager/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/doman/core/ig/manager/b;Ljava/util/List;)V
    .locals 8

    .line 6
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/doman/core/a/d;

    if-eqz v2, :cond_1

    iget-wide v3, v2, Lcom/doman/core/a/d;->d:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    invoke-static {}, Lcom/doman/core/d/f;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/doman/core/ig/manager/b;->c:Lcom/doman/core/ig/proxy/c;

    if-nez v3, :cond_0

    new-instance v3, Lcom/doman/core/ig/proxy/c;

    invoke-direct {v3, p0}, Lcom/doman/core/ig/proxy/c;-><init>(Lcom/doman/core/ig/proxy/c$a;)V

    iput-object v3, p0, Lcom/doman/core/ig/manager/b;->c:Lcom/doman/core/ig/proxy/c;

    :cond_0
    iget-object v3, p0, Lcom/doman/core/ig/manager/b;->c:Lcom/doman/core/ig/proxy/c;

    invoke-virtual {v3}, Lcom/doman/core/ig/proxy/c;->a()Landroid/os/Message;

    move-result-object v3

    new-instance v4, Lcom/doman/core/a/i;

    invoke-direct {v4}, Lcom/doman/core/a/i;-><init>()V

    iget-wide v5, v2, Lcom/doman/core/a/d;->d:J

    iput-wide v5, v4, Lcom/doman/core/a/i;->e:J

    iget v7, v2, Lcom/doman/core/a/d;->b:I

    iput v7, v4, Lcom/doman/core/a/i;->a:I

    iget-object v7, v2, Lcom/doman/core/a/d;->c:Ljava/lang/String;

    iput-object v7, v4, Lcom/doman/core/a/i;->f:Ljava/lang/String;

    iget v7, v2, Lcom/doman/core/a/d;->g:I

    iput v7, v4, Lcom/doman/core/a/i;->d:I

    iget v7, v2, Lcom/doman/core/a/d;->f:I

    iput v7, v4, Lcom/doman/core/a/i;->c:I

    iget v7, v2, Lcom/doman/core/a/d;->a:I

    iput v7, v4, Lcom/doman/core/a/i;->b:I

    iget-object v2, v2, Lcom/doman/core/a/d;->h:Ljava/lang/String;

    iput-object v2, v4, Lcom/doman/core/a/i;->g:Ljava/lang/String;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/doman/core/ig/manager/b;->c:Lcom/doman/core/ig/proxy/c;

    invoke-virtual {v2, v3, v5, v6}, Lcom/doman/core/ig/proxy/c;->a(Landroid/os/Message;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    .line 7
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/doman/core/d/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/doman/core/CoreMain;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doman/core/b/b;->a(Landroid/content/Context;)Lcom/doman/core/b/b;

    move-result-object v0

    new-instance v5, Lcom/doman/core/ig/manager/b$2;

    invoke-direct {v5, p0}, Lcom/doman/core/ig/manager/b$2;-><init>(Lcom/doman/core/ig/manager/b;)V

    new-instance v6, Lcom/doman/core/ig/manager/b$3;

    invoke-direct {v6, p0}, Lcom/doman/core/ig/manager/b$3;-><init>(Lcom/doman/core/ig/manager/b;)V

    iget-object p0, v0, Lcom/doman/core/b/b;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/doman/core/b/c;->a(Landroid/content/Context;)Lcom/doman/core/b/c;

    move-result-object p0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
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

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/doman/core/b/c;->a(Lcom/doman/core/b/f;Ljava/util/Map;)Lcom/doman/core/b/e;

    move-result-object v4

    new-instance v0, Lcom/doman/core/b/a/e;

    iget-object v2, p0, Lcom/doman/core/b/c;->b:Landroid/content/Context;

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/doman/core/b/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/doman/core/b/e;Lcom/android/net/p$b;Lcom/android/net/p$a;)V

    iget-object p0, p0, Lcom/doman/core/b/c;->a:Lcom/android/net/o;

    invoke-virtual {p0, v0}, Lcom/android/net/o;->a(Lcom/android/net/n;)Lcom/android/net/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/doman/core/ig/manager/b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/doman/core/ig/manager/b;->a:J

    return-wide v0
.end method

.method public static b()Z
    .locals 1

    .line 3
    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/doman/core/CoreMain;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doman/core/CoreMain;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Landroid/os/Message;)V
    .locals 3

    .line 3
    if-eqz p1, :cond_1

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of p1, p0, Lcom/doman/core/a/i;

    if-eqz p1, :cond_1

    check-cast p0, Lcom/doman/core/a/i;

    if-eqz p0, :cond_1

    iget p1, p0, Lcom/doman/core/a/i;->a:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/doman/core/ig/manager/c;->a()Lcom/doman/core/ig/manager/c;

    move-result-object p1

    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/doman/core/CoreMain;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object p0, p1, Lcom/doman/core/ig/manager/c;->a:Lcom/doman/core/a/i;

    invoke-static {p0}, Lcom/doman/core/ig/manager/c;->a(Lcom/doman/core/a/i;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/doman/core/ig/manager/c;->a:Lcom/doman/core/a/i;

    iget-object v1, p0, Lcom/doman/core/a/i;->f:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/doman/core/a/i;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/doman/core/ig/manager/c;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p1, Lcom/doman/core/ig/manager/c;->a:Lcom/doman/core/a/i;

    invoke-static {p0}, Lcom/doman/core/ig/manager/c;->b(Lcom/doman/core/a/i;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/doman/core/a/i;)V
    .locals 4

    .line 4
    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p1, Lcom/doman/core/a/i;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/doman/core/d/f;->a()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/doman/core/ig/manager/b;->c:Lcom/doman/core/ig/proxy/c;

    if-nez v0, :cond_3

    new-instance v0, Lcom/doman/core/ig/proxy/c;

    invoke-direct {v0, p0}, Lcom/doman/core/ig/proxy/c;-><init>(Lcom/doman/core/ig/proxy/c$a;)V

    iput-object v0, p0, Lcom/doman/core/ig/manager/b;->c:Lcom/doman/core/ig/proxy/c;

    :cond_3
    iget-object v0, p0, Lcom/doman/core/ig/manager/b;->c:Lcom/doman/core/ig/proxy/c;

    invoke-virtual {v0}, Lcom/doman/core/ig/proxy/c;->a()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/doman/core/ig/manager/b;->c:Lcom/doman/core/ig/proxy/c;

    iget-wide v1, p1, Lcom/doman/core/a/i;->e:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/doman/core/ig/proxy/c;->a(Landroid/os/Message;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final b(Landroid/os/Message;)V
    .locals 0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/doman/core/ig/manager/b;->a(Ljava/lang/String;)V

    return-void
.end method
