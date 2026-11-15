.class final Landroidx/media3/exoplayer/mediacodec/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/mediacodec/c$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/media/MediaCodec;

.field private final b:Landroidx/media3/exoplayer/mediacodec/i;

.field private final c:Landroidx/media3/exoplayer/mediacodec/v;

.field private final d:Landroidx/media3/exoplayer/mediacodec/p;

.field private e:Z

.field private f:I


# direct methods
.method private constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroidx/media3/exoplayer/mediacodec/v;Landroidx/media3/exoplayer/mediacodec/p;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 4
    new-instance p1, Landroidx/media3/exoplayer/mediacodec/i;

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/mediacodec/i;-><init>(Landroid/os/HandlerThread;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/c;->b:Landroidx/media3/exoplayer/mediacodec/i;

    .line 5
    iput-object p3, p0, Landroidx/media3/exoplayer/mediacodec/c;->c:Landroidx/media3/exoplayer/mediacodec/v;

    .line 6
    iput-object p4, p0, Landroidx/media3/exoplayer/mediacodec/c;->d:Landroidx/media3/exoplayer/mediacodec/p;

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/c;->f:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroidx/media3/exoplayer/mediacodec/v;Landroidx/media3/exoplayer/mediacodec/p;Landroidx/media3/exoplayer/mediacodec/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/c;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroidx/media3/exoplayer/mediacodec/v;Landroidx/media3/exoplayer/mediacodec/p;)V

    return-void
.end method

.method public static synthetic p(Landroidx/media3/exoplayer/mediacodec/c;Landroidx/media3/exoplayer/mediacodec/t$d;Landroid/media/MediaCodec;JJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Landroidx/media3/exoplayer/mediacodec/c;->x(Landroidx/media3/exoplayer/mediacodec/t$d;Landroid/media/MediaCodec;JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q(Landroidx/media3/exoplayer/mediacodec/c;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/c;->w(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic r(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/c;->u(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic s(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/c;->t(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static t(I)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ExoPlayer:MediaCodecAsyncAdapter:"

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/media3/exoplayer/mediacodec/c;->v(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static u(I)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ExoPlayer:MediaCodecQueueingThread:"

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/media3/exoplayer/mediacodec/c;->v(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static v(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    if-ne p0, p1, :cond_0

    .line 8
    .line 9
    const-string p0, "Audio"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x2

    .line 16
    if-ne p0, p1, :cond_1

    .line 17
    .line 18
    const-string p0, "Video"

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const-string p1, "Unknown("

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p0, ")"

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method private w(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->b:Landroidx/media3/exoplayer/mediacodec/i;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/mediacodec/i;->h(Landroid/media/MediaCodec;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "configureCodec"

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/media3/common/util/q0;->a(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroidx/media3/common/util/q0;->b()V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/c;->c:Landroidx/media3/exoplayer/mediacodec/v;

    .line 22
    .line 23
    invoke-interface {p1}, Landroidx/media3/exoplayer/mediacodec/v;->start()V

    .line 24
    .line 25
    .line 26
    const-string p1, "startCodec"

    .line 27
    .line 28
    invoke-static {p1}, Landroidx/media3/common/util/q0;->a(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Landroidx/media3/common/util/q0;->b()V

    .line 37
    .line 38
    .line 39
    sget p1, Landroidx/media3/common/util/a1;->a:I

    .line 40
    .line 41
    const/16 p2, 0x23

    .line 42
    .line 43
    if-lt p1, p2, :cond_0

    .line 44
    .line 45
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/c;->d:Landroidx/media3/exoplayer/mediacodec/p;

    .line 46
    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/mediacodec/p;->b(Landroid/media/MediaCodec;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    const/4 p1, 0x1

    .line 55
    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/c;->f:I

    .line 56
    .line 57
    return-void
.end method

.method private synthetic x(Landroidx/media3/exoplayer/mediacodec/t$d;Landroid/media/MediaCodec;JJ)V
    .locals 6

    .line 1
    move-object v0, p1

    .line 2
    move-object v1, p0

    .line 3
    move-wide v2, p3

    .line 4
    move-wide v4, p5

    .line 5
    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/mediacodec/t$d;->a(Landroidx/media3/exoplayer/mediacodec/t;JJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(IIIJI)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->c:Landroidx/media3/exoplayer/mediacodec/v;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move-wide v4, p4

    .line 7
    move v6, p6

    .line 8
    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/mediacodec/v;->a(IIIJI)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->c:Landroidx/media3/exoplayer/mediacodec/v;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/mediacodec/v;->b(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c()Landroid/media/MediaFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->b:Landroidx/media3/exoplayer/mediacodec/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/i;->g()Landroid/media/MediaFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public d(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public e(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(IILandroidx/media3/decoder/c;JI)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->c:Landroidx/media3/exoplayer/mediacodec/v;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-wide v4, p4

    .line 7
    move v6, p6

    .line 8
    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/mediacodec/v;->f(IILandroidx/media3/decoder/c;JI)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->c:Landroidx/media3/exoplayer/mediacodec/v;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/mediacodec/v;->flush()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->b:Landroidx/media3/exoplayer/mediacodec/i;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/i;->e()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public g()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public h(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->c:Landroidx/media3/exoplayer/mediacodec/v;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/mediacodec/v;->c()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->b:Landroidx/media3/exoplayer/mediacodec/i;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/i;->c()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public j(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->c:Landroidx/media3/exoplayer/mediacodec/v;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/mediacodec/v;->c()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->b:Landroidx/media3/exoplayer/mediacodec/i;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/mediacodec/i;->d(Landroid/media/MediaCodec$BufferInfo;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public k(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public m(Landroidx/media3/exoplayer/mediacodec/t$c;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->b:Landroidx/media3/exoplayer/mediacodec/i;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/mediacodec/i;->p(Landroidx/media3/exoplayer/mediacodec/t$c;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method

.method public n(Landroidx/media3/exoplayer/mediacodec/t$d;Landroid/os/Handler;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 2
    .line 3
    new-instance v1, Landroidx/media3/exoplayer/mediacodec/b;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/mediacodec/b;-><init>(Landroidx/media3/exoplayer/mediacodec/c;Landroidx/media3/exoplayer/mediacodec/t$d;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/mediacodec/a;->a(Landroid/media/MediaCodec;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public release()V
    .locals 6

    .line 1
    const/16 v0, 0x21

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    const/16 v2, 0x23

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    :try_start_0
    iget v4, p0, Landroidx/media3/exoplayer/mediacodec/c;->f:I

    .line 9
    .line 10
    if-ne v4, v3, :cond_0

    .line 11
    .line 12
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/c;->c:Landroidx/media3/exoplayer/mediacodec/v;

    .line 13
    .line 14
    invoke-interface {v4}, Landroidx/media3/exoplayer/mediacodec/v;->shutdown()V

    .line 15
    .line 16
    .line 17
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/c;->b:Landroidx/media3/exoplayer/mediacodec/i;

    .line 18
    .line 19
    invoke-virtual {v4}, Landroidx/media3/exoplayer/mediacodec/i;->q()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v4

    .line 24
    goto :goto_4

    .line 25
    :cond_0
    :goto_0
    const/4 v4, 0x2

    .line 26
    iput v4, p0, Landroidx/media3/exoplayer/mediacodec/c;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    iget-boolean v4, p0, Landroidx/media3/exoplayer/mediacodec/c;->e:Z

    .line 29
    .line 30
    if-nez v4, :cond_4

    .line 31
    .line 32
    :try_start_1
    sget v4, Landroidx/media3/common/util/a1;->a:I

    .line 33
    .line 34
    if-lt v4, v1, :cond_1

    .line 35
    .line 36
    if-ge v4, v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catchall_1
    move-exception v0

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    :goto_1
    if-lt v4, v2, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->d:Landroidx/media3/exoplayer/mediacodec/p;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/mediacodec/p;->d(Landroid/media/MediaCodec;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 60
    .line 61
    .line 62
    iput-boolean v3, p0, Landroidx/media3/exoplayer/mediacodec/c;->e:Z

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :goto_2
    sget v1, Landroidx/media3/common/util/a1;->a:I

    .line 66
    .line 67
    if-lt v1, v2, :cond_3

    .line 68
    .line 69
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/c;->d:Landroidx/media3/exoplayer/mediacodec/p;

    .line 70
    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/mediacodec/p;->d(Landroid/media/MediaCodec;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 81
    .line 82
    .line 83
    iput-boolean v3, p0, Landroidx/media3/exoplayer/mediacodec/c;->e:Z

    .line 84
    .line 85
    throw v0

    .line 86
    :cond_4
    :goto_3
    return-void

    .line 87
    :goto_4
    iget-boolean v5, p0, Landroidx/media3/exoplayer/mediacodec/c;->e:Z

    .line 88
    .line 89
    if-nez v5, :cond_8

    .line 90
    .line 91
    :try_start_2
    sget v5, Landroidx/media3/common/util/a1;->a:I

    .line 92
    .line 93
    if-lt v5, v1, :cond_5

    .line 94
    .line 95
    if-ge v5, v0, :cond_5

    .line 96
    .line 97
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 100
    .line 101
    .line 102
    goto :goto_5

    .line 103
    :catchall_2
    move-exception v0

    .line 104
    goto :goto_6

    .line 105
    :cond_5
    :goto_5
    if-lt v5, v2, :cond_6

    .line 106
    .line 107
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->d:Landroidx/media3/exoplayer/mediacodec/p;

    .line 108
    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/mediacodec/p;->d(Landroid/media/MediaCodec;)V

    .line 114
    .line 115
    .line 116
    :cond_6
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 119
    .line 120
    .line 121
    iput-boolean v3, p0, Landroidx/media3/exoplayer/mediacodec/c;->e:Z

    .line 122
    .line 123
    goto :goto_7

    .line 124
    :goto_6
    sget v1, Landroidx/media3/common/util/a1;->a:I

    .line 125
    .line 126
    if-lt v1, v2, :cond_7

    .line 127
    .line 128
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/c;->d:Landroidx/media3/exoplayer/mediacodec/p;

    .line 129
    .line 130
    if-eqz v1, :cond_7

    .line 131
    .line 132
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/mediacodec/p;->d(Landroid/media/MediaCodec;)V

    .line 135
    .line 136
    .line 137
    :cond_7
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 138
    .line 139
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 140
    .line 141
    .line 142
    iput-boolean v3, p0, Landroidx/media3/exoplayer/mediacodec/c;->e:Z

    .line 143
    .line 144
    throw v0

    .line 145
    :cond_8
    :goto_7
    throw v4
.end method

.method public setVideoScalingMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
