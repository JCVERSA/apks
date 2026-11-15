.class public final Landroidx/media3/exoplayer/audio/d1;
.super Landroidx/media3/common/audio/b;
.source "source.java"


# instance fields
.field private final i:F

.field private final j:S

.field private final k:I

.field private final l:J

.field private final m:J

.field private n:I

.field private o:Z

.field private p:I

.field private q:J

.field private r:I

.field private s:[B

.field private t:I

.field private u:I

.field private v:[B


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v6, 0xa

    const/16 v7, 0x400

    const-wide/32 v1, 0x186a0

    const v3, 0x3e4ccccd    # 0.2f

    const-wide/32 v4, 0x1e8480

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/audio/d1;-><init>(JFJIS)V

    return-void
.end method

.method public constructor <init>(JFJIS)V
    .locals 2

    .line 2
    invoke-direct {p0}, Landroidx/media3/common/audio/b;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/media3/exoplayer/audio/d1;->r:I

    .line 4
    iput v0, p0, Landroidx/media3/exoplayer/audio/d1;->t:I

    .line 5
    iput v0, p0, Landroidx/media3/exoplayer/audio/d1;->u:I

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    .line 6
    :cond_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    .line 7
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/d1;->l:J

    .line 8
    iput p3, p0, Landroidx/media3/exoplayer/audio/d1;->i:F

    .line 9
    iput-wide p4, p0, Landroidx/media3/exoplayer/audio/d1;->m:J

    .line 10
    iput p6, p0, Landroidx/media3/exoplayer/audio/d1;->k:I

    .line 11
    iput-short p7, p0, Landroidx/media3/exoplayer/audio/d1;->j:S

    .line 12
    sget-object p1, Landroidx/media3/common/util/a1;->f:[B

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/d1;->s:[B

    .line 13
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/d1;->v:[B

    return-void
.end method

.method private static A(BB)I
    .locals 0

    .line 1
    and-int/lit16 p1, p1, 0xff

    .line 2
    .line 3
    shl-int/lit8 p0, p0, 0x8

    .line 4
    .line 5
    or-int/2addr p0, p1

    .line 6
    return p0
.end method

.method private h(F)I
    .locals 0

    .line 1
    float-to-int p1, p1

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/d1;->i(I)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method private i(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/audio/d1;->n:I

    .line 2
    .line 3
    div-int/2addr p1, v0

    .line 4
    mul-int/2addr p1, v0

    .line 5
    return p1
.end method

.method private j(II)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/audio/d1;->k:I

    .line 2
    .line 3
    rsub-int/lit8 v1, v0, 0x64

    .line 4
    .line 5
    mul-int/lit16 p1, p1, 0x3e8

    .line 6
    .line 7
    mul-int/2addr v1, p1

    .line 8
    div-int/2addr v1, p2

    .line 9
    div-int/lit16 v1, v1, 0x3e8

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    return v0
.end method

.method private k(II)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/audio/d1;->k:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x64

    .line 4
    .line 5
    mul-int/lit16 p1, p1, 0x3e8

    .line 6
    .line 7
    div-int/2addr p1, p2

    .line 8
    mul-int/2addr v0, p1

    .line 9
    div-int/lit16 v0, v0, 0x3e8

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x64

    .line 12
    .line 13
    return v0
.end method

.method private l(I)I
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/d1;->m:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/audio/d1;->m(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Landroidx/media3/exoplayer/audio/d1;->r:I

    .line 8
    .line 9
    sub-int/2addr v0, v1

    .line 10
    iget v1, p0, Landroidx/media3/exoplayer/audio/d1;->n:I

    .line 11
    .line 12
    mul-int/2addr v0, v1

    .line 13
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/d1;->s:[B

    .line 14
    .line 15
    array-length v1, v1

    .line 16
    div-int/lit8 v1, v1, 0x2

    .line 17
    .line 18
    sub-int/2addr v0, v1

    .line 19
    if-ltz v0, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/a;->g(Z)V

    .line 25
    .line 26
    .line 27
    int-to-float p1, p1

    .line 28
    iget v1, p0, Landroidx/media3/exoplayer/audio/d1;->i:F

    .line 29
    .line 30
    mul-float/2addr p1, v1

    .line 31
    const/high16 v1, 0x3f000000    # 0.5f

    .line 32
    .line 33
    add-float/2addr p1, v1

    .line 34
    int-to-float v0, v0

    .line 35
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/d1;->h(F)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    return p1
.end method

.method private m(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/common/audio/b;->b:Landroidx/media3/common/audio/AudioProcessor$a;

    .line 2
    .line 3
    iget v0, v0, Landroidx/media3/common/audio/AudioProcessor$a;->a:I

    .line 4
    .line 5
    int-to-long v0, v0

    .line 6
    mul-long/2addr p1, v0

    .line 7
    const-wide/32 v0, 0xf4240

    .line 8
    .line 9
    .line 10
    div-long/2addr p1, v0

    .line 11
    long-to-int p1, p1

    .line 12
    return p1
.end method

.method private n(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lt v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/lit8 v2, v0, -0x1

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-direct {p0, v1, v2}, Landroidx/media3/exoplayer/audio/d1;->q(BB)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget p1, p0, Landroidx/media3/exoplayer/audio/d1;->n:I

    .line 30
    .line 31
    div-int/2addr v0, p1

    .line 32
    mul-int/2addr v0, p1

    .line 33
    add-int/2addr v0, p1

    .line 34
    return v0

    .line 35
    :cond_0
    add-int/lit8 v0, v0, -0x2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method private o(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/lit8 v2, v0, -0x1

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-direct {p0, v1, v2}, Landroidx/media3/exoplayer/audio/d1;->q(BB)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget p1, p0, Landroidx/media3/exoplayer/audio/d1;->n:I

    .line 30
    .line 31
    div-int/2addr v0, p1

    .line 32
    mul-int/2addr p1, v0

    .line 33
    return p1

    .line 34
    :cond_0
    add-int/lit8 v0, v0, 0x2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method private q(BB)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/audio/d1;->A(BB)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-short p2, p0, Landroidx/media3/exoplayer/audio/d1;->j:S

    .line 10
    .line 11
    if-le p1, p2, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method private r([BII)V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne p3, v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    if-ge v0, p2, :cond_3

    .line 7
    .line 8
    add-int/lit8 v1, v0, 0x1

    .line 9
    .line 10
    aget-byte v1, p1, v1

    .line 11
    .line 12
    aget-byte v2, p1, v0

    .line 13
    .line 14
    invoke-static {v1, v2}, Landroidx/media3/exoplayer/audio/d1;->A(BB)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez p3, :cond_1

    .line 19
    .line 20
    add-int/lit8 v2, p2, -0x1

    .line 21
    .line 22
    invoke-direct {p0, v0, v2}, Landroidx/media3/exoplayer/audio/d1;->k(II)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v2, 0x2

    .line 28
    if-ne p3, v2, :cond_2

    .line 29
    .line 30
    add-int/lit8 v2, p2, -0x1

    .line 31
    .line 32
    invoke-direct {p0, v0, v2}, Landroidx/media3/exoplayer/audio/d1;->j(II)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iget v2, p0, Landroidx/media3/exoplayer/audio/d1;->k:I

    .line 38
    .line 39
    :goto_1
    mul-int/2addr v1, v2

    .line 40
    div-int/lit8 v1, v1, 0x64

    .line 41
    .line 42
    invoke-static {p1, v0, v1}, Landroidx/media3/exoplayer/audio/d1;->x([BII)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v0, v0, 0x2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    return-void
.end method

.method private s(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/media3/common/audio/b;->g(I)Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private t([BII)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/audio/d1;->n:I

    .line 2
    .line 3
    rem-int v0, p2, v0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v1

    .line 11
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "byteOutput size is not aligned to frame size "

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v0, v2}, Landroidx/media3/common/util/a;->b(ZLjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/audio/d1;->r([BII)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p2}, Landroidx/media3/common/audio/b;->g(I)Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-virtual {p3, p1, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private u(Z)V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/audio/d1;->u:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/d1;->s:[B

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-eq v0, v2, :cond_0

    .line 7
    .line 8
    if-eqz p1, :cond_7

    .line 9
    .line 10
    :cond_0
    iget v2, p0, Landroidx/media3/exoplayer/audio/d1;->r:I

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x2

    .line 15
    if-nez v2, :cond_3

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x3

    .line 20
    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/audio/d1;->v(II)V

    .line 21
    .line 22
    .line 23
    move p1, v0

    .line 24
    :goto_0
    move v1, p1

    .line 25
    goto :goto_2

    .line 26
    :cond_1
    array-length p1, v1

    .line 27
    div-int/2addr p1, v5

    .line 28
    if-lt v0, p1, :cond_2

    .line 29
    .line 30
    move p1, v4

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    move p1, v3

    .line 33
    :goto_1
    invoke-static {p1}, Landroidx/media3/common/util/a;->g(Z)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/d1;->s:[B

    .line 37
    .line 38
    array-length p1, p1

    .line 39
    div-int/2addr p1, v5

    .line 40
    invoke-direct {p0, p1, v3}, Landroidx/media3/exoplayer/audio/d1;->v(II)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    if-eqz p1, :cond_4

    .line 45
    .line 46
    array-length p1, v1

    .line 47
    div-int/2addr p1, v5

    .line 48
    sub-int p1, v0, p1

    .line 49
    .line 50
    array-length v1, v1

    .line 51
    div-int/2addr v1, v5

    .line 52
    add-int/2addr v1, p1

    .line 53
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/d1;->l(I)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/d1;->s:[B

    .line 58
    .line 59
    array-length v2, v2

    .line 60
    div-int/2addr v2, v5

    .line 61
    add-int/2addr p1, v2

    .line 62
    invoke-direct {p0, p1, v5}, Landroidx/media3/exoplayer/audio/d1;->v(II)V

    .line 63
    .line 64
    .line 65
    move v7, v1

    .line 66
    move v1, p1

    .line 67
    move p1, v7

    .line 68
    goto :goto_2

    .line 69
    :cond_4
    array-length p1, v1

    .line 70
    div-int/2addr p1, v5

    .line 71
    sub-int p1, v0, p1

    .line 72
    .line 73
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/d1;->l(I)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-direct {p0, v1, v4}, Landroidx/media3/exoplayer/audio/d1;->v(II)V

    .line 78
    .line 79
    .line 80
    :goto_2
    iget v2, p0, Landroidx/media3/exoplayer/audio/d1;->n:I

    .line 81
    .line 82
    rem-int v2, p1, v2

    .line 83
    .line 84
    if-nez v2, :cond_5

    .line 85
    .line 86
    move v2, v4

    .line 87
    goto :goto_3

    .line 88
    :cond_5
    move v2, v3

    .line 89
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v6, "bytesConsumed is not aligned to frame size: %s"

    .line 95
    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-static {v2, v5}, Landroidx/media3/common/util/a;->h(ZLjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    if-lt v0, v1, :cond_6

    .line 110
    .line 111
    move v3, v4

    .line 112
    :cond_6
    invoke-static {v3}, Landroidx/media3/common/util/a;->g(Z)V

    .line 113
    .line 114
    .line 115
    iget v0, p0, Landroidx/media3/exoplayer/audio/d1;->u:I

    .line 116
    .line 117
    sub-int/2addr v0, p1

    .line 118
    iput v0, p0, Landroidx/media3/exoplayer/audio/d1;->u:I

    .line 119
    .line 120
    iget v0, p0, Landroidx/media3/exoplayer/audio/d1;->t:I

    .line 121
    .line 122
    add-int/2addr v0, p1

    .line 123
    iput v0, p0, Landroidx/media3/exoplayer/audio/d1;->t:I

    .line 124
    .line 125
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/d1;->s:[B

    .line 126
    .line 127
    array-length v2, v2

    .line 128
    rem-int/2addr v0, v2

    .line 129
    iput v0, p0, Landroidx/media3/exoplayer/audio/d1;->t:I

    .line 130
    .line 131
    iget v0, p0, Landroidx/media3/exoplayer/audio/d1;->r:I

    .line 132
    .line 133
    iget v2, p0, Landroidx/media3/exoplayer/audio/d1;->n:I

    .line 134
    .line 135
    div-int v3, v1, v2

    .line 136
    .line 137
    add-int/2addr v0, v3

    .line 138
    iput v0, p0, Landroidx/media3/exoplayer/audio/d1;->r:I

    .line 139
    .line 140
    iget-wide v3, p0, Landroidx/media3/exoplayer/audio/d1;->q:J

    .line 141
    .line 142
    sub-int/2addr p1, v1

    .line 143
    div-int/2addr p1, v2

    .line 144
    int-to-long v0, p1

    .line 145
    add-long/2addr v3, v0

    .line 146
    iput-wide v3, p0, Landroidx/media3/exoplayer/audio/d1;->q:J

    .line 147
    .line 148
    :cond_7
    return-void
.end method

.method private v(II)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/audio/d1;->u:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-lt v0, p1, :cond_1

    .line 9
    .line 10
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    move v0, v2

    .line 13
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-ne p2, v0, :cond_4

    .line 18
    .line 19
    iget v0, p0, Landroidx/media3/exoplayer/audio/d1;->t:I

    .line 20
    .line 21
    iget v3, p0, Landroidx/media3/exoplayer/audio/d1;->u:I

    .line 22
    .line 23
    add-int v4, v0, v3

    .line 24
    .line 25
    iget-object v5, p0, Landroidx/media3/exoplayer/audio/d1;->s:[B

    .line 26
    .line 27
    array-length v6, v5

    .line 28
    if-gt v4, v6, :cond_2

    .line 29
    .line 30
    add-int/2addr v0, v3

    .line 31
    sub-int/2addr v0, p1

    .line 32
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/d1;->v:[B

    .line 33
    .line 34
    invoke-static {v5, v0, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    array-length v4, v5

    .line 39
    sub-int/2addr v4, v0

    .line 40
    sub-int/2addr v3, v4

    .line 41
    if-lt v3, p1, :cond_3

    .line 42
    .line 43
    sub-int/2addr v3, p1

    .line 44
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/d1;->v:[B

    .line 45
    .line 46
    invoke-static {v5, v3, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    sub-int v0, p1, v3

    .line 51
    .line 52
    array-length v4, v5

    .line 53
    sub-int/2addr v4, v0

    .line 54
    iget-object v6, p0, Landroidx/media3/exoplayer/audio/d1;->v:[B

    .line 55
    .line 56
    invoke-static {v5, v4, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    .line 58
    .line 59
    iget-object v4, p0, Landroidx/media3/exoplayer/audio/d1;->s:[B

    .line 60
    .line 61
    iget-object v5, p0, Landroidx/media3/exoplayer/audio/d1;->v:[B

    .line 62
    .line 63
    invoke-static {v4, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    iget v0, p0, Landroidx/media3/exoplayer/audio/d1;->t:I

    .line 68
    .line 69
    add-int v3, v0, p1

    .line 70
    .line 71
    iget-object v4, p0, Landroidx/media3/exoplayer/audio/d1;->s:[B

    .line 72
    .line 73
    array-length v5, v4

    .line 74
    if-gt v3, v5, :cond_5

    .line 75
    .line 76
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/d1;->v:[B

    .line 77
    .line 78
    invoke-static {v4, v0, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_5
    array-length v3, v4

    .line 83
    sub-int/2addr v3, v0

    .line 84
    iget-object v5, p0, Landroidx/media3/exoplayer/audio/d1;->v:[B

    .line 85
    .line 86
    invoke-static {v4, v0, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    .line 88
    .line 89
    sub-int v0, p1, v3

    .line 90
    .line 91
    iget-object v4, p0, Landroidx/media3/exoplayer/audio/d1;->s:[B

    .line 92
    .line 93
    iget-object v5, p0, Landroidx/media3/exoplayer/audio/d1;->v:[B

    .line 94
    .line 95
    invoke-static {v4, v2, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    .line 97
    .line 98
    :goto_1
    iget v0, p0, Landroidx/media3/exoplayer/audio/d1;->n:I

    .line 99
    .line 100
    rem-int v0, p1, v0

    .line 101
    .line 102
    if-nez v0, :cond_6

    .line 103
    .line 104
    move v0, v1

    .line 105
    goto :goto_2

    .line 106
    :cond_6
    move v0, v2

    .line 107
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v4, "sizeToOutput is not aligned to frame size: "

    .line 113
    .line 114
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-static {v0, v3}, Landroidx/media3/common/util/a;->b(ZLjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    iget v0, p0, Landroidx/media3/exoplayer/audio/d1;->t:I

    .line 128
    .line 129
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/d1;->s:[B

    .line 130
    .line 131
    array-length v3, v3

    .line 132
    if-ge v0, v3, :cond_7

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_7
    move v1, v2

    .line 136
    :goto_3
    invoke-static {v1}, Landroidx/media3/common/util/a;->g(Z)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/d1;->v:[B

    .line 140
    .line 141
    invoke-direct {p0, v0, p1, p2}, Landroidx/media3/exoplayer/audio/d1;->t([BII)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method private w(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/d1;->s:[B

    .line 10
    .line 11
    array-length v2, v2

    .line 12
    add-int/2addr v1, v2

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/d1;->n(Ljava/nio/ByteBuffer;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-ne v1, v2, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    iput v1, p0, Landroidx/media3/exoplayer/audio/d1;->p:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/d1;->s(Ljava/nio/ByteBuffer;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private static x([BII)V
    .locals 1

    .line 1
    const/16 v0, 0x7fff

    .line 2
    .line 3
    if-lt p2, v0, :cond_0

    .line 4
    .line 5
    const/4 p2, -0x1

    .line 6
    aput-byte p2, p0, p1

    .line 7
    .line 8
    add-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    const/16 p2, 0x7f

    .line 11
    .line 12
    aput-byte p2, p0, p1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 v0, -0x8000

    .line 16
    .line 17
    if-gt p2, v0, :cond_1

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    aput-byte p2, p0, p1

    .line 21
    .line 22
    add-int/lit8 p1, p1, 0x1

    .line 23
    .line 24
    const/16 p2, -0x80

    .line 25
    .line 26
    aput-byte p2, p0, p1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    and-int/lit16 v0, p2, 0xff

    .line 30
    .line 31
    int-to-byte v0, v0

    .line 32
    aput-byte v0, p0, p1

    .line 33
    .line 34
    add-int/lit8 p1, p1, 0x1

    .line 35
    .line 36
    shr-int/lit8 p2, p2, 0x8

    .line 37
    .line 38
    int-to-byte p2, p2

    .line 39
    aput-byte p2, p0, p1

    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method private z(Ljava/nio/ByteBuffer;)V
    .locals 10

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/audio/d1;->t:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/d1;->s:[B

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    move v0, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v3

    .line 13
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/d1;->o(Ljava/nio/ByteBuffer;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    sub-int v4, v1, v4

    .line 29
    .line 30
    iget v5, p0, Landroidx/media3/exoplayer/audio/d1;->t:I

    .line 31
    .line 32
    iget v6, p0, Landroidx/media3/exoplayer/audio/d1;->u:I

    .line 33
    .line 34
    add-int v7, v5, v6

    .line 35
    .line 36
    iget-object v8, p0, Landroidx/media3/exoplayer/audio/d1;->s:[B

    .line 37
    .line 38
    array-length v9, v8

    .line 39
    if-ge v7, v9, :cond_1

    .line 40
    .line 41
    array-length v7, v8

    .line 42
    add-int v8, v6, v5

    .line 43
    .line 44
    sub-int/2addr v7, v8

    .line 45
    add-int/2addr v5, v6

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    array-length v7, v8

    .line 48
    sub-int/2addr v7, v5

    .line 49
    sub-int/2addr v6, v7

    .line 50
    sub-int v7, v5, v6

    .line 51
    .line 52
    move v5, v6

    .line 53
    :goto_1
    if-ge v1, v0, :cond_2

    .line 54
    .line 55
    move v1, v2

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    move v1, v3

    .line 58
    :goto_2
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    add-int/2addr v8, v6

    .line 67
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 68
    .line 69
    .line 70
    iget-object v8, p0, Landroidx/media3/exoplayer/audio/d1;->s:[B

    .line 71
    .line 72
    invoke-virtual {p1, v8, v5, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 73
    .line 74
    .line 75
    iget v5, p0, Landroidx/media3/exoplayer/audio/d1;->u:I

    .line 76
    .line 77
    add-int/2addr v5, v6

    .line 78
    iput v5, p0, Landroidx/media3/exoplayer/audio/d1;->u:I

    .line 79
    .line 80
    iget-object v6, p0, Landroidx/media3/exoplayer/audio/d1;->s:[B

    .line 81
    .line 82
    array-length v6, v6

    .line 83
    if-gt v5, v6, :cond_3

    .line 84
    .line 85
    move v5, v2

    .line 86
    goto :goto_3

    .line 87
    :cond_3
    move v5, v3

    .line 88
    :goto_3
    invoke-static {v5}, Landroidx/media3/common/util/a;->g(Z)V

    .line 89
    .line 90
    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    if-ge v4, v7, :cond_4

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_4
    move v2, v3

    .line 97
    :goto_4
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/audio/d1;->u(Z)V

    .line 98
    .line 99
    .line 100
    if-eqz v2, :cond_5

    .line 101
    .line 102
    iput v3, p0, Landroidx/media3/exoplayer/audio/d1;->p:I

    .line 103
    .line 104
    iput v3, p0, Landroidx/media3/exoplayer/audio/d1;->r:I

    .line 105
    .line 106
    :cond_5
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 107
    .line 108
    .line 109
    return-void
.end method


# virtual methods
.method protected c(Landroidx/media3/common/audio/AudioProcessor$a;)Landroidx/media3/common/audio/AudioProcessor$a;
    .locals 2

    .line 1
    iget v0, p1, Landroidx/media3/common/audio/AudioProcessor$a;->c:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget v0, p1, Landroidx/media3/common/audio/AudioProcessor$a;->a:I

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    sget-object p1, Landroidx/media3/common/audio/AudioProcessor$a;->e:Landroidx/media3/common/audio/AudioProcessor$a;

    .line 12
    .line 13
    :cond_0
    return-object p1

    .line 14
    :cond_1
    new-instance v0, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Landroidx/media3/common/audio/AudioProcessor$a;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public d()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/d1;->isActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/common/audio/b;->b:Landroidx/media3/common/audio/AudioProcessor$a;

    .line 8
    .line 9
    iget v0, v0, Landroidx/media3/common/audio/AudioProcessor$a;->b:I

    .line 10
    .line 11
    mul-int/lit8 v0, v0, 0x2

    .line 12
    .line 13
    iput v0, p0, Landroidx/media3/exoplayer/audio/d1;->n:I

    .line 14
    .line 15
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/d1;->l:J

    .line 16
    .line 17
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/audio/d1;->m(J)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    div-int/lit8 v0, v0, 0x2

    .line 22
    .line 23
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/d1;->i(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    mul-int/lit8 v0, v0, 0x2

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/d1;->s:[B

    .line 30
    .line 31
    array-length v1, v1

    .line 32
    if-eq v1, v0, :cond_0

    .line 33
    .line 34
    new-array v1, v0, [B

    .line 35
    .line 36
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/d1;->s:[B

    .line 37
    .line 38
    new-array v0, v0, [B

    .line 39
    .line 40
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/d1;->v:[B

    .line 41
    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    iput v0, p0, Landroidx/media3/exoplayer/audio/d1;->p:I

    .line 44
    .line 45
    const-wide/16 v1, 0x0

    .line 46
    .line 47
    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/d1;->q:J

    .line 48
    .line 49
    iput v0, p0, Landroidx/media3/exoplayer/audio/d1;->r:I

    .line 50
    .line 51
    iput v0, p0, Landroidx/media3/exoplayer/audio/d1;->t:I

    .line 52
    .line 53
    iput v0, p0, Landroidx/media3/exoplayer/audio/d1;->u:I

    .line 54
    .line 55
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/audio/d1;->u:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/d1;->u(Z)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Landroidx/media3/exoplayer/audio/d1;->r:I

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/d1;->o:Z

    .line 3
    .line 4
    sget-object v0, Landroidx/media3/common/util/a1;->f:[B

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/d1;->s:[B

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/d1;->v:[B

    .line 9
    .line 10
    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/media3/common/audio/b;->isActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/d1;->o:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public p()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/d1;->q:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/common/audio/b;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget v0, p0, Landroidx/media3/exoplayer/audio/d1;->p:I

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/d1;->z(Ljava/nio/ByteBuffer;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/d1;->w(Ljava/nio/ByteBuffer;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method public y(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/d1;->o:Z

    .line 2
    .line 3
    return-void
.end method
