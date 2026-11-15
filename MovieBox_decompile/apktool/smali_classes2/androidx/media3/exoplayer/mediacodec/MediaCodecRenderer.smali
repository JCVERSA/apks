.class public abstract Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;
.super Landroidx/media3/exoplayer/i;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$b;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$c;
    }
.end annotation


# static fields
.field private static final E0:[B


# instance fields
.field private final A:Ljava/util/ArrayDeque;

.field private A0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

.field private final B:Landroidx/media3/exoplayer/audio/b1;

.field private B0:J

.field private C:Landroidx/media3/common/r;

.field private C0:Z

.field private D:Landroidx/media3/common/r;

.field private D0:Z

.field private E:Landroidx/media3/exoplayer/drm/DrmSession;

.field private F:Landroidx/media3/exoplayer/drm/DrmSession;

.field private G:Landroidx/media3/exoplayer/w3$a;

.field private H:Landroid/media/MediaCrypto;

.field private I:J

.field private J:F

.field private K:F

.field private L:Landroidx/media3/exoplayer/mediacodec/t;

.field private M:Landroidx/media3/common/r;

.field private N:Landroid/media/MediaFormat;

.field private O:Z

.field private P:F

.field private Q:Ljava/util/ArrayDeque;

.field private R:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

.field private S:Landroidx/media3/exoplayer/mediacodec/w;

.field private T:I

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:Z

.field private Y:Z

.field private Z:Z

.field private a0:J

.field private b0:Z

.field private c0:J

.field private d0:I

.field private e0:I

.field private f0:Ljava/nio/ByteBuffer;

.field private g0:Z

.field private h0:Z

.field private i0:Z

.field private j0:Z

.field private k0:Z

.field private l0:Z

.field private m0:I

.field private n0:I

.field private o0:I

.field private p0:Z

.field private q0:Z

.field private final r:Landroidx/media3/exoplayer/mediacodec/t$b;

.field private r0:Z

.field private final s:Landroidx/media3/exoplayer/mediacodec/h0;

.field private s0:J

.field private final t:Z

.field private t0:J

.field private final u:F

.field private u0:Z

.field private final v:Landroidx/media3/decoder/DecoderInputBuffer;

.field private v0:Z

.field private final w:Landroidx/media3/decoder/DecoderInputBuffer;

.field private w0:Z

.field private final x:Landroidx/media3/decoder/DecoderInputBuffer;

.field private x0:Z

.field private final y:Landroidx/media3/exoplayer/mediacodec/j;

.field private y0:Landroidx/media3/exoplayer/ExoPlaybackException;

.field private final z:Landroid/media/MediaCodec$BufferInfo;

.field protected z0:Landroidx/media3/exoplayer/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x26

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E0:[B

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILandroidx/media3/exoplayer/mediacodec/t$b;Landroidx/media3/exoplayer/mediacodec/h0;ZF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/i;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->r:Landroidx/media3/exoplayer/mediacodec/t$b;

    .line 5
    .line 6
    invoke-static {p3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroidx/media3/exoplayer/mediacodec/h0;

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s:Landroidx/media3/exoplayer/mediacodec/h0;

    .line 13
    .line 14
    iput-boolean p4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t:Z

    .line 15
    .line 16
    iput p5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u:F

    .line 17
    .line 18
    invoke-static {}, Landroidx/media3/decoder/DecoderInputBuffer;->f()Landroidx/media3/decoder/DecoderInputBuffer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 23
    .line 24
    new-instance p1, Landroidx/media3/decoder/DecoderInputBuffer;

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-direct {p1, p2}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 31
    .line 32
    new-instance p1, Landroidx/media3/decoder/DecoderInputBuffer;

    .line 33
    .line 34
    const/4 p3, 0x2

    .line 35
    invoke-direct {p1, p3}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 39
    .line 40
    new-instance p1, Landroidx/media3/exoplayer/mediacodec/j;

    .line 41
    .line 42
    invoke-direct {p1}, Landroidx/media3/exoplayer/mediacodec/j;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    .line 46
    .line 47
    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    .line 48
    .line 49
    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z:Landroid/media/MediaCodec$BufferInfo;

    .line 53
    .line 54
    const/high16 p3, 0x3f800000    # 1.0f

    .line 55
    .line 56
    iput p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J:F

    .line 57
    .line 58
    iput p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K:F

    .line 59
    .line 60
    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    iput-wide p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->I:J

    .line 66
    .line 67
    new-instance p5, Ljava/util/ArrayDeque;

    .line 68
    .line 69
    invoke-direct {p5}, Ljava/util/ArrayDeque;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object p5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A:Ljava/util/ArrayDeque;

    .line 73
    .line 74
    sget-object p5, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->e:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    .line 75
    .line 76
    iput-object p5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroidx/media3/decoder/DecoderInputBuffer;->b(I)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    .line 82
    .line 83
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 84
    .line 85
    .line 86
    move-result-object p5

    .line 87
    invoke-virtual {p1, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 88
    .line 89
    .line 90
    new-instance p1, Landroidx/media3/exoplayer/audio/b1;

    .line 91
    .line 92
    invoke-direct {p1}, Landroidx/media3/exoplayer/audio/b1;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B:Landroidx/media3/exoplayer/audio/b1;

    .line 96
    .line 97
    const/high16 p1, -0x40800000    # -1.0f

    .line 98
    .line 99
    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P:F

    .line 100
    .line 101
    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T:I

    .line 102
    .line 103
    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    .line 104
    .line 105
    const/4 p1, -0x1

    .line 106
    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:I

    .line 107
    .line 108
    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e0:I

    .line 109
    .line 110
    iput-wide p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0:J

    .line 111
    .line 112
    iput-wide p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:J

    .line 113
    .line 114
    iput-wide p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:J

    .line 115
    .line 116
    iput-wide p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B0:J

    .line 117
    .line 118
    iput-wide p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->a0:J

    .line 119
    .line 120
    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0:I

    .line 121
    .line 122
    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:I

    .line 123
    .line 124
    new-instance p1, Landroidx/media3/exoplayer/j;

    .line 125
    .line 126
    invoke-direct {p1}, Landroidx/media3/exoplayer/j;-><init>()V

    .line 127
    .line 128
    .line 129
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    .line 130
    .line 131
    return-void
.end method

.method private A0()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e0:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method private B0()Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/j;->m()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->w()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/j;->k()J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    invoke-direct {p0, v2, v3, v4, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H0(JJ)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 26
    .line 27
    iget-wide v4, v4, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    .line 28
    .line 29
    invoke-direct {p0, v2, v3, v4, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H0(JJ)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ne v0, v2, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    :goto_0
    return v1
.end method

.method private C0(Landroidx/media3/common/r;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->a0()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 5
    .line 6
    const-string v0, "audio/mp4a-latm"

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string v0, "audio/mpeg"

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const-string v0, "audio/opus"

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/mediacodec/j;->n(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    .line 38
    .line 39
    const/16 v0, 0x20

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/mediacodec/j;->n(I)V

    .line 42
    .line 43
    .line 44
    :goto_0
    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0:Z

    .line 45
    .line 46
    return-void
.end method

.method private D0(Landroidx/media3/exoplayer/mediacodec/w;Landroid/media/MediaCrypto;)V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    .line 5
    .line 6
    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    check-cast v3, Landroidx/media3/common/r;

    .line 11
    .line 12
    iget-object v5, p1, Landroidx/media3/exoplayer/mediacodec/w;->a:Ljava/lang/String;

    .line 13
    .line 14
    sget v4, Landroidx/media3/common/util/a1;->a:I

    .line 15
    .line 16
    const/16 v6, 0x17

    .line 17
    .line 18
    const/high16 v7, -0x40800000    # -1.0f

    .line 19
    .line 20
    if-ge v4, v6, :cond_0

    .line 21
    .line 22
    move v6, v7

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget v6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K:F

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->y()[Landroidx/media3/common/r;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    invoke-virtual {p0, v6, v3, v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0(FLandroidx/media3/common/r;[Landroidx/media3/common/r;)F

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    :goto_0
    iget v8, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u:F

    .line 35
    .line 36
    cmpg-float v8, v6, v8

    .line 37
    .line 38
    if-gtz v8, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v7, v6

    .line 42
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-interface {v6}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    .line 47
    .line 48
    .line 49
    move-result-wide v8

    .line 50
    invoke-virtual {p0, p1, v3, p2, v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;Landroid/media/MediaCrypto;F)Landroidx/media3/exoplayer/mediacodec/t$a;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    const/16 p2, 0x1f

    .line 55
    .line 56
    if-lt v4, p2, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->x()Lx1/f4;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-static {v6, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$b;->a(Landroidx/media3/exoplayer/mediacodec/t$a;Lx1/f4;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v4, "createCodec:"

    .line 71
    .line 72
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-static {p2}, Landroidx/media3/common/util/q0;->a(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->r:Landroidx/media3/exoplayer/mediacodec/t$b;

    .line 86
    .line 87
    invoke-interface {p2, v6}, Landroidx/media3/exoplayer/mediacodec/t$b;->a(Landroidx/media3/exoplayer/mediacodec/t$a;)Landroidx/media3/exoplayer/mediacodec/t;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    .line 92
    .line 93
    new-instance v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$c;

    .line 94
    .line 95
    const/4 v10, 0x0

    .line 96
    invoke-direct {v4, p0, v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$c;-><init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$a;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {p2, v4}, Landroidx/media3/exoplayer/mediacodec/t;->m(Landroidx/media3/exoplayer/mediacodec/t$c;)Z

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    iput-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .line 105
    invoke-static {}, Landroidx/media3/common/util/q0;->b()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-interface {p2}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    .line 113
    .line 114
    .line 115
    move-result-wide v10

    .line 116
    invoke-virtual {p1, v3}, Landroidx/media3/exoplayer/mediacodec/w;->o(Landroidx/media3/common/r;)Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    if-nez p2, :cond_3

    .line 121
    .line 122
    invoke-static {v3}, Landroidx/media3/common/r;->i(Landroidx/media3/common/r;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    new-array v4, v2, [Ljava/lang/Object;

    .line 127
    .line 128
    aput-object p2, v4, v1

    .line 129
    .line 130
    aput-object v5, v4, v0

    .line 131
    .line 132
    const-string p2, "Format exceeds selected codec\'s capabilities [%s, %s]"

    .line 133
    .line 134
    invoke-static {p2, v4}, Landroidx/media3/common/util/a1;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    const-string v4, "MediaCodecRenderer"

    .line 139
    .line 140
    invoke-static {v4, p2}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_3
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S:Landroidx/media3/exoplayer/mediacodec/w;

    .line 144
    .line 145
    iput v7, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P:F

    .line 146
    .line 147
    iput-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M:Landroidx/media3/common/r;

    .line 148
    .line 149
    invoke-direct {p0, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->U(Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T:I

    .line 154
    .line 155
    invoke-static {v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Y(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result p2

    .line 159
    iput-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->U:Z

    .line 160
    .line 161
    invoke-static {v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    iput-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V:Z

    .line 166
    .line 167
    invoke-static {v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    iput-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Z

    .line 172
    .line 173
    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X(Landroidx/media3/exoplayer/mediacodec/w;)Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-nez p1, :cond_5

    .line 178
    .line 179
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0()Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-eqz p1, :cond_4

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_4
    move p1, v1

    .line 187
    goto :goto_3

    .line 188
    :cond_5
    :goto_2
    move p1, v0

    .line 189
    :goto_3
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Z:Z

    .line 190
    .line 191
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    .line 192
    .line 193
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    check-cast p1, Landroidx/media3/exoplayer/mediacodec/t;

    .line 198
    .line 199
    invoke-interface {p1}, Landroidx/media3/exoplayer/mediacodec/t;->g()Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-eqz p1, :cond_7

    .line 204
    .line 205
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0:Z

    .line 206
    .line 207
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    .line 208
    .line 209
    iget p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T:I

    .line 210
    .line 211
    if-eqz p1, :cond_6

    .line 212
    .line 213
    move v1, v0

    .line 214
    :cond_6
    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Z

    .line 215
    .line 216
    :cond_7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->getState()I

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    if-ne p1, v2, :cond_8

    .line 221
    .line 222
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-interface {p1}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    .line 227
    .line 228
    .line 229
    move-result-wide p1

    .line 230
    const-wide/16 v1, 0x3e8

    .line 231
    .line 232
    add-long/2addr p1, v1

    .line 233
    iput-wide p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0:J

    .line 234
    .line 235
    :cond_8
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    .line 236
    .line 237
    iget p2, p1, Landroidx/media3/exoplayer/j;->a:I

    .line 238
    .line 239
    add-int/2addr p2, v0

    .line 240
    iput p2, p1, Landroidx/media3/exoplayer/j;->a:I

    .line 241
    .line 242
    sub-long p1, v10, v8

    .line 243
    .line 244
    move-object v4, p0

    .line 245
    move-wide v7, v10

    .line 246
    move-wide v9, p1

    .line 247
    invoke-virtual/range {v4 .. v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N0(Ljava/lang/String;Landroidx/media3/exoplayer/mediacodec/t$a;JJ)V

    .line 248
    .line 249
    .line 250
    return-void

    .line 251
    :catchall_0
    move-exception p1

    .line 252
    invoke-static {}, Landroidx/media3/common/util/q0;->b()V

    .line 253
    .line 254
    .line 255
    throw p1
.end method

.method private E0()Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H:Landroid/media/MediaCrypto;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 14
    .line 15
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->c()Landroidx/media3/decoder/b;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    sget-boolean v4, Landroidx/media3/exoplayer/drm/c0;->d:Z

    .line 20
    .line 21
    if-eqz v4, :cond_2

    .line 22
    .line 23
    instance-of v4, v3, Landroidx/media3/exoplayer/drm/c0;

    .line 24
    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eq v4, v2, :cond_1

    .line 32
    .line 33
    const/4 v5, 0x4

    .line 34
    if-eq v4, v5, :cond_2

    .line 35
    .line 36
    return v1

    .line 37
    :cond_1
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 46
    .line 47
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    .line 48
    .line 49
    iget v2, v0, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;->errorCode:I

    .line 50
    .line 51
    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/i;->q(Ljava/lang/Throwable;Landroidx/media3/common/r;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    throw v0

    .line 56
    :cond_2
    if-nez v3, :cond_4

    .line 57
    .line 58
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    return v2

    .line 65
    :cond_3
    return v1

    .line 66
    :cond_4
    instance-of v0, v3, Landroidx/media3/exoplayer/drm/c0;

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    check-cast v3, Landroidx/media3/exoplayer/drm/c0;

    .line 71
    .line 72
    :try_start_0
    new-instance v0, Landroid/media/MediaCrypto;

    .line 73
    .line 74
    iget-object v1, v3, Landroidx/media3/exoplayer/drm/c0;->a:Ljava/util/UUID;

    .line 75
    .line 76
    iget-object v3, v3, Landroidx/media3/exoplayer/drm/c0;->b:[B

    .line 77
    .line 78
    invoke-direct {v0, v1, v3}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    .line 86
    .line 87
    const/16 v2, 0x1776

    .line 88
    .line 89
    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/i;->q(Ljava/lang/Throwable;Landroidx/media3/common/r;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    throw v0

    .line 94
    :cond_5
    :goto_1
    return v2
.end method

.method private H0(JJ)Z
    .locals 2

    .line 1
    cmp-long v0, p3, p1

    .line 2
    .line 3
    if-gez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "audio/opus"

    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {p1, p2, p3, p4}, Lk2/k0;->g(JJ)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    :cond_0
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    :goto_0
    return p1
.end method

.method private static I0(Ljava/lang/IllegalStateException;)Z
    .locals 3

    .line 1
    instance-of v0, p0, Landroid/media/MediaCodec$CodecException;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    array-length v0, p0

    .line 12
    const/4 v2, 0x0

    .line 13
    if-lez v0, :cond_1

    .line 14
    .line 15
    aget-object p0, p0, v2

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v0, "android.media.MediaCodec"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v1, v2

    .line 31
    :goto_0
    return v1
.end method

.method private K0(Landroid/media/MediaCrypto;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/common/r;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_2

    .line 13
    .line 14
    :try_start_0
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->k0(Z)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v3, Ljava/util/ArrayDeque;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Ljava/util/ArrayDeque;

    .line 24
    .line 25
    iget-boolean v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t:Z

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    invoke-virtual {v3, v1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Ljava/util/ArrayDeque;

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Landroidx/media3/exoplayer/mediacodec/w;

    .line 49
    .line 50
    invoke-virtual {v3, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    :try_end_0
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :goto_1
    new-instance v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 57
    .line 58
    const v2, -0xc34e

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, v0, p1, p2, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Landroidx/media3/common/r;Ljava/lang/Throwable;ZI)V

    .line 62
    .line 63
    .line 64
    throw v1

    .line 65
    :cond_2
    :goto_2
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Ljava/util/ArrayDeque;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_8

    .line 72
    .line 73
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Ljava/util/ArrayDeque;

    .line 74
    .line 75
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Ljava/util/ArrayDeque;

    .line 80
    .line 81
    :goto_3
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    .line 82
    .line 83
    if-nez v3, :cond_7

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Landroidx/media3/exoplayer/mediacodec/w;

    .line 90
    .line 91
    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    check-cast v3, Landroidx/media3/exoplayer/mediacodec/w;

    .line 96
    .line 97
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L0(Landroidx/media3/common/r;)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-nez v4, :cond_3

    .line 102
    .line 103
    return-void

    .line 104
    :cond_3
    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o1(Landroidx/media3/exoplayer/mediacodec/w;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-nez v4, :cond_4

    .line 109
    .line 110
    return-void

    .line 111
    :cond_4
    :try_start_1
    invoke-direct {p0, v3, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D0(Landroidx/media3/exoplayer/mediacodec/w;Landroid/media/MediaCrypto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :catch_1
    move-exception v4

    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v6, "Failed to initialize decoder: "

    .line 122
    .line 123
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    const-string v6, "MediaCodecRenderer"

    .line 134
    .line 135
    invoke-static {v6, v5, v4}, Landroidx/media3/common/util/u;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    new-instance v5, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 142
    .line 143
    invoke-direct {v5, v0, v4, p2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Landroidx/media3/common/r;Ljava/lang/Throwable;ZLandroidx/media3/exoplayer/mediacodec/w;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M0(Ljava/lang/Exception;)V

    .line 147
    .line 148
    .line 149
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 150
    .line 151
    if-nez v3, :cond_5

    .line 152
    .line 153
    iput-object v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_5
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 157
    .line 158
    invoke-static {v3, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->access$000(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;)Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    iput-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 163
    .line 164
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-nez v3, :cond_6

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_6
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 172
    .line 173
    throw p1

    .line 174
    :cond_7
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Ljava/util/ArrayDeque;

    .line 175
    .line 176
    return-void

    .line 177
    :cond_8
    new-instance p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 178
    .line 179
    const v1, -0xc34f

    .line 180
    .line 181
    .line 182
    invoke-direct {p1, v0, v2, p2, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Landroidx/media3/common/r;Ljava/lang/Throwable;ZI)V

    .line 183
    .line 184
    .line 185
    throw p1
.end method

.method static synthetic Q(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;)Landroidx/media3/exoplayer/w3$a;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G:Landroidx/media3/exoplayer/w3$a;

    .line 2
    .line 3
    return-object p0
.end method

.method private R()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->u()Landroidx/media3/exoplayer/s2;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {p0, v0, v2, v3}, Landroidx/media3/exoplayer/i;->N(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v4, -0x5

    .line 30
    if-eq v2, v4, :cond_c

    .line 31
    .line 32
    const/4 v4, -0x4

    .line 33
    if-eq v2, v4, :cond_3

    .line 34
    .line 35
    const/4 v0, -0x3

    .line 36
    if-ne v2, v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->hasReadStreamToEnd()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:J

    .line 45
    .line 46
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:J

    .line 47
    .line 48
    :cond_1
    return-void

    .line 49
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_3
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 56
    .line 57
    invoke-virtual {v2}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_4

    .line 62
    .line 63
    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:Z

    .line 64
    .line 65
    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:J

    .line 66
    .line 67
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:J

    .line 68
    .line 69
    return-void

    .line 70
    :cond_4
    iget-wide v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:J

    .line 71
    .line 72
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 73
    .line 74
    iget-wide v6, v2, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    .line 75
    .line 76
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 77
    .line 78
    .line 79
    move-result-wide v4

    .line 80
    iput-wide v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:J

    .line 81
    .line 82
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->hasReadStreamToEnd()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-nez v2, :cond_5

    .line 87
    .line 88
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 89
    .line 90
    invoke-virtual {v2}, Landroidx/media3/decoder/a;->isLastSample()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_6

    .line 95
    .line 96
    :cond_5
    iget-wide v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:J

    .line 97
    .line 98
    iput-wide v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:J

    .line 99
    .line 100
    :cond_6
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0:Z

    .line 101
    .line 102
    const-string v4, "audio/opus"

    .line 103
    .line 104
    if-eqz v2, :cond_8

    .line 105
    .line 106
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    .line 107
    .line 108
    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Landroidx/media3/common/r;

    .line 113
    .line 114
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    .line 115
    .line 116
    iget-object v2, v2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_7

    .line 123
    .line 124
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    .line 125
    .line 126
    iget-object v2, v2, Landroidx/media3/common/r;->r:Ljava/util/List;

    .line 127
    .line 128
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-nez v2, :cond_7

    .line 133
    .line 134
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    .line 135
    .line 136
    iget-object v2, v2, Landroidx/media3/common/r;->r:Ljava/util/List;

    .line 137
    .line 138
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    check-cast v2, [B

    .line 143
    .line 144
    invoke-static {v2}, Lk2/k0;->f([B)I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    iget-object v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    .line 149
    .line 150
    invoke-virtual {v5}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-virtual {v5, v2}, Landroidx/media3/common/r$b;->Z(I)Landroidx/media3/common/r$b;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v2}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    .line 163
    .line 164
    :cond_7
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    .line 165
    .line 166
    const/4 v5, 0x0

    .line 167
    invoke-virtual {p0, v2, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q0(Landroidx/media3/common/r;Landroid/media/MediaFormat;)V

    .line 168
    .line 169
    .line 170
    iput-boolean v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0:Z

    .line 171
    .line 172
    :cond_8
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 173
    .line 174
    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->d()V

    .line 175
    .line 176
    .line 177
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    .line 178
    .line 179
    if-eqz v2, :cond_a

    .line 180
    .line 181
    iget-object v2, v2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 182
    .line 183
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-eqz v2, :cond_a

    .line 188
    .line 189
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 190
    .line 191
    invoke-virtual {v2}, Landroidx/media3/decoder/a;->hasSupplementalData()Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-eqz v2, :cond_9

    .line 196
    .line 197
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 198
    .line 199
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    .line 200
    .line 201
    iput-object v3, v2, Landroidx/media3/decoder/DecoderInputBuffer;->a:Landroidx/media3/common/r;

    .line 202
    .line 203
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0(Landroidx/media3/decoder/DecoderInputBuffer;)V

    .line 204
    .line 205
    .line 206
    :cond_9
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->w()J

    .line 207
    .line 208
    .line 209
    move-result-wide v2

    .line 210
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 211
    .line 212
    iget-wide v4, v4, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    .line 213
    .line 214
    invoke-static {v2, v3, v4, v5}, Lk2/k0;->g(JJ)Z

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-eqz v2, :cond_a

    .line 219
    .line 220
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B:Landroidx/media3/exoplayer/audio/b1;

    .line 221
    .line 222
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 223
    .line 224
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    .line 225
    .line 226
    iget-object v4, v4, Landroidx/media3/common/r;->r:Ljava/util/List;

    .line 227
    .line 228
    invoke-virtual {v2, v3, v4}, Landroidx/media3/exoplayer/audio/b1;->a(Landroidx/media3/decoder/DecoderInputBuffer;Ljava/util/List;)V

    .line 229
    .line 230
    .line 231
    :cond_a
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B0()Z

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    if-eqz v2, :cond_b

    .line 236
    .line 237
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    .line 238
    .line 239
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 240
    .line 241
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/mediacodec/j;->h(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    if-nez v2, :cond_0

    .line 246
    .line 247
    :cond_b
    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->j0:Z

    .line 248
    .line 249
    return-void

    .line 250
    :cond_c
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P0(Landroidx/media3/exoplayer/s2;)Landroidx/media3/exoplayer/k;

    .line 251
    .line 252
    .line 253
    return-void
.end method

.method private S(JJ)Z
    .locals 18

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0:Z

    .line 4
    .line 5
    const/4 v14, 0x1

    .line 6
    xor-int/2addr v0, v14

    .line 7
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/j;->m()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v13, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    .line 20
    .line 21
    iget-object v6, v0, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    iget v7, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e0:I

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/j;->l()I

    .line 26
    .line 27
    .line 28
    move-result v9

    .line 29
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/j;->j()J

    .line 32
    .line 33
    .line 34
    move-result-wide v10

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/i;->w()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    iget-object v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroidx/media3/exoplayer/mediacodec/j;->k()J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    invoke-direct {v15, v0, v1, v2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H0(JJ)Z

    .line 46
    .line 47
    .line 48
    move-result v12

    .line 49
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    .line 52
    .line 53
    .line 54
    move-result v16

    .line 55
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    .line 56
    .line 57
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    move-object/from16 v17, v0

    .line 62
    .line 63
    check-cast v17, Landroidx/media3/common/r;

    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    const/4 v8, 0x0

    .line 67
    move-object/from16 v0, p0

    .line 68
    .line 69
    move-wide/from16 v1, p1

    .line 70
    .line 71
    move-wide/from16 v3, p3

    .line 72
    .line 73
    move/from16 v13, v16

    .line 74
    .line 75
    move-object/from16 v14, v17

    .line 76
    .line 77
    invoke-virtual/range {v0 .. v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X0(JJLandroidx/media3/exoplayer/mediacodec/t;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/r;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    .line 83
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/j;->k()J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    invoke-virtual {v15, v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S0(J)V

    .line 90
    .line 91
    .line 92
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    .line 93
    .line 94
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/j;->clear()V

    .line 95
    .line 96
    .line 97
    const/4 v0, 0x0

    .line 98
    goto :goto_0

    .line 99
    :cond_0
    const/4 v0, 0x0

    .line 100
    return v0

    .line 101
    :cond_1
    move v0, v13

    .line 102
    :goto_0
    iget-boolean v1, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:Z

    .line 103
    .line 104
    if-eqz v1, :cond_2

    .line 105
    .line 106
    const/4 v1, 0x1

    .line 107
    iput-boolean v1, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0:Z

    .line 108
    .line 109
    return v0

    .line 110
    :cond_2
    const/4 v1, 0x1

    .line 111
    iget-boolean v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->j0:Z

    .line 112
    .line 113
    if-eqz v2, :cond_3

    .line 114
    .line 115
    iget-object v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    .line 116
    .line 117
    iget-object v3, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 118
    .line 119
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/mediacodec/j;->h(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    invoke-static {v2}, Landroidx/media3/common/util/a;->g(Z)V

    .line 124
    .line 125
    .line 126
    iput-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->j0:Z

    .line 127
    .line 128
    :cond_3
    iget-boolean v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->k0:Z

    .line 129
    .line 130
    if-eqz v2, :cond_5

    .line 131
    .line 132
    iget-object v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    .line 133
    .line 134
    invoke-virtual {v2}, Landroidx/media3/exoplayer/mediacodec/j;->m()Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_4

    .line 139
    .line 140
    return v1

    .line 141
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->a0()V

    .line 142
    .line 143
    .line 144
    iput-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->k0:Z

    .line 145
    .line 146
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J0()V

    .line 147
    .line 148
    .line 149
    iget-boolean v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0:Z

    .line 150
    .line 151
    if-nez v2, :cond_5

    .line 152
    .line 153
    return v0

    .line 154
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R()V

    .line 155
    .line 156
    .line 157
    iget-object v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    .line 158
    .line 159
    invoke-virtual {v2}, Landroidx/media3/exoplayer/mediacodec/j;->m()Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eqz v2, :cond_6

    .line 164
    .line 165
    iget-object v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    .line 166
    .line 167
    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->d()V

    .line 168
    .line 169
    .line 170
    :cond_6
    iget-object v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    .line 171
    .line 172
    invoke-virtual {v2}, Landroidx/media3/exoplayer/mediacodec/j;->m()Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-nez v2, :cond_8

    .line 177
    .line 178
    iget-boolean v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:Z

    .line 179
    .line 180
    if-nez v2, :cond_8

    .line 181
    .line 182
    iget-boolean v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->k0:Z

    .line 183
    .line 184
    if-eqz v2, :cond_7

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_7
    move v14, v0

    .line 188
    goto :goto_2

    .line 189
    :cond_8
    :goto_1
    move v14, v1

    .line 190
    :goto_2
    return v14
.end method

.method private U(Ljava/lang/String;)I
    .locals 3

    .line 1
    sget v0, Landroidx/media3/common/util/a1;->a:I

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    if-gt v0, v1, :cond_1

    .line 6
    .line 7
    const-string v1, "OMX.Exynos.avc.dec.secure"

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 16
    .line 17
    const-string v2, "SM-T585"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    const-string v2, "SM-A510"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    const-string v2, "SM-A520"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    const-string v2, "SM-J700"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    :cond_0
    const/4 p1, 0x2

    .line 50
    return p1

    .line 51
    :cond_1
    const/16 v1, 0x18

    .line 52
    .line 53
    if-ge v0, v1, :cond_4

    .line 54
    .line 55
    const-string v0, "OMX.Nvidia.h264.decode"

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    const-string v0, "OMX.Nvidia.h264.decode.secure"

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_4

    .line 70
    .line 71
    :cond_2
    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 72
    .line 73
    const-string v0, "flounder"

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_3

    .line 80
    .line 81
    const-string v0, "flounder_lte"

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_3

    .line 88
    .line 89
    const-string v0, "grouper"

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_3

    .line 96
    .line 97
    const-string v0, "tilapia"

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_4

    .line 104
    .line 105
    :cond_3
    const/4 p1, 0x1

    .line 106
    return p1

    .line 107
    :cond_4
    const/4 p1, 0x0

    .line 108
    return p1
.end method

.method private static V(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget v0, Landroidx/media3/common/util/a1;->a:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-gt v0, v1, :cond_0

    .line 6
    .line 7
    const-string v0, "OMX.google.vorbis.decoder"

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method private static W(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget v0, Landroidx/media3/common/util/a1;->a:I

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const-string v0, "OMX.google.aac.decoder"

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method private W0()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v2, :cond_1

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    .line 12
    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c1()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->a1()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h0()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v1()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h0()V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method private static X(Landroidx/media3/exoplayer/mediacodec/w;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/w;->a:Ljava/lang/String;

    .line 2
    .line 3
    sget v1, Landroidx/media3/common/util/a1;->a:I

    .line 4
    .line 5
    const/16 v2, 0x19

    .line 6
    .line 7
    if-gt v1, v2, :cond_0

    .line 8
    .line 9
    const-string v2, "OMX.rk.video_decoder.avc"

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_2

    .line 16
    .line 17
    :cond_0
    const/16 v2, 0x1d

    .line 18
    .line 19
    if-gt v1, v2, :cond_1

    .line 20
    .line 21
    const-string v1, "OMX.broadcom.video_decoder.tunnel"

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    const-string v1, "OMX.broadcom.video_decoder.tunnel.secure"

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    const-string v1, "OMX.bcm.vdec.avc.tunnel"

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    const-string v1, "OMX.bcm.vdec.avc.tunnel.secure"

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    const-string v1, "OMX.bcm.vdec.hevc.tunnel"

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    const-string v1, "OMX.bcm.vdec.hevc.tunnel.secure"

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    :cond_1
    const-string v0, "Amazon"

    .line 70
    .line 71
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    const-string v0, "AFTS"

    .line 80
    .line 81
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    iget-boolean p0, p0, Landroidx/media3/exoplayer/mediacodec/w;->g:Z

    .line 90
    .line 91
    if-eqz p0, :cond_3

    .line 92
    .line 93
    :cond_2
    const/4 p0, 0x1

    .line 94
    goto :goto_0

    .line 95
    :cond_3
    const/4 p0, 0x0

    .line 96
    :goto_0
    return p0
.end method

.method private static Y(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget v0, Landroidx/media3/common/util/a1;->a:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const-string v0, "c2.android.aac.decoder"

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method private Y0()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->r0:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    .line 5
    .line 6
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroidx/media3/exoplayer/mediacodec/t;

    .line 11
    .line 12
    invoke-interface {v1}, Landroidx/media3/exoplayer/mediacodec/t;->c()Landroid/media/MediaFormat;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T:I

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    const-string v2, "width"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/16 v3, 0x20

    .line 27
    .line 28
    if-ne v2, v3, :cond_0

    .line 29
    .line 30
    const-string v2, "height"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ne v2, v3, :cond_0

    .line 37
    .line 38
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Y:Z

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iput-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N:Landroid/media/MediaFormat;

    .line 42
    .line 43
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O:Z

    .line 44
    .line 45
    return-void
.end method

.method private Z0(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->u()Landroidx/media3/exoplayer/s2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 11
    .line 12
    or-int/lit8 p1, p1, 0x4

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1, p1}, Landroidx/media3/exoplayer/i;->N(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v1, -0x5

    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne p1, v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P0(Landroidx/media3/exoplayer/s2;)Landroidx/media3/exoplayer/k;

    .line 23
    .line 24
    .line 25
    return v2

    .line 26
    :cond_0
    const/4 v0, -0x4

    .line 27
    if-ne p1, v0, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:Z

    .line 38
    .line 39
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W0()V

    .line 40
    .line 41
    .line 42
    :cond_1
    const/4 p1, 0x0

    .line 43
    return p1
.end method

.method private a0()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->k0:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/j;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 12
    .line 13
    .line 14
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->j0:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0:Z

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B:Landroidx/media3/exoplayer/audio/b1;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/b1;->d()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private a1()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b1()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private b0()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0:I

    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    :cond_0
    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:I

    .line 18
    .line 19
    :cond_1
    return v1
.end method

.method private c0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0:I

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->a1()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method private d0()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0:I

    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x2

    .line 18
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v1()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return v1
.end method

.method private e0(JJ)Z
    .locals 19

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v5, v0

    .line 10
    check-cast v5, Landroidx/media3/exoplayer/mediacodec/t;

    .line 11
    .line 12
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v16, 0x1

    .line 17
    .line 18
    const/4 v14, 0x0

    .line 19
    if-nez v0, :cond_c

    .line 20
    .line 21
    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->q0:Z

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    :try_start_0
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z:Landroid/media/MediaCodec$BufferInfo;

    .line 30
    .line 31
    invoke-interface {v5, v0}, Landroidx/media3/exoplayer/mediacodec/t;->j(Landroid/media/MediaCodec$BufferInfo;)I

    .line 32
    .line 33
    .line 34
    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W0()V

    .line 37
    .line 38
    .line 39
    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0:Z

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b1()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return v14

    .line 47
    :cond_1
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z:Landroid/media/MediaCodec$BufferInfo;

    .line 48
    .line 49
    invoke-interface {v5, v0}, Landroidx/media3/exoplayer/mediacodec/t;->j(Landroid/media/MediaCodec$BufferInfo;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    :goto_0
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    if-gez v0, :cond_6

    .line 59
    .line 60
    const/4 v3, -0x2

    .line 61
    if-ne v0, v3, :cond_2

    .line 62
    .line 63
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Y0()V

    .line 64
    .line 65
    .line 66
    return v16

    .line 67
    :cond_2
    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Z:Z

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:Z

    .line 72
    .line 73
    if-nez v0, :cond_3

    .line 74
    .line 75
    iget v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0:I

    .line 76
    .line 77
    const/4 v3, 0x2

    .line 78
    if-ne v0, v3, :cond_4

    .line 79
    .line 80
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W0()V

    .line 81
    .line 82
    .line 83
    :cond_4
    iget-wide v3, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->a0:J

    .line 84
    .line 85
    cmp-long v0, v3, v1

    .line 86
    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    const-wide/16 v0, 0x64

    .line 90
    .line 91
    add-long/2addr v3, v0

    .line 92
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-interface {v0}, Landroidx/media3/common/util/i;->currentTimeMillis()J

    .line 97
    .line 98
    .line 99
    move-result-wide v0

    .line 100
    cmp-long v0, v3, v0

    .line 101
    .line 102
    if-gez v0, :cond_5

    .line 103
    .line 104
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W0()V

    .line 105
    .line 106
    .line 107
    :cond_5
    return v14

    .line 108
    :cond_6
    iget-boolean v3, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Y:Z

    .line 109
    .line 110
    if-eqz v3, :cond_7

    .line 111
    .line 112
    iput-boolean v14, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Y:Z

    .line 113
    .line 114
    invoke-interface {v5, v0, v14}, Landroidx/media3/exoplayer/mediacodec/t;->k(IZ)V

    .line 115
    .line 116
    .line 117
    return v16

    .line 118
    :cond_7
    iget-object v3, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z:Landroid/media/MediaCodec$BufferInfo;

    .line 119
    .line 120
    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 121
    .line 122
    if-nez v4, :cond_8

    .line 123
    .line 124
    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 125
    .line 126
    and-int/lit8 v3, v3, 0x4

    .line 127
    .line 128
    if-eqz v3, :cond_8

    .line 129
    .line 130
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W0()V

    .line 131
    .line 132
    .line 133
    return v14

    .line 134
    :cond_8
    iput v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e0:I

    .line 135
    .line 136
    invoke-interface {v5, v0}, Landroidx/media3/exoplayer/mediacodec/t;->l(I)Ljava/nio/ByteBuffer;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iput-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f0:Ljava/nio/ByteBuffer;

    .line 141
    .line 142
    if-eqz v0, :cond_9

    .line 143
    .line 144
    iget-object v3, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z:Landroid/media/MediaCodec$BufferInfo;

    .line 145
    .line 146
    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 147
    .line 148
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 149
    .line 150
    .line 151
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f0:Ljava/nio/ByteBuffer;

    .line 152
    .line 153
    iget-object v3, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z:Landroid/media/MediaCodec$BufferInfo;

    .line 154
    .line 155
    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 156
    .line 157
    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 158
    .line 159
    add-int/2addr v4, v3

    .line 160
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 161
    .line 162
    .line 163
    :cond_9
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z:Landroid/media/MediaCodec$BufferInfo;

    .line 164
    .line 165
    iget-wide v3, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 166
    .line 167
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/i;->w()J

    .line 168
    .line 169
    .line 170
    move-result-wide v6

    .line 171
    cmp-long v0, v3, v6

    .line 172
    .line 173
    if-gez v0, :cond_a

    .line 174
    .line 175
    move/from16 v0, v16

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_a
    move v0, v14

    .line 179
    :goto_1
    iput-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->g0:Z

    .line 180
    .line 181
    iget-wide v3, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:J

    .line 182
    .line 183
    cmp-long v0, v3, v1

    .line 184
    .line 185
    if-eqz v0, :cond_b

    .line 186
    .line 187
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z:Landroid/media/MediaCodec$BufferInfo;

    .line 188
    .line 189
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 190
    .line 191
    cmp-long v0, v3, v0

    .line 192
    .line 193
    if-gtz v0, :cond_b

    .line 194
    .line 195
    move/from16 v0, v16

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_b
    move v0, v14

    .line 199
    :goto_2
    iput-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h0:Z

    .line 200
    .line 201
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z:Landroid/media/MediaCodec$BufferInfo;

    .line 202
    .line 203
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 204
    .line 205
    invoke-virtual {v15, v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w1(J)V

    .line 206
    .line 207
    .line 208
    :cond_c
    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Z

    .line 209
    .line 210
    if-eqz v0, :cond_e

    .line 211
    .line 212
    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->q0:Z

    .line 213
    .line 214
    if-eqz v0, :cond_e

    .line 215
    .line 216
    :try_start_1
    iget-object v6, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f0:Ljava/nio/ByteBuffer;

    .line 217
    .line 218
    iget v7, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e0:I

    .line 219
    .line 220
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z:Landroid/media/MediaCodec$BufferInfo;

    .line 221
    .line 222
    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 223
    .line 224
    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 225
    .line 226
    iget-boolean v12, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->g0:Z

    .line 227
    .line 228
    iget-boolean v13, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h0:Z

    .line 229
    .line 230
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    .line 231
    .line 232
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    move-object/from16 v17, v0

    .line 237
    .line 238
    check-cast v17, Landroidx/media3/common/r;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 239
    .line 240
    const/4 v9, 0x1

    .line 241
    move-object/from16 v0, p0

    .line 242
    .line 243
    move-wide/from16 v1, p1

    .line 244
    .line 245
    move-wide/from16 v3, p3

    .line 246
    .line 247
    move/from16 v18, v14

    .line 248
    .line 249
    move-object/from16 v14, v17

    .line 250
    .line 251
    :try_start_2
    invoke-virtual/range {v0 .. v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X0(JJLandroidx/media3/exoplayer/mediacodec/t;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/r;)Z

    .line 252
    .line 253
    .line 254
    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 255
    goto :goto_3

    .line 256
    :catch_1
    move/from16 v18, v14

    .line 257
    .line 258
    :catch_2
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W0()V

    .line 259
    .line 260
    .line 261
    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0:Z

    .line 262
    .line 263
    if-eqz v0, :cond_d

    .line 264
    .line 265
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b1()V

    .line 266
    .line 267
    .line 268
    :cond_d
    return v18

    .line 269
    :cond_e
    move/from16 v18, v14

    .line 270
    .line 271
    iget-object v6, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f0:Ljava/nio/ByteBuffer;

    .line 272
    .line 273
    iget v7, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e0:I

    .line 274
    .line 275
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z:Landroid/media/MediaCodec$BufferInfo;

    .line 276
    .line 277
    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 278
    .line 279
    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 280
    .line 281
    iget-boolean v12, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->g0:Z

    .line 282
    .line 283
    iget-boolean v13, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h0:Z

    .line 284
    .line 285
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    .line 286
    .line 287
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    move-object v14, v0

    .line 292
    check-cast v14, Landroidx/media3/common/r;

    .line 293
    .line 294
    const/4 v9, 0x1

    .line 295
    move-object/from16 v0, p0

    .line 296
    .line 297
    move-wide/from16 v1, p1

    .line 298
    .line 299
    move-wide/from16 v3, p3

    .line 300
    .line 301
    invoke-virtual/range {v0 .. v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X0(JJLandroidx/media3/exoplayer/mediacodec/t;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/r;)Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    :goto_3
    if-eqz v0, :cond_12

    .line 306
    .line 307
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z:Landroid/media/MediaCodec$BufferInfo;

    .line 308
    .line 309
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 310
    .line 311
    invoke-virtual {v15, v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S0(J)V

    .line 312
    .line 313
    .line 314
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z:Landroid/media/MediaCodec$BufferInfo;

    .line 315
    .line 316
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 317
    .line 318
    and-int/lit8 v0, v0, 0x4

    .line 319
    .line 320
    if-eqz v0, :cond_f

    .line 321
    .line 322
    move/from16 v14, v16

    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_f
    move/from16 v14, v18

    .line 326
    .line 327
    :goto_4
    if-nez v14, :cond_10

    .line 328
    .line 329
    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->q0:Z

    .line 330
    .line 331
    if-eqz v0, :cond_10

    .line 332
    .line 333
    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h0:Z

    .line 334
    .line 335
    if-eqz v0, :cond_10

    .line 336
    .line 337
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-interface {v0}, Landroidx/media3/common/util/i;->currentTimeMillis()J

    .line 342
    .line 343
    .line 344
    move-result-wide v0

    .line 345
    iput-wide v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->a0:J

    .line 346
    .line 347
    :cond_10
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->g1()V

    .line 348
    .line 349
    .line 350
    if-nez v14, :cond_11

    .line 351
    .line 352
    return v16

    .line 353
    :cond_11
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W0()V

    .line 354
    .line 355
    .line 356
    :cond_12
    return v18
.end method

.method private f0(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ne p3, p4, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    if-eqz p4, :cond_b

    .line 7
    .line 8
    if-nez p3, :cond_1

    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :cond_1
    invoke-interface {p4}, Landroidx/media3/exoplayer/drm/DrmSession;->c()Landroidx/media3/decoder/b;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_2

    .line 17
    .line 18
    return v1

    .line 19
    :cond_2
    invoke-interface {p3}, Landroidx/media3/exoplayer/drm/DrmSession;->c()Landroidx/media3/decoder/b;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_b

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    instance-of v2, v2, Landroidx/media3/exoplayer/drm/c0;

    .line 41
    .line 42
    if-nez v2, :cond_4

    .line 43
    .line 44
    return v0

    .line 45
    :cond_4
    invoke-interface {p4}, Landroidx/media3/exoplayer/drm/DrmSession;->a()Ljava/util/UUID;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {p3}, Landroidx/media3/exoplayer/drm/DrmSession;->a()Ljava/util/UUID;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_5

    .line 58
    .line 59
    return v1

    .line 60
    :cond_5
    sget v2, Landroidx/media3/common/util/a1;->a:I

    .line 61
    .line 62
    const/16 v3, 0x17

    .line 63
    .line 64
    if-ge v2, v3, :cond_6

    .line 65
    .line 66
    return v1

    .line 67
    :cond_6
    sget-object v2, Landroidx/media3/common/h;->e:Ljava/util/UUID;

    .line 68
    .line 69
    invoke-interface {p3}, Landroidx/media3/exoplayer/drm/DrmSession;->a()Ljava/util/UUID;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-virtual {v2, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    if-nez p3, :cond_b

    .line 78
    .line 79
    invoke-interface {p4}, Landroidx/media3/exoplayer/drm/DrmSession;->a()Ljava/util/UUID;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-virtual {v2, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    if-eqz p3, :cond_7

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_7
    iget-boolean p1, p1, Landroidx/media3/exoplayer/mediacodec/w;->g:Z

    .line 91
    .line 92
    if-nez p1, :cond_a

    .line 93
    .line 94
    invoke-interface {p4}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    const/4 p3, 0x2

    .line 99
    if-eq p1, p3, :cond_9

    .line 100
    .line 101
    invoke-interface {p4}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    const/4 p3, 0x3

    .line 106
    if-eq p1, p3, :cond_8

    .line 107
    .line 108
    invoke-interface {p4}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    const/4 p3, 0x4

    .line 113
    if-ne p1, p3, :cond_a

    .line 114
    .line 115
    :cond_8
    iget-object p1, p2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Ljava/lang/String;

    .line 122
    .line 123
    invoke-interface {p4, p1}, Landroidx/media3/exoplayer/drm/DrmSession;->d(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_a

    .line 128
    .line 129
    :cond_9
    move v0, v1

    .line 130
    :cond_a
    return v0

    .line 131
    :cond_b
    :goto_0
    return v1
.end method

.method private f1()V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:I

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    return-void
.end method

.method private g0()Z
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_1b

    .line 7
    .line 8
    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0:I

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    if-eq v0, v3, :cond_1b

    .line 12
    .line 13
    iget-boolean v4, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:Z

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_0
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p1()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0()V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    .line 31
    .line 32
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    move-object v4, v0

    .line 37
    check-cast v4, Landroidx/media3/exoplayer/mediacodec/t;

    .line 38
    .line 39
    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:I

    .line 40
    .line 41
    if-gez v0, :cond_3

    .line 42
    .line 43
    invoke-interface {v4}, Landroidx/media3/exoplayer/mediacodec/t;->i()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:I

    .line 48
    .line 49
    if-gez v0, :cond_2

    .line 50
    .line 51
    return v2

    .line 52
    :cond_2
    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 53
    .line 54
    invoke-interface {v4, v0}, Landroidx/media3/exoplayer/mediacodec/t;->d(I)Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, v5, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    .line 59
    .line 60
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 63
    .line 64
    .line 65
    :cond_3
    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0:I

    .line 66
    .line 67
    const/4 v11, 0x1

    .line 68
    if-ne v0, v11, :cond_5

    .line 69
    .line 70
    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Z:Z

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    iput-boolean v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->q0:Z

    .line 76
    .line 77
    iget v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:I

    .line 78
    .line 79
    const-wide/16 v8, 0x0

    .line 80
    .line 81
    const/4 v10, 0x4

    .line 82
    const/4 v6, 0x0

    .line 83
    const/4 v7, 0x0

    .line 84
    invoke-interface/range {v4 .. v10}, Landroidx/media3/exoplayer/mediacodec/t;->a(IIIJI)V

    .line 85
    .line 86
    .line 87
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f1()V

    .line 88
    .line 89
    .line 90
    :goto_0
    iput v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0:I

    .line 91
    .line 92
    return v2

    .line 93
    :cond_5
    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Z

    .line 94
    .line 95
    if-eqz v0, :cond_6

    .line 96
    .line 97
    iput-boolean v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Z

    .line 98
    .line 99
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 100
    .line 101
    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    .line 102
    .line 103
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 108
    .line 109
    sget-object v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E0:[B

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 112
    .line 113
    .line 114
    iget v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:I

    .line 115
    .line 116
    array-length v7, v2

    .line 117
    const-wide/16 v8, 0x0

    .line 118
    .line 119
    const/4 v10, 0x0

    .line 120
    const/4 v6, 0x0

    .line 121
    invoke-interface/range {v4 .. v10}, Landroidx/media3/exoplayer/mediacodec/t;->a(IIIJI)V

    .line 122
    .line 123
    .line 124
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f1()V

    .line 125
    .line 126
    .line 127
    iput-boolean v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0:Z

    .line 128
    .line 129
    return v11

    .line 130
    :cond_6
    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    .line 131
    .line 132
    if-ne v0, v11, :cond_8

    .line 133
    .line 134
    move v0, v2

    .line 135
    :goto_1
    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M:Landroidx/media3/common/r;

    .line 136
    .line 137
    invoke-static {v5}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    check-cast v5, Landroidx/media3/common/r;

    .line 142
    .line 143
    iget-object v5, v5, Landroidx/media3/common/r;->r:Ljava/util/List;

    .line 144
    .line 145
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    if-ge v0, v5, :cond_7

    .line 150
    .line 151
    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M:Landroidx/media3/common/r;

    .line 152
    .line 153
    iget-object v5, v5, Landroidx/media3/common/r;->r:Ljava/util/List;

    .line 154
    .line 155
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    check-cast v5, [B

    .line 160
    .line 161
    iget-object v6, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 162
    .line 163
    iget-object v6, v6, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    .line 164
    .line 165
    invoke-static {v6}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    check-cast v6, Ljava/nio/ByteBuffer;

    .line 170
    .line 171
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 172
    .line 173
    .line 174
    add-int/lit8 v0, v0, 0x1

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_7
    iput v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    .line 178
    .line 179
    :cond_8
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 180
    .line 181
    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    .line 182
    .line 183
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/i;->u()Landroidx/media3/exoplayer/s2;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    :try_start_0
    iget-object v6, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 198
    .line 199
    invoke-virtual {v1, v5, v6, v2}, Landroidx/media3/exoplayer/i;->N(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 200
    .line 201
    .line 202
    move-result v6
    :try_end_0
    .catch Landroidx/media3/decoder/DecoderInputBuffer$InsufficientCapacityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    const/4 v7, -0x3

    .line 204
    if-ne v6, v7, :cond_a

    .line 205
    .line 206
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/i;->hasReadStreamToEnd()Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_9

    .line 211
    .line 212
    iget-wide v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:J

    .line 213
    .line 214
    iput-wide v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:J

    .line 215
    .line 216
    :cond_9
    return v2

    .line 217
    :cond_a
    const/4 v7, -0x5

    .line 218
    if-ne v6, v7, :cond_c

    .line 219
    .line 220
    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    .line 221
    .line 222
    if-ne v0, v3, :cond_b

    .line 223
    .line 224
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 225
    .line 226
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 227
    .line 228
    .line 229
    iput v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    .line 230
    .line 231
    :cond_b
    invoke-virtual {v1, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P0(Landroidx/media3/exoplayer/s2;)Landroidx/media3/exoplayer/k;

    .line 232
    .line 233
    .line 234
    return v11

    .line 235
    :cond_c
    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 236
    .line 237
    invoke-virtual {v5}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    if-eqz v5, :cond_10

    .line 242
    .line 243
    iget-wide v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:J

    .line 244
    .line 245
    iput-wide v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:J

    .line 246
    .line 247
    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    .line 248
    .line 249
    if-ne v0, v3, :cond_d

    .line 250
    .line 251
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 252
    .line 253
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 254
    .line 255
    .line 256
    iput v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    .line 257
    .line 258
    :cond_d
    iput-boolean v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:Z

    .line 259
    .line 260
    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0:Z

    .line 261
    .line 262
    if-nez v0, :cond_e

    .line 263
    .line 264
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W0()V

    .line 265
    .line 266
    .line 267
    return v2

    .line 268
    :cond_e
    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Z:Z

    .line 269
    .line 270
    if-eqz v0, :cond_f

    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_f
    iput-boolean v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->q0:Z

    .line 274
    .line 275
    iget v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:I

    .line 276
    .line 277
    const-wide/16 v8, 0x0

    .line 278
    .line 279
    const/4 v10, 0x4

    .line 280
    const/4 v6, 0x0

    .line 281
    const/4 v7, 0x0

    .line 282
    invoke-interface/range {v4 .. v10}, Landroidx/media3/exoplayer/mediacodec/t;->a(IIIJI)V

    .line 283
    .line 284
    .line 285
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f1()V

    .line 286
    .line 287
    .line 288
    :goto_2
    return v2

    .line 289
    :cond_10
    iget-boolean v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0:Z

    .line 290
    .line 291
    if-nez v5, :cond_12

    .line 292
    .line 293
    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 294
    .line 295
    invoke-virtual {v5}, Landroidx/media3/decoder/a;->isKeyFrame()Z

    .line 296
    .line 297
    .line 298
    move-result v5

    .line 299
    if-nez v5, :cond_12

    .line 300
    .line 301
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 302
    .line 303
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 304
    .line 305
    .line 306
    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    .line 307
    .line 308
    if-ne v0, v3, :cond_11

    .line 309
    .line 310
    iput v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    .line 311
    .line 312
    :cond_11
    return v11

    .line 313
    :cond_12
    iget-object v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 314
    .line 315
    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n1(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    if-eqz v3, :cond_13

    .line 320
    .line 321
    return v11

    .line 322
    :cond_13
    iget-object v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 323
    .line 324
    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->e()Z

    .line 325
    .line 326
    .line 327
    move-result v3

    .line 328
    if-eqz v3, :cond_14

    .line 329
    .line 330
    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 331
    .line 332
    iget-object v5, v5, Landroidx/media3/decoder/DecoderInputBuffer;->b:Landroidx/media3/decoder/c;

    .line 333
    .line 334
    invoke-virtual {v5, v0}, Landroidx/media3/decoder/c;->b(I)V

    .line 335
    .line 336
    .line 337
    :cond_14
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 338
    .line 339
    iget-wide v5, v0, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    .line 340
    .line 341
    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0:Z

    .line 342
    .line 343
    if-eqz v0, :cond_16

    .line 344
    .line 345
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A:Ljava/util/ArrayDeque;

    .line 346
    .line 347
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-nez v0, :cond_15

    .line 352
    .line 353
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A:Ljava/util/ArrayDeque;

    .line 354
    .line 355
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    .line 360
    .line 361
    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->d:Landroidx/media3/common/util/o0;

    .line 362
    .line 363
    iget-object v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    .line 364
    .line 365
    invoke-static {v7}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v7

    .line 369
    check-cast v7, Landroidx/media3/common/r;

    .line 370
    .line 371
    invoke-virtual {v0, v5, v6, v7}, Landroidx/media3/common/util/o0;->a(JLjava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    goto :goto_3

    .line 375
    :cond_15
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    .line 376
    .line 377
    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->d:Landroidx/media3/common/util/o0;

    .line 378
    .line 379
    iget-object v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    .line 380
    .line 381
    invoke-static {v7}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v7

    .line 385
    check-cast v7, Landroidx/media3/common/r;

    .line 386
    .line 387
    invoke-virtual {v0, v5, v6, v7}, Landroidx/media3/common/util/o0;->a(JLjava/lang/Object;)V

    .line 388
    .line 389
    .line 390
    :goto_3
    iput-boolean v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0:Z

    .line 391
    .line 392
    :cond_16
    iget-wide v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:J

    .line 393
    .line 394
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 395
    .line 396
    .line 397
    move-result-wide v7

    .line 398
    iput-wide v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:J

    .line 399
    .line 400
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/i;->hasReadStreamToEnd()Z

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    if-nez v0, :cond_17

    .line 405
    .line 406
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 407
    .line 408
    invoke-virtual {v0}, Landroidx/media3/decoder/a;->isLastSample()Z

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-eqz v0, :cond_18

    .line 413
    .line 414
    :cond_17
    iget-wide v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:J

    .line 415
    .line 416
    iput-wide v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:J

    .line 417
    .line 418
    :cond_18
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 419
    .line 420
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->d()V

    .line 421
    .line 422
    .line 423
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 424
    .line 425
    invoke-virtual {v0}, Landroidx/media3/decoder/a;->hasSupplementalData()Z

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    if-eqz v0, :cond_19

    .line 430
    .line 431
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 432
    .line 433
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0(Landroidx/media3/decoder/DecoderInputBuffer;)V

    .line 434
    .line 435
    .line 436
    :cond_19
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 437
    .line 438
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->U0(Landroidx/media3/decoder/DecoderInputBuffer;)V

    .line 439
    .line 440
    .line 441
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 442
    .line 443
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0(Landroidx/media3/decoder/DecoderInputBuffer;)I

    .line 444
    .line 445
    .line 446
    move-result v18

    .line 447
    if-eqz v3, :cond_1a

    .line 448
    .line 449
    invoke-static {v4}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    move-object v12, v0

    .line 454
    check-cast v12, Landroidx/media3/exoplayer/mediacodec/t;

    .line 455
    .line 456
    iget v13, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:I

    .line 457
    .line 458
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 459
    .line 460
    iget-object v15, v0, Landroidx/media3/decoder/DecoderInputBuffer;->b:Landroidx/media3/decoder/c;

    .line 461
    .line 462
    const/4 v14, 0x0

    .line 463
    move-wide/from16 v16, v5

    .line 464
    .line 465
    invoke-interface/range {v12 .. v18}, Landroidx/media3/exoplayer/mediacodec/t;->f(IILandroidx/media3/decoder/c;JI)V

    .line 466
    .line 467
    .line 468
    goto :goto_4

    .line 469
    :cond_1a
    invoke-static {v4}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    move-object v12, v0

    .line 474
    check-cast v12, Landroidx/media3/exoplayer/mediacodec/t;

    .line 475
    .line 476
    iget v13, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:I

    .line 477
    .line 478
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 479
    .line 480
    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    .line 481
    .line 482
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 487
    .line 488
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 489
    .line 490
    .line 491
    move-result v15

    .line 492
    const/4 v14, 0x0

    .line 493
    move-wide/from16 v16, v5

    .line 494
    .line 495
    invoke-interface/range {v12 .. v18}, Landroidx/media3/exoplayer/mediacodec/t;->a(IIIJI)V

    .line 496
    .line 497
    .line 498
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f1()V

    .line 499
    .line 500
    .line 501
    iput-boolean v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0:Z

    .line 502
    .line 503
    iput v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    .line 504
    .line 505
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    .line 506
    .line 507
    iget v2, v0, Landroidx/media3/exoplayer/j;->c:I

    .line 508
    .line 509
    add-int/2addr v2, v11

    .line 510
    iput v2, v0, Landroidx/media3/exoplayer/j;->c:I

    .line 511
    .line 512
    return v11

    .line 513
    :catch_0
    move-exception v0

    .line 514
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M0(Ljava/lang/Exception;)V

    .line 515
    .line 516
    .line 517
    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Z0(I)Z

    .line 518
    .line 519
    .line 520
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h0()V

    .line 521
    .line 522
    .line 523
    return v11

    .line 524
    :cond_1b
    :goto_5
    return v2
.end method

.method private g1()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e0:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f0:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    return-void
.end method

.method private h0()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/exoplayer/mediacodec/t;

    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/media3/exoplayer/mediacodec/t;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d1()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d1()V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method private h1(Landroidx/media3/exoplayer/drm/DrmSession;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/drm/k;->a(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 7
    .line 8
    return-void
.end method

.method private i1(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;)V
    .locals 4

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    .line 2
    .line 3
    iget-wide v0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->c:J

    .line 4
    .line 5
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long p1, v0, v2

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C0:Z

    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R0(J)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private k0(Z)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/common/r;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s:Landroidx/media3/exoplayer/mediacodec/h0;

    .line 10
    .line 11
    invoke-virtual {p0, v1, v0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->r0(Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;Z)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s:Landroidx/media3/exoplayer/mediacodec/h0;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->r0(Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;Z)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v2, "Drm session requires secure decoder for "

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v0, v0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, ", but no secure decoder available. Trying to proceed with "

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v0, "."

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string v0, "MediaCodecRenderer"

    .line 69
    .line 70
    invoke-static {v0, p1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    return-object v1
.end method

.method private l1(Landroidx/media3/exoplayer/drm/DrmSession;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/drm/k;->a(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 7
    .line 8
    return-void
.end method

.method private m1(J)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->I:J

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
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    sub-long/2addr v0, p1

    .line 21
    iget-wide p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->I:J

    .line 22
    .line 23
    cmp-long p1, v0, p1

    .line 24
    .line 25
    if-gez p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 31
    :goto_1
    return p1
.end method

.method protected static t1(Landroidx/media3/common/r;)Z
    .locals 1

    .line 1
    iget p0, p0, Landroidx/media3/common/r;->N:I

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 12
    :goto_1
    return p0
.end method

.method private u1(Landroidx/media3/common/r;)Z
    .locals 4

    .line 1
    sget v0, Landroidx/media3/common/util/a1;->a:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    .line 10
    .line 11
    if-eqz v0, :cond_6

    .line 12
    .line 13
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:I

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_6

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->getState()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K:F

    .line 26
    .line 27
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroidx/media3/common/r;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->y()[Landroidx/media3/common/r;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0(FLandroidx/media3/common/r;[Landroidx/media3/common/r;)F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P:F

    .line 42
    .line 43
    cmpl-float v1, v0, p1

    .line 44
    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    return v2

    .line 48
    :cond_2
    const/high16 v1, -0x40800000    # -1.0f

    .line 49
    .line 50
    cmpl-float v3, p1, v1

    .line 51
    .line 52
    if-nez v3, :cond_3

    .line 53
    .line 54
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0()V

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    return p1

    .line 59
    :cond_3
    cmpl-float v0, v0, v1

    .line 60
    .line 61
    if-nez v0, :cond_5

    .line 62
    .line 63
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u:F

    .line 64
    .line 65
    cmpl-float v0, p1, v0

    .line 66
    .line 67
    if-lez v0, :cond_4

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    return v2

    .line 71
    :cond_5
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    .line 72
    .line 73
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v1, "operating-rate"

    .line 77
    .line 78
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    .line 82
    .line 83
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Landroidx/media3/exoplayer/mediacodec/t;

    .line 88
    .line 89
    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/mediacodec/t;->b(Landroid/os/Bundle;)V

    .line 90
    .line 91
    .line 92
    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P:F

    .line 93
    .line 94
    :cond_6
    :goto_1
    return v2
.end method

.method private v1()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/exoplayer/drm/DrmSession;

    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->c()Landroidx/media3/decoder/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v1, v0, Landroidx/media3/exoplayer/drm/c0;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H:Landroid/media/MediaCrypto;

    .line 18
    .line 19
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/media/MediaCrypto;

    .line 24
    .line 25
    check-cast v0, Landroidx/media3/exoplayer/drm/c0;

    .line 26
    .line 27
    iget-object v0, v0, Landroidx/media3/exoplayer/drm/c0;->b:[B

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    .line 35
    .line 36
    const/16 v2, 0x1776

    .line 37
    .line 38
    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/i;->q(Ljava/lang/Throwable;Landroidx/media3/common/r;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    throw v0

    .line 43
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 44
    .line 45
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h1(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0:I

    .line 50
    .line 51
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:I

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method protected C()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    .line 3
    .line 4
    sget-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->e:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i1(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->j0()Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method protected D(ZZ)V
    .locals 0

    .line 1
    new-instance p1, Landroidx/media3/exoplayer/j;

    .line 2
    .line 3
    invoke-direct {p1}, Landroidx/media3/exoplayer/j;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    .line 7
    .line 8
    return-void
.end method

.method protected F(JZ)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:Z

    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0:Z

    .line 5
    .line 6
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x0:Z

    .line 7
    .line 8
    iget-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0:Z

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y:Landroidx/media3/exoplayer/mediacodec/j;

    .line 13
    .line 14
    invoke-virtual {p2}, Landroidx/media3/exoplayer/mediacodec/j;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 18
    .line 19
    invoke-virtual {p2}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 20
    .line 21
    .line 22
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->j0:Z

    .line 23
    .line 24
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B:Landroidx/media3/exoplayer/audio/b1;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/media3/exoplayer/audio/b1;->d()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0()Z

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    .line 34
    .line 35
    iget-object p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->d:Landroidx/media3/common/util/o0;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/media3/common/util/o0;->l()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-lez p1, :cond_1

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0:Z

    .line 45
    .line 46
    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    .line 47
    .line 48
    iget-object p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->d:Landroidx/media3/common/util/o0;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/media3/common/util/o0;->c()V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A:Ljava/util/ArrayDeque;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method protected final F0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0:Z

    .line 2
    .line 3
    return v0
.end method

.method protected final G0(Landroidx/media3/common/r;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->r1(Landroidx/media3/common/r;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method protected I()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->a0()V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l1(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l1(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 14
    .line 15
    .line 16
    throw v1
.end method

.method protected J()V
    .locals 0

    .line 1
    return-void
.end method

.method protected final J0()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    .line 2
    .line 3
    if-nez v0, :cond_7

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0:Z

    .line 6
    .line 7
    if-nez v0, :cond_7

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_3

    .line 14
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G0(Landroidx/media3/common/r;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C0(Landroidx/media3/common/r;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 25
    .line 26
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h1(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E0()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_5

    .line 38
    .line 39
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    invoke-interface {v1}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x3

    .line 48
    if-eq v1, v2, :cond_3

    .line 49
    .line 50
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 51
    .line 52
    invoke-interface {v1}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    const/4 v2, 0x4

    .line 57
    if-ne v1, v2, :cond_4

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 63
    .line 64
    iget-object v2, v0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v2}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Ljava/lang/String;

    .line 71
    .line 72
    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/drm/DrmSession;->d(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    const/4 v1, 0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_4
    const/4 v1, 0x0

    .line 81
    :goto_1
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H:Landroid/media/MediaCrypto;

    .line 82
    .line 83
    invoke-direct {p0, v2, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K0(Landroid/media/MediaCrypto;Z)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H:Landroid/media/MediaCrypto;

    .line 87
    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    .line 91
    .line 92
    if-nez v1, :cond_6

    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    .line 95
    .line 96
    .line 97
    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H:Landroid/media/MediaCrypto;

    .line 99
    .line 100
    :cond_6
    return-void

    .line 101
    :goto_2
    const/16 v2, 0xfa1

    .line 102
    .line 103
    invoke-virtual {p0, v1, v0, v2}, Landroidx/media3/exoplayer/i;->q(Ljava/lang/Throwable;Landroidx/media3/common/r;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    throw v0

    .line 108
    :cond_7
    :goto_3
    return-void
.end method

.method protected K()V
    .locals 0

    .line 1
    return-void
.end method

.method protected L([Landroidx/media3/common/r;JJLandroidx/media3/exoplayer/source/r$b;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    .line 3
    .line 4
    iget-wide v1, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->c:J

    .line 5
    .line 6
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    cmp-long v1, v1, v3

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    .line 16
    .line 17
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    move-object v5, v1

    .line 23
    move-wide v8, p2

    .line 24
    move-wide/from16 v10, p4

    .line 25
    .line 26
    invoke-direct/range {v5 .. v11}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;-><init>(JJJ)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i1(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;)V

    .line 30
    .line 31
    .line 32
    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D0:Z

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T0()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A:Ljava/util/ArrayDeque;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    iget-wide v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:J

    .line 49
    .line 50
    cmp-long v5, v1, v3

    .line 51
    .line 52
    if-eqz v5, :cond_1

    .line 53
    .line 54
    iget-wide v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B0:J

    .line 55
    .line 56
    cmp-long v7, v5, v3

    .line 57
    .line 58
    if-eqz v7, :cond_2

    .line 59
    .line 60
    cmp-long v1, v5, v1

    .line 61
    .line 62
    if-ltz v1, :cond_2

    .line 63
    .line 64
    :cond_1
    new-instance v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    .line 65
    .line 66
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    move-object v5, v1

    .line 72
    move-wide v8, p2

    .line 73
    move-wide/from16 v10, p4

    .line 74
    .line 75
    invoke-direct/range {v5 .. v11}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;-><init>(JJJ)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i1(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    .line 82
    .line 83
    iget-wide v1, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->c:J

    .line 84
    .line 85
    cmp-long v1, v1, v3

    .line 86
    .line 87
    if-eqz v1, :cond_3

    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T0()V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A:Ljava/util/ArrayDeque;

    .line 94
    .line 95
    new-instance v9, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    .line 96
    .line 97
    iget-wide v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:J

    .line 98
    .line 99
    move-object v2, v9

    .line 100
    move-wide v5, p2

    .line 101
    move-wide/from16 v7, p4

    .line 102
    .line 103
    invoke-direct/range {v2 .. v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;-><init>(JJJ)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    :cond_3
    :goto_0
    return-void
.end method

.method protected L0(Landroidx/media3/common/r;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method protected abstract M0(Ljava/lang/Exception;)V
.end method

.method protected abstract N0(Ljava/lang/String;Landroidx/media3/exoplayer/mediacodec/t$a;JJ)V
.end method

.method protected abstract O0(Ljava/lang/String;)V
.end method

.method protected P0(Landroidx/media3/exoplayer/s2;)Landroidx/media3/exoplayer/k;
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0:Z

    .line 3
    .line 4
    iget-object v1, p1, Landroidx/media3/exoplayer/s2;->b:Landroidx/media3/common/r;

    .line 5
    .line 6
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroidx/media3/common/r;

    .line 11
    .line 12
    iget-object v2, v1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v2, :cond_14

    .line 15
    .line 16
    const-string v3, "video/av01"

    .line 17
    .line 18
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget-object v2, v1, Landroidx/media3/common/r;->r:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1, v3}, Landroidx/media3/common/r$b;->g0(Ljava/util/List;)Landroidx/media3/common/r$b;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :cond_0
    move-object v7, v1

    .line 46
    iget-object p1, p1, Landroidx/media3/exoplayer/s2;->a:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 47
    .line 48
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l1(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 49
    .line 50
    .line 51
    iput-object v7, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    .line 52
    .line 53
    iget-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0:Z

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->k0:Z

    .line 58
    .line 59
    return-object v3

    .line 60
    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    .line 61
    .line 62
    if-nez p1, :cond_2

    .line 63
    .line 64
    iput-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Ljava/util/ArrayDeque;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J0()V

    .line 67
    .line 68
    .line 69
    return-object v3

    .line 70
    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S:Landroidx/media3/exoplayer/mediacodec/w;

    .line 71
    .line 72
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Landroidx/media3/exoplayer/mediacodec/w;

    .line 77
    .line 78
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M:Landroidx/media3/common/r;

    .line 79
    .line 80
    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    move-object v6, v2

    .line 85
    check-cast v6, Landroidx/media3/common/r;

    .line 86
    .line 87
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 88
    .line 89
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 90
    .line 91
    invoke-direct {p0, v1, v7, v2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f0(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_3

    .line 96
    .line 97
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0()V

    .line 98
    .line 99
    .line 100
    new-instance p1, Landroidx/media3/exoplayer/k;

    .line 101
    .line 102
    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/w;->a:Ljava/lang/String;

    .line 103
    .line 104
    const/4 v8, 0x0

    .line 105
    const/16 v9, 0x80

    .line 106
    .line 107
    move-object v4, p1

    .line 108
    invoke-direct/range {v4 .. v9}, Landroidx/media3/exoplayer/k;-><init>(Ljava/lang/String;Landroidx/media3/common/r;Landroidx/media3/common/r;II)V

    .line 109
    .line 110
    .line 111
    return-object p1

    .line 112
    :cond_3
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 113
    .line 114
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 115
    .line 116
    const/4 v4, 0x0

    .line 117
    if-eq v2, v3, :cond_4

    .line 118
    .line 119
    move v2, v0

    .line 120
    goto :goto_0

    .line 121
    :cond_4
    move v2, v4

    .line 122
    :goto_0
    if-eqz v2, :cond_6

    .line 123
    .line 124
    sget v3, Landroidx/media3/common/util/a1;->a:I

    .line 125
    .line 126
    const/16 v5, 0x17

    .line 127
    .line 128
    if-lt v3, v5, :cond_5

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_5
    move v3, v4

    .line 132
    goto :goto_2

    .line 133
    :cond_6
    :goto_1
    move v3, v0

    .line 134
    :goto_2
    invoke-static {v3}, Landroidx/media3/common/util/a;->g(Z)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v1, v6, v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;Landroidx/media3/common/r;)Landroidx/media3/exoplayer/k;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    iget v5, v3, Landroidx/media3/exoplayer/k;->d:I

    .line 142
    .line 143
    const/4 v8, 0x3

    .line 144
    if-eqz v5, :cond_10

    .line 145
    .line 146
    const/16 v9, 0x10

    .line 147
    .line 148
    const/4 v10, 0x2

    .line 149
    if-eq v5, v0, :cond_d

    .line 150
    .line 151
    if-eq v5, v10, :cond_9

    .line 152
    .line 153
    if-ne v5, v8, :cond_8

    .line 154
    .line 155
    invoke-direct {p0, v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u1(Landroidx/media3/common/r;)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-nez v0, :cond_7

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_7
    iput-object v7, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M:Landroidx/media3/common/r;

    .line 163
    .line 164
    if-eqz v2, :cond_11

    .line 165
    .line 166
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0()Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-nez v0, :cond_11

    .line 171
    .line 172
    :goto_3
    move v9, v10

    .line 173
    goto :goto_5

    .line 174
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 175
    .line 176
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 177
    .line 178
    .line 179
    throw p1

    .line 180
    :cond_9
    invoke-direct {p0, v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u1(Landroidx/media3/common/r;)Z

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    if-nez v5, :cond_a

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_a
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0:Z

    .line 188
    .line 189
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    .line 190
    .line 191
    iget v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T:I

    .line 192
    .line 193
    if-eq v5, v10, :cond_c

    .line 194
    .line 195
    if-ne v5, v0, :cond_b

    .line 196
    .line 197
    iget v5, v7, Landroidx/media3/common/r;->v:I

    .line 198
    .line 199
    iget v9, v6, Landroidx/media3/common/r;->v:I

    .line 200
    .line 201
    if-ne v5, v9, :cond_b

    .line 202
    .line 203
    iget v5, v7, Landroidx/media3/common/r;->w:I

    .line 204
    .line 205
    iget v9, v6, Landroidx/media3/common/r;->w:I

    .line 206
    .line 207
    if-ne v5, v9, :cond_b

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_b
    move v0, v4

    .line 211
    :cond_c
    :goto_4
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Z

    .line 212
    .line 213
    iput-object v7, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M:Landroidx/media3/common/r;

    .line 214
    .line 215
    if-eqz v2, :cond_11

    .line 216
    .line 217
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0()Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-nez v0, :cond_11

    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_d
    invoke-direct {p0, v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u1(Landroidx/media3/common/r;)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-nez v0, :cond_e

    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_e
    iput-object v7, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M:Landroidx/media3/common/r;

    .line 232
    .line 233
    if-eqz v2, :cond_f

    .line 234
    .line 235
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0()Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-nez v0, :cond_11

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_f
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b0()Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-nez v0, :cond_11

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_10
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0()V

    .line 250
    .line 251
    .line 252
    :cond_11
    move v9, v4

    .line 253
    :goto_5
    iget v0, v3, Landroidx/media3/exoplayer/k;->d:I

    .line 254
    .line 255
    if-eqz v0, :cond_13

    .line 256
    .line 257
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    .line 258
    .line 259
    if-ne v0, p1, :cond_12

    .line 260
    .line 261
    iget p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:I

    .line 262
    .line 263
    if-ne p1, v8, :cond_13

    .line 264
    .line 265
    :cond_12
    new-instance p1, Landroidx/media3/exoplayer/k;

    .line 266
    .line 267
    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/w;->a:Ljava/lang/String;

    .line 268
    .line 269
    const/4 v8, 0x0

    .line 270
    move-object v4, p1

    .line 271
    invoke-direct/range {v4 .. v9}, Landroidx/media3/exoplayer/k;-><init>(Ljava/lang/String;Landroidx/media3/common/r;Landroidx/media3/common/r;II)V

    .line 272
    .line 273
    .line 274
    return-object p1

    .line 275
    :cond_13
    return-object v3

    .line 276
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 277
    .line 278
    const-string v0, "Sample MIME type is null."

    .line 279
    .line 280
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    const/16 v0, 0xfa5

    .line 284
    .line 285
    invoke-virtual {p0, p1, v1, v0}, Landroidx/media3/exoplayer/i;->q(Ljava/lang/Throwable;Landroidx/media3/common/r;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    throw p1
.end method

.method protected abstract Q0(Landroidx/media3/common/r;Landroid/media/MediaFormat;)V
.end method

.method protected R0(J)V
    .locals 0

    .line 1
    return-void
.end method

.method protected S0(J)V
    .locals 2

    .line 1
    iput-wide p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B0:J

    .line 2
    .line 3
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A:Ljava/util/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A:Ljava/util/ArrayDeque;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    .line 18
    .line 19
    iget-wide v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->a:J

    .line 20
    .line 21
    cmp-long v0, p1, v0

    .line 22
    .line 23
    if-ltz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A:Ljava/util/ArrayDeque;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    .line 32
    .line 33
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    .line 38
    .line 39
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i1(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T0()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method protected abstract T(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;Landroidx/media3/common/r;)Landroidx/media3/exoplayer/k;
.end method

.method protected T0()V
    .locals 0

    .line 1
    return-void
.end method

.method protected U0(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected V0(Landroidx/media3/exoplayer/w3$a;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected abstract X0(JJLandroidx/media3/exoplayer/mediacodec/t;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/r;)Z
.end method

.method protected Z(Ljava/lang/Throwable;Landroidx/media3/exoplayer/mediacodec/w;)Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;-><init>(Ljava/lang/Throwable;Landroidx/media3/exoplayer/mediacodec/w;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final a(Landroidx/media3/common/r;)I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s:Landroidx/media3/exoplayer/mediacodec/h0;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s1(Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;)I

    .line 4
    .line 5
    .line 6
    move-result p1
    :try_end_0
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p1

    .line 8
    :catch_0
    move-exception v0

    .line 9
    const/16 v1, 0xfa2

    .line 10
    .line 11
    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/i;->q(Ljava/lang/Throwable;Landroidx/media3/common/r;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    throw p1
.end method

.method protected b1()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-interface {v1}, Landroidx/media3/exoplayer/mediacodec/t;->release()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    .line 10
    .line 11
    iget v2, v1, Landroidx/media3/exoplayer/j;->b:I

    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    iput v2, v1, Landroidx/media3/exoplayer/j;->b:I

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S:Landroidx/media3/exoplayer/mediacodec/w;

    .line 18
    .line 19
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/media3/exoplayer/mediacodec/w;

    .line 24
    .line 25
    iget-object v1, v1, Landroidx/media3/exoplayer/mediacodec/w;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O0(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    goto :goto_3

    .line 33
    :cond_0
    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    .line 34
    .line 35
    :try_start_1
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H:Landroid/media/MediaCrypto;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_1
    move-exception v1

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    :goto_1
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H:Landroid/media/MediaCrypto;

    .line 46
    .line 47
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h1(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e1()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :goto_2
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H:Landroid/media/MediaCrypto;

    .line 55
    .line 56
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h1(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e1()V

    .line 60
    .line 61
    .line 62
    throw v1

    .line 63
    :goto_3
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    .line 64
    .line 65
    :try_start_2
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H:Landroid/media/MediaCrypto;

    .line 66
    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 70
    .line 71
    .line 72
    goto :goto_4

    .line 73
    :catchall_2
    move-exception v1

    .line 74
    goto :goto_5

    .line 75
    :cond_2
    :goto_4
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H:Landroid/media/MediaCrypto;

    .line 76
    .line 77
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h1(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e1()V

    .line 81
    .line 82
    .line 83
    throw v1

    .line 84
    :goto_5
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H:Landroid/media/MediaCrypto;

    .line 85
    .line 86
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h1(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e1()V

    .line 90
    .line 91
    .line 92
    throw v1
.end method

.method protected abstract c1()V
.end method

.method public d(FF)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J:F

    .line 2
    .line 3
    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K:F

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M:Landroidx/media3/common/r;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u1(Landroidx/media3/common/r;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected d1()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f1()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->g1()V

    .line 5
    .line 6
    .line 7
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0:J

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->q0:Z

    .line 16
    .line 17
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->a0:J

    .line 18
    .line 19
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0:Z

    .line 20
    .line 21
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Z

    .line 22
    .line 23
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Y:Z

    .line 24
    .line 25
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->g0:Z

    .line 26
    .line 27
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h0:Z

    .line 28
    .line 29
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:J

    .line 30
    .line 31
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:J

    .line 32
    .line 33
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B0:J

    .line 34
    .line 35
    iput v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0:I

    .line 36
    .line 37
    iput v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:I

    .line 38
    .line 39
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0:Z

    .line 40
    .line 41
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    .line 42
    .line 43
    return-void
.end method

.method protected e1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d1()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S:Landroidx/media3/exoplayer/mediacodec/w;

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M:Landroidx/media3/common/r;

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N:Landroid/media/MediaFormat;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->r0:Z

    .line 19
    .line 20
    const/high16 v1, -0x40800000    # -1.0f

    .line 21
    .line 22
    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P:F

    .line 23
    .line 24
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T:I

    .line 25
    .line 26
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->U:Z

    .line 27
    .line 28
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Z:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b0:Z

    .line 35
    .line 36
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0:Z

    .line 37
    .line 38
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    .line 39
    .line 40
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    check-cast p2, Landroidx/media3/exoplayer/w3$a;

    .line 6
    .line 7
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroidx/media3/exoplayer/w3$a;

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G:Landroidx/media3/exoplayer/w3$a;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V0(Landroidx/media3/exoplayer/w3$a;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/i;->handleMessage(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method protected final i0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->j0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J0()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return v0
.end method

.method public isEnded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0:Z

    .line 2
    .line 3
    return v0
.end method

.method public isReady()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->B()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0:J

    .line 18
    .line 19
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    cmp-long v0, v0, v2

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    iget-wide v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0:J

    .line 37
    .line 38
    cmp-long v0, v0, v2

    .line 39
    .line 40
    if-gez v0, :cond_1

    .line 41
    .line 42
    :cond_0
    const/4 v0, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 45
    :goto_0
    return v0
.end method

.method protected j0()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:I

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eq v0, v2, :cond_5

    .line 12
    .line 13
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->U:Z

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->r0:Z

    .line 18
    .line 19
    if-eqz v2, :cond_5

    .line 20
    .line 21
    :cond_1
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V:Z

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->q0:Z

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    const/4 v2, 0x2

    .line 31
    if-ne v0, v2, :cond_4

    .line 32
    .line 33
    sget v0, Landroidx/media3/common/util/a1;->a:I

    .line 34
    .line 35
    const/16 v2, 0x17

    .line 36
    .line 37
    if-lt v0, v2, :cond_3

    .line 38
    .line 39
    move v4, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    move v4, v1

    .line 42
    :goto_0
    invoke-static {v4}, Landroidx/media3/common/util/a;->g(Z)V

    .line 43
    .line 44
    .line 45
    if-lt v0, v2, :cond_4

    .line 46
    .line 47
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v1()V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string v1, "MediaCodecRenderer"

    .line 53
    .line 54
    const-string v2, "Failed to update the DRM session, releasing the codec instead."

    .line 55
    .line 56
    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/u;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b1()V

    .line 60
    .line 61
    .line 62
    return v3

    .line 63
    :cond_4
    :goto_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h0()V

    .line 64
    .line 65
    .line 66
    return v1

    .line 67
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b1()V

    .line 68
    .line 69
    .line 70
    return v3
.end method

.method protected final j1()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x0:Z

    .line 3
    .line 4
    return-void
.end method

.method protected final k1(Landroidx/media3/exoplayer/ExoPlaybackException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 2
    .line 3
    return-void
.end method

.method protected final l0()Landroidx/media3/exoplayer/mediacodec/t;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m(JJ)J
    .locals 6

    .line 1
    iget-boolean v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b0:Z

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-wide v1, p1

    .line 5
    move-wide v3, p3

    .line 6
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0(JJZ)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    return-wide p1
.end method

.method protected m0(Landroidx/media3/decoder/DecoderInputBuffer;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method protected final n0()Landroidx/media3/exoplayer/mediacodec/w;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S:Landroidx/media3/exoplayer/mediacodec/w;

    .line 2
    .line 3
    return-object v0
.end method

.method protected n1(Landroidx/media3/decoder/DecoderInputBuffer;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->q1(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    .line 11
    .line 12
    iget v0, p1, Landroidx/media3/exoplayer/j;->d:I

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    add-int/2addr v0, v1

    .line 16
    iput v0, p1, Landroidx/media3/exoplayer/j;->d:I

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method protected o0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method protected o1(Landroidx/media3/exoplayer/mediacodec/w;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method protected abstract p0(FLandroidx/media3/common/r;[Landroidx/media3/common/r;)F
.end method

.method protected p1()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method protected final q0()Landroid/media/MediaFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N:Landroid/media/MediaFormat;

    .line 2
    .line 3
    return-object v0
.end method

.method protected q1(Landroidx/media3/decoder/DecoderInputBuffer;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method protected abstract r0(Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;Z)Ljava/util/List;
.end method

.method protected r1(Landroidx/media3/common/r;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public render(JJ)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x0:Z

    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W0()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 12
    .line 13
    if-nez v0, :cond_c

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    :try_start_0
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0:Z

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c1()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catch_0
    move-exception p1

    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto/16 :goto_6

    .line 29
    .line 30
    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    .line 31
    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Z0(I)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J0()V

    .line 43
    .line 44
    .line 45
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0:Z

    .line 46
    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    const-string v2, "bypassRender"

    .line 50
    .line 51
    invoke-static {v2}, Landroidx/media3/common/util/q0;->a(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S(JJ)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    invoke-static {}, Landroidx/media3/common/util/q0;->b()V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_4
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/mediacodec/t;

    .line 66
    .line 67
    if-eqz v2, :cond_7

    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-interface {v2}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    const-string v4, "drainAndFeed"

    .line 78
    .line 79
    invoke-static {v4}, Landroidx/media3/common/util/q0;->a(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e0(JJ)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_5

    .line 87
    .line 88
    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m1(J)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_5

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    :goto_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->g0()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_6

    .line 100
    .line 101
    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m1(J)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_6

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_6
    invoke-static {}, Landroidx/media3/common/util/q0;->b()V

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_7
    iget-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    .line 113
    .line 114
    iget p4, p3, Landroidx/media3/exoplayer/j;->d:I

    .line 115
    .line 116
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/i;->P(J)I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    add-int/2addr p4, p1

    .line 121
    iput p4, p3, Landroidx/media3/exoplayer/j;->d:I

    .line 122
    .line 123
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Z0(I)Z

    .line 124
    .line 125
    .line 126
    :goto_3
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    .line 127
    .line 128
    invoke-virtual {p1}, Landroidx/media3/exoplayer/j;->c()V
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :goto_4
    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->I0(Ljava/lang/IllegalStateException;)Z

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    if-eqz p2, :cond_b

    .line 137
    .line 138
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M0(Ljava/lang/Exception;)V

    .line 139
    .line 140
    .line 141
    instance-of p2, p1, Landroid/media/MediaCodec$CodecException;

    .line 142
    .line 143
    if-eqz p2, :cond_8

    .line 144
    .line 145
    move-object p2, p1

    .line 146
    check-cast p2, Landroid/media/MediaCodec$CodecException;

    .line 147
    .line 148
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    if-eqz p2, :cond_8

    .line 153
    .line 154
    move v1, v0

    .line 155
    :cond_8
    if-eqz v1, :cond_9

    .line 156
    .line 157
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b1()V

    .line 158
    .line 159
    .line 160
    :cond_9
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0()Landroidx/media3/exoplayer/mediacodec/w;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Z(Ljava/lang/Throwable;Landroidx/media3/exoplayer/mediacodec/w;)Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    iget p2, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;->errorCode:I

    .line 169
    .line 170
    const/16 p3, 0x44d

    .line 171
    .line 172
    if-ne p2, p3, :cond_a

    .line 173
    .line 174
    const/16 p2, 0xfa6

    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_a
    const/16 p2, 0xfa3

    .line 178
    .line 179
    :goto_5
    iget-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    .line 180
    .line 181
    invoke-virtual {p0, p1, p3, v1, p2}, Landroidx/media3/exoplayer/i;->r(Ljava/lang/Throwable;Landroidx/media3/common/r;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    throw p1

    .line 186
    :cond_b
    throw p1

    .line 187
    :goto_6
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroidx/media3/common/r;

    .line 188
    .line 189
    invoke-virtual {p1}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    .line 190
    .line 191
    .line 192
    move-result p3

    .line 193
    invoke-static {p3}, Landroidx/media3/common/util/a1;->b0(I)I

    .line 194
    .line 195
    .line 196
    move-result p3

    .line 197
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/i;->q(Ljava/lang/Throwable;Landroidx/media3/common/r;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    throw p1

    .line 202
    :cond_c
    const/4 p1, 0x0

    .line 203
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 204
    .line 205
    throw v0
.end method

.method protected s0(JJZ)J
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/i;->m(JJ)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    return-wide p1
.end method

.method protected abstract s1(Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;)I
.end method

.method public final supportsMixedMimeTypeAdaptation()I
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    return v0
.end method

.method protected t0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:J

    .line 2
    .line 3
    return-wide v0
.end method

.method protected abstract u0(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;Landroid/media/MediaCrypto;F)Landroidx/media3/exoplayer/mediacodec/t$a;
.end method

.method protected final v0()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    .line 2
    .line 3
    iget-wide v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->c:J

    .line 4
    .line 5
    return-wide v0
.end method

.method protected final w0()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    .line 2
    .line 3
    iget-wide v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->b:J

    .line 4
    .line 5
    return-wide v0
.end method

.method protected final w1(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->d:Landroidx/media3/common/util/o0;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/util/o0;->j(J)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/media3/common/r;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C0:Z

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N:Landroid/media/MediaFormat;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    .line 22
    .line 23
    iget-object p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->d:Landroidx/media3/common/util/o0;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/media3/common/util/o0;->i()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroidx/media3/common/r;

    .line 30
    .line 31
    :cond_0
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O:Z

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/common/r;

    .line 45
    .line 46
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroidx/media3/common/r;

    .line 51
    .line 52
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N:Landroid/media/MediaFormat;

    .line 53
    .line 54
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q0(Landroidx/media3/common/r;Landroid/media/MediaFormat;)V

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O:Z

    .line 59
    .line 60
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C0:Z

    .line 61
    .line 62
    :cond_2
    return-void
.end method

.method protected x0()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J:F

    .line 2
    .line 3
    return v0
.end method

.method protected final y0()Landroidx/media3/exoplayer/w3$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G:Landroidx/media3/exoplayer/w3$a;

    .line 2
    .line 3
    return-object v0
.end method

.method protected abstract z0(Landroidx/media3/decoder/DecoderInputBuffer;)V
.end method
