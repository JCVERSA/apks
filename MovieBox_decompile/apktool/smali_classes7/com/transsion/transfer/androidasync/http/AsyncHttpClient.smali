.class public Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;,
        Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$g;,
        Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;,
        Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$j;,
        Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$i;
    }
.end annotation


# static fields
.field private static f:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;


# instance fields
.field final a:Ljava/util/List;

.field b:Lcom/transsion/transfer/androidasync/http/n;

.field c:Lcom/transsion/transfer/androidasync/http/t;

.field d:Lcom/transsion/transfer/androidasync/http/v;

.field e:Lcom/transsion/transfer/androidasync/AsyncServer;


# direct methods
.method public constructor <init>(Lcom/transsion/transfer/androidasync/AsyncServer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->a:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->e:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 12
    .line 13
    new-instance p1, Lcom/transsion/transfer/androidasync/http/t;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/transsion/transfer/androidasync/http/t;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->c:Lcom/transsion/transfer/androidasync/http/t;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->z(Lcom/transsion/transfer/androidasync/http/g;)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Lcom/transsion/transfer/androidasync/http/n;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/transsion/transfer/androidasync/http/n;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->b:Lcom/transsion/transfer/androidasync/http/n;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->z(Lcom/transsion/transfer/androidasync/http/g;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Lcom/transsion/transfer/androidasync/http/v;

    .line 34
    .line 35
    invoke-direct {p1}, Lcom/transsion/transfer/androidasync/http/v;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->d:Lcom/transsion/transfer/androidasync/http/v;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->z(Lcom/transsion/transfer/androidasync/http/g;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->b:Lcom/transsion/transfer/androidasync/http/n;

    .line 44
    .line 45
    new-instance v0, Lcom/transsion/transfer/androidasync/http/z;

    .line 46
    .line 47
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/http/z;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/http/n;->A(Lcom/transsion/transfer/androidasync/http/m;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private A(Lut/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object v6, p5

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$7;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lut/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->e:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 14
    .line 15
    invoke-virtual {p1, v7}, Lcom/transsion/transfer/androidasync/AsyncServer;->D(Ljava/lang/Runnable;)Lcom/transsion/transfer/androidasync/future/a;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private B(Lut/b;Lcom/transsion/transfer/androidasync/http/k;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1, p2}, Lut/b;->b(Lcom/transsion/transfer/androidasync/http/k;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private C(Lut/b;Lcom/transsion/transfer/androidasync/http/k;JJ)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface/range {p1 .. p6}, Lut/b;->a(Lcom/transsion/transfer/androidasync/http/k;JJ)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private D(Lut/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2, p4}, Lcom/transsion/transfer/androidasync/future/w;->G(Ljava/lang/Exception;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2, p5}, Lcom/transsion/transfer/androidasync/future/w;->J(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    :goto_0
    if-nez p2, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    if-eqz p1, :cond_2

    .line 16
    .line 17
    invoke-interface {p1, p4, p3, p5}, Lst/g;->c(Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_2
    return-void
.end method

.method private synthetic E(Lut/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->A(Lut/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic F(Lut/b;Lcom/transsion/transfer/androidasync/future/w;Lwt/a;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;)V
    .locals 6

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v3, p5

    .line 8
    move-object v4, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->A(Lut/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-direct {p0, p1, p5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->B(Lut/b;Lcom/transsion/transfer/androidasync/http/k;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p3, p5}, Lwt/a;->a(Lcom/transsion/transfer/androidasync/p;)Lcom/transsion/transfer/androidasync/future/f;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    new-instance p4, Lcom/transsion/transfer/androidasync/http/b;

    .line 21
    .line 22
    invoke-direct {p4, p0, p1, p2, p5}, Lcom/transsion/transfer/androidasync/http/b;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lut/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p3, p4}, Lcom/transsion/transfer/androidasync/future/f;->f(Lcom/transsion/transfer/androidasync/future/g;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p3}, Lcom/transsion/transfer/androidasync/future/w;->setParent(Lcom/transsion/transfer/androidasync/future/a;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private static synthetic G(Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;Lcom/transsion/transfer/androidasync/http/j;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;)V
    .locals 1

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0, p3}, Lcom/transsion/transfer/androidasync/future/w;->G(Ljava/lang/Exception;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    invoke-interface {p1, p3, p0}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/b0;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void

    .line 16
    :cond_1
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/http/j;->h()Lcom/transsion/transfer/androidasync/http/Headers;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-static {p2, p4}, Lcom/transsion/transfer/androidasync/http/f0;->H(Lcom/transsion/transfer/androidasync/http/Headers;Lcom/transsion/transfer/androidasync/http/k;)Lcom/transsion/transfer/androidasync/http/b0;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-nez p2, :cond_2

    .line 25
    .line 26
    new-instance p3, Lcom/transsion/transfer/androidasync/http/WebSocketHandshakeException;

    .line 27
    .line 28
    const-string v0, "Unable to complete websocket handshake"

    .line 29
    .line 30
    invoke-direct {p3, v0}, Lcom/transsion/transfer/androidasync/http/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p4}, Lcom/transsion/transfer/androidasync/p;->close()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p3}, Lcom/transsion/transfer/androidasync/future/w;->G(Ljava/lang/Exception;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-nez p0, :cond_3

    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    invoke-virtual {p0, p2}, Lcom/transsion/transfer/androidasync/future/w;->J(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_3

    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    if-eqz p1, :cond_4

    .line 51
    .line 52
    invoke-interface {p1, p3, p2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/b0;)V

    .line 53
    .line 54
    .line 55
    :cond_4
    return-void
.end method

.method private H(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/l;Lcom/transsion/transfer/androidasync/http/j;Lut/a;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;->g:Lcom/transsion/transfer/androidasync/future/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/future/a;->cancel()Z

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    const-string v0, "Connection error"

    .line 9
    .line 10
    invoke-virtual {p4, v0, p2}, Lcom/transsion/transfer/androidasync/http/j;->s(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/transsion/transfer/androidasync/future/w;->G(Ljava/lang/Exception;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "Connection successful"

    .line 19
    .line 20
    invoke-virtual {p4, v0}, Lcom/transsion/transfer/androidasync/http/j;->r(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p3}, Lcom/transsion/transfer/androidasync/future/w;->J(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    :goto_0
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-interface {p5, p2, p3}, Lut/a;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    if-eqz p3, :cond_2

    .line 34
    .line 35
    new-instance p1, Lst/d$a;

    .line 36
    .line 37
    invoke-direct {p1}, Lst/d$a;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, p1}, Lcom/transsion/transfer/androidasync/q;->F(Lst/d;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3}, Lcom/transsion/transfer/androidasync/http/l;->close()V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method

.method private static I(Lcom/transsion/transfer/androidasync/http/j;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/j;->h:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/j;->p()Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    const/4 v1, 0x0

    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/net/Proxy;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 45
    .line 46
    if-eq v1, v2, :cond_2

    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    instance-of v1, v1, Ljava/net/InetSocketAddress;

    .line 54
    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-virtual {p0, v1, v0}, Lcom/transsion/transfer/androidasync/http/j;->d(Ljava/lang/String;I)V

    .line 73
    .line 74
    .line 75
    :catch_0
    return-void
.end method

.method public static synthetic a(Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;Lcom/transsion/transfer/androidasync/http/j;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->G(Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;Lcom/transsion/transfer/androidasync/http/j;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lut/b;Lcom/transsion/transfer/androidasync/future/w;Lwt/a;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->F(Lut/b;Lcom/transsion/transfer/androidasync/future/w;Lwt/a;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lut/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->E(Lut/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic d(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->r(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic e(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->s(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic f(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;Lcom/transsion/transfer/androidasync/http/g$g;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->u(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;Lcom/transsion/transfer/androidasync/http/g$g;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic g(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lut/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->A(Lut/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic h(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lut/b;Lcom/transsion/transfer/androidasync/http/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->B(Lut/b;Lcom/transsion/transfer/androidasync/http/k;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic i(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lut/b;Lcom/transsion/transfer/androidasync/http/k;JJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->C(Lut/b;Lcom/transsion/transfer/androidasync/http/k;JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic j(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lut/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->D(Lut/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic k(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/l;Lcom/transsion/transfer/androidasync/http/j;Lut/a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->H(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/l;Lcom/transsion/transfer/androidasync/http/j;Lut/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic l(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/http/j;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->o(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/http/j;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic m(Lcom/transsion/transfer/androidasync/http/j;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->y(Lcom/transsion/transfer/androidasync/http/j;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method static bridge synthetic n(Lcom/transsion/transfer/androidasync/http/j;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->I(Lcom/transsion/transfer/androidasync/http/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static o(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/http/j;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/j;->h()Lcom/transsion/transfer/androidasync/http/Headers;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p2}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/j;->h()Lcom/transsion/transfer/androidasync/http/Headers;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, p2, p0}, Lcom/transsion/transfer/androidasync/http/Headers;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private r(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->e:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->t()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->s(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->e:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 14
    .line 15
    new-instance v7, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$1;

    .line 16
    .line 17
    move-object v1, v7

    .line 18
    move-object v2, p0

    .line 19
    move-object v3, p1

    .line 20
    move v4, p2

    .line 21
    move-object v5, p3

    .line 22
    move-object v6, p4

    .line 23
    invoke-direct/range {v1 .. v6}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$1;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v7}, Lcom/transsion/transfer/androidasync/AsyncServer;->D(Ljava/lang/Runnable;)Lcom/transsion/transfer/androidasync/future/a;

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method private s(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;)V
    .locals 12

    .line 1
    move-object v7, p0

    .line 2
    move-object v8, p1

    .line 3
    move-object v9, p3

    .line 4
    const/16 v0, 0xf

    .line 5
    .line 6
    move v6, p2

    .line 7
    if-le v6, v0, :cond_0

    .line 8
    .line 9
    new-instance v2, Lcom/transsion/transfer/androidasync/http/RedirectLimitExceededException;

    .line 10
    .line 11
    const-string v0, "too many redirects"

    .line 12
    .line 13
    invoke-direct {v2, v0}, Lcom/transsion/transfer/androidasync/http/RedirectLimitExceededException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    move-object v0, p0

    .line 18
    move-object v1, p3

    .line 19
    move-object v4, p1

    .line 20
    move-object/from16 v5, p4

    .line 21
    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->H(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/l;Lcom/transsion/transfer/androidasync/http/j;Lut/a;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/j;->p()Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    new-instance v10, Lcom/transsion/transfer/androidasync/http/g$g;

    .line 30
    .line 31
    invoke-direct {v10}, Lcom/transsion/transfer/androidasync/http/g$g;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    iput-wide v0, v8, Lcom/transsion/transfer/androidasync/http/j;->l:J

    .line 39
    .line 40
    iput-object v8, v10, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    .line 41
    .line 42
    const-string v0, "Executing request."

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/http/j;->r(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v7, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->a:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/transsion/transfer/androidasync/http/g;

    .line 64
    .line 65
    invoke-interface {v1, v10}, Lcom/transsion/transfer/androidasync/http/g;->a(Lcom/transsion/transfer/androidasync/http/g$e;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/j;->o()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-lez v0, :cond_2

    .line 74
    .line 75
    new-instance v11, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$2;

    .line 76
    .line 77
    move-object v0, v11

    .line 78
    move-object v1, p0

    .line 79
    move-object v2, v10

    .line 80
    move-object v3, p3

    .line 81
    move-object v4, p1

    .line 82
    move-object/from16 v5, p4

    .line 83
    .line 84
    invoke-direct/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$2;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/g$g;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lcom/transsion/transfer/androidasync/http/j;Lut/a;)V

    .line 85
    .line 86
    .line 87
    iput-object v11, v9, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;->h:Ljava/lang/Runnable;

    .line 88
    .line 89
    iget-object v0, v7, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->e:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->y(Lcom/transsion/transfer/androidasync/http/j;)J

    .line 92
    .line 93
    .line 94
    move-result-wide v1

    .line 95
    invoke-virtual {v0, v11, v1, v2}, Lcom/transsion/transfer/androidasync/AsyncServer;->E(Ljava/lang/Runnable;J)Lcom/transsion/transfer/androidasync/future/a;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iput-object v0, v9, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;->g:Lcom/transsion/transfer/androidasync/future/a;

    .line 100
    .line 101
    :cond_2
    new-instance v11, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$a;

    .line 102
    .line 103
    move-object v0, v11

    .line 104
    move-object v1, p0

    .line 105
    move-object v2, p1

    .line 106
    move-object v3, p3

    .line 107
    move-object/from16 v4, p4

    .line 108
    .line 109
    move-object v5, v10

    .line 110
    move v6, p2

    .line 111
    invoke-direct/range {v0 .. v6}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$a;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;Lcom/transsion/transfer/androidasync/http/g$g;I)V

    .line 112
    .line 113
    .line 114
    iput-object v11, v10, Lcom/transsion/transfer/androidasync/http/g$a;->c:Lst/b;

    .line 115
    .line 116
    invoke-static {p1}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->I(Lcom/transsion/transfer/androidasync/http/j;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/j;->e()Ltt/a;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    if-eqz v0, :cond_3

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/j;->h()Lcom/transsion/transfer/androidasync/http/Headers;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const-string v1, "Content-Type"

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    if-nez v0, :cond_3

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/j;->h()Lcom/transsion/transfer/androidasync/http/Headers;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/j;->e()Ltt/a;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-interface {v2}, Ltt/a;->l()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/androidasync/http/Headers;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    .line 150
    .line 151
    .line 152
    :cond_3
    iget-object v0, v7, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->a:Ljava/util/List;

    .line 153
    .line 154
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_5

    .line 163
    .line 164
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    check-cast v1, Lcom/transsion/transfer/androidasync/http/g;

    .line 169
    .line 170
    invoke-interface {v1, v10}, Lcom/transsion/transfer/androidasync/http/g;->e(Lcom/transsion/transfer/androidasync/http/g$a;)Lcom/transsion/transfer/androidasync/future/a;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    if-eqz v1, :cond_4

    .line 175
    .line 176
    iput-object v1, v10, Lcom/transsion/transfer/androidasync/http/g$a;->d:Lcom/transsion/transfer/androidasync/future/a;

    .line 177
    .line 178
    invoke-virtual {p3, v1}, Lcom/transsion/transfer/androidasync/future/w;->setParent(Lcom/transsion/transfer/androidasync/future/a;)Z

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 183
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v1, "invalid uri="

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/j;->p()Landroid/net/Uri;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v1, " middlewares="

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget-object v1, v7, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->a:Ljava/util/List;

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    const/4 v3, 0x0

    .line 219
    move-object v0, p0

    .line 220
    move-object v1, p3

    .line 221
    move-object v4, p1

    .line 222
    move-object/from16 v5, p4

    .line 223
    .line 224
    invoke-direct/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->H(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/l;Lcom/transsion/transfer/androidasync/http/j;Lut/a;)V

    .line 225
    .line 226
    .line 227
    return-void
.end method

.method private u(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;Lcom/transsion/transfer/androidasync/http/g$g;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;

    .line 2
    .line 3
    move-object v0, v8

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p1

    .line 8
    move-object v5, p4

    .line 9
    move-object v6, p5

    .line 10
    move v7, p2

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lcom/transsion/transfer/androidasync/http/j;Lut/a;Lcom/transsion/transfer/androidasync/http/g$g;I)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$c;

    .line 15
    .line 16
    invoke-direct {p1, p0, v8}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$c;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/l;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p5, Lcom/transsion/transfer/androidasync/http/g$c;->h:Lst/a;

    .line 20
    .line 21
    new-instance p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$d;

    .line 22
    .line 23
    invoke-direct {p1, p0, v8}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$d;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/l;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p5, Lcom/transsion/transfer/androidasync/http/g$c;->i:Lst/a;

    .line 27
    .line 28
    iput-object v8, p5, Lcom/transsion/transfer/androidasync/http/g$c;->g:Lcom/transsion/transfer/androidasync/http/g$i;

    .line 29
    .line 30
    iget-object p1, p5, Lcom/transsion/transfer/androidasync/http/g$c;->f:Lcom/transsion/transfer/androidasync/j;

    .line 31
    .line 32
    invoke-virtual {v8, p1}, Lcom/transsion/transfer/androidasync/http/l;->S(Lcom/transsion/transfer/androidasync/j;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->a:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    check-cast p2, Lcom/transsion/transfer/androidasync/http/g;

    .line 52
    .line 53
    invoke-interface {p2, p5}, Lcom/transsion/transfer/androidasync/http/g;->f(Lcom/transsion/transfer/androidasync/http/g$c;)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_0

    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public static w()Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->f:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 6
    .line 7
    invoke-static {}, Lcom/transsion/transfer/androidasync/AsyncServer;->r()Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;-><init>(Lcom/transsion/transfer/androidasync/AsyncServer;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->f:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 15
    .line 16
    :cond_0
    sget-object v0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->f:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 17
    .line 18
    return-object v0
.end method

.method private static y(Lcom/transsion/transfer/androidasync/http/j;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/j;->o()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    int-to-long v0, p0

    .line 6
    return-wide v0
.end method


# virtual methods
.method public J(Lcom/transsion/transfer/androidasync/http/j;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v0, v0, [Ljava/lang/String;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aput-object p2, v0, v1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->K(Lcom/transsion/transfer/androidasync/http/j;[Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;)Lcom/transsion/transfer/androidasync/future/f;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public K(Lcom/transsion/transfer/androidasync/http/j;[Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lcom/transsion/transfer/androidasync/http/f0;->E(Lcom/transsion/transfer/androidasync/http/j;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/transsion/transfer/androidasync/future/w;

    .line 5
    .line 6
    invoke-direct {p2}, Lcom/transsion/transfer/androidasync/future/w;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/transsion/transfer/androidasync/http/c;

    .line 10
    .line 11
    invoke-direct {v0, p2, p3, p1}, Lcom/transsion/transfer/androidasync/http/c;-><init>(Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;Lcom/transsion/transfer/androidasync/http/j;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->p(Lcom/transsion/transfer/androidasync/http/j;Lut/a;)Lcom/transsion/transfer/androidasync/future/f;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/future/w;->setParent(Lcom/transsion/transfer/androidasync/future/a;)Z

    .line 19
    .line 20
    .line 21
    return-object p2
.end method

.method public L(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/transfer/androidasync/http/h;

    .line 2
    .line 3
    const-string v1, "ws://"

    .line 4
    .line 5
    const-string v2, "http://"

    .line 6
    .line 7
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v1, "wss://"

    .line 12
    .line 13
    const-string v2, "https://"

    .line 14
    .line 15
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {v0, p1}, Lcom/transsion/transfer/androidasync/http/h;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0, p2, p3}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->J(Lcom/transsion/transfer/androidasync/http/j;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;)Lcom/transsion/transfer/androidasync/future/f;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public p(Lcom/transsion/transfer/androidasync/http/j;Lut/a;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/f;)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->r(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public q(Lcom/transsion/transfer/androidasync/http/j;Lwt/a;Lut/b;)Lcom/transsion/transfer/androidasync/future/w;
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/f;)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/transsion/transfer/androidasync/future/w;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/transsion/transfer/androidasync/future/w;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lcom/transsion/transfer/androidasync/http/a;

    .line 13
    .line 14
    invoke-direct {v2, p0, p3, v1, p2}, Lcom/transsion/transfer/androidasync/http/a;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lut/b;Lcom/transsion/transfer/androidasync/future/w;Lwt/a;)V

    .line 15
    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->r(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/transsion/transfer/androidasync/future/w;->setParent(Lcom/transsion/transfer/androidasync/future/a;)Z

    .line 22
    .line 23
    .line 24
    return-object v1
.end method

.method public t(Lcom/transsion/transfer/androidasync/http/j;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$g;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 8

    .line 1
    new-instance v3, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 11
    .line 12
    .line 13
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    .line 14
    .line 15
    new-instance p2, Ljava/io/FileOutputStream;

    .line 16
    .line 17
    invoke-direct {p2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 18
    .line 19
    .line 20
    const/16 v0, 0x2000

    .line 21
    .line 22
    invoke-direct {v2, p2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    new-instance p2, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {p2, p0, v0}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/f;)V

    .line 29
    .line 30
    .line 31
    new-instance v6, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$e;

    .line 32
    .line 33
    invoke-direct {v6, p0, p2, v2, v3}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$e;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ljava/io/OutputStream;Ljava/io/File;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6, p2}, Lcom/transsion/transfer/androidasync/future/w;->setParent(Lcom/transsion/transfer/androidasync/future/a;)Z

    .line 37
    .line 38
    .line 39
    new-instance v7, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;

    .line 40
    .line 41
    move-object v0, v7

    .line 42
    move-object v1, p0

    .line 43
    move-object v4, p3

    .line 44
    move-object v5, v6

    .line 45
    invoke-direct/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$f;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ljava/io/OutputStream;Ljava/io/File;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$g;Lcom/transsion/transfer/androidasync/future/w;)V

    .line 46
    .line 47
    .line 48
    const/4 p3, 0x0

    .line 49
    invoke-direct {p0, p1, p3, p2, v7}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->r(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;)V

    .line 50
    .line 51
    .line 52
    return-object v6

    .line 53
    :catch_0
    move-exception p1

    .line 54
    new-instance p2, Lcom/transsion/transfer/androidasync/future/w;

    .line 55
    .line 56
    invoke-direct {p2}, Lcom/transsion/transfer/androidasync/future/w;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/future/w;->G(Ljava/lang/Exception;)Z

    .line 60
    .line 61
    .line 62
    return-object p2
.end method

.method public v(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$j;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 1

    .line 1
    new-instance v0, Lwt/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lwt/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->q(Lcom/transsion/transfer/androidasync/http/j;Lwt/a;Lut/b;)Lcom/transsion/transfer/androidasync/future/w;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public x()Lcom/transsion/transfer/androidasync/AsyncServer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->e:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 2
    .line 3
    return-object v0
.end method

.method public z(Lcom/transsion/transfer/androidasync/http/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->a:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
