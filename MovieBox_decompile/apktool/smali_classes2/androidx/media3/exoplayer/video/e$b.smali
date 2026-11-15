.class final Landroidx/media3/exoplayer/video/e$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/video/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private a:Landroidx/media3/common/r;

.field final synthetic b:Landroidx/media3/exoplayer/video/e;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/video/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/video/e;Landroidx/media3/exoplayer/video/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/e$b;-><init>(Landroidx/media3/exoplayer/video/e;)V

    return-void
.end method

.method public static synthetic c(Landroidx/media3/exoplayer/video/e$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/e$b;->h()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Landroidx/media3/exoplayer/video/e$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/e$b;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Landroidx/media3/exoplayer/video/e$b;Landroidx/media3/common/m0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/e$b;->g(Landroidx/media3/common/m0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic f()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/video/e;->D(Landroidx/media3/exoplayer/video/e;)Landroidx/media3/exoplayer/video/VideoSink$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/video/VideoSink$a;->c(Landroidx/media3/exoplayer/video/VideoSink;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic g(Landroidx/media3/common/m0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/video/e;->D(Landroidx/media3/exoplayer/video/e;)Landroidx/media3/exoplayer/video/VideoSink$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    .line 8
    .line 9
    invoke-interface {v0, v1, p1}, Landroidx/media3/exoplayer/video/VideoSink$a;->b(Landroidx/media3/exoplayer/video/VideoSink;Landroidx/media3/common/m0;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic h()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/video/e;->D(Landroidx/media3/exoplayer/video/e;)Landroidx/media3/exoplayer/video/VideoSink$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/video/VideoSink$a;->a(Landroidx/media3/exoplayer/video/VideoSink;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/video/e;->y(Landroidx/media3/exoplayer/video/e;)Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroidx/media3/exoplayer/video/g;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/video/g;-><init>(Landroidx/media3/exoplayer/video/e$b;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/media3/exoplayer/video/e;->C(Landroidx/media3/exoplayer/video/e;)Ljava/util/Queue;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroidx/media3/exoplayer/video/VideoSink$b;

    .line 26
    .line 27
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink$b;->b()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public b(JJZ)V
    .locals 7

    .line 1
    if-eqz p5, :cond_0

    .line 2
    .line 3
    iget-object p5, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    .line 4
    .line 5
    invoke-static {p5}, Landroidx/media3/exoplayer/video/e;->z(Landroidx/media3/exoplayer/video/e;)Landroid/view/Surface;

    .line 6
    .line 7
    .line 8
    move-result-object p5

    .line 9
    if-eqz p5, :cond_0

    .line 10
    .line 11
    iget-object p5, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    .line 12
    .line 13
    invoke-static {p5}, Landroidx/media3/exoplayer/video/e;->y(Landroidx/media3/exoplayer/video/e;)Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    .line 16
    move-result-object p5

    .line 17
    new-instance v0, Landroidx/media3/exoplayer/video/f;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/video/f;-><init>(Landroidx/media3/exoplayer/video/e$b;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p5, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p5, p0, Landroidx/media3/exoplayer/video/e$b;->a:Landroidx/media3/common/r;

    .line 26
    .line 27
    if-nez p5, :cond_1

    .line 28
    .line 29
    new-instance p5, Landroidx/media3/common/r$b;

    .line 30
    .line 31
    invoke-direct {p5}, Landroidx/media3/common/r$b;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p5}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 35
    .line 36
    .line 37
    move-result-object p5

    .line 38
    :cond_1
    move-object v5, p5

    .line 39
    iget-object p5, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    .line 40
    .line 41
    invoke-static {p5}, Landroidx/media3/exoplayer/video/e;->B(Landroidx/media3/exoplayer/video/e;)Landroidx/media3/exoplayer/video/t;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object p5, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    .line 46
    .line 47
    invoke-static {p5}, Landroidx/media3/exoplayer/video/e;->A(Landroidx/media3/exoplayer/video/e;)Landroidx/media3/common/util/i;

    .line 48
    .line 49
    .line 50
    move-result-object p5

    .line 51
    invoke-interface {p5}, Landroidx/media3/common/util/i;->nanoTime()J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    const/4 v6, 0x0

    .line 56
    move-wide v1, p3

    .line 57
    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/video/t;->f(JJLandroidx/media3/common/r;Landroid/media/MediaFormat;)V

    .line 58
    .line 59
    .line 60
    iget-object p3, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    .line 61
    .line 62
    invoke-static {p3}, Landroidx/media3/exoplayer/video/e;->C(Landroidx/media3/exoplayer/video/e;)Ljava/util/Queue;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    invoke-interface {p3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    check-cast p3, Landroidx/media3/exoplayer/video/VideoSink$b;

    .line 71
    .line 72
    invoke-interface {p3, p1, p2}, Landroidx/media3/exoplayer/video/VideoSink$b;->a(J)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/m0;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/common/r$b;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/common/r$b;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p1, Landroidx/media3/common/m0;->a:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->B0(I)Landroidx/media3/common/r$b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v1, p1, Landroidx/media3/common/m0;->b:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->d0(I)Landroidx/media3/common/r$b;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "video/raw"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Landroidx/media3/exoplayer/video/e$b;->a:Landroidx/media3/common/r;

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/media3/exoplayer/video/e$b;->b:Landroidx/media3/exoplayer/video/e;

    .line 31
    .line 32
    invoke-static {v0}, Landroidx/media3/exoplayer/video/e;->y(Landroidx/media3/exoplayer/video/e;)Ljava/util/concurrent/Executor;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Landroidx/media3/exoplayer/video/h;

    .line 37
    .line 38
    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/video/h;-><init>(Landroidx/media3/exoplayer/video/e$b;Landroidx/media3/common/m0;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
