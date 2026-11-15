.class final Lcom/google/android/exoplayer2/video/spherical/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/video/i;
.implements Loa/a;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Lcom/google/android/exoplayer2/video/spherical/e;

.field private final d:Lcom/google/android/exoplayer2/video/spherical/a;

.field private final e:Lcom/google/android/exoplayer2/util/k0;

.field private final f:Lcom/google/android/exoplayer2/util/k0;

.field private final g:[F

.field private final h:[F

.field private i:I

.field private j:Landroid/graphics/SurfaceTexture;

.field private volatile k:I

.field private l:I

.field private m:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v0, Lcom/google/android/exoplayer2/video/spherical/e;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/spherical/e;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->c:Lcom/google/android/exoplayer2/video/spherical/e;

    .line 25
    .line 26
    new-instance v0, Lcom/google/android/exoplayer2/video/spherical/a;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/spherical/a;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->d:Lcom/google/android/exoplayer2/video/spherical/a;

    .line 32
    .line 33
    new-instance v0, Lcom/google/android/exoplayer2/util/k0;

    .line 34
    .line 35
    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/k0;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->e:Lcom/google/android/exoplayer2/util/k0;

    .line 39
    .line 40
    new-instance v0, Lcom/google/android/exoplayer2/util/k0;

    .line 41
    .line 42
    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/k0;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->f:Lcom/google/android/exoplayer2/util/k0;

    .line 46
    .line 47
    const/16 v0, 0x10

    .line 48
    .line 49
    new-array v1, v0, [F

    .line 50
    .line 51
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/g;->g:[F

    .line 52
    .line 53
    new-array v0, v0, [F

    .line 54
    .line 55
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->h:[F

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->k:I

    .line 59
    .line 60
    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->l:I

    .line 62
    .line 63
    return-void
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/video/spherical/g;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/spherical/g;->f(Landroid/graphics/SurfaceTexture;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic f(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private i([BIJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->m:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/video/spherical/g;->l:I

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/g;->m:[B

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    if-ne p2, p1, :cond_0

    .line 9
    .line 10
    iget p2, p0, Lcom/google/android/exoplayer2/video/spherical/g;->k:I

    .line 11
    .line 12
    :cond_0
    iput p2, p0, Lcom/google/android/exoplayer2/video/spherical/g;->l:I

    .line 13
    .line 14
    if-ne v1, p2, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/g;->m:[B

    .line 17
    .line 18
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/g;->m:[B

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget p2, p0, Lcom/google/android/exoplayer2/video/spherical/g;->l:I

    .line 30
    .line 31
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/spherical/d;->a([BI)Lcom/google/android/exoplayer2/video/spherical/c;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 p1, 0x0

    .line 37
    :goto_0
    if-eqz p1, :cond_3

    .line 38
    .line 39
    invoke-static {p1}, Lcom/google/android/exoplayer2/video/spherical/e;->c(Lcom/google/android/exoplayer2/video/spherical/c;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_3

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    iget p1, p0, Lcom/google/android/exoplayer2/video/spherical/g;->l:I

    .line 47
    .line 48
    invoke-static {p1}, Lcom/google/android/exoplayer2/video/spherical/c;->b(I)Lcom/google/android/exoplayer2/video/spherical/c;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/spherical/g;->f:Lcom/google/android/exoplayer2/util/k0;

    .line 53
    .line 54
    invoke-virtual {p2, p3, p4, p1}, Lcom/google/android/exoplayer2/util/k0;->a(JLjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public a(J[F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->d:Lcom/google/android/exoplayer2/video/spherical/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/spherical/a;->e(J[F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->e:Lcom/google/android/exoplayer2/util/k0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/k0;->c()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->d:Lcom/google/android/exoplayer2/video/spherical/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/spherical/a;->d()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public d([FZ)V
    .locals 8

    .line 1
    const/16 v0, 0x4000

    .line 2
    .line 3
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->c()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->j:Landroid/graphics/SurfaceTexture;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/graphics/SurfaceTexture;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->c()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->g:[F

    .line 42
    .line 43
    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->j:Landroid/graphics/SurfaceTexture;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/g;->e:Lcom/google/android/exoplayer2/util/k0;

    .line 53
    .line 54
    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/util/k0;->g(J)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/lang/Long;

    .line 59
    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/spherical/g;->d:Lcom/google/android/exoplayer2/video/spherical/a;

    .line 63
    .line 64
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/spherical/g;->g:[F

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 67
    .line 68
    .line 69
    move-result-wide v5

    .line 70
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/exoplayer2/video/spherical/a;->c([FJ)Z

    .line 71
    .line 72
    .line 73
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/g;->f:Lcom/google/android/exoplayer2/util/k0;

    .line 74
    .line 75
    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/util/k0;->j(J)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Lcom/google/android/exoplayer2/video/spherical/c;

    .line 80
    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/g;->c:Lcom/google/android/exoplayer2/video/spherical/e;

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/video/spherical/e;->d(Lcom/google/android/exoplayer2/video/spherical/c;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/g;->h:[F

    .line 89
    .line 90
    iget-object v6, p0, Lcom/google/android/exoplayer2/video/spherical/g;->g:[F

    .line 91
    .line 92
    const/4 v7, 0x0

    .line 93
    const/4 v3, 0x0

    .line 94
    const/4 v5, 0x0

    .line 95
    move-object v4, p1

    .line 96
    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/g;->c:Lcom/google/android/exoplayer2/video/spherical/e;

    .line 100
    .line 101
    iget v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->i:I

    .line 102
    .line 103
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/g;->h:[F

    .line 104
    .line 105
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/video/spherical/e;->a(I[FZ)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public e()Landroid/graphics/SurfaceTexture;
    .locals 2

    .line 1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->c()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->c:Lcom/google/android/exoplayer2/video/spherical/e;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/spherical/e;->b()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->c()V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->f()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->i:I

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/SurfaceTexture;

    .line 26
    .line 27
    iget v1, p0, Lcom/google/android/exoplayer2/video/spherical/g;->i:I

    .line 28
    .line 29
    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->j:Landroid/graphics/SurfaceTexture;

    .line 33
    .line 34
    new-instance v1, Lcom/google/android/exoplayer2/video/spherical/f;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/video/spherical/f;-><init>(Lcom/google/android/exoplayer2/video/spherical/g;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->j:Landroid/graphics/SurfaceTexture;

    .line 43
    .line 44
    return-object v0
.end method

.method public g(JJLcom/google/android/exoplayer2/p1;Landroid/media/MediaFormat;)V
    .locals 0

    .line 1
    iget-object p6, p0, Lcom/google/android/exoplayer2/video/spherical/g;->e:Lcom/google/android/exoplayer2/util/k0;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p6, p3, p4, p1}, Lcom/google/android/exoplayer2/util/k0;->a(JLjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p5, Lcom/google/android/exoplayer2/p1;->v:[B

    .line 11
    .line 12
    iget p2, p5, Lcom/google/android/exoplayer2/p1;->w:I

    .line 13
    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/spherical/g;->i([BIJ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public h(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/video/spherical/g;->k:I

    .line 2
    .line 3
    return-void
.end method
