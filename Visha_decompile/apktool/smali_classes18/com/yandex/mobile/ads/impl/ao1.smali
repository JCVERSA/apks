.class public final Lcom/yandex/mobile/ads/impl/ao1;
.super Lcom/yandex/mobile/ads/impl/hh0$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/ao1$a;
    }
.end annotation


# instance fields
.field private final b:Lcom/yandex/mobile/ads/impl/vs1;

.field private c:Ljava/net/Socket;

.field private d:Ljava/net/Socket;

.field private e:Lcom/yandex/mobile/ads/impl/if0;

.field private f:Lcom/yandex/mobile/ads/impl/mm1;

.field private g:Lcom/yandex/mobile/ads/impl/hh0;

.field private h:Lokio/BufferedSource;

.field private i:Lokio/BufferedSink;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private final p:Ljava/util/ArrayList;

.field private q:J


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/co1;Lcom/yandex/mobile/ads/impl/vs1;)V
    .locals 1

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "route"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/hh0$b;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    const/4 p1, 0x1

    iput p1, p0, Lcom/yandex/mobile/ads/impl/ao1;->o:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ao1;->p:Ljava/util/ArrayList;

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/ao1;->q:J

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/ao1;)Lcom/yandex/mobile/ads/impl/if0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ao1;->e:Lcom/yandex/mobile/ads/impl/if0;

    return-object p0
.end method

.method private final a(IILcom/yandex/mobile/ads/impl/vp1;Lcom/yandex/mobile/ads/impl/gi0;)Lcom/yandex/mobile/ads/impl/vp1;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 126
    invoke-static {p4, v0}, Lcom/yandex/mobile/ads/impl/g92;->a(Lcom/yandex/mobile/ads/impl/gi0;Z)Ljava/lang/String;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 127
    :goto_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ao1;->h:Lokio/BufferedSource;

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    .line 128
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ao1;->i:Lokio/BufferedSink;

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    .line 129
    new-instance v3, Lcom/yandex/mobile/ads/impl/fh0;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0, v1, v2}, Lcom/yandex/mobile/ads/impl/fh0;-><init>(Lcom/yandex/mobile/ads/impl/fe1;Lcom/yandex/mobile/ads/impl/ao1;Lokio/BufferedSource;Lokio/BufferedSink;)V

    .line 130
    invoke-interface {v1}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v5

    int-to-long v6, p1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 131
    invoke-interface {v2}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v5

    int-to-long v6, p2

    invoke-virtual {v5, v6, v7, v8}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 132
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/vp1;->d()Lcom/yandex/mobile/ads/impl/qf0;

    move-result-object v5

    invoke-virtual {v3, v5, p4}, Lcom/yandex/mobile/ads/impl/fh0;->a(Lcom/yandex/mobile/ads/impl/qf0;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/fh0;->a()V

    const/4 v5, 0x0

    .line 134
    invoke-virtual {v3, v5}, Lcom/yandex/mobile/ads/impl/fh0;->a(Z)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object v5

    invoke-static {v5}, Ly45;->g(Ljava/lang/Object;)V

    .line 135
    invoke-virtual {v5, p3}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(Lcom/yandex/mobile/ads/impl/vp1;)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object p3

    .line 136
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/vq1$a;->a()Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object p3

    .line 137
    invoke-virtual {v3, p3}, Lcom/yandex/mobile/ads/impl/fh0;->c(Lcom/yandex/mobile/ads/impl/vq1;)V

    .line 138
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/vq1;->d()I

    move-result v3

    const/16 v5, 0xc8

    if-eq v3, v5, :cond_3

    const/16 v1, 0x197

    if-ne v3, v1, :cond_2

    .line 139
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vs1;->a()Lcom/yandex/mobile/ads/impl/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ab;->g()Lcom/yandex/mobile/ads/impl/ci;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-interface {v1, v2, p3}, Lcom/yandex/mobile/ads/impl/ci;->a(Lcom/yandex/mobile/ads/impl/vs1;Lcom/yandex/mobile/ads/impl/vq1;)Lcom/yandex/mobile/ads/impl/vp1;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 140
    const-string v2, "Connection"

    invoke-static {p3, v2}, Lcom/yandex/mobile/ads/impl/vq1;->a(Lcom/yandex/mobile/ads/impl/vq1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "close"

    invoke-static {v2, p3, v0}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    return-object v1

    :cond_0
    move-object p3, v1

    goto :goto_0

    .line 141
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to authenticate with proxy"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 142
    :cond_2
    new-instance p0, Ljava/io/IOException;

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/vq1;->d()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected response code for CONNECT: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 143
    :cond_3
    invoke-interface {v1}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object p0

    invoke-virtual {p0}, Lokio/Buffer;->exhausted()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-interface {v2}, Lokio/BufferedSink;->getBuffer()Lokio/Buffer;

    move-result-object p0

    invoke-virtual {p0}, Lokio/Buffer;->exhausted()Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v4

    .line 144
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "TLS tunnel buffered too many bytes!"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final a(IIILcom/yandex/mobile/ads/impl/zn1;Lcom/yandex/mobile/ads/impl/w50;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/yandex/mobile/ads/impl/vp1$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/vp1$a;-><init>()V

    .line 99
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vs1;->a()Lcom/yandex/mobile/ads/impl/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/vp1$a;->a(Lcom/yandex/mobile/ads/impl/gi0;)Lcom/yandex/mobile/ads/impl/vp1$a;

    move-result-object v0

    .line 100
    const-string v1, "CONNECT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/vp1$a;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/yp1;)Lcom/yandex/mobile/ads/impl/vp1$a;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vs1;->a()Lcom/yandex/mobile/ads/impl/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/yandex/mobile/ads/impl/g92;->a(Lcom/yandex/mobile/ads/impl/gi0;Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Host"

    invoke-virtual {v0, v3, v1}, Lcom/yandex/mobile/ads/impl/vp1$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/vp1$a;

    move-result-object v0

    .line 102
    const-string v1, "Proxy-Connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v0, v1, v3}, Lcom/yandex/mobile/ads/impl/vp1$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/vp1$a;

    move-result-object v0

    .line 103
    const-string v1, "User-Agent"

    const-string v3, "okhttp/4.9.3"

    invoke-virtual {v0, v1, v3}, Lcom/yandex/mobile/ads/impl/vp1$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/vp1$a;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vp1$a;->a()Lcom/yandex/mobile/ads/impl/vp1;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/yandex/mobile/ads/impl/vq1$a;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/vq1$a;-><init>()V

    .line 106
    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(Lcom/yandex/mobile/ads/impl/vp1;)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object v1

    .line 107
    sget-object v3, Lcom/yandex/mobile/ads/impl/mm1;->e:Lcom/yandex/mobile/ads/impl/mm1;

    invoke-virtual {v1, v3}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(Lcom/yandex/mobile/ads/impl/mm1;)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object v1

    const/16 v3, 0x197

    .line 108
    invoke-virtual {v1, v3}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(I)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object v1

    .line 109
    const-string v3, "Preemptive Authenticate"

    invoke-virtual {v1, v3}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object v1

    .line 110
    sget-object v3, Lcom/yandex/mobile/ads/impl/g92;->c:Lcom/yandex/mobile/ads/impl/yq1;

    invoke-virtual {v1, v3}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(Lcom/yandex/mobile/ads/impl/zq1;)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object v1

    const-wide/16 v3, -0x1

    .line 111
    invoke-virtual {v1, v3, v4}, Lcom/yandex/mobile/ads/impl/vq1$a;->b(J)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object v1

    .line 112
    invoke-virtual {v1, v3, v4}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(J)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vq1$a;->c()Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vq1$a;->a()Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object v1

    .line 115
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/vs1;->a()Lcom/yandex/mobile/ads/impl/ab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ab;->g()Lcom/yandex/mobile/ads/impl/ci;

    move-result-object v3

    .line 116
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-interface {v3, v4, v1}, Lcom/yandex/mobile/ads/impl/ci;->a(Lcom/yandex/mobile/ads/impl/vs1;Lcom/yandex/mobile/ads/impl/vq1;)Lcom/yandex/mobile/ads/impl/vp1;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 117
    :goto_0
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vp1;->g()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v1

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x15

    if-ge v3, v4, :cond_3

    .line 118
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/yandex/mobile/ads/impl/ao1;->a(IILcom/yandex/mobile/ads/impl/zn1;Lcom/yandex/mobile/ads/impl/w50;)V

    .line 119
    invoke-direct {p0, p2, p3, v0, v1}, Lcom/yandex/mobile/ads/impl/ao1;->a(IILcom/yandex/mobile/ads/impl/vp1;Lcom/yandex/mobile/ads/impl/gi0;)Lcom/yandex/mobile/ads/impl/vp1;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 120
    :cond_1
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/ao1;->c:Ljava/net/Socket;

    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/net/Socket;)V

    .line 121
    :cond_2
    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/ao1;->c:Ljava/net/Socket;

    .line 122
    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/ao1;->i:Lokio/BufferedSink;

    .line 123
    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/ao1;->h:Lokio/BufferedSource;

    .line 124
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/vs1;->d()Ljava/net/InetSocketAddress;

    move-result-object v4

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/vs1;->b()Ljava/net/Proxy;

    move-result-object v5

    .line 125
    const-string v6, "call"

    invoke-static {p4, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "inetSocketAddress"

    invoke-static {v4, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "proxy"

    invoke-static {v5, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private final a(IILcom/yandex/mobile/ads/impl/zn1;Lcom/yandex/mobile/ads/impl/w50;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vs1;->b()Ljava/net/Proxy;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vs1;->a()Lcom/yandex/mobile/ads/impl/ab;

    move-result-object v1

    .line 44
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/yandex/mobile/ads/impl/ao1$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 45
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ab;->i()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    .line 47
    :goto_1
    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/ao1;->c:Ljava/net/Socket;

    .line 48
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/vs1;->d()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3, v2, v0}, Lcom/yandex/mobile/ads/impl/w50;->b(Lcom/yandex/mobile/ads/impl/zn1;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    .line 49
    invoke-virtual {v1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 50
    :try_start_0
    sget p2, Lcom/yandex/mobile/ads/impl/rh1;->c:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/rh1$a;->a()Lcom/yandex/mobile/ads/impl/rh1;

    move-result-object p2

    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/vs1;->d()Ljava/net/InetSocketAddress;

    move-result-object p3

    invoke-virtual {p2, v1, p3, p1}, Lcom/yandex/mobile/ads/impl/rh1;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    :try_start_1
    invoke-static {v1}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ao1;->h:Lokio/BufferedSource;

    .line 52
    invoke-static {v1}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ao1;->i:Lokio/BufferedSink;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "throw with null exception"

    invoke-static {p1, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_2
    return-void

    .line 54
    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p1

    .line 55
    new-instance p2, Ljava/net/ConnectException;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vs1;->d()Ljava/net/InetSocketAddress;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to connect to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 57
    throw p2
.end method

.method private final a(Lcom/yandex/mobile/ads/impl/sr;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vs1;->a()Lcom/yandex/mobile/ads/impl/ab;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ab;->j()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    const/4 v2, 0x0

    .line 60
    :try_start_0
    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    .line 61
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ao1;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/gi0;->i()I

    move-result v5

    const/4 v6, 0x1

    .line 62
    invoke-virtual {v1, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    invoke-static {v1, v3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    :try_start_1
    invoke-virtual {p1, v1}, Lcom/yandex/mobile/ads/impl/sr;->a(Ljavax/net/ssl/SSLSocket;)Lcom/yandex/mobile/ads/impl/rr;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/rr;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    sget v3, Lcom/yandex/mobile/ads/impl/rh1;->c:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/rh1$a;->a()Lcom/yandex/mobile/ads/impl/rh1;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ab;->e()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Lcom/yandex/mobile/ads/impl/rh1;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v1

    goto/16 :goto_2

    .line 66
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 67
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    .line 68
    invoke-static {v3}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/if0$a;->a(Ljavax/net/ssl/SSLSession;)Lcom/yandex/mobile/ads/impl/if0;

    move-result-object v4

    .line 69
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ab;->d()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    invoke-static {v5}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 70
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/if0;->c()Ljava/util/List;

    move-result-object p0

    .line 71
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 72
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 73
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 74
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object v0

    .line 75
    sget-object v3, Lcom/yandex/mobile/ads/impl/fo;->c:Lcom/yandex/mobile/ads/impl/fo;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/fo$b;->a(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/ee1;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n              |Hostname "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified:\n              |    certificate: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n              |    DN: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n              |    subjectAltNames: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n              "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 78
    invoke-static {p0, v2, v6, v2}, Lz0a;->l(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 79
    invoke-direct {p1, p0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_1
    new-instance p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 81
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hostname "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not verified (no certificates)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 83
    :cond_2
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ab;->a()Lcom/yandex/mobile/ads/impl/fo;

    move-result-object v3

    invoke-static {v3}, Ly45;->g(Ljava/lang/Object;)V

    .line 84
    new-instance v5, Lcom/yandex/mobile/ads/impl/if0;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/if0;->d()Lcom/yandex/mobile/ads/impl/q52;

    move-result-object v6

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/if0;->a()Lcom/yandex/mobile/ads/impl/po;

    move-result-object v7

    .line 85
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/if0;->b()Ljava/util/List;

    move-result-object v8

    .line 86
    new-instance v9, Lcom/yandex/mobile/ads/impl/ao1$b;

    invoke-direct {v9, v3, v4, v0}, Lcom/yandex/mobile/ads/impl/ao1$b;-><init>(Lcom/yandex/mobile/ads/impl/fo;Lcom/yandex/mobile/ads/impl/if0;Lcom/yandex/mobile/ads/impl/ab;)V

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/yandex/mobile/ads/impl/if0;-><init>(Lcom/yandex/mobile/ads/impl/q52;Lcom/yandex/mobile/ads/impl/po;Ljava/util/List;Lc74;)V

    iput-object v5, p0, Lcom/yandex/mobile/ads/impl/ao1;->e:Lcom/yandex/mobile/ads/impl/if0;

    .line 87
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/yandex/mobile/ads/impl/ao1$c;

    invoke-direct {v4, p0}, Lcom/yandex/mobile/ads/impl/ao1$c;-><init>(Lcom/yandex/mobile/ads/impl/ao1;)V

    invoke-virtual {v3, v0, v4}, Lcom/yandex/mobile/ads/impl/fo;->a(Ljava/lang/String;Lc74;)V

    .line 88
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/rr;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 89
    sget p1, Lcom/yandex/mobile/ads/impl/rh1;->c:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/rh1$a;->a()Lcom/yandex/mobile/ads/impl/rh1;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/yandex/mobile/ads/impl/rh1;->b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    .line 90
    :cond_3
    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/ao1;->d:Ljava/net/Socket;

    .line 91
    invoke-static {v1}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ao1;->h:Lokio/BufferedSource;

    .line 92
    invoke-static {v1}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ao1;->i:Lokio/BufferedSink;

    if-eqz v2, :cond_4

    .line 93
    sget-object p1, Lcom/yandex/mobile/ads/impl/mm1;->c:Lcom/yandex/mobile/ads/impl/mm1$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/mm1$a;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/mm1;

    move-result-object p1

    goto :goto_1

    .line 94
    :cond_4
    sget-object p1, Lcom/yandex/mobile/ads/impl/mm1;->e:Lcom/yandex/mobile/ads/impl/mm1;

    :goto_1
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ao1;->f:Lcom/yandex/mobile/ads/impl/mm1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    sget p0, Lcom/yandex/mobile/ads/impl/rh1;->c:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/rh1$a;->a()Lcom/yandex/mobile/ads/impl/rh1;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/rh1;->a(Ljavax/net/ssl/SSLSocket;)V

    return-void

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz v2, :cond_5

    .line 96
    sget p1, Lcom/yandex/mobile/ads/impl/rh1;->c:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/rh1$a;->a()Lcom/yandex/mobile/ads/impl/rh1;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/yandex/mobile/ads/impl/rh1;->a(Ljavax/net/ssl/SSLSocket;)V

    :cond_5
    if-eqz v2, :cond_6

    .line 97
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/net/Socket;)V

    :cond_6
    throw p0
.end method

.method private final a(Lcom/yandex/mobile/ads/impl/sr;Lcom/yandex/mobile/ads/impl/zn1;Lcom/yandex/mobile/ads/impl/w50;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vs1;->a()Lcom/yandex/mobile/ads/impl/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ab;->j()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_1

    .line 146
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vs1;->a()Lcom/yandex/mobile/ads/impl/ab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ab;->e()Ljava/util/List;

    move-result-object p1

    sget-object p2, Lcom/yandex/mobile/ads/impl/mm1;->h:Lcom/yandex/mobile/ads/impl/mm1;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ao1;->c:Ljava/net/Socket;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ao1;->d:Ljava/net/Socket;

    .line 148
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ao1;->f:Lcom/yandex/mobile/ads/impl/mm1;

    .line 149
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/ao1;->n()V

    return-void

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ao1;->c:Ljava/net/Socket;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ao1;->d:Ljava/net/Socket;

    .line 151
    sget-object p1, Lcom/yandex/mobile/ads/impl/mm1;->e:Lcom/yandex/mobile/ads/impl/mm1;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ao1;->f:Lcom/yandex/mobile/ads/impl/mm1;

    return-void

    .line 152
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    const-string p3, "call"

    invoke-static {p2, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/ao1;->a(Lcom/yandex/mobile/ads/impl/sr;)V

    .line 155
    invoke-static {p2, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ao1;->f:Lcom/yandex/mobile/ads/impl/mm1;

    sget-object p2, Lcom/yandex/mobile/ads/impl/mm1;->g:Lcom/yandex/mobile/ads/impl/mm1;

    if-ne p1, p2, :cond_2

    .line 157
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/ao1;->n()V

    :cond_2
    return-void
.end method

.method private final a(Lcom/yandex/mobile/ads/impl/gi0;)Z
    .locals 4

    .line 213
    sget-boolean v0, Lcom/yandex/mobile/ads/impl/g92;->f:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MUST hold lock on "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 215
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vs1;->a()Lcom/yandex/mobile/ads/impl/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v0

    .line 216
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gi0;->i()I

    move-result v1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gi0;->i()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 217
    :cond_2
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    return v1

    .line 218
    :cond_3
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->k:Z

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ao1;->e:Lcom/yandex/mobile/ads/impl/if0;

    if-eqz p0, :cond_4

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    .line 219
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/if0;->c()Ljava/util/List;

    move-result-object p0

    .line 220
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {p0, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 222
    invoke-static {p1, p0}, Lcom/yandex/mobile/ads/impl/ee1;->a(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v3, v1

    :cond_4
    return v3
.end method

.method private final n()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->d:Ljava/net/Socket;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ao1;->h:Lokio/BufferedSource;

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ao1;->i:Lokio/BufferedSink;

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v3, Lcom/yandex/mobile/ads/impl/hh0$a;

    sget-object v4, Lcom/yandex/mobile/ads/impl/l42;->h:Lcom/yandex/mobile/ads/impl/l42;

    invoke-direct {v3, v4}, Lcom/yandex/mobile/ads/impl/hh0$a;-><init>(Lcom/yandex/mobile/ads/impl/l42;)V

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/vs1;->a()Lcom/yandex/mobile/ads/impl/ab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v1, v2}, Lcom/yandex/mobile/ads/impl/hh0$a;->a(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lcom/yandex/mobile/ads/impl/hh0$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/hh0$a;->a(Lcom/yandex/mobile/ads/impl/hh0$b;)Lcom/yandex/mobile/ads/impl/hh0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/hh0$a;->j()Lcom/yandex/mobile/ads/impl/hh0$a;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/hh0;

    invoke-direct {v1, v0}, Lcom/yandex/mobile/ads/impl/hh0;-><init>(Lcom/yandex/mobile/ads/impl/hh0$a;)V

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/ao1;->g:Lcom/yandex/mobile/ads/impl/hh0;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/hh0;->a()Lcom/yandex/mobile/ads/impl/zx1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zx1;->c()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->o:I

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/hh0;->l(Lcom/yandex/mobile/ads/impl/hh0;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/fe1;Lcom/yandex/mobile/ads/impl/do1;)Lcom/yandex/mobile/ads/impl/c60;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 177
    const-string v0, "client"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->d:Ljava/net/Socket;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    .line 179
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ao1;->h:Lokio/BufferedSource;

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    .line 180
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ao1;->i:Lokio/BufferedSink;

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    .line 181
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ao1;->g:Lcom/yandex/mobile/ads/impl/hh0;

    if-eqz v3, :cond_0

    .line 182
    new-instance v0, Lcom/yandex/mobile/ads/impl/mh0;

    invoke-direct {v0, p1, p0, p2, v3}, Lcom/yandex/mobile/ads/impl/mh0;-><init>(Lcom/yandex/mobile/ads/impl/fe1;Lcom/yandex/mobile/ads/impl/ao1;Lcom/yandex/mobile/ads/impl/do1;Lcom/yandex/mobile/ads/impl/hh0;)V

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/do1;->h()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 184
    invoke-interface {v1}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/do1;->e()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 185
    invoke-interface {v2}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/do1;->g()I

    move-result p2

    int-to-long v3, p2

    invoke-virtual {v0, v3, v4, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 186
    new-instance v0, Lcom/yandex/mobile/ads/impl/fh0;

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/yandex/mobile/ads/impl/fh0;-><init>(Lcom/yandex/mobile/ads/impl/fe1;Lcom/yandex/mobile/ads/impl/ao1;Lokio/BufferedSource;Lokio/BufferedSink;)V

    :goto_0
    return-object v0
.end method

.method public final a()V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ao1;->c:Ljava/net/Socket;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/net/Socket;)V

    :cond_0
    return-void
.end method

.method public final a(IIIZLcom/yandex/mobile/ads/impl/zn1;Lcom/yandex/mobile/ads/impl/w50;)V
    .locals 9

    .line 3
    const-string v0, "call"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->f:Lcom/yandex/mobile/ads/impl/mm1;

    if-nez v0, :cond_c

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vs1;->a()Lcom/yandex/mobile/ads/impl/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ab;->b()Ljava/util/List;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/yandex/mobile/ads/impl/sr;

    invoke-direct {v1, v0}, Lcom/yandex/mobile/ads/impl/sr;-><init>(Ljava/util/List;)V

    .line 7
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/vs1;->a()Lcom/yandex/mobile/ads/impl/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ab;->j()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    if-nez v2, :cond_2

    .line 8
    sget-object v2, Lcom/yandex/mobile/ads/impl/rr;->f:Lcom/yandex/mobile/ads/impl/rr;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vs1;->a()Lcom/yandex/mobile/ads/impl/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object v0

    .line 10
    sget v2, Lcom/yandex/mobile/ads/impl/rh1;->c:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/rh1$a;->a()Lcom/yandex/mobile/ads/impl/rh1;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/yandex/mobile/ads/impl/rh1;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/xs1;

    new-instance p1, Ljava/net/UnknownServiceException;

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CLEARTEXT communication to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not permitted by network security policy"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-direct {p1, p2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/xs1;-><init>(Ljava/io/IOException;)V

    throw p0

    .line 14
    :cond_1
    new-instance p0, Lcom/yandex/mobile/ads/impl/xs1;

    new-instance p1, Ljava/net/UnknownServiceException;

    const-string p2, "CLEARTEXT communication not enabled for client"

    invoke-direct {p1, p2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/xs1;-><init>(Ljava/io/IOException;)V

    throw p0

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vs1;->a()Lcom/yandex/mobile/ads/impl/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ab;->e()Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/yandex/mobile/ads/impl/mm1;->h:Lcom/yandex/mobile/ads/impl/mm1;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_0
    const/4 v0, 0x0

    move-object v2, v0

    .line 16
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/vs1;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p5

    move-object v8, p6

    .line 17
    invoke-direct/range {v3 .. v8}, Lcom/yandex/mobile/ads/impl/ao1;->a(IIILcom/yandex/mobile/ads/impl/zn1;Lcom/yandex/mobile/ads/impl/w50;)V

    .line 18
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ao1;->c:Ljava/net/Socket;

    if-nez v3, :cond_4

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_4

    .line 19
    :cond_3
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/yandex/mobile/ads/impl/ao1;->a(IILcom/yandex/mobile/ads/impl/zn1;Lcom/yandex/mobile/ads/impl/w50;)V

    .line 20
    :cond_4
    invoke-direct {p0, v1, p5, p6}, Lcom/yandex/mobile/ads/impl/ao1;->a(Lcom/yandex/mobile/ads/impl/sr;Lcom/yandex/mobile/ads/impl/zn1;Lcom/yandex/mobile/ads/impl/w50;)V

    .line 21
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/vs1;->d()Ljava/net/InetSocketAddress;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/vs1;->b()Ljava/net/Proxy;

    move-result-object v4

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p5, v3, v4}, Lcom/yandex/mobile/ads/impl/w50;->a(Lcom/yandex/mobile/ads/impl/zn1;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :goto_2
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vs1;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ao1;->c:Ljava/net/Socket;

    if-eqz p1, :cond_5

    goto :goto_3

    .line 23
    :cond_5
    new-instance p0, Lcom/yandex/mobile/ads/impl/xs1;

    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Too many tunnel connections attempted: 21"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/xs1;-><init>(Ljava/io/IOException;)V

    throw p0

    .line 24
    :cond_6
    :goto_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/ao1;->q:J

    return-void

    .line 25
    :goto_4
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/ao1;->d:Ljava/net/Socket;

    if-eqz v4, :cond_7

    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/net/Socket;)V

    .line 26
    :cond_7
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/ao1;->c:Ljava/net/Socket;

    if-eqz v4, :cond_8

    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/net/Socket;)V

    .line 27
    :cond_8
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->d:Ljava/net/Socket;

    .line 28
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->c:Ljava/net/Socket;

    .line 29
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->h:Lokio/BufferedSource;

    .line 30
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->i:Lokio/BufferedSink;

    .line 31
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->e:Lcom/yandex/mobile/ads/impl/if0;

    .line 32
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->f:Lcom/yandex/mobile/ads/impl/mm1;

    .line 33
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->g:Lcom/yandex/mobile/ads/impl/hh0;

    const/4 v4, 0x1

    .line 34
    iput v4, p0, Lcom/yandex/mobile/ads/impl/ao1;->o:I

    .line 35
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/vs1;->d()Ljava/net/InetSocketAddress;

    move-result-object v4

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/vs1;->b()Ljava/net/Proxy;

    move-result-object v5

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p5, v4, v5, v3}, Lcom/yandex/mobile/ads/impl/w50;->a(Lcom/yandex/mobile/ads/impl/zn1;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Ljava/io/IOException;)V

    if-nez v2, :cond_9

    .line 36
    new-instance v2, Lcom/yandex/mobile/ads/impl/xs1;

    invoke-direct {v2, v3}, Lcom/yandex/mobile/ads/impl/xs1;-><init>(Ljava/io/IOException;)V

    goto :goto_5

    .line 37
    :cond_9
    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/xs1;->a(Ljava/io/IOException;)V

    :goto_5
    if-eqz p4, :cond_a

    .line 38
    invoke-virtual {v1, v3}, Lcom/yandex/mobile/ads/impl/sr;->a(Ljava/io/IOException;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto/16 :goto_1

    .line 39
    :cond_a
    throw v2

    .line 40
    :cond_b
    new-instance p0, Lcom/yandex/mobile/ads/impl/xs1;

    new-instance p1, Ljava/net/UnknownServiceException;

    const-string p2, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {p1, p2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/xs1;-><init>(Ljava/io/IOException;)V

    throw p0

    .line 41
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "already connected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(J)V
    .locals 0

    .line 191
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/ao1;->q:J

    return-void
.end method

.method public final declared-synchronized a(Lcom/yandex/mobile/ads/impl/hh0;Lcom/yandex/mobile/ads/impl/zx1;)V
    .locals 1

    monitor-enter p0

    .line 187
    :try_start_0
    const-string v0, "connection"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "settings"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/zx1;->c()I

    move-result p1

    iput p1, p0, Lcom/yandex/mobile/ads/impl/ao1;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/oh0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    const-string p0, "stream"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    sget-object p0, Lcom/yandex/mobile/ads/impl/t50;->h:Lcom/yandex/mobile/ads/impl/t50;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/yandex/mobile/ads/impl/oh0;->a(Lcom/yandex/mobile/ads/impl/t50;Ljava/io/IOException;)V

    return-void
.end method

.method public final declared-synchronized a(Lcom/yandex/mobile/ads/impl/zn1;Ljava/io/IOException;)V
    .locals 5

    monitor-enter p0

    .line 192
    :try_start_0
    const-string v0, "call"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    instance-of v0, p2, Lcom/yandex/mobile/ads/impl/z22;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 194
    check-cast p2, Lcom/yandex/mobile/ads/impl/z22;

    iget-object p2, p2, Lcom/yandex/mobile/ads/impl/z22;->b:Lcom/yandex/mobile/ads/impl/t50;

    sget-object v0, Lcom/yandex/mobile/ads/impl/t50;->h:Lcom/yandex/mobile/ads/impl/t50;

    if-ne p2, v0, :cond_0

    .line 195
    iget p1, p0, Lcom/yandex/mobile/ads/impl/ao1;->n:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/yandex/mobile/ads/impl/ao1;->n:I

    if-le p1, v1, :cond_6

    .line 196
    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/ao1;->j:Z

    .line 197
    iget p1, p0, Lcom/yandex/mobile/ads/impl/ao1;->l:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/yandex/mobile/ads/impl/ao1;->l:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 198
    :cond_0
    sget-object v0, Lcom/yandex/mobile/ads/impl/t50;->i:Lcom/yandex/mobile/ads/impl/t50;

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zn1;->j()Z

    move-result p1

    if-nez p1, :cond_6

    .line 199
    :cond_1
    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/ao1;->j:Z

    .line 200
    iget p1, p0, Lcom/yandex/mobile/ads/impl/ao1;->l:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/yandex/mobile/ads/impl/ao1;->l:I

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ao1;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/yandex/mobile/ads/impl/qr;

    if-eqz v0, :cond_6

    .line 202
    :cond_3
    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/ao1;->j:Z

    .line 203
    iget v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->m:I

    if-nez v0, :cond_6

    if-eqz p2, :cond_5

    .line 204
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zn1;->c()Lcom/yandex/mobile/ads/impl/fe1;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    .line 205
    const-string v2, "client"

    invoke-static {p1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "failedRoute"

    invoke-static {v0, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "failure"

    invoke-static {p2, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vs1;->b()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_4

    .line 207
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vs1;->a()Lcom/yandex/mobile/ads/impl/ab;

    move-result-object v2

    .line 208
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ab;->h()Ljava/net/ProxySelector;

    move-result-object v3

    .line 209
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/gi0;->l()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vs1;->b()Ljava/net/Proxy;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v4

    .line 210
    invoke-virtual {v3, v2, v4, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 211
    :cond_4
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fe1;->n()Lcom/yandex/mobile/ads/impl/ws1;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/ws1;->b(Lcom/yandex/mobile/ads/impl/vs1;)V

    .line 212
    :cond_5
    iget p1, p0, Lcom/yandex/mobile/ads/impl/ao1;->l:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/yandex/mobile/ads/impl/ao1;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ab;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ab;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/vs1;",
            ">;)Z"
        }
    .end annotation

    .line 158
    const-string v0, "address"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    sget-boolean v0, Lcom/yandex/mobile/ads/impl/g92;->f:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " MUST hold lock on "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 161
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/yandex/mobile/ads/impl/ao1;->o:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->j:Z

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vs1;->a()Lcom/yandex/mobile/ads/impl/ab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/ab;->a(Lcom/yandex/mobile/ads/impl/ab;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 163
    :cond_3
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    .line 165
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vs1;->a()Lcom/yandex/mobile/ads/impl/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    return v1

    .line 166
    :cond_4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->g:Lcom/yandex/mobile/ads/impl/hh0;

    if-nez v0, :cond_5

    return v2

    :cond_5
    if-eqz p2, :cond_a

    .line 167
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 168
    :cond_6
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/vs1;

    .line 169
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vs1;->b()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_7

    .line 170
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/vs1;->b()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    if-ne v3, v4, :cond_7

    .line 171
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/vs1;->d()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vs1;->d()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {v3, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 172
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ab;->d()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p2

    sget-object v0, Lcom/yandex/mobile/ads/impl/ee1;->a:Lcom/yandex/mobile/ads/impl/ee1;

    if-eq p2, v0, :cond_8

    return v2

    .line 173
    :cond_8
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/impl/ao1;->a(Lcom/yandex/mobile/ads/impl/gi0;)Z

    move-result p2

    if-nez p2, :cond_9

    return v2

    .line 174
    :cond_9
    :try_start_0
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ab;->a()Lcom/yandex/mobile/ads/impl/fo;

    move-result-object p2

    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object p1

    .line 175
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ao1;->e:Lcom/yandex/mobile/ads/impl/if0;

    .line 176
    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/if0;->c()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/yandex/mobile/ads/impl/fo;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_a
    :goto_1
    return v2
.end method

.method public final a(Z)Z
    .locals 7

    .line 223
    sget-boolean v0, Lcom/yandex/mobile/ads/impl/g92;->f:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MUST NOT hold lock on "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 225
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 226
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ao1;->c:Ljava/net/Socket;

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    .line 227
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ao1;->d:Ljava/net/Socket;

    invoke-static {v3}, Ly45;->g(Ljava/lang/Object;)V

    .line 228
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/ao1;->h:Lokio/BufferedSource;

    invoke-static {v4}, Ly45;->g(Ljava/lang/Object;)V

    .line 229
    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v3}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_5

    .line 230
    invoke-virtual {v3}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 231
    :cond_2
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ao1;->g:Lcom/yandex/mobile/ads/impl/hh0;

    if-eqz v2, :cond_3

    .line 232
    invoke-virtual {v2, v0, v1}, Lcom/yandex/mobile/ads/impl/hh0;->a(J)Z

    move-result p0

    return p0

    .line 233
    :cond_3
    monitor-enter p0

    :try_start_0
    iget-wide v5, p0, Lcom/yandex/mobile/ads/impl/ao1;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v5

    monitor-exit p0

    const-wide v5, 0x2540be400L

    cmp-long p0, v0, v5

    if-ltz p0, :cond_4

    if-eqz p1, :cond_4

    .line 234
    invoke-static {v3, v4}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/net/Socket;Lokio/BufferedSource;)Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    .line 235
    monitor-exit p0

    throw p1

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ao1;->p:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->q:J

    return-wide v0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/ao1;->j:Z

    return p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/ao1;->l:I

    return p0
.end method

.method public final f()Lcom/yandex/mobile/ads/impl/if0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ao1;->e:Lcom/yandex/mobile/ads/impl/if0;

    return-object p0
.end method

.method public final declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final h()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ao1;->g:Lcom/yandex/mobile/ads/impl/hh0;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final declared-synchronized i()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized j()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final k()Lcom/yandex/mobile/ads/impl/vs1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    return-object p0
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->j:Z

    return-void
.end method

.method public final m()Ljava/net/Socket;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ao1;->d:Ljava/net/Socket;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vs1;->a()Lcom/yandex/mobile/ads/impl/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vs1;->a()Lcom/yandex/mobile/ads/impl/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/gi0;->i()I

    move-result v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/vs1;->b()Ljava/net/Proxy;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ao1;->b:Lcom/yandex/mobile/ads/impl/vs1;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/vs1;->d()Ljava/net/InetSocketAddress;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/ao1;->e:Lcom/yandex/mobile/ads/impl/if0;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/if0;->a()Lcom/yandex/mobile/ads/impl/po;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "none"

    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ao1;->f:Lcom/yandex/mobile/ads/impl/mm1;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connection{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", proxy="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " hostAddress="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " cipherSuite="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " protocol="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
