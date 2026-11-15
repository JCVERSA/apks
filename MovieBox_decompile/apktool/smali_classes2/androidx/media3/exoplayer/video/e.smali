.class final Landroidx/media3/exoplayer/video/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/e$b;
    }
.end annotation


# instance fields
.field private final a:Landroidx/media3/exoplayer/video/u;

.field private final b:Landroidx/media3/common/util/i;

.field private final c:Landroidx/media3/exoplayer/video/x;

.field private final d:Ljava/util/Queue;

.field private e:Landroid/view/Surface;

.field private f:Landroidx/media3/common/r;

.field private g:J

.field private h:J

.field private i:Landroidx/media3/exoplayer/video/VideoSink$a;

.field private j:Ljava/util/concurrent/Executor;

.field private k:Landroidx/media3/exoplayer/video/t;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/u;Landroidx/media3/common/util/i;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/video/e;->a:Landroidx/media3/exoplayer/video/u;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/video/u;->o(Landroidx/media3/common/util/i;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Landroidx/media3/exoplayer/video/e;->b:Landroidx/media3/common/util/i;

    .line 10
    .line 11
    new-instance p2, Landroidx/media3/exoplayer/video/x;

    .line 12
    .line 13
    new-instance v0, Landroidx/media3/exoplayer/video/e$b;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/video/e$b;-><init>(Landroidx/media3/exoplayer/video/e;Landroidx/media3/exoplayer/video/e$a;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p2, v0, p1}, Landroidx/media3/exoplayer/video/x;-><init>(Landroidx/media3/exoplayer/video/x$a;Landroidx/media3/exoplayer/video/u;)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Landroidx/media3/exoplayer/video/e;->c:Landroidx/media3/exoplayer/video/x;

    .line 23
    .line 24
    new-instance p1, Ljava/util/ArrayDeque;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Landroidx/media3/exoplayer/video/e;->d:Ljava/util/Queue;

    .line 30
    .line 31
    new-instance p1, Landroidx/media3/common/r$b;

    .line 32
    .line 33
    invoke-direct {p1}, Landroidx/media3/common/r$b;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Landroidx/media3/exoplayer/video/e;->f:Landroidx/media3/common/r;

    .line 41
    .line 42
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/e;->g:J

    .line 48
    .line 49
    sget-object p1, Landroidx/media3/exoplayer/video/VideoSink$a;->a:Landroidx/media3/exoplayer/video/VideoSink$a;

    .line 50
    .line 51
    iput-object p1, p0, Landroidx/media3/exoplayer/video/e;->i:Landroidx/media3/exoplayer/video/VideoSink$a;

    .line 52
    .line 53
    new-instance p1, Landroidx/media3/exoplayer/video/c;

    .line 54
    .line 55
    invoke-direct {p1}, Landroidx/media3/exoplayer/video/c;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Landroidx/media3/exoplayer/video/e;->j:Ljava/util/concurrent/Executor;

    .line 59
    .line 60
    new-instance p1, Landroidx/media3/exoplayer/video/d;

    .line 61
    .line 62
    invoke-direct {p1}, Landroidx/media3/exoplayer/video/d;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Landroidx/media3/exoplayer/video/e;->k:Landroidx/media3/exoplayer/video/t;

    .line 66
    .line 67
    return-void
.end method

.method static synthetic A(Landroidx/media3/exoplayer/video/e;)Landroidx/media3/common/util/i;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/e;->b:Landroidx/media3/common/util/i;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic B(Landroidx/media3/exoplayer/video/e;)Landroidx/media3/exoplayer/video/t;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/e;->k:Landroidx/media3/exoplayer/video/t;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic C(Landroidx/media3/exoplayer/video/e;)Ljava/util/Queue;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/e;->d:Ljava/util/Queue;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic D(Landroidx/media3/exoplayer/video/e;)Landroidx/media3/exoplayer/video/VideoSink$a;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/e;->i:Landroidx/media3/exoplayer/video/VideoSink$a;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic E(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic F(JJLandroidx/media3/common/r;Landroid/media/MediaFormat;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic w(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/video/e;->E(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic x(JJLandroidx/media3/common/r;Landroid/media/MediaFormat;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/media3/exoplayer/video/e;->F(JJLandroidx/media3/common/r;Landroid/media/MediaFormat;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic y(Landroidx/media3/exoplayer/video/e;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/e;->j:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic z(Landroidx/media3/exoplayer/video/e;)Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/e;->e:Landroid/view/Surface;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/e;->a:Landroidx/media3/exoplayer/video/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/u;->r(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(JZLandroidx/media3/exoplayer/video/VideoSink$b;)Z
    .locals 0

    .line 1
    iget-object p3, p0, Landroidx/media3/exoplayer/video/e;->d:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {p3, p4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-wide p3, p0, Landroidx/media3/exoplayer/video/e;->h:J

    .line 7
    .line 8
    sub-long/2addr p1, p3

    .line 9
    iget-object p3, p0, Landroidx/media3/exoplayer/video/e;->c:Landroidx/media3/exoplayer/video/x;

    .line 10
    .line 11
    invoke-virtual {p3, p1, p2}, Landroidx/media3/exoplayer/video/x;->g(J)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/e;->a:Landroidx/media3/exoplayer/video/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/u;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Landroidx/media3/exoplayer/video/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/video/e;->k:Landroidx/media3/exoplayer/video/t;

    .line 2
    .line 3
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/e;->c:Landroidx/media3/exoplayer/video/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/x;->l()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(JJ)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/e;->g:J

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/video/e;->c:Landroidx/media3/exoplayer/video/x;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/video/x;->h(J)V

    .line 10
    .line 11
    .line 12
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/e;->g:J

    .line 13
    .line 14
    :cond_0
    iput-wide p3, p0, Landroidx/media3/exoplayer/video/e;->h:J

    .line 15
    .line 16
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/e;->a:Landroidx/media3/exoplayer/video/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/u;->l()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h(Landroidx/media3/exoplayer/w3$a;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public i(Ljava/util/List;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public isEnded()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/e;->c:Landroidx/media3/exoplayer/video/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/x;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public j(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/e;->a:Landroidx/media3/exoplayer/video/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/u;->d(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public k(Landroidx/media3/common/r;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public l(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/e;->a:Landroidx/media3/exoplayer/video/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/u;->h(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/e;->e:Landroid/view/Surface;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/Surface;

    .line 8
    .line 9
    return-object v0
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/e;->a:Landroidx/media3/exoplayer/video/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/u;->k()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public o(ILandroidx/media3/common/r;Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Landroidx/media3/common/util/a;->g(Z)V

    .line 6
    .line 7
    .line 8
    iget p1, p2, Landroidx/media3/common/r;->v:I

    .line 9
    .line 10
    iget-object p3, p0, Landroidx/media3/exoplayer/video/e;->f:Landroidx/media3/common/r;

    .line 11
    .line 12
    iget v0, p3, Landroidx/media3/common/r;->v:I

    .line 13
    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    iget v0, p2, Landroidx/media3/common/r;->w:I

    .line 17
    .line 18
    iget p3, p3, Landroidx/media3/common/r;->w:I

    .line 19
    .line 20
    if-eq v0, p3, :cond_1

    .line 21
    .line 22
    :cond_0
    iget-object p3, p0, Landroidx/media3/exoplayer/video/e;->c:Landroidx/media3/exoplayer/video/x;

    .line 23
    .line 24
    iget v0, p2, Landroidx/media3/common/r;->w:I

    .line 25
    .line 26
    invoke-virtual {p3, p1, v0}, Landroidx/media3/exoplayer/video/x;->i(II)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget p1, p2, Landroidx/media3/common/r;->x:F

    .line 30
    .line 31
    iget-object p3, p0, Landroidx/media3/exoplayer/video/e;->f:Landroidx/media3/common/r;

    .line 32
    .line 33
    iget p3, p3, Landroidx/media3/common/r;->x:F

    .line 34
    .line 35
    cmpl-float p3, p1, p3

    .line 36
    .line 37
    if-eqz p3, :cond_2

    .line 38
    .line 39
    iget-object p3, p0, Landroidx/media3/exoplayer/video/e;->a:Landroidx/media3/exoplayer/video/u;

    .line 40
    .line 41
    invoke-virtual {p3, p1}, Landroidx/media3/exoplayer/video/u;->p(F)V

    .line 42
    .line 43
    .line 44
    :cond_2
    iput-object p2, p0, Landroidx/media3/exoplayer/video/e;->f:Landroidx/media3/common/r;

    .line 45
    .line 46
    return-void
.end method

.method public p(Landroid/view/Surface;Landroidx/media3/common/util/l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/video/e;->e:Landroid/view/Surface;

    .line 2
    .line 3
    iget-object p2, p0, Landroidx/media3/exoplayer/video/e;->a:Landroidx/media3/exoplayer/video/u;

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/video/u;->q(Landroid/view/Surface;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/e;->a:Landroidx/media3/exoplayer/video/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/u;->g()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public r(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/e;->a:Landroidx/media3/exoplayer/video/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/u;->n(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public render(JJ)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/e;->c:Landroidx/media3/exoplayer/video/x;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/x;->j(JJ)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;

    .line 9
    .line 10
    iget-object p3, p0, Landroidx/media3/exoplayer/video/e;->f:Landroidx/media3/common/r;

    .line 11
    .line 12
    invoke-direct {p2, p1, p3}, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;-><init>(Ljava/lang/Throwable;Landroidx/media3/common/r;)V

    .line 13
    .line 14
    .line 15
    throw p2
.end method

.method public s()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/media3/exoplayer/video/e;->e:Landroid/view/Surface;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/video/e;->a:Landroidx/media3/exoplayer/video/u;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/video/u;->q(Landroid/view/Surface;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public t(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/media3/exoplayer/video/e;->a:Landroidx/media3/exoplayer/video/u;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/u;->m()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/video/e;->c:Landroidx/media3/exoplayer/video/x;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/x;->b()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Landroidx/media3/exoplayer/video/e;->d:Ljava/util/Queue;

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public u(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/e;->a:Landroidx/media3/exoplayer/video/u;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/u;->e(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public v(Landroidx/media3/exoplayer/video/VideoSink$a;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/video/e;->i:Landroidx/media3/exoplayer/video/VideoSink$a;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/media3/exoplayer/video/e;->j:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    return-void
.end method
