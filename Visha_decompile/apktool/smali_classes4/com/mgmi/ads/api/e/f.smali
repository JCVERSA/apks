.class public Lcom/mgmi/ads/api/e/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mgmi/ads/api/e/f;


# instance fields
.field private b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgmi/ads/api/e/f;->b:Z

    return-void
.end method

.method public static a()Lcom/mgmi/ads/api/e/f;
    .locals 2

    .line 1
    sget-object v0, Lcom/mgmi/ads/api/e/f;->a:Lcom/mgmi/ads/api/e/f;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/mgmi/platform/b/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mgmi/ads/api/e/f;->a:Lcom/mgmi/ads/api/e/f;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/mgmi/ads/api/e/f;

    invoke-direct {v1}, Lcom/mgmi/ads/api/e/f;-><init>()V

    sput-object v1, Lcom/mgmi/ads/api/e/f;->a:Lcom/mgmi/ads/api/e/f;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_2
    sget-object v0, Lcom/mgmi/ads/api/e/f;->a:Lcom/mgmi/ads/api/e/f;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 27
    invoke-static {}, Lcom/mgmi/b/c;->a()Lcom/mgmi/b/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mgmi/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 28
    invoke-static {p0}, Laud;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;J)V
    .locals 3

    .line 7
    iget-boolean v0, p0, Lcom/mgmi/ads/api/e/f;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/mgmi/ads/api/e/f;->b:Z

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/platform/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/creative/list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/mgmi/g/a;

    invoke-direct {v1}, Lcom/mgmi/g/a;-><init>()V

    invoke-virtual {v1, p2, p3}, Lcom/mgmi/g/a;->a(J)Lcom/mgmi/g/a;

    move-result-object p2

    const p3, 0x1883b

    invoke-virtual {p2, p3}, Lcom/mgmi/g/a;->i(I)Lcom/mgmi/g/a;

    move-result-object p2

    .line 11
    sget-object p3, Lcom/mgmi/platform/b;->t:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/mgmi/g/a;->a(Ljava/lang/String;)V

    .line 12
    invoke-static {p1}, Lfyd;->e(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p3, 0x0

    const/4 v1, 0x0

    .line 13
    invoke-static {p1, p2, p3, v1}, Lcom/mgmi/f/b;->a(Landroid/content/Context;Lcom/mgmi/g/a;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p2

    .line 14
    new-instance p3, Lcom/mgadplus/netlib/a/a;

    invoke-direct {p3, v0}, Lcom/mgadplus/netlib/a/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lcom/mgadplus/netlib/a/a;->a(Ljava/util/Map;)Lcom/mgadplus/netlib/a/a;

    move-result-object p3

    const/16 v0, 0x1388

    invoke-virtual {p3, v0}, Lcom/mgadplus/netlib/a/a;->a(I)Lcom/mgadplus/netlib/a/a;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/mgadplus/netlib/a/a;->b(I)Lcom/mgadplus/netlib/a/a;

    move-result-object p3

    .line 15
    sget-object v0, Lcom/mgadplus/netlib/base/c$a;->HEADER:Lcom/mgadplus/netlib/base/c$a;

    const-string v1, "auver"

    const-string v2, "v1"

    invoke-virtual {p3, v1, v2, v0}, Lcom/mgadplus/netlib/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mgadplus/netlib/base/c$a;)Lcom/mgadplus/netlib/a/a;

    .line 16
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {p3, v1, v2, v0}, Lcom/mgadplus/netlib/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mgadplus/netlib/base/c$a;)Lcom/mgadplus/netlib/a/a;

    .line 17
    const-string v1, "Connection"

    const-string v2, "close"

    invoke-virtual {p3, v1, v2, v0}, Lcom/mgadplus/netlib/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mgadplus/netlib/base/c$a;)Lcom/mgadplus/netlib/a/a;

    if-eqz p2, :cond_2

    .line 18
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 19
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 23
    const-string v1, ""

    .line 24
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/mgadplus/netlib/base/c$a;->BODY:Lcom/mgadplus/netlib/base/c$a;

    invoke-virtual {p3, v0, v1, v2}, Lcom/mgadplus/netlib/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mgadplus/netlib/base/c$a;)Lcom/mgadplus/netlib/a/a;

    .line 25
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 26
    :cond_2
    new-instance p2, Lcom/mgmi/ads/api/e/f$1;

    invoke-direct {p2, p0, p1}, Lcom/mgmi/ads/api/e/f$1;-><init>(Lcom/mgmi/ads/api/e/f;Landroid/content/Context;)V

    invoke-static {p1, p3, p2}, Lcom/mgadplus/netlib/a/e;->a(Landroid/content/Context;Lcom/mgadplus/netlib/a/a;Lcom/mgadplus/netlib/base/b;)V

    :cond_3
    return-void
.end method
