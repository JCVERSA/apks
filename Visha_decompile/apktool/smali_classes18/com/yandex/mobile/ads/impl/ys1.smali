.class public final Lcom/yandex/mobile/ads/impl/ys1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/ys1$a;,
        Lcom/yandex/mobile/ads/impl/ys1$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ab;

.field private final b:Lcom/yandex/mobile/ads/impl/ws1;

.field private final c:Lcom/yandex/mobile/ads/impl/nn;

.field private final d:Lcom/yandex/mobile/ads/impl/w50;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ab;Lcom/yandex/mobile/ads/impl/ws1;Lcom/yandex/mobile/ads/impl/zn1;Lcom/yandex/mobile/ads/impl/w50;)V
    .locals 1

    const-string v0, "address"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "routeDatabase"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ys1;->a:Lcom/yandex/mobile/ads/impl/ab;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ys1;->b:Lcom/yandex/mobile/ads/impl/ws1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ys1;->c:Lcom/yandex/mobile/ads/impl/nn;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ys1;->d:Lcom/yandex/mobile/ads/impl/w50;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ys1;->e:Ljava/util/List;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ys1;->g:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ys1;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ab;->f()Ljava/net/Proxy;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/yandex/mobile/ads/impl/ys1;->a(Lcom/yandex/mobile/ads/impl/gi0;Ljava/net/Proxy;)V

    return-void
.end method

.method private final a(Lcom/yandex/mobile/ads/impl/gi0;Ljava/net/Proxy;)V
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ys1;->d:Lcom/yandex/mobile/ads/impl/w50;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ys1;->c:Lcom/yandex/mobile/ads/impl/nn;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    const-string v0, "call"

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "url"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 26
    invoke-static {p2}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gi0;->l()Ljava/net/URI;

    move-result-object p2

    .line 28
    invoke-virtual {p2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    filled-new-array {p2}, [Ljava/net/Proxy;

    move-result-object p2

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/g92;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_1

    .line 29
    :cond_1
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ys1;->a:Lcom/yandex/mobile/ads/impl/ab;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ab;->h()Ljava/net/ProxySelector;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 30
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 31
    :cond_2
    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/g92;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_1

    .line 32
    :cond_3
    :goto_0
    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    filled-new-array {p2}, [Ljava/net/Proxy;

    move-result-object p2

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/g92;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 33
    :goto_1
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ys1;->e:Ljava/util/List;

    const/4 v2, 0x0

    .line 34
    iput v2, p0, Lcom/yandex/mobile/ads/impl/ys1;->f:I

    .line 35
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ys1;->d:Lcom/yandex/mobile/ads/impl/w50;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ys1;->c:Lcom/yandex/mobile/ads/impl/nn;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "proxies"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/net/Proxy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ys1;->g:Ljava/util/List;

    .line 5
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    .line 7
    instance-of v2, v1, Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_1

    .line 8
    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/ys1$a;->a(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ys1;->a:Lcom/yandex/mobile/ads/impl/ab;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object v2

    .line 13
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ys1;->a:Lcom/yandex/mobile/ads/impl/ab;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/gi0;->i()I

    move-result v1

    :goto_1
    const/4 v3, 0x1

    if-gt v3, v1, :cond_6

    const/high16 v3, 0x10000

    if-ge v1, v3, :cond_6

    .line 14
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object v3, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne p1, v3, :cond_3

    .line 15
    invoke-static {v2, v1}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ys1;->d:Lcom/yandex/mobile/ads/impl/w50;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ys1;->c:Lcom/yandex/mobile/ads/impl/nn;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2}, Lcom/yandex/mobile/ads/impl/w50;->a(Lcom/yandex/mobile/ads/impl/nn;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ys1;->a:Lcom/yandex/mobile/ads/impl/ab;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ab;->c()Lcom/yandex/mobile/ads/impl/q30;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/yandex/mobile/ads/impl/q30;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 18
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 19
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ys1;->d:Lcom/yandex/mobile/ads/impl/w50;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ys1;->c:Lcom/yandex/mobile/ads/impl/nn;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v2, p1}, Lcom/yandex/mobile/ads/impl/w50;->a(Lcom/yandex/mobile/ads/impl/nn;Ljava/lang/String;Ljava/util/List;)V

    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/InetAddress;

    .line 21
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    :goto_3
    return-void

    .line 22
    :cond_5
    new-instance p1, Ljava/net/UnknownHostException;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ys1;->a:Lcom/yandex/mobile/ads/impl/ab;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ab;->c()Lcom/yandex/mobile/ads/impl/q30;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " returned no addresses for "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_6
    new-instance p0, Ljava/net/SocketException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No route to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; port is out of range"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final c()Ljava/net/Proxy;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/yandex/mobile/ads/impl/ys1;->f:I

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ys1;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ys1;->e:Ljava/util/List;

    iget v1, p0, Lcom/yandex/mobile/ads/impl/ys1;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/yandex/mobile/ads/impl/ys1;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/ys1;->a(Ljava/net/Proxy;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/net/SocketException;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ys1;->a:Lcom/yandex/mobile/ads/impl/ab;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ys1;->e:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No route to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; exhausted proxy configurations: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/yandex/mobile/ads/impl/ys1;->f:I

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ys1;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ys1;->h:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/ys1$b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ys1;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget v1, p0, Lcom/yandex/mobile/ads/impl/ys1;->f:I

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ys1;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/ys1;->c()Ljava/net/Proxy;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ys1;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    new-instance v4, Lcom/yandex/mobile/ads/impl/vs1;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/ys1;->a:Lcom/yandex/mobile/ads/impl/ab;

    invoke-direct {v4, v5, v1, v3}, Lcom/yandex/mobile/ads/impl/vs1;-><init>(Lcom/yandex/mobile/ads/impl/ab;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ys1;->b:Lcom/yandex/mobile/ads/impl/ws1;

    invoke-virtual {v3, v4}, Lcom/yandex/mobile/ads/impl/ws1;->c(Lcom/yandex/mobile/ads/impl/vs1;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ys1;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ys1;->h:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ld81;->C(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ys1;->h:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    new-instance p0, Lcom/yandex/mobile/ads/impl/ys1$b;

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/ys1$b;-><init>(Ljava/util/ArrayList;)V

    return-object p0

    :cond_5
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
