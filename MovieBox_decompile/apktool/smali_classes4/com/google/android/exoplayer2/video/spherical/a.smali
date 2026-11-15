.class final Lcom/google/android/exoplayer2/video/spherical/a;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:[F

.field private final b:[F

.field private final c:Lcom/google/android/exoplayer2/util/k0;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x10

    .line 5
    .line 6
    new-array v1, v0, [F

    .line 7
    .line 8
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/a;->a:[F

    .line 9
    .line 10
    new-array v0, v0, [F

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/a;->b:[F

    .line 13
    .line 14
    new-instance v0, Lcom/google/android/exoplayer2/util/k0;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/k0;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/a;->c:Lcom/google/android/exoplayer2/util/k0;

    .line 20
    .line 21
    return-void
.end method

.method public static a([F[F)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3
    .line 4
    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    aget v2, p1, v1

    .line 8
    .line 9
    mul-float/2addr v2, v2

    .line 10
    const/16 v3, 0x8

    .line 11
    .line 12
    aget v4, p1, v3

    .line 13
    .line 14
    mul-float/2addr v4, v4

    .line 15
    add-float/2addr v2, v4

    .line 16
    float-to-double v4, v2

    .line 17
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    double-to-float v2, v4

    .line 22
    aget v4, p1, v1

    .line 23
    .line 24
    div-float v5, v4, v2

    .line 25
    .line 26
    aput v5, p0, v0

    .line 27
    .line 28
    aget p1, p1, v3

    .line 29
    .line 30
    div-float v0, p1, v2

    .line 31
    .line 32
    const/4 v5, 0x2

    .line 33
    aput v0, p0, v5

    .line 34
    .line 35
    neg-float p1, p1

    .line 36
    div-float/2addr p1, v2

    .line 37
    aput p1, p0, v3

    .line 38
    .line 39
    div-float/2addr v4, v2

    .line 40
    aput v4, p0, v1

    .line 41
    .line 42
    return-void
.end method

.method private static b([F[F)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    aget v2, p1, v2

    .line 6
    .line 7
    neg-float v2, v2

    .line 8
    const/4 v3, 0x2

    .line 9
    aget p1, p1, v3

    .line 10
    .line 11
    neg-float p1, p1

    .line 12
    invoke-static {v1, v2, p1}, Landroid/opengl/Matrix;->length(FFF)F

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v4, 0x0

    .line 17
    cmpl-float v4, v3, v4

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    float-to-double v4, v3

    .line 22
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    double-to-float v8, v4

    .line 27
    div-float v9, v1, v3

    .line 28
    .line 29
    div-float v10, v2, v3

    .line 30
    .line 31
    div-float v11, p1, v3

    .line 32
    .line 33
    const/4 v7, 0x0

    .line 34
    move-object v6, p0

    .line 35
    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method


# virtual methods
.method public c([FJ)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/a;->c:Lcom/google/android/exoplayer2/util/k0;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/util/k0;->j(J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, [F

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/video/spherical/a;->b:[F

    .line 14
    .line 15
    invoke-static {p3, p2}, Lcom/google/android/exoplayer2/video/spherical/a;->b([F[F)V

    .line 16
    .line 17
    .line 18
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/video/spherical/a;->d:Z

    .line 19
    .line 20
    const/4 p3, 0x1

    .line 21
    if-nez p2, :cond_1

    .line 22
    .line 23
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/spherical/a;->a:[F

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/a;->b:[F

    .line 26
    .line 27
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/video/spherical/a;->a([F[F)V

    .line 28
    .line 29
    .line 30
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/video/spherical/a;->d:Z

    .line 31
    .line 32
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/spherical/a;->a:[F

    .line 33
    .line 34
    iget-object v5, p0, Lcom/google/android/exoplayer2/video/spherical/a;->b:[F

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v2, 0x0

    .line 38
    const/4 v4, 0x0

    .line 39
    move-object v1, p1

    .line 40
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 41
    .line 42
    .line 43
    return p3
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/a;->c:Lcom/google/android/exoplayer2/util/k0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/k0;->c()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/spherical/a;->d:Z

    .line 8
    .line 9
    return-void
.end method

.method public e(J[F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/a;->c:Lcom/google/android/exoplayer2/util/k0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/util/k0;->a(JLjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
