.class public final Landroidx/media3/exoplayer/j;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:J

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private b(JI)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/j;->k:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Landroidx/media3/exoplayer/j;->k:J

    .line 5
    .line 6
    iget p1, p0, Landroidx/media3/exoplayer/j;->l:I

    .line 7
    .line 8
    add-int/2addr p1, p3

    .line 9
    iput p1, p0, Landroidx/media3/exoplayer/j;->l:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/j;->b(JI)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public declared-synchronized c()V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/j;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroidx/media3/exoplayer/j;->b:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Landroidx/media3/exoplayer/j;->c:I

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget v3, p0, Landroidx/media3/exoplayer/j;->d:I

    .line 20
    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget v4, p0, Landroidx/media3/exoplayer/j;->e:I

    .line 26
    .line 27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget v5, p0, Landroidx/media3/exoplayer/j;->f:I

    .line 32
    .line 33
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    iget v6, p0, Landroidx/media3/exoplayer/j;->g:I

    .line 38
    .line 39
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    iget v7, p0, Landroidx/media3/exoplayer/j;->h:I

    .line 44
    .line 45
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    iget v8, p0, Landroidx/media3/exoplayer/j;->i:I

    .line 50
    .line 51
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    iget v9, p0, Landroidx/media3/exoplayer/j;->j:I

    .line 56
    .line 57
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    iget-wide v10, p0, Landroidx/media3/exoplayer/j;->k:J

    .line 62
    .line 63
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    iget v11, p0, Landroidx/media3/exoplayer/j;->l:I

    .line 68
    .line 69
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    const/16 v12, 0xc

    .line 74
    .line 75
    new-array v12, v12, [Ljava/lang/Object;

    .line 76
    .line 77
    const/4 v13, 0x0

    .line 78
    aput-object v0, v12, v13

    .line 79
    .line 80
    const/4 v0, 0x1

    .line 81
    aput-object v1, v12, v0

    .line 82
    .line 83
    const/4 v0, 0x2

    .line 84
    aput-object v2, v12, v0

    .line 85
    .line 86
    const/4 v0, 0x3

    .line 87
    aput-object v3, v12, v0

    .line 88
    .line 89
    const/4 v0, 0x4

    .line 90
    aput-object v4, v12, v0

    .line 91
    .line 92
    const/4 v0, 0x5

    .line 93
    aput-object v5, v12, v0

    .line 94
    .line 95
    const/4 v0, 0x6

    .line 96
    aput-object v6, v12, v0

    .line 97
    .line 98
    const/4 v0, 0x7

    .line 99
    aput-object v7, v12, v0

    .line 100
    .line 101
    const/16 v0, 0x8

    .line 102
    .line 103
    aput-object v8, v12, v0

    .line 104
    .line 105
    const/16 v0, 0x9

    .line 106
    .line 107
    aput-object v9, v12, v0

    .line 108
    .line 109
    const/16 v0, 0xa

    .line 110
    .line 111
    aput-object v10, v12, v0

    .line 112
    .line 113
    const/16 v0, 0xb

    .line 114
    .line 115
    aput-object v11, v12, v0

    .line 116
    .line 117
    const-string v0, "DecoderCounters {\n decoderInits=%s,\n decoderReleases=%s\n queuedInputBuffers=%s\n skippedInputBuffers=%s\n renderedOutputBuffers=%s\n skippedOutputBuffers=%s\n droppedBuffers=%s\n droppedInputBuffers=%s\n maxConsecutiveDroppedBuffers=%s\n droppedToKeyframeEvents=%s\n totalVideoFrameProcessingOffsetUs=%s\n videoFrameProcessingOffsetCount=%s\n}"

    .line 118
    .line 119
    invoke-static {v0, v12}, Landroidx/media3/common/util/a1;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    return-object v0
.end method
