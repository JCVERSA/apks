.class final Lcom/google/android/exoplayer2/source/rtsp/p;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/rtsp/p$d;,
        Lcom/google/android/exoplayer2/source/rtsp/p$e;,
        Lcom/google/android/exoplayer2/source/rtsp/p$f;,
        Lcom/google/android/exoplayer2/source/rtsp/p$b;,
        Lcom/google/android/exoplayer2/source/rtsp/p$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/b;

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/google/android/exoplayer2/source/rtsp/p$b;

.field private final d:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

.field private final e:Ljava/util/List;

.field private final f:Ljava/util/List;

.field private final g:Lcom/google/android/exoplayer2/source/rtsp/p$c;

.field private final h:Lcom/google/android/exoplayer2/source/rtsp/c$a;

.field private i:Lcom/google/android/exoplayer2/source/n$a;

.field private j:Lcom/google/common/collect/ImmutableList;

.field private k:Ljava/io/IOException;

.field private l:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;

.field private m:J

.field private n:J

.field private o:J

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/b;Lcom/google/android/exoplayer2/source/rtsp/c$a;Landroid/net/Uri;Lcom/google/android/exoplayer2/source/rtsp/p$c;Ljava/lang/String;Ljavax/net/SocketFactory;Z)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->a:Lcom/google/android/exoplayer2/upstream/b;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->h:Lcom/google/android/exoplayer2/source/rtsp/c$a;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->g:Lcom/google/android/exoplayer2/source/rtsp/p$c;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/exoplayer2/util/p0;->w()Landroid/os/Handler;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->b:Landroid/os/Handler;

    .line 15
    .line 16
    new-instance v2, Lcom/google/android/exoplayer2/source/rtsp/p$b;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/p$b;-><init>(Lcom/google/android/exoplayer2/source/rtsp/p;Lcom/google/android/exoplayer2/source/rtsp/p$a;)V

    .line 20
    .line 21
    .line 22
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->c:Lcom/google/android/exoplayer2/source/rtsp/p$b;

    .line 23
    .line 24
    new-instance p1, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 25
    .line 26
    move-object v0, p1

    .line 27
    move-object v1, v2

    .line 28
    move-object v3, p5

    .line 29
    move-object v4, p3

    .line 30
    move-object v5, p6

    .line 31
    move v6, p7

    .line 32
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;-><init>(Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;Ljava/lang/String;Landroid/net/Uri;Ljavax/net/SocketFactory;Z)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->d:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 36
    .line 37
    new-instance p1, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 43
    .line 44
    new-instance p1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->f:Ljava/util/List;

    .line 50
    .line 51
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->n:J

    .line 57
    .line 58
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->m:J

    .line 59
    .line 60
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->o:J

    .line 61
    .line 62
    return-void
.end method

.method static synthetic A(Lcom/google/android/exoplayer2/source/rtsp/p;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->v:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic B(Lcom/google/android/exoplayer2/source/rtsp/p;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->v:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic C(Lcom/google/android/exoplayer2/source/rtsp/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/p;->N()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic D(Lcom/google/android/exoplayer2/source/rtsp/p;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->s:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic E(Lcom/google/android/exoplayer2/source/rtsp/p;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->k:Ljava/io/IOException;

    .line 2
    .line 3
    return-object p1
.end method

.method private static F(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Lcom/google/common/collect/ImmutableList$a;

    .line 3
    .line 4
    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-ge v3, v4, :cond_0

    .line 14
    .line 15
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    .line 20
    .line 21
    invoke-static {v4}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->b(Lcom/google/android/exoplayer2/source/rtsp/p$e;)Lcom/google/android/exoplayer2/source/a0;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    new-instance v5, Lv9/w;

    .line 26
    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/a0;->F()Lcom/google/android/exoplayer2/p1;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lcom/google/android/exoplayer2/p1;

    .line 40
    .line 41
    new-array v7, v0, [Lcom/google/android/exoplayer2/p1;

    .line 42
    .line 43
    aput-object v4, v7, v2

    .line 44
    .line 45
    invoke-direct {v5, v6, v7}, Lv9/w;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/p1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v5}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 49
    .line 50
    .line 51
    add-int/2addr v3, v0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method private G(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/e;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->a(Lcom/google/android/exoplayer2/source/rtsp/p$e;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/rtsp/p$e;->a:Lcom/google/android/exoplayer2/source/rtsp/p$d;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/rtsp/p$d;->c()Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/p$d;->b(Lcom/google/android/exoplayer2/source/rtsp/p$d;)Lcom/google/android/exoplayer2/source/rtsp/e;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 p1, 0x0

    .line 53
    return-object p1
.end method

.method private I()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->n:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method private J()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->r:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->s:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ge v0, v1, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->b(Lcom/google/android/exoplayer2/source/rtsp/p$e;)Lcom/google/android/exoplayer2/source/a0;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/a0;->F()Lcom/google/android/exoplayer2/p1;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->s:Z

    .line 43
    .line 44
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/p;->F(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->j:Lcom/google/common/collect/ImmutableList;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->i:Lcom/google/android/exoplayer2/source/n$a;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lcom/google/android/exoplayer2/source/n$a;

    .line 63
    .line 64
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/n$a;->h(Lcom/google/android/exoplayer2/source/n;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_1
    return-void
.end method

.method private K()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->f:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->f:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/google/android/exoplayer2/source/rtsp/p$d;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/rtsp/p$d;->e()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    and-int/2addr v0, v2

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->t:Z

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->d:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->f:Ljava/util/List;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->A0(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method private N()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->d:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->u0()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->h:Lcom/google/android/exoplayer2/source/rtsp/c$a;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/rtsp/c$a;->b()Lcom/google/android/exoplayer2/source/rtsp/c$a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;

    .line 15
    .line 16
    const-string v1, "No fallback data channel factory for TCP retry"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->l:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->f:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    move v4, v3

    .line 48
    :goto_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-ge v4, v5, :cond_3

    .line 55
    .line 56
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    .line 63
    .line 64
    invoke-static {v5}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->a(Lcom/google/android/exoplayer2/source/rtsp/p$e;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-nez v6, :cond_1

    .line 69
    .line 70
    new-instance v6, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    .line 71
    .line 72
    iget-object v7, v5, Lcom/google/android/exoplayer2/source/rtsp/p$e;->a:Lcom/google/android/exoplayer2/source/rtsp/p$d;

    .line 73
    .line 74
    iget-object v7, v7, Lcom/google/android/exoplayer2/source/rtsp/p$d;->a:Lcom/google/android/exoplayer2/source/rtsp/t;

    .line 75
    .line 76
    invoke-direct {v6, p0, v7, v4, v0}, Lcom/google/android/exoplayer2/source/rtsp/p$e;-><init>(Lcom/google/android/exoplayer2/source/rtsp/p;Lcom/google/android/exoplayer2/source/rtsp/t;ILcom/google/android/exoplayer2/source/rtsp/c$a;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->j()V

    .line 83
    .line 84
    .line 85
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->f:Ljava/util/List;

    .line 86
    .line 87
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/rtsp/p$e;->a:Lcom/google/android/exoplayer2/source/rtsp/p$d;

    .line 88
    .line 89
    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_2

    .line 94
    .line 95
    iget-object v5, v6, Lcom/google/android/exoplayer2/source/rtsp/p$e;->a:Lcom/google/android/exoplayer2/source/rtsp/p$d;

    .line 96
    .line 97
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 108
    .line 109
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 114
    .line 115
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 116
    .line 117
    .line 118
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 119
    .line 120
    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->f:Ljava/util/List;

    .line 124
    .line 125
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->f:Ljava/util/List;

    .line 129
    .line 130
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    .line 132
    .line 133
    :goto_2
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-ge v3, v1, :cond_4

    .line 138
    .line 139
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    check-cast v1, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->c()V

    .line 146
    .line 147
    .line 148
    add-int/lit8 v3, v3, 0x1

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_4
    return-void
.end method

.method private O(J)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    .line 18
    .line 19
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->b(Lcom/google/android/exoplayer2/source/rtsp/p$e;)Lcom/google/android/exoplayer2/source/a0;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2, p1, p2, v0}, Lcom/google/android/exoplayer2/source/a0;->Z(JZ)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    return v0

    .line 30
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p1, 0x1

    .line 34
    return p1
.end method

.method private Q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method private R()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->p:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->p:Z

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->a(Lcom/google/android/exoplayer2/source/rtsp/p$e;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    and-int/2addr v1, v2

    .line 28
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->p:Z

    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/rtsp/p;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->u:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->u:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/source/rtsp/p;)Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->l:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/source/rtsp/p;Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;)Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->l:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/source/rtsp/p;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->d:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/source/rtsp/p;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->f:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/source/rtsp/p;)Lcom/google/android/exoplayer2/source/rtsp/p$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->g:Lcom/google/android/exoplayer2/source/rtsp/p$c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/source/rtsp/p;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/p;->I()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/source/rtsp/p;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->q:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic l(Lcom/google/android/exoplayer2/source/rtsp/p;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->n:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic m(Lcom/google/android/exoplayer2/source/rtsp/p;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->n:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic n(Lcom/google/android/exoplayer2/source/rtsp/p;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->m:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic o(Lcom/google/android/exoplayer2/source/rtsp/p;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->m:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic p(Lcom/google/android/exoplayer2/source/rtsp/p;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->o:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic q(Lcom/google/android/exoplayer2/source/rtsp/p;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->o:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic r(Lcom/google/android/exoplayer2/source/rtsp/p;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/e;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/p;->G(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic s(Lcom/google/android/exoplayer2/source/rtsp/p;)Lcom/google/android/exoplayer2/source/rtsp/c$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->h:Lcom/google/android/exoplayer2/source/rtsp/c$a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic t(Lcom/google/android/exoplayer2/source/rtsp/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/p;->J()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic u(Lcom/google/android/exoplayer2/source/rtsp/p;)Lcom/google/android/exoplayer2/upstream/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->a:Lcom/google/android/exoplayer2/upstream/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v(Lcom/google/android/exoplayer2/source/rtsp/p;)Lcom/google/android/exoplayer2/source/rtsp/p$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->c:Lcom/google/android/exoplayer2/source/rtsp/p$b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic w(Lcom/google/android/exoplayer2/source/rtsp/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/p;->R()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic x(Lcom/google/android/exoplayer2/source/rtsp/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/p;->K()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic y(Lcom/google/android/exoplayer2/source/rtsp/p;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic z(Lcom/google/android/exoplayer2/source/rtsp/p;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->b:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method H(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/p;->Q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->e()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method L(ILcom/google/android/exoplayer2/q1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/p;->Q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, -0x3

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    .line 16
    .line 17
    invoke-virtual {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->f(Lcom/google/android/exoplayer2/q1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public M()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->g()V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->d:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->n(Ljava/io/Closeable;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->r:Z

    .line 31
    .line 32
    return-void
.end method

.method P(IJ)I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/p;->Q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, -0x3

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    .line 16
    .line 17
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->i(J)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public b(JLcom/google/android/exoplayer2/d3;)J
    .locals 0

    .line 1
    return-wide p1
.end method

.method public continueLoading(J)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/rtsp/p;->isLoading()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public discardBuffer(JZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/p;->I()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_2

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->a(Lcom/google/android/exoplayer2/source/rtsp/p$e;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->b(Lcom/google/android/exoplayer2/source/rtsp/p$e;)Lcom/google/android/exoplayer2/source/a0;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/google/android/exoplayer2/source/a0;->q(JZZ)V

    .line 37
    .line 38
    .line 39
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-void
.end method

.method public e([Lna/s;[Z[Lv9/s;[ZJ)J
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    array-length v2, p1

    .line 4
    if-ge v1, v2, :cond_2

    .line 5
    .line 6
    aget-object v2, p3, v1

    .line 7
    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    aget-object v2, p1, v1

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    aget-boolean v2, p2, v1

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    aput-object v2, p3, v1

    .line 20
    .line 21
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->f:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 27
    .line 28
    .line 29
    move p2, v0

    .line 30
    :goto_1
    array-length v1, p1

    .line 31
    const/4 v2, 0x1

    .line 32
    if-ge p2, v1, :cond_5

    .line 33
    .line 34
    aget-object v1, p1, p2

    .line 35
    .line 36
    if-nez v1, :cond_3

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_3
    invoke-interface {v1}, Lna/v;->getTrackGroup()Lv9/w;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->j:Lcom/google/common/collect/ImmutableList;

    .line 44
    .line 45
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lcom/google/common/collect/ImmutableList;

    .line 50
    .line 51
    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->f:Ljava/util/List;

    .line 56
    .line 57
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    .line 64
    .line 65
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    .line 70
    .line 71
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/rtsp/p$e;->a:Lcom/google/android/exoplayer2/source/rtsp/p$d;

    .line 72
    .line 73
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->j:Lcom/google/common/collect/ImmutableList;

    .line 77
    .line 78
    invoke-virtual {v4, v1}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    aget-object v1, p3, p2

    .line 85
    .line 86
    if-nez v1, :cond_4

    .line 87
    .line 88
    new-instance v1, Lcom/google/android/exoplayer2/source/rtsp/p$f;

    .line 89
    .line 90
    invoke-direct {v1, p0, v3}, Lcom/google/android/exoplayer2/source/rtsp/p$f;-><init>(Lcom/google/android/exoplayer2/source/rtsp/p;I)V

    .line 91
    .line 92
    .line 93
    aput-object v1, p3, p2

    .line 94
    .line 95
    aput-boolean v2, p4, p2

    .line 96
    .line 97
    :cond_4
    :goto_2
    add-int/lit8 p2, p2, 0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 101
    .line 102
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-ge v0, p1, :cond_7

    .line 107
    .line 108
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 109
    .line 110
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    .line 115
    .line 116
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->f:Ljava/util/List;

    .line 117
    .line 118
    iget-object p3, p1, Lcom/google/android/exoplayer2/source/rtsp/p$e;->a:Lcom/google/android/exoplayer2/source/rtsp/p$d;

    .line 119
    .line 120
    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    if-nez p2, :cond_6

    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->c()V

    .line 127
    .line 128
    .line 129
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_7
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->t:Z

    .line 133
    .line 134
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/p;->K()V

    .line 135
    .line 136
    .line 137
    return-wide p5
.end method

.method public f(Lcom/google/android/exoplayer2/source/n$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->i:Lcom/google/android/exoplayer2/source/n$a;

    .line 2
    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->d:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->B0()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->k:Ljava/io/IOException;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->d:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/p0;->n(Ljava/io/Closeable;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->p:Z

    .line 2
    .line 3
    const-wide/high16 v1, -0x8000000000000000L

    .line 4
    .line 5
    if-nez v0, :cond_6

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->m:J

    .line 17
    .line 18
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    cmp-long v0, v3, v5

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    return-wide v3

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    const/4 v3, 0x1

    .line 30
    const-wide v4, 0x7fffffffffffffffL

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    move v6, v0

    .line 36
    :goto_0
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-ge v6, v7, :cond_3

    .line 43
    .line 44
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    check-cast v7, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    .line 51
    .line 52
    invoke-static {v7}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->a(Lcom/google/android/exoplayer2/source/rtsp/p$e;)Z

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    if-nez v8, :cond_2

    .line 57
    .line 58
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->d()J

    .line 59
    .line 60
    .line 61
    move-result-wide v7

    .line 62
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 63
    .line 64
    .line 65
    move-result-wide v3

    .line 66
    move-wide v4, v3

    .line 67
    move v3, v0

    .line 68
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    if-nez v3, :cond_4

    .line 72
    .line 73
    cmp-long v0, v4, v1

    .line 74
    .line 75
    if-nez v0, :cond_5

    .line 76
    .line 77
    :cond_4
    const-wide/16 v4, 0x0

    .line 78
    .line 79
    :cond_5
    return-wide v4

    .line 80
    :cond_6
    :goto_1
    return-wide v1
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/rtsp/p;->getBufferedPositionUs()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public getTrackGroups()Lv9/y;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->s:Z

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lv9/y;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->j:Lcom/google/common/collect/ImmutableList;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/google/common/collect/ImmutableList;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    new-array v2, v2, [Lv9/w;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, [Lv9/w;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lv9/y;-><init>([Lv9/w;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->p:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method public maybeThrowPrepareError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->k:Ljava/io/IOException;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    throw v0
.end method

.method public readDiscontinuity()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->q:Z

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    return-wide v0

    .line 11
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public seekToUs(J)J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/rtsp/p;->getBufferedPositionUs()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->v:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->o:J

    .line 16
    .line 17
    return-wide p1

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/rtsp/p;->discardBuffer(JZ)V

    .line 20
    .line 21
    .line 22
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->m:J

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/p;->I()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->d:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->r0()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x1

    .line 37
    if-eq v0, v1, :cond_2

    .line 38
    .line 39
    const/4 v1, 0x2

    .line 40
    if-ne v0, v1, :cond_1

    .line 41
    .line 42
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->n:J

    .line 43
    .line 44
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->d:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 45
    .line 46
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->x0(J)V

    .line 47
    .line 48
    .line 49
    return-wide p1

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    return-wide p1

    .line 57
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/p;->O(J)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    return-wide p1

    .line 64
    :cond_4
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->n:J

    .line 65
    .line 66
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->d:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 67
    .line 68
    invoke-virtual {v1, p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->x0(J)V

    .line 69
    .line 70
    .line 71
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-ge v0, v1, :cond_5

    .line 78
    .line 79
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p;->e:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lcom/google/android/exoplayer2/source/rtsp/p$e;

    .line 86
    .line 87
    invoke-virtual {v1, p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/p$e;->h(J)V

    .line 88
    .line 89
    .line 90
    add-int/lit8 v0, v0, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    return-wide p1
.end method
