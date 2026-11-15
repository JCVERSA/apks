.class public Lcom/mgadplus/netlib/a/d;
.super Lcom/mgadplus/netlib/a/c;
.source "SourceFile"


# instance fields
.field private a:Lvad;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/mgadplus/netlib/a/c;-><init>()V

    new-instance v0, Lvad;

    invoke-static {}, Li4d;->a()Li4d;

    move-result-object v1

    invoke-virtual {v1}, Li4d;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lvad;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/mgadplus/netlib/a/d;->a:Lvad;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/mgadplus/netlib/a/a;Lcom/mgadplus/netlib/base/b;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/mgadplus/netlib/a/a;->c()Lcom/mgadplus/netlib/base/c;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/mgadplus/netlib/base/c;

    invoke-direct {p1}, Lcom/mgadplus/netlib/base/c;-><init>()V

    .line 3
    :cond_0
    sget-object v0, Lcom/mgadplus/netlib/base/c$a;->HEADER:Lcom/mgadplus/netlib/base/c$a;

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {p1, v1, v2, v0}, Lcom/mgadplus/netlib/base/c;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgadplus/netlib/base/c$a;)Lcom/mgadplus/netlib/base/c;

    .line 4
    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {p1, v1, v2, v0}, Lcom/mgadplus/netlib/base/c;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgadplus/netlib/base/c$a;)Lcom/mgadplus/netlib/base/c;

    .line 5
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/mgmi/f/f;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/mgadplus/netlib/base/c;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgadplus/netlib/base/c$a;)Lcom/mgadplus/netlib/base/c;

    .line 6
    invoke-virtual {p2}, Lcom/mgadplus/netlib/a/a;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p2}, Lcom/mgadplus/netlib/a/a;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12
    const-string v2, ""

    .line 13
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Lcom/mgadplus/netlib/base/c$a;->BODY:Lcom/mgadplus/netlib/base/c$a;

    invoke-virtual {p1, v1, v2, v3}, Lcom/mgadplus/netlib/base/c;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgadplus/netlib/base/c$a;)Lcom/mgadplus/netlib/base/c;

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 15
    :cond_2
    new-instance v0, Lcom/mgadplus/netlib/base/d;

    invoke-virtual {p2}, Lcom/mgadplus/netlib/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/mgadplus/netlib/base/d;-><init>(Ljava/lang/String;Lcom/mgadplus/netlib/base/c;)V

    .line 16
    invoke-virtual {p2}, Lcom/mgadplus/netlib/a/a;->d()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mgadplus/netlib/base/d;->a(I)Lcom/mgadplus/netlib/base/d;

    move-result-object p1

    invoke-virtual {p2}, Lcom/mgadplus/netlib/a/a;->e()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/mgadplus/netlib/base/d;->b(I)Lcom/mgadplus/netlib/base/d;

    .line 17
    new-instance p1, Lw5d;

    new-instance p2, Lcom/mgadplus/netlib/base/f;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lcom/mgadplus/netlib/base/f;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p2, v0, p3}, Lw5d;-><init>(Lcom/mgadplus/d/b;Lwed;La9d;)V

    if-eqz p3, :cond_3

    .line 18
    invoke-virtual {p3}, Lcom/mgadplus/netlib/base/b;->d()V

    .line 19
    :cond_3
    iget-object p0, p0, Lcom/mgadplus/netlib/a/d;->a:Lvad;

    invoke-virtual {p0, p1, v1}, Lvad;->a(Lw5d;Lr7d;)Lr7d;

    return-void
.end method

.method public a(Lcom/mgmi/net/a/a;Lcom/mgadplus/netlib/base/b;)V
    .locals 4

    .line 20
    new-instance v0, Lcom/mgadplus/netlib/base/c;

    invoke-direct {v0}, Lcom/mgadplus/netlib/base/c;-><init>()V

    .line 21
    sget-object v1, Lcom/mgadplus/netlib/base/c$a;->HEADER:Lcom/mgadplus/netlib/base/c$a;

    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v2, v3, v1}, Lcom/mgadplus/netlib/base/c;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgadplus/netlib/base/c$a;)Lcom/mgadplus/netlib/base/c;

    .line 22
    const-string v2, "Connection"

    const-string v3, "close"

    invoke-virtual {v0, v2, v3, v1}, Lcom/mgadplus/netlib/base/c;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgadplus/netlib/base/c$a;)Lcom/mgadplus/netlib/base/c;

    .line 23
    const-string v2, "User-Agent"

    invoke-static {}, Lcom/mgmi/f/f;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/mgadplus/netlib/base/c;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgadplus/netlib/base/c$a;)Lcom/mgadplus/netlib/base/c;

    .line 24
    new-instance v1, Lcom/mgadplus/netlib/base/d;

    invoke-virtual {p1}, Lcom/mgmi/net/a/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/mgadplus/netlib/base/d;-><init>(Ljava/lang/String;Lcom/mgadplus/netlib/base/c;)V

    .line 25
    new-instance p1, Lw5d;

    new-instance v0, Lcom/mgadplus/netlib/base/f;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/mgadplus/netlib/base/f;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, v0, v1, p2}, Lw5d;-><init>(Lcom/mgadplus/d/b;Lwed;La9d;)V

    .line 26
    iget-object p0, p0, Lcom/mgadplus/netlib/a/d;->a:Lvad;

    invoke-virtual {p0, p1, v2}, Lvad;->a(Lw5d;Lr7d;)Lr7d;

    return-void
.end method

.method public a(Lr7d;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 27
    iget-object p0, p0, Lcom/mgadplus/netlib/a/d;->a:Lvad;

    invoke-virtual {p0, p1}, Lvad;->c(Lr7d;)Z

    :cond_0
    return-void
.end method
