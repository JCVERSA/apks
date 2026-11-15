.class final Landroidx/media3/exoplayer/b2$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/video/i0;
.implements Landroidx/media3/exoplayer/audio/x;
.implements Lh2/h;
.implements Ld2/b;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$b;
.implements Landroidx/media3/exoplayer/e$b;
.implements Landroidx/media3/exoplayer/k4$b;
.implements Landroidx/media3/exoplayer/ExoPlayer$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/b2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media3/exoplayer/b2;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/b2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/b2;Landroidx/media3/exoplayer/b2$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b2$c;-><init>(Landroidx/media3/exoplayer/b2;)V

    return-void
.end method

.method public static synthetic A(Landroidx/media3/common/x;Landroidx/media3/common/a0$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/b2$c;->J(Landroidx/media3/common/x;Landroidx/media3/common/a0$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B(Lu1/b;Landroidx/media3/common/a0$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/b2$c;->H(Lu1/b;Landroidx/media3/common/a0$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic C(Landroidx/media3/common/m0;Landroidx/media3/common/a0$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/b2$c;->N(Landroidx/media3/common/m0;Landroidx/media3/common/a0$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D(Landroidx/media3/common/m;Landroidx/media3/common/a0$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/b2$c;->L(Landroidx/media3/common/m;Landroidx/media3/common/a0$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E(ZLandroidx/media3/common/a0$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/b2$c;->K(ZLandroidx/media3/common/a0$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic F(Landroidx/media3/exoplayer/b2$c;Landroidx/media3/common/a0$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b2$c;->I(Landroidx/media3/common/a0$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic G(Ljava/util/List;Landroidx/media3/common/a0$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Landroidx/media3/common/a0$d;->onCues(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic H(Lu1/b;Landroidx/media3/common/a0$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Landroidx/media3/common/a0$d;->onCues(Lu1/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic I(Landroidx/media3/common/a0$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->U0(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/v;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p1, v0}, Landroidx/media3/common/a0$d;->onMediaMetadataChanged(Landroidx/media3/common/v;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static synthetic J(Landroidx/media3/common/x;Landroidx/media3/common/a0$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Landroidx/media3/common/a0$d;->onMetadata(Landroidx/media3/common/x;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic K(ZLandroidx/media3/common/a0$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Landroidx/media3/common/a0$d;->onSkipSilenceEnabledChanged(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic L(Landroidx/media3/common/m;Landroidx/media3/common/a0$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Landroidx/media3/common/a0$d;->onDeviceInfoChanged(Landroidx/media3/common/m;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic M(IZLandroidx/media3/common/a0$d;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Landroidx/media3/common/a0$d;->onDeviceVolumeChanged(IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic N(Landroidx/media3/common/m0;Landroidx/media3/common/a0$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Landroidx/media3/common/a0$d;->onVideoSizeChanged(Landroidx/media3/common/m0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic y(IZLandroidx/media3/common/a0$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/b2$c;->M(IZLandroidx/media3/common/a0$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z(Ljava/util/List;Landroidx/media3/common/a0$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/b2$c;->G(Ljava/util/List;Landroidx/media3/common/a0$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Lx1/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lx1/a;->a(Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Lx1/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lx1/a;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Lx1/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lx1/a;->c(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public d(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Lx1/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2}, Lx1/a;->d(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public e(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Lx1/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lx1/a;->e(Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public f(Ljava/lang/Object;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Lx1/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2, p3}, Lx1/a;->f(Ljava/lang/Object;J)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 11
    .line 12
    invoke-static {p2}, Landroidx/media3/exoplayer/b2;->l1(Landroidx/media3/exoplayer/b2;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-ne p2, p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 19
    .line 20
    invoke-static {p1}, Landroidx/media3/exoplayer/b2;->k1(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/util/t;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance p2, Landroidx/media3/exoplayer/k2;

    .line 25
    .line 26
    invoke-direct {p2}, Landroidx/media3/exoplayer/k2;-><init>()V

    .line 27
    .line 28
    .line 29
    const/16 p3, 0x1a

    .line 30
    .line 31
    invoke-virtual {p1, p3, p2}, Landroidx/media3/common/util/t;->l(ILandroidx/media3/common/util/t$a;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Lx1/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lx1/a;->g(Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public h(IJJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Lx1/a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move v2, p1

    .line 8
    move-wide v3, p2

    .line 9
    move-wide v5, p4

    .line 10
    invoke-interface/range {v1 .. v6}, Lx1/a;->h(IJJ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public i(JI)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Lx1/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2, p3}, Lx1/a;->i(JI)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public j(Landroidx/media3/exoplayer/audio/AudioSink$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Lx1/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lx1/a;->j(Landroidx/media3/exoplayer/audio/AudioSink$a;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public k(Landroidx/media3/exoplayer/audio/AudioSink$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Lx1/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lx1/a;->k(Landroidx/media3/exoplayer/audio/AudioSink$a;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public l(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/exoplayer/b2;->b1(Landroidx/media3/exoplayer/b2;)Landroidx/media3/exoplayer/k4;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Landroidx/media3/exoplayer/b2;->c1(Landroidx/media3/exoplayer/k4;)Landroidx/media3/common/m;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 12
    .line 13
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->d1(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/m;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Landroidx/media3/common/m;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 24
    .line 25
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/b2;->e1(Landroidx/media3/exoplayer/b2;Landroidx/media3/common/m;)Landroidx/media3/common/m;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 29
    .line 30
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->k1(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/util/t;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Landroidx/media3/exoplayer/i2;

    .line 35
    .line 36
    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/i2;-><init>(Landroidx/media3/common/m;)V

    .line 37
    .line 38
    .line 39
    const/16 p1, 0x1d

    .line 40
    .line 41
    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/t;->l(ILandroidx/media3/common/util/t$a;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public m()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/b2;->a1(Landroidx/media3/exoplayer/b2;ZI)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public n(Landroidx/media3/exoplayer/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/b2;->m1(Landroidx/media3/exoplayer/b2;Landroidx/media3/exoplayer/j;)Landroidx/media3/exoplayer/j;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Lx1/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lx1/a;->n(Landroidx/media3/exoplayer/j;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public o(Landroidx/media3/exoplayer/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/b2;->g1(Landroidx/media3/exoplayer/b2;Landroidx/media3/exoplayer/j;)Landroidx/media3/exoplayer/j;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Lx1/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lx1/a;->o(Landroidx/media3/exoplayer/j;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Lx1/a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move-object v2, p1

    .line 8
    move-wide v3, p2

    .line 9
    move-wide v5, p4

    .line 10
    invoke-interface/range {v1 .. v6}, Lx1/a;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->k1(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/util/t;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/g2;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/g2;-><init>(Ljava/util/List;)V

    const/16 p1, 0x1b

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/t;->l(ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public onCues(Lu1/b;)V
    .locals 2

    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/b2;->Q0(Landroidx/media3/exoplayer/b2;Lu1/b;)Lu1/b;

    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->k1(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/util/t;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/d2;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/d2;-><init>(Lu1/b;)V

    const/16 p1, 0x1b

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/t;->l(ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Lx1/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2, p3}, Lx1/a;->onDroppedFrames(IJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onMetadata(Landroidx/media3/common/x;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->R0(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/v;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroidx/media3/common/v;->a()Landroidx/media3/common/v$b;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, p1}, Landroidx/media3/common/v$b;->M(Landroidx/media3/common/x;)Landroidx/media3/common/v$b;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroidx/media3/common/v$b;->J()Landroidx/media3/common/v;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/b2;->S0(Landroidx/media3/exoplayer/b2;Landroidx/media3/common/v;)Landroidx/media3/common/v;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 23
    .line 24
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->T0(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/v;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 29
    .line 30
    invoke-static {v1}, Landroidx/media3/exoplayer/b2;->U0(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/v;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Landroidx/media3/common/v;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 41
    .line 42
    invoke-static {v1, v0}, Landroidx/media3/exoplayer/b2;->V0(Landroidx/media3/exoplayer/b2;Landroidx/media3/common/v;)Landroidx/media3/common/v;

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 46
    .line 47
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->k1(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/util/t;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Landroidx/media3/exoplayer/e2;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/e2;-><init>(Landroidx/media3/exoplayer/b2$c;)V

    .line 54
    .line 55
    .line 56
    const/16 v2, 0xe

    .line 57
    .line 58
    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/t;->i(ILandroidx/media3/common/util/t$a;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 62
    .line 63
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->k1(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/util/t;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v1, Landroidx/media3/exoplayer/f2;

    .line 68
    .line 69
    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/f2;-><init>(Landroidx/media3/common/x;)V

    .line 70
    .line 71
    .line 72
    const/16 p1, 0x1c

    .line 73
    .line 74
    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/t;->i(ILandroidx/media3/common/util/t$a;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 78
    .line 79
    invoke-static {p1}, Landroidx/media3/exoplayer/b2;->k1(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/util/t;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroidx/media3/common/util/t;->f()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->O0(Landroidx/media3/exoplayer/b2;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 11
    .line 12
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/b2;->P0(Landroidx/media3/exoplayer/b2;Z)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->k1(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/util/t;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Landroidx/media3/exoplayer/l2;

    .line 22
    .line 23
    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/l2;-><init>(Z)V

    .line 24
    .line 25
    .line 26
    const/16 p1, 0x17

    .line 27
    .line 28
    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/t;->l(ILandroidx/media3/common/util/t$a;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/b2;->Z0(Landroidx/media3/exoplayer/b2;Landroid/graphics/SurfaceTexture;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 7
    .line 8
    invoke-static {p1, p2, p3}, Landroidx/media3/exoplayer/b2;->Y0(Landroidx/media3/exoplayer/b2;II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/b2;->X0(Landroidx/media3/exoplayer/b2;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0, v0}, Landroidx/media3/exoplayer/b2;->Y0(Landroidx/media3/exoplayer/b2;II)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {p1, p2, p3}, Landroidx/media3/exoplayer/b2;->Y0(Landroidx/media3/exoplayer/b2;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Lx1/a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move-object v2, p1

    .line 8
    move-wide v3, p2

    .line 9
    move-wide v5, p4

    .line 10
    invoke-interface/range {v1 .. v6}, Lx1/a;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/m0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/b2;->j1(Landroidx/media3/exoplayer/b2;Landroidx/media3/common/m0;)Landroidx/media3/common/m0;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->k1(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/util/t;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Landroidx/media3/exoplayer/h2;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/h2;-><init>(Landroidx/media3/common/m0;)V

    .line 15
    .line 16
    .line 17
    const/16 p1, 0x19

    .line 18
    .line 19
    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/t;->l(ILandroidx/media3/common/util/t$a;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public p(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/b2;->X0(Landroidx/media3/exoplayer/b2;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public q(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/b2;->X0(Landroidx/media3/exoplayer/b2;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public r(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->k1(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/util/t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroidx/media3/exoplayer/j2;

    .line 8
    .line 9
    invoke-direct {v1, p1, p2}, Landroidx/media3/exoplayer/j2;-><init>(IZ)V

    .line 10
    .line 11
    .line 12
    const/16 p1, 0x1e

    .line 13
    .line 14
    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/t;->l(ILandroidx/media3/common/util/t$a;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public s(Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/b2;->N0(Landroidx/media3/exoplayer/b2;Landroidx/media3/common/r;)Landroidx/media3/common/r;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Lx1/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1, p2}, Lx1/a;->s(Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {p1, p3, p4}, Landroidx/media3/exoplayer/b2;->Y0(Landroidx/media3/exoplayer/b2;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->W0(Landroidx/media3/exoplayer/b2;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 10
    .line 11
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/b2;->X0(Landroidx/media3/exoplayer/b2;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/exoplayer/b2;->W0(Landroidx/media3/exoplayer/b2;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/b2;->X0(Landroidx/media3/exoplayer/b2;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-static {p1, v0, v0}, Landroidx/media3/exoplayer/b2;->Y0(Landroidx/media3/exoplayer/b2;II)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public t(Landroidx/media3/exoplayer/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Lx1/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lx1/a;->t(Landroidx/media3/exoplayer/j;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/b2;->N0(Landroidx/media3/exoplayer/b2;Landroidx/media3/common/r;)Landroidx/media3/common/r;

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 17
    .line 18
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/b2;->m1(Landroidx/media3/exoplayer/b2;Landroidx/media3/exoplayer/j;)Landroidx/media3/exoplayer/j;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public u(Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/b2;->i1(Landroidx/media3/exoplayer/b2;Landroidx/media3/common/r;)Landroidx/media3/common/r;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Lx1/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1, p2}, Lx1/a;->u(Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public v(Landroidx/media3/exoplayer/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/b2;->h1(Landroidx/media3/exoplayer/b2;)Lx1/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lx1/a;->v(Landroidx/media3/exoplayer/j;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/b2;->i1(Landroidx/media3/exoplayer/b2;Landroidx/media3/common/r;)Landroidx/media3/common/r;

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 17
    .line 18
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/b2;->g1(Landroidx/media3/exoplayer/b2;Landroidx/media3/exoplayer/j;)Landroidx/media3/exoplayer/j;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public synthetic w(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/p0;->a(Landroidx/media3/exoplayer/ExoPlayer$a;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public x(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/b2$c;->a:Landroidx/media3/exoplayer/b2;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/exoplayer/b2;->f1(Landroidx/media3/exoplayer/b2;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
