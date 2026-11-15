.class final Lcom/google/android/exoplayer2/source/rtsp/RtspClient;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;,
        Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;,
        Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;,
        Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;,
        Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;

.field private final b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;

.field private final c:Ljava/lang/String;

.field private final d:Ljavax/net/SocketFactory;

.field private final e:Z

.field private final f:Ljava/util/ArrayDeque;

.field private final g:Landroid/util/SparseArray;

.field private final h:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;

.field private i:Landroid/net/Uri;

.field private j:Lcom/google/android/exoplayer2/source/rtsp/u;

.field private k:Lcom/google/android/exoplayer2/source/rtsp/y$a;

.field private l:Ljava/lang/String;

.field private m:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;

.field private n:Lcom/google/android/exoplayer2/source/rtsp/l;

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;Ljava/lang/String;Landroid/net/Uri;Ljavax/net/SocketFactory;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->a:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->d:Ljavax/net/SocketFactory;

    .line 11
    .line 12
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->e:Z

    .line 13
    .line 14
    new-instance p1, Ljava/util/ArrayDeque;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->f:Ljava/util/ArrayDeque;

    .line 20
    .line 21
    new-instance p1, Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->g:Landroid/util/SparseArray;

    .line 27
    .line 28
    new-instance p1, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;

    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;-><init>(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Lcom/google/android/exoplayer2/source/rtsp/RtspClient$a;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;

    .line 35
    .line 36
    invoke-static {p4}, Lcom/google/android/exoplayer2/source/rtsp/y;->p(Landroid/net/Uri;)Landroid/net/Uri;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->i:Landroid/net/Uri;

    .line 41
    .line 42
    new-instance p1, Lcom/google/android/exoplayer2/source/rtsp/u;

    .line 43
    .line 44
    new-instance p2, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;

    .line 45
    .line 46
    invoke-direct {p2, p0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;-><init>(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/u;-><init>(Lcom/google/android/exoplayer2/source/rtsp/u$d;)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->j:Lcom/google/android/exoplayer2/source/rtsp/u;

    .line 53
    .line 54
    invoke-static {p4}, Lcom/google/android/exoplayer2/source/rtsp/y;->n(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/y$a;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->k:Lcom/google/android/exoplayer2/source/rtsp/y$a;

    .line 59
    .line 60
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->s:J

    .line 66
    .line 67
    const/4 p1, -0x1

    .line 68
    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->o:I

    .line 69
    .line 70
    return-void
.end method

.method static synthetic S(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic T(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic W(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->n:Lcom/google/android/exoplayer2/source/rtsp/l;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic X(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Lcom/google/android/exoplayer2/source/rtsp/l;)Lcom/google/android/exoplayer2/source/rtsp/l;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->n:Lcom/google/android/exoplayer2/source/rtsp/l;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->o:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/u;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->j:Lcom/google/android/exoplayer2/source/rtsp/u;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/y$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->k:Lcom/google/android/exoplayer2/source/rtsp/y$a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Lcom/google/android/exoplayer2/source/rtsp/y$a;)Lcom/google/android/exoplayer2/source/rtsp/y$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->k:Lcom/google/android/exoplayer2/source/rtsp/y$a;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->o:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic f0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->o0(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->g:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->s0(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->a:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;

    .line 2
    .line 3
    return-object p0
.end method

.method private static j0(Lcom/google/android/exoplayer2/source/rtsp/g0;Landroid/net/Uri;)Lcom/google/common/collect/ImmutableList;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/common/collect/ImmutableList$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->b:Lcom/google/common/collect/ImmutableList;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->b:Lcom/google/common/collect/ImmutableList;

    .line 16
    .line 17
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/google/android/exoplayer2/source/rtsp/a;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/rtsp/j;->c(Lcom/google/android/exoplayer2/source/rtsp/a;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    new-instance v3, Lcom/google/android/exoplayer2/source/rtsp/t;

    .line 30
    .line 31
    invoke-direct {v3, v2, p1}, Lcom/google/android/exoplayer2/source/rtsp/t;-><init>(Lcom/google/android/exoplayer2/source/rtsp/a;Landroid/net/Uri;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 35
    .line 36
    .line 37
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->i:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->i:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p1
.end method

.method private l0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->f:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/p$d;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;->d()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/p$d;->c()Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/p$d;->d()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->l:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->j(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method static synthetic m(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->q:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic n(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->q:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic o(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->m:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method private o0(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->p:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;

    .line 19
    .line 20
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;->c(Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->a:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Lcom/google/common/base/p;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    :goto_1
    return-void
.end method

.method static synthetic p(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->m:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;

    .line 2
    .line 3
    return-object p1
.end method

.method private p0(Landroid/net/Uri;)Ljava/net/Socket;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/16 v0, 0x22a

    .line 25
    .line 26
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->d:Ljavax/net/SocketFactory;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1, p1, v0}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method static synthetic q(Ljava/util/List;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->y0(Ljava/util/List;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic r(Lcom/google/android/exoplayer2/source/rtsp/g0;Landroid/net/Uri;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->j0(Lcom/google/android/exoplayer2/source/rtsp/g0;Landroid/net/Uri;)Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic s(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->p:Z

    .line 2
    .line 3
    return p1
.end method

.method private s0(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "\n"

    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/common/base/g;->h(Ljava/lang/String;)Lcom/google/common/base/g;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/common/base/g;->d(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "RtspClient"

    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method static synthetic t(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->l0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic u(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->s:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic v(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->s:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic w(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->r:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic x(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic y(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private static y0(Ljava/util/List;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 22
    :goto_1
    return p0
.end method


# virtual methods
.method public A0(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->f:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->l0()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public B0()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->j:Lcom/google/android/exoplayer2/source/rtsp/u;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->i:Landroid/net/Uri;

    .line 4
    .line 5
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->p0(Landroid/net/Uri;)Ljava/net/Socket;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/u;->h(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->i:Landroid/net/Uri;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->l:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->e(Landroid/net/Uri;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->j:Lcom/google/android/exoplayer2/source/rtsp/u;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/p0;->n(Ljava/io/Closeable;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public D0(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->i:Landroid/net/Uri;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->l:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->g(Landroid/net/Uri;JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->m:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;->close()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->m:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->i:Landroid/net/Uri;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->l:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->k(Landroid/net/Uri;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->j:Lcom/google/android/exoplayer2/source/rtsp/u;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/u;->close()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public r0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public t0(ILcom/google/android/exoplayer2/source/rtsp/u$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->j:Lcom/google/android/exoplayer2/source/rtsp/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/u;->j(ILcom/google/android/exoplayer2/source/rtsp/u$b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public u0()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->close()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/u;

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;-><init>(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/u;-><init>(Lcom/google/android/exoplayer2/source/rtsp/u$d;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->j:Lcom/google/android/exoplayer2/source/rtsp/u;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->i:Landroid/net/Uri;

    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->p0(Landroid/net/Uri;)Ljava/net/Socket;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/u;->h(Ljava/net/Socket;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->l:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->q:Z

    .line 30
    .line 31
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->n:Lcom/google/android/exoplayer2/source/rtsp/l;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;

    .line 36
    .line 37
    new-instance v2, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;

    .line 38
    .line 39
    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;-><init>(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;->c(Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method public x0(J)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->o:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->r:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h:Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->i:Landroid/net/Uri;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->l:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->f(Landroid/net/Uri;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->s:J

    .line 26
    .line 27
    return-void
.end method
