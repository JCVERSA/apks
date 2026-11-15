.class public abstract Landroidx/media3/exoplayer/video/b;
.super Landroidx/media3/exoplayer/i;
.source "source.java"


# instance fields
.field private A:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

.field private B:I

.field private C:Ljava/lang/Object;

.field private D:Landroid/view/Surface;

.field private E:Landroidx/media3/exoplayer/video/s;

.field private F:Landroidx/media3/exoplayer/video/t;

.field private G:Landroidx/media3/exoplayer/drm/DrmSession;

.field private H:Landroidx/media3/exoplayer/drm/DrmSession;

.field private I:I

.field private J:Z

.field private K:I

.field private L:J

.field private M:J

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Landroidx/media3/common/m0;

.field private R:J

.field private S:I

.field private T:I

.field private U:I

.field private V:J

.field protected W:Landroidx/media3/exoplayer/j;

.field private final r:J

.field private final s:I

.field private final t:Landroidx/media3/exoplayer/video/i0$a;

.field private final u:Landroidx/media3/common/util/o0;

.field private final v:Landroidx/media3/decoder/DecoderInputBuffer;

.field private w:Landroidx/media3/common/r;

.field private x:Landroidx/media3/common/r;

.field private y:Landroidx/media3/decoder/g;

.field private z:Landroidx/media3/decoder/DecoderInputBuffer;


# direct methods
.method protected constructor <init>(JLandroid/os/Handler;Landroidx/media3/exoplayer/video/i0;I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/i;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/b;->r:J

    .line 6
    .line 7
    iput p5, p0, Landroidx/media3/exoplayer/video/b;->s:I

    .line 8
    .line 9
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/b;->M:J

    .line 15
    .line 16
    new-instance p1, Landroidx/media3/common/util/o0;

    .line 17
    .line 18
    invoke-direct {p1}, Landroidx/media3/common/util/o0;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/media3/exoplayer/video/b;->u:Landroidx/media3/common/util/o0;

    .line 22
    .line 23
    invoke-static {}, Landroidx/media3/decoder/DecoderInputBuffer;->f()Landroidx/media3/decoder/DecoderInputBuffer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Landroidx/media3/exoplayer/video/b;->v:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 28
    .line 29
    new-instance p1, Landroidx/media3/exoplayer/video/i0$a;

    .line 30
    .line 31
    invoke-direct {p1, p3, p4}, Landroidx/media3/exoplayer/video/i0$a;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/video/i0;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Landroidx/media3/exoplayer/video/b;->t:Landroidx/media3/exoplayer/video/i0$a;

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    iput p1, p0, Landroidx/media3/exoplayer/video/b;->I:I

    .line 38
    .line 39
    const/4 p2, -0x1

    .line 40
    iput p2, p0, Landroidx/media3/exoplayer/video/b;->B:I

    .line 41
    .line 42
    iput p1, p0, Landroidx/media3/exoplayer/video/b;->K:I

    .line 43
    .line 44
    new-instance p1, Landroidx/media3/exoplayer/j;

    .line 45
    .line 46
    invoke-direct {p1}, Landroidx/media3/exoplayer/j;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Landroidx/media3/exoplayer/video/b;->W:Landroidx/media3/exoplayer/j;

    .line 50
    .line 51
    return-void
.end method

.method private S(JJ)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->A:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->y:Landroidx/media3/decoder/g;

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroidx/media3/decoder/g;

    .line 13
    .line 14
    invoke-interface {v0}, Landroidx/media3/decoder/g;->dequeueOutputBuffer()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/media3/exoplayer/video/b;->A:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    return v1

    .line 25
    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/video/b;->W:Landroidx/media3/exoplayer/j;

    .line 26
    .line 27
    iget v3, v2, Landroidx/media3/exoplayer/j;->f:I

    .line 28
    .line 29
    iget v0, v0, Landroidx/media3/decoder/h;->skippedOutputBufferCount:I

    .line 30
    .line 31
    add-int/2addr v3, v0

    .line 32
    iput v3, v2, Landroidx/media3/exoplayer/j;->f:I

    .line 33
    .line 34
    iget v2, p0, Landroidx/media3/exoplayer/video/b;->U:I

    .line 35
    .line 36
    sub-int/2addr v2, v0

    .line 37
    iput v2, p0, Landroidx/media3/exoplayer/video/b;->U:I

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->A:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v2, 0x0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget p1, p0, Landroidx/media3/exoplayer/video/b;->I:I

    .line 49
    .line 50
    const/4 p2, 0x2

    .line 51
    if-ne p1, p2, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/b;->o0()V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/b;->b0()V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/video/b;->A:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->release()V

    .line 63
    .line 64
    .line 65
    iput-object v2, p0, Landroidx/media3/exoplayer/video/b;->A:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/b;->P:Z

    .line 69
    .line 70
    :goto_0
    return v1

    .line 71
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/b;->n0(JJ)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    iget-object p2, p0, Landroidx/media3/exoplayer/video/b;->A:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 78
    .line 79
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    check-cast p2, Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 84
    .line 85
    iget-wide p2, p2, Landroidx/media3/decoder/h;->timeUs:J

    .line 86
    .line 87
    invoke-virtual {p0, p2, p3}, Landroidx/media3/exoplayer/video/b;->l0(J)V

    .line 88
    .line 89
    .line 90
    iput-object v2, p0, Landroidx/media3/exoplayer/video/b;->A:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 91
    .line 92
    :cond_4
    return p1
.end method

.method private U()Z
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->y:Landroidx/media3/decoder/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_8

    .line 5
    .line 6
    iget v2, p0, Landroidx/media3/exoplayer/video/b;->I:I

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    if-eq v2, v3, :cond_8

    .line 10
    .line 11
    iget-boolean v2, p0, Landroidx/media3/exoplayer/video/b;->O:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/video/b;->z:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Landroidx/media3/decoder/g;->dequeueInputBuffer()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroidx/media3/decoder/DecoderInputBuffer;

    .line 26
    .line 27
    iput-object v0, p0, Landroidx/media3/exoplayer/video/b;->z:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    return v1

    .line 32
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->z:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 33
    .line 34
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroidx/media3/decoder/DecoderInputBuffer;

    .line 39
    .line 40
    iget v2, p0, Landroidx/media3/exoplayer/video/b;->I:I

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x1

    .line 44
    if-ne v2, v5, :cond_2

    .line 45
    .line 46
    const/4 v2, 0x4

    .line 47
    invoke-virtual {v0, v2}, Landroidx/media3/decoder/a;->setFlags(I)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Landroidx/media3/exoplayer/video/b;->y:Landroidx/media3/decoder/g;

    .line 51
    .line 52
    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Landroidx/media3/decoder/g;

    .line 57
    .line 58
    invoke-interface {v2, v0}, Landroidx/media3/decoder/g;->queueInputBuffer(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iput-object v4, p0, Landroidx/media3/exoplayer/video/b;->z:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 62
    .line 63
    iput v3, p0, Landroidx/media3/exoplayer/video/b;->I:I

    .line 64
    .line 65
    return v1

    .line 66
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->u()Landroidx/media3/exoplayer/s2;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {p0, v2, v0, v1}, Landroidx/media3/exoplayer/i;->N(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    const/4 v6, -0x5

    .line 75
    if-eq v3, v6, :cond_7

    .line 76
    .line 77
    const/4 v2, -0x4

    .line 78
    if-eq v3, v2, :cond_4

    .line 79
    .line 80
    const/4 v0, -0x3

    .line 81
    if-ne v3, v0, :cond_3

    .line 82
    .line 83
    return v1

    .line 84
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 87
    .line 88
    .line 89
    throw v0

    .line 90
    :cond_4
    invoke-virtual {v0}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_5

    .line 95
    .line 96
    iput-boolean v5, p0, Landroidx/media3/exoplayer/video/b;->O:Z

    .line 97
    .line 98
    iget-object v2, p0, Landroidx/media3/exoplayer/video/b;->y:Landroidx/media3/decoder/g;

    .line 99
    .line 100
    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Landroidx/media3/decoder/g;

    .line 105
    .line 106
    invoke-interface {v2, v0}, Landroidx/media3/decoder/g;->queueInputBuffer(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    iput-object v4, p0, Landroidx/media3/exoplayer/video/b;->z:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 110
    .line 111
    return v1

    .line 112
    :cond_5
    iget-boolean v2, p0, Landroidx/media3/exoplayer/video/b;->N:Z

    .line 113
    .line 114
    if-eqz v2, :cond_6

    .line 115
    .line 116
    iget-object v2, p0, Landroidx/media3/exoplayer/video/b;->u:Landroidx/media3/common/util/o0;

    .line 117
    .line 118
    iget-wide v6, v0, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    .line 119
    .line 120
    iget-object v3, p0, Landroidx/media3/exoplayer/video/b;->w:Landroidx/media3/common/r;

    .line 121
    .line 122
    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    check-cast v3, Landroidx/media3/common/r;

    .line 127
    .line 128
    invoke-virtual {v2, v6, v7, v3}, Landroidx/media3/common/util/o0;->a(JLjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/b;->N:Z

    .line 132
    .line 133
    :cond_6
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->d()V

    .line 134
    .line 135
    .line 136
    iget-object v1, p0, Landroidx/media3/exoplayer/video/b;->w:Landroidx/media3/common/r;

    .line 137
    .line 138
    iput-object v1, v0, Landroidx/media3/decoder/DecoderInputBuffer;->a:Landroidx/media3/common/r;

    .line 139
    .line 140
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/b;->m0(Landroidx/media3/decoder/DecoderInputBuffer;)V

    .line 141
    .line 142
    .line 143
    iget-object v1, p0, Landroidx/media3/exoplayer/video/b;->y:Landroidx/media3/decoder/g;

    .line 144
    .line 145
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Landroidx/media3/decoder/g;

    .line 150
    .line 151
    invoke-interface {v1, v0}, Landroidx/media3/decoder/g;->queueInputBuffer(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    iget v0, p0, Landroidx/media3/exoplayer/video/b;->U:I

    .line 155
    .line 156
    add-int/2addr v0, v5

    .line 157
    iput v0, p0, Landroidx/media3/exoplayer/video/b;->U:I

    .line 158
    .line 159
    iput-boolean v5, p0, Landroidx/media3/exoplayer/video/b;->J:Z

    .line 160
    .line 161
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->W:Landroidx/media3/exoplayer/j;

    .line 162
    .line 163
    iget v1, v0, Landroidx/media3/exoplayer/j;->c:I

    .line 164
    .line 165
    add-int/2addr v1, v5

    .line 166
    iput v1, v0, Landroidx/media3/exoplayer/j;->c:I

    .line 167
    .line 168
    iput-object v4, p0, Landroidx/media3/exoplayer/video/b;->z:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 169
    .line 170
    return v5

    .line 171
    :cond_7
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/video/b;->h0(Landroidx/media3/exoplayer/s2;)V

    .line 172
    .line 173
    .line 174
    return v5

    .line 175
    :cond_8
    :goto_0
    return v1
.end method

.method private W()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/video/b;->B:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method private static X(J)Z
    .locals 2

    .line 1
    const-wide/16 v0, -0x7530

    .line 2
    .line 3
    cmp-long p0, p0, v0

    .line 4
    .line 5
    if-gez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method private static Y(J)Z
    .locals 2

    .line 1
    const-wide/32 v0, -0x7a120

    .line 2
    .line 3
    .line 4
    cmp-long p0, p0, v0

    .line 5
    .line 6
    if-gez p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method private Z(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/video/b;->K:I

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Landroidx/media3/exoplayer/video/b;->K:I

    .line 8
    .line 9
    return-void
.end method

.method private b0()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->y:Landroidx/media3/decoder/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->H:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/b;->r0(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->G:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->c()Landroidx/media3/decoder/b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_3

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/media3/exoplayer/video/b;->G:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 22
    .line 23
    invoke-interface {v1}, Landroidx/media3/exoplayer/drm/DrmSession;->getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void

    .line 31
    :cond_2
    const/4 v0, 0x0

    .line 32
    :cond_3
    :goto_0
    const/16 v1, 0xfa1

    .line 33
    .line 34
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    iget-object v4, p0, Landroidx/media3/exoplayer/video/b;->w:Landroidx/media3/common/r;

    .line 39
    .line 40
    invoke-static {v4}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Landroidx/media3/common/r;

    .line 45
    .line 46
    invoke-virtual {p0, v4, v0}, Landroidx/media3/exoplayer/video/b;->R(Landroidx/media3/common/r;Landroidx/media3/decoder/b;)Landroidx/media3/decoder/g;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Landroidx/media3/exoplayer/video/b;->y:Landroidx/media3/decoder/g;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->w()J

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    invoke-interface {v0, v4, v5}, Landroidx/media3/decoder/g;->a(J)V

    .line 57
    .line 58
    .line 59
    iget v0, p0, Landroidx/media3/exoplayer/video/b;->B:I

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/b;->s0(I)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 65
    .line 66
    .line 67
    move-result-wide v6

    .line 68
    iget-object v4, p0, Landroidx/media3/exoplayer/video/b;->t:Landroidx/media3/exoplayer/video/i0$a;

    .line 69
    .line 70
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->y:Landroidx/media3/decoder/g;

    .line 71
    .line 72
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Landroidx/media3/decoder/g;

    .line 77
    .line 78
    invoke-interface {v0}, Landroidx/media3/decoder/g;->getName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    sub-long v8, v6, v2

    .line 83
    .line 84
    invoke-virtual/range {v4 .. v9}, Landroidx/media3/exoplayer/video/i0$a;->k(Ljava/lang/String;JJ)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->W:Landroidx/media3/exoplayer/j;

    .line 88
    .line 89
    iget v2, v0, Landroidx/media3/exoplayer/j;->a:I

    .line 90
    .line 91
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    iput v2, v0, Landroidx/media3/exoplayer/j;->a:I
    :try_end_0
    .catch Landroidx/media3/decoder/DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    goto :goto_1

    .line 98
    :catch_1
    move-exception v0

    .line 99
    goto :goto_2

    .line 100
    :goto_1
    iget-object v2, p0, Landroidx/media3/exoplayer/video/b;->w:Landroidx/media3/common/r;

    .line 101
    .line 102
    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/i;->q(Ljava/lang/Throwable;Landroidx/media3/common/r;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    throw v0

    .line 107
    :goto_2
    const-string v2, "DecoderVideoRenderer"

    .line 108
    .line 109
    const-string v3, "Video codec error"

    .line 110
    .line 111
    invoke-static {v2, v3, v0}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    iget-object v2, p0, Landroidx/media3/exoplayer/video/b;->t:Landroidx/media3/exoplayer/video/i0$a;

    .line 115
    .line 116
    invoke-virtual {v2, v0}, Landroidx/media3/exoplayer/video/i0$a;->C(Ljava/lang/Exception;)V

    .line 117
    .line 118
    .line 119
    iget-object v2, p0, Landroidx/media3/exoplayer/video/b;->w:Landroidx/media3/common/r;

    .line 120
    .line 121
    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/i;->q(Ljava/lang/Throwable;Landroidx/media3/common/r;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    throw v0
.end method

.method private c0()V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/video/b;->S:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-wide v2, p0, Landroidx/media3/exoplayer/video/b;->R:J

    .line 10
    .line 11
    sub-long v2, v0, v2

    .line 12
    .line 13
    iget-object v4, p0, Landroidx/media3/exoplayer/video/b;->t:Landroidx/media3/exoplayer/video/i0$a;

    .line 14
    .line 15
    iget v5, p0, Landroidx/media3/exoplayer/video/b;->S:I

    .line 16
    .line 17
    invoke-virtual {v4, v5, v2, v3}, Landroidx/media3/exoplayer/video/i0$a;->n(IJ)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    iput v2, p0, Landroidx/media3/exoplayer/video/b;->S:I

    .line 22
    .line 23
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/b;->R:J

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private d0()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/video/b;->K:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iput v1, p0, Landroidx/media3/exoplayer/video/b;->K:I

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->C:Ljava/lang/Object;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/media3/exoplayer/video/b;->t:Landroidx/media3/exoplayer/video/i0$a;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/video/i0$a;->A(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private e0(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->Q:Landroidx/media3/common/m0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, v0, Landroidx/media3/common/m0;->a:I

    .line 6
    .line 7
    if-ne v1, p1, :cond_0

    .line 8
    .line 9
    iget v0, v0, Landroidx/media3/common/m0;->b:I

    .line 10
    .line 11
    if-eq v0, p2, :cond_1

    .line 12
    .line 13
    :cond_0
    new-instance v0, Landroidx/media3/common/m0;

    .line 14
    .line 15
    invoke-direct {v0, p1, p2}, Landroidx/media3/common/m0;-><init>(II)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroidx/media3/exoplayer/video/b;->Q:Landroidx/media3/common/m0;

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/media3/exoplayer/video/b;->t:Landroidx/media3/exoplayer/video/i0$a;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/video/i0$a;->D(Landroidx/media3/common/m0;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method private f0()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/video/b;->K:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->C:Ljava/lang/Object;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/video/b;->t:Landroidx/media3/exoplayer/video/i0$a;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/video/i0$a;->A(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private g0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->Q:Landroidx/media3/common/m0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/video/b;->t:Landroidx/media3/exoplayer/video/i0$a;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/video/i0$a;->D(Landroidx/media3/common/m0;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private i0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/b;->g0()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/b;->Z(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->getState()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x2

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/b;->t0()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private j0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/media3/exoplayer/video/b;->Q:Landroidx/media3/common/m0;

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/b;->Z(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private k0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/b;->g0()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/b;->f0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private n0(JJ)Z
    .locals 10

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/b;->L:J

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
    if-nez v0, :cond_0

    .line 11
    .line 12
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/b;->L:J

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->A:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 15
    .line 16
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 21
    .line 22
    iget-wide v1, v0, Landroidx/media3/decoder/h;->timeUs:J

    .line 23
    .line 24
    sub-long v3, v1, p1

    .line 25
    .line 26
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/b;->W()Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v7, 0x1

    .line 32
    if-nez v5, :cond_2

    .line 33
    .line 34
    invoke-static {v3, v4}, Landroidx/media3/exoplayer/video/b;->X(J)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/b;->A0(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V

    .line 41
    .line 42
    .line 43
    return v7

    .line 44
    :cond_1
    return v6

    .line 45
    :cond_2
    iget-object v5, p0, Landroidx/media3/exoplayer/video/b;->u:Landroidx/media3/common/util/o0;

    .line 46
    .line 47
    invoke-virtual {v5, v1, v2}, Landroidx/media3/common/util/o0;->j(J)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Landroidx/media3/common/r;

    .line 52
    .line 53
    if-eqz v5, :cond_3

    .line 54
    .line 55
    iput-object v5, p0, Landroidx/media3/exoplayer/video/b;->x:Landroidx/media3/common/r;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    iget-object v5, p0, Landroidx/media3/exoplayer/video/b;->x:Landroidx/media3/common/r;

    .line 59
    .line 60
    if-nez v5, :cond_4

    .line 61
    .line 62
    iget-object v5, p0, Landroidx/media3/exoplayer/video/b;->u:Landroidx/media3/common/util/o0;

    .line 63
    .line 64
    invoke-virtual {v5}, Landroidx/media3/common/util/o0;->i()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    check-cast v5, Landroidx/media3/common/r;

    .line 69
    .line 70
    iput-object v5, p0, Landroidx/media3/exoplayer/video/b;->x:Landroidx/media3/common/r;

    .line 71
    .line 72
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->z()J

    .line 73
    .line 74
    .line 75
    move-result-wide v8

    .line 76
    sub-long/2addr v1, v8

    .line 77
    invoke-direct {p0, v3, v4}, Landroidx/media3/exoplayer/video/b;->y0(J)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_5

    .line 82
    .line 83
    iget-object p1, p0, Landroidx/media3/exoplayer/video/b;->x:Landroidx/media3/common/r;

    .line 84
    .line 85
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Landroidx/media3/common/r;

    .line 90
    .line 91
    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/media3/exoplayer/video/b;->p0(Landroidx/media3/decoder/VideoDecoderOutputBuffer;JLandroidx/media3/common/r;)V

    .line 92
    .line 93
    .line 94
    return v7

    .line 95
    :cond_5
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->getState()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    const/4 v8, 0x2

    .line 100
    if-ne v5, v8, :cond_9

    .line 101
    .line 102
    iget-wide v8, p0, Landroidx/media3/exoplayer/video/b;->L:J

    .line 103
    .line 104
    cmp-long v5, p1, v8

    .line 105
    .line 106
    if-nez v5, :cond_6

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_6
    invoke-virtual {p0, v3, v4, p3, p4}, Landroidx/media3/exoplayer/video/b;->w0(JJ)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_7

    .line 114
    .line 115
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/video/b;->a0(J)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_7

    .line 120
    .line 121
    return v6

    .line 122
    :cond_7
    invoke-virtual {p0, v3, v4, p3, p4}, Landroidx/media3/exoplayer/video/b;->x0(JJ)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_8

    .line 127
    .line 128
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/b;->T(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V

    .line 129
    .line 130
    .line 131
    return v7

    .line 132
    :cond_8
    const-wide/16 p1, 0x7530

    .line 133
    .line 134
    cmp-long p1, v3, p1

    .line 135
    .line 136
    if-gez p1, :cond_9

    .line 137
    .line 138
    iget-object p1, p0, Landroidx/media3/exoplayer/video/b;->x:Landroidx/media3/common/r;

    .line 139
    .line 140
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Landroidx/media3/common/r;

    .line 145
    .line 146
    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/media3/exoplayer/video/b;->p0(Landroidx/media3/decoder/VideoDecoderOutputBuffer;JLandroidx/media3/common/r;)V

    .line 147
    .line 148
    .line 149
    return v7

    .line 150
    :cond_9
    :goto_1
    return v6
.end method

.method private r0(Landroidx/media3/exoplayer/drm/DrmSession;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->G:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/drm/k;->a(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/media3/exoplayer/video/b;->G:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 7
    .line 8
    return-void
.end method

.method private t0()V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/b;->r:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Landroidx/media3/exoplayer/video/b;->r:J

    .line 14
    .line 15
    add-long/2addr v0, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    :goto_0
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/b;->M:J

    .line 23
    .line 24
    return-void
.end method

.method private v0(Landroidx/media3/exoplayer/drm/DrmSession;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->H:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/drm/k;->a(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/media3/exoplayer/video/b;->H:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 7
    .line 8
    return-void
.end method

.method private y0(J)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->getState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    move v0, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v2

    .line 13
    :goto_0
    iget v1, p0, Landroidx/media3/exoplayer/video/b;->K:I

    .line 14
    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    if-eq v1, v3, :cond_3

    .line 18
    .line 19
    const/4 v4, 0x3

    .line 20
    if-ne v1, v4, :cond_2

    .line 21
    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    invoke-static {v4, v5}, Landroidx/media3/common/util/a1;->R0(J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    iget-wide v6, p0, Landroidx/media3/exoplayer/video/b;->V:J

    .line 31
    .line 32
    sub-long/2addr v4, v6

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, p1, p2, v4, v5}, Landroidx/media3/exoplayer/video/b;->z0(JJ)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    move v2, v3

    .line 42
    :cond_1
    return v2

    .line 43
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_3
    return v3

    .line 50
    :cond_4
    return v0
.end method


# virtual methods
.method protected A0(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->W:Landroidx/media3/exoplayer/j;

    .line 2
    .line 3
    iget v1, v0, Landroidx/media3/exoplayer/j;->f:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    iput v1, v0, Landroidx/media3/exoplayer/j;->f:I

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->release()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method protected B0(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->W:Landroidx/media3/exoplayer/j;

    .line 2
    .line 3
    iget v1, v0, Landroidx/media3/exoplayer/j;->h:I

    .line 4
    .line 5
    add-int/2addr v1, p1

    .line 6
    iput v1, v0, Landroidx/media3/exoplayer/j;->h:I

    .line 7
    .line 8
    add-int/2addr p1, p2

    .line 9
    iget p2, v0, Landroidx/media3/exoplayer/j;->g:I

    .line 10
    .line 11
    add-int/2addr p2, p1

    .line 12
    iput p2, v0, Landroidx/media3/exoplayer/j;->g:I

    .line 13
    .line 14
    iget p2, p0, Landroidx/media3/exoplayer/video/b;->S:I

    .line 15
    .line 16
    add-int/2addr p2, p1

    .line 17
    iput p2, p0, Landroidx/media3/exoplayer/video/b;->S:I

    .line 18
    .line 19
    iget p2, p0, Landroidx/media3/exoplayer/video/b;->T:I

    .line 20
    .line 21
    add-int/2addr p2, p1

    .line 22
    iput p2, p0, Landroidx/media3/exoplayer/video/b;->T:I

    .line 23
    .line 24
    iget p1, v0, Landroidx/media3/exoplayer/j;->i:I

    .line 25
    .line 26
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, v0, Landroidx/media3/exoplayer/j;->i:I

    .line 31
    .line 32
    iget p1, p0, Landroidx/media3/exoplayer/video/b;->s:I

    .line 33
    .line 34
    if-lez p1, :cond_0

    .line 35
    .line 36
    iget p2, p0, Landroidx/media3/exoplayer/video/b;->S:I

    .line 37
    .line 38
    if-lt p2, p1, :cond_0

    .line 39
    .line 40
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/b;->c0()V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method protected C()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/media3/exoplayer/video/b;->w:Landroidx/media3/common/r;

    .line 3
    .line 4
    iput-object v0, p0, Landroidx/media3/exoplayer/video/b;->Q:Landroidx/media3/common/m0;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/video/b;->Z(I)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/b;->v0(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/b;->o0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->t:Landroidx/media3/exoplayer/video/i0$a;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/media3/exoplayer/video/b;->W:Landroidx/media3/exoplayer/j;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/i0$a;->m(Landroidx/media3/exoplayer/j;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    iget-object v1, p0, Landroidx/media3/exoplayer/video/b;->t:Landroidx/media3/exoplayer/video/i0$a;

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/media3/exoplayer/video/b;->W:Landroidx/media3/exoplayer/j;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/video/i0$a;->m(Landroidx/media3/exoplayer/j;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method protected D(ZZ)V
    .locals 1

    .line 1
    new-instance p1, Landroidx/media3/exoplayer/j;

    .line 2
    .line 3
    invoke-direct {p1}, Landroidx/media3/exoplayer/j;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/media3/exoplayer/video/b;->W:Landroidx/media3/exoplayer/j;

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->t:Landroidx/media3/exoplayer/video/i0$a;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/i0$a;->o(Landroidx/media3/exoplayer/j;)V

    .line 11
    .line 12
    .line 13
    iput p2, p0, Landroidx/media3/exoplayer/video/b;->K:I

    .line 14
    .line 15
    return-void
.end method

.method protected F(JZ)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/b;->O:Z

    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/b;->P:Z

    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/video/b;->Z(I)V

    .line 8
    .line 9
    .line 10
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/b;->L:J

    .line 16
    .line 17
    iput p1, p0, Landroidx/media3/exoplayer/video/b;->T:I

    .line 18
    .line 19
    iget-object p1, p0, Landroidx/media3/exoplayer/video/b;->y:Landroidx/media3/decoder/g;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/b;->V()V

    .line 24
    .line 25
    .line 26
    :cond_0
    if-eqz p3, :cond_1

    .line 27
    .line 28
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/b;->t0()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/b;->M:J

    .line 33
    .line 34
    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/video/b;->u:Landroidx/media3/common/util/o0;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/media3/common/util/o0;->c()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method protected J()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/media3/exoplayer/video/b;->S:I

    .line 3
    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/b;->R:J

    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->R0(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/b;->V:J

    .line 19
    .line 20
    return-void
.end method

.method protected K()V
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/b;->M:J

    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/b;->c0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected L([Landroidx/media3/common/r;JJLandroidx/media3/exoplayer/source/r$b;)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/i;->L([Landroidx/media3/common/r;JJLandroidx/media3/exoplayer/source/r$b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected Q(Ljava/lang/String;Landroidx/media3/common/r;Landroidx/media3/common/r;)Landroidx/media3/exoplayer/k;
    .locals 7

    .line 1
    new-instance v6, Landroidx/media3/exoplayer/k;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x1

    .line 5
    move-object v0, v6

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move-object v3, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/k;-><init>(Ljava/lang/String;Landroidx/media3/common/r;Landroidx/media3/common/r;II)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method

.method protected abstract R(Landroidx/media3/common/r;Landroidx/media3/decoder/b;)Landroidx/media3/decoder/g;
.end method

.method protected T(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/video/b;->B0(II)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->release()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected V()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/media3/exoplayer/video/b;->U:I

    .line 3
    .line 4
    iget v1, p0, Landroidx/media3/exoplayer/video/b;->I:I

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/b;->o0()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/b;->b0()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Landroidx/media3/exoplayer/video/b;->z:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/media3/exoplayer/video/b;->A:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->release()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Landroidx/media3/exoplayer/video/b;->A:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 26
    .line 27
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/video/b;->y:Landroidx/media3/decoder/g;

    .line 28
    .line 29
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroidx/media3/decoder/g;

    .line 34
    .line 35
    invoke-interface {v1}, Landroidx/media3/decoder/g;->flush()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->w()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-interface {v1, v2, v3}, Landroidx/media3/decoder/g;->a(J)V

    .line 43
    .line 44
    .line 45
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/b;->J:Z

    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method protected a0(J)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/i;->P(J)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object p2, p0, Landroidx/media3/exoplayer/video/b;->W:Landroidx/media3/exoplayer/j;

    .line 10
    .line 11
    iget v0, p2, Landroidx/media3/exoplayer/j;->j:I

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    add-int/2addr v0, v1

    .line 15
    iput v0, p2, Landroidx/media3/exoplayer/j;->j:I

    .line 16
    .line 17
    iget p2, p0, Landroidx/media3/exoplayer/video/b;->U:I

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/video/b;->B0(II)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/b;->V()V

    .line 23
    .line 24
    .line 25
    return v1
.end method

.method public c()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/video/b;->K:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput v0, p0, Landroidx/media3/exoplayer/video/b;->K:I

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected h0(Landroidx/media3/exoplayer/s2;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/b;->N:Z

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
    move-object v5, v1

    .line 11
    check-cast v5, Landroidx/media3/common/r;

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/media3/exoplayer/s2;->a:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 14
    .line 15
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/b;->v0(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Landroidx/media3/exoplayer/video/b;->w:Landroidx/media3/common/r;

    .line 19
    .line 20
    iput-object v5, p0, Landroidx/media3/exoplayer/video/b;->w:Landroidx/media3/common/r;

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/media3/exoplayer/video/b;->y:Landroidx/media3/decoder/g;

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/b;->b0()V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Landroidx/media3/exoplayer/video/b;->t:Landroidx/media3/exoplayer/video/i0$a;

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->w:Landroidx/media3/common/r;

    .line 32
    .line 33
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroidx/media3/common/r;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p1, v0, v1}, Landroidx/media3/exoplayer/video/i0$a;->p(Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/video/b;->H:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 45
    .line 46
    iget-object v3, p0, Landroidx/media3/exoplayer/video/b;->G:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 47
    .line 48
    if-eq v2, v3, :cond_1

    .line 49
    .line 50
    new-instance v8, Landroidx/media3/exoplayer/k;

    .line 51
    .line 52
    invoke-interface {v1}, Landroidx/media3/decoder/g;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    move-object v4, p1

    .line 61
    check-cast v4, Landroidx/media3/common/r;

    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    const/16 v7, 0x80

    .line 65
    .line 66
    move-object v2, v8

    .line 67
    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/k;-><init>(Ljava/lang/String;Landroidx/media3/common/r;Landroidx/media3/common/r;II)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-interface {v1}, Landroidx/media3/decoder/g;->getName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroidx/media3/common/r;

    .line 80
    .line 81
    invoke-virtual {p0, v1, p1, v5}, Landroidx/media3/exoplayer/video/b;->Q(Ljava/lang/String;Landroidx/media3/common/r;Landroidx/media3/common/r;)Landroidx/media3/exoplayer/k;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    :goto_0
    iget p1, v8, Landroidx/media3/exoplayer/k;->d:I

    .line 86
    .line 87
    if-nez p1, :cond_3

    .line 88
    .line 89
    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/b;->J:Z

    .line 90
    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    iput v0, p0, Landroidx/media3/exoplayer/video/b;->I:I

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/b;->o0()V

    .line 97
    .line 98
    .line 99
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/b;->b0()V

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_1
    iget-object p1, p0, Landroidx/media3/exoplayer/video/b;->t:Landroidx/media3/exoplayer/video/i0$a;

    .line 103
    .line 104
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->w:Landroidx/media3/common/r;

    .line 105
    .line 106
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Landroidx/media3/common/r;

    .line 111
    .line 112
    invoke-virtual {p1, v0, v8}, Landroidx/media3/exoplayer/video/i0$a;->p(Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/video/b;->u0(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x7

    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    check-cast p2, Landroidx/media3/exoplayer/video/t;

    .line 12
    .line 13
    iput-object p2, p0, Landroidx/media3/exoplayer/video/b;->F:Landroidx/media3/exoplayer/video/t;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/i;->handleMessage(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/b;->P:Z

    .line 2
    .line 3
    return v0
.end method

.method public isReady()Z
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->w:Landroidx/media3/common/r;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->B()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->A:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/video/b;->K:I

    .line 22
    .line 23
    const/4 v4, 0x3

    .line 24
    if-eq v0, v4, :cond_1

    .line 25
    .line 26
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/b;->W()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    :cond_1
    iput-wide v2, p0, Landroidx/media3/exoplayer/video/b;->M:J

    .line 33
    .line 34
    return v1

    .line 35
    :cond_2
    iget-wide v4, p0, Landroidx/media3/exoplayer/video/b;->M:J

    .line 36
    .line 37
    cmp-long v0, v4, v2

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    return v4

    .line 43
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v5

    .line 47
    iget-wide v7, p0, Landroidx/media3/exoplayer/video/b;->M:J

    .line 48
    .line 49
    cmp-long v0, v5, v7

    .line 50
    .line 51
    if-gez v0, :cond_4

    .line 52
    .line 53
    return v1

    .line 54
    :cond_4
    iput-wide v2, p0, Landroidx/media3/exoplayer/video/b;->M:J

    .line 55
    .line 56
    return v4
.end method

.method protected l0(J)V
    .locals 0

    .line 1
    iget p1, p0, Landroidx/media3/exoplayer/video/b;->U:I

    .line 2
    .line 3
    add-int/lit8 p1, p1, -0x1

    .line 4
    .line 5
    iput p1, p0, Landroidx/media3/exoplayer/video/b;->U:I

    .line 6
    .line 7
    return-void
.end method

.method protected m0(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected o0()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/media3/exoplayer/video/b;->z:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 3
    .line 4
    iput-object v0, p0, Landroidx/media3/exoplayer/video/b;->A:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, p0, Landroidx/media3/exoplayer/video/b;->I:I

    .line 8
    .line 9
    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/b;->J:Z

    .line 10
    .line 11
    iput v1, p0, Landroidx/media3/exoplayer/video/b;->U:I

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/media3/exoplayer/video/b;->y:Landroidx/media3/decoder/g;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/media3/exoplayer/video/b;->W:Landroidx/media3/exoplayer/j;

    .line 18
    .line 19
    iget v3, v2, Landroidx/media3/exoplayer/j;->b:I

    .line 20
    .line 21
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    iput v3, v2, Landroidx/media3/exoplayer/j;->b:I

    .line 24
    .line 25
    invoke-interface {v1}, Landroidx/media3/decoder/g;->release()V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroidx/media3/exoplayer/video/b;->t:Landroidx/media3/exoplayer/video/i0$a;

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/media3/exoplayer/video/b;->y:Landroidx/media3/decoder/g;

    .line 31
    .line 32
    invoke-interface {v2}, Landroidx/media3/decoder/g;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/video/i0$a;->l(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Landroidx/media3/exoplayer/video/b;->y:Landroidx/media3/decoder/g;

    .line 40
    .line 41
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/b;->r0(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method protected p0(Landroidx/media3/decoder/VideoDecoderOutputBuffer;JLandroidx/media3/common/r;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->F:Landroidx/media3/exoplayer/video/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Landroidx/media3/common/util/i;->nanoTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    const/4 v6, 0x0

    .line 14
    move-wide v1, p2

    .line 15
    move-object v5, p4

    .line 16
    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/video/t;->f(JJLandroidx/media3/common/r;Landroid/media/MediaFormat;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 20
    .line 21
    .line 22
    move-result-wide p2

    .line 23
    invoke-static {p2, p3}, Landroidx/media3/common/util/a1;->R0(J)J

    .line 24
    .line 25
    .line 26
    move-result-wide p2

    .line 27
    iput-wide p2, p0, Landroidx/media3/exoplayer/video/b;->V:J

    .line 28
    .line 29
    iget p2, p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->mode:I

    .line 30
    .line 31
    const/4 p3, 0x0

    .line 32
    const/4 p4, 0x1

    .line 33
    if-ne p2, p4, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->D:Landroid/view/Surface;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    move v0, p4

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v0, p3

    .line 42
    :goto_0
    if-nez p2, :cond_2

    .line 43
    .line 44
    iget-object p2, p0, Landroidx/media3/exoplayer/video/b;->E:Landroidx/media3/exoplayer/video/s;

    .line 45
    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    move p2, p4

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move p2, p3

    .line 51
    :goto_1
    if-nez p2, :cond_3

    .line 52
    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/b;->T(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V

    .line 56
    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_3
    iget v0, p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->width:I

    .line 60
    .line 61
    iget v1, p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->height:I

    .line 62
    .line 63
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/video/b;->e0(II)V

    .line 64
    .line 65
    .line 66
    if-eqz p2, :cond_4

    .line 67
    .line 68
    iget-object p2, p0, Landroidx/media3/exoplayer/video/b;->E:Landroidx/media3/exoplayer/video/s;

    .line 69
    .line 70
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    check-cast p2, Landroidx/media3/exoplayer/video/s;

    .line 75
    .line 76
    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/video/s;->setOutputBuffer(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    iget-object p2, p0, Landroidx/media3/exoplayer/video/b;->D:Landroid/view/Surface;

    .line 81
    .line 82
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    check-cast p2, Landroid/view/Surface;

    .line 87
    .line 88
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/video/b;->q0(Landroidx/media3/decoder/VideoDecoderOutputBuffer;Landroid/view/Surface;)V

    .line 89
    .line 90
    .line 91
    :goto_2
    iput p3, p0, Landroidx/media3/exoplayer/video/b;->T:I

    .line 92
    .line 93
    iget-object p1, p0, Landroidx/media3/exoplayer/video/b;->W:Landroidx/media3/exoplayer/j;

    .line 94
    .line 95
    iget p2, p1, Landroidx/media3/exoplayer/j;->e:I

    .line 96
    .line 97
    add-int/2addr p2, p4

    .line 98
    iput p2, p1, Landroidx/media3/exoplayer/j;->e:I

    .line 99
    .line 100
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/b;->d0()V

    .line 101
    .line 102
    .line 103
    :goto_3
    return-void
.end method

.method protected abstract q0(Landroidx/media3/decoder/VideoDecoderOutputBuffer;Landroid/view/Surface;)V
.end method

.method public render(JJ)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/b;->P:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->w:Landroidx/media3/common/r;

    .line 7
    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->u()Landroidx/media3/exoplayer/s2;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Landroidx/media3/exoplayer/video/b;->v:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Landroidx/media3/exoplayer/video/b;->v:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/i;->N(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, -0x5

    .line 27
    if-ne v1, v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/b;->h0(Landroidx/media3/exoplayer/s2;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p1, -0x4

    .line 34
    if-ne v1, p1, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Landroidx/media3/exoplayer/video/b;->v:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-static {p1}, Landroidx/media3/common/util/a;->g(Z)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/b;->O:Z

    .line 47
    .line 48
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/b;->P:Z

    .line 49
    .line 50
    :cond_2
    return-void

    .line 51
    :cond_3
    :goto_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/b;->b0()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->y:Landroidx/media3/decoder/g;

    .line 55
    .line 56
    if-eqz v0, :cond_6

    .line 57
    .line 58
    :try_start_0
    const-string v0, "drainAndFeed"

    .line 59
    .line 60
    invoke-static {v0}, Landroidx/media3/common/util/q0;->a(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/b;->S(JJ)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    :goto_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/b;->U()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_5

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    invoke-static {}, Landroidx/media3/common/util/q0;->b()V
    :try_end_0
    .catch Landroidx/media3/decoder/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Landroidx/media3/exoplayer/video/b;->W:Landroidx/media3/exoplayer/j;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroidx/media3/exoplayer/j;->c()V

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :catch_0
    move-exception p1

    .line 87
    const-string p2, "DecoderVideoRenderer"

    .line 88
    .line 89
    const-string p3, "Video codec error"

    .line 90
    .line 91
    invoke-static {p2, p3, p1}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    iget-object p2, p0, Landroidx/media3/exoplayer/video/b;->t:Landroidx/media3/exoplayer/video/i0$a;

    .line 95
    .line 96
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/video/i0$a;->C(Ljava/lang/Exception;)V

    .line 97
    .line 98
    .line 99
    iget-object p2, p0, Landroidx/media3/exoplayer/video/b;->w:Landroidx/media3/common/r;

    .line 100
    .line 101
    const/16 p3, 0xfa3

    .line 102
    .line 103
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/i;->q(Ljava/lang/Throwable;Landroidx/media3/common/r;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    throw p1

    .line 108
    :cond_6
    :goto_3
    return-void
.end method

.method protected abstract s0(I)V
.end method

.method protected final u0(Ljava/lang/Object;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/view/Surface;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Landroid/view/Surface;

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/exoplayer/video/b;->D:Landroid/view/Surface;

    .line 10
    .line 11
    iput-object v1, p0, Landroidx/media3/exoplayer/video/b;->E:Landroidx/media3/exoplayer/video/s;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput v0, p0, Landroidx/media3/exoplayer/video/b;->B:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    instance-of v0, p1, Landroidx/media3/exoplayer/video/s;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iput-object v1, p0, Landroidx/media3/exoplayer/video/b;->D:Landroid/view/Surface;

    .line 22
    .line 23
    move-object v0, p1

    .line 24
    check-cast v0, Landroidx/media3/exoplayer/video/s;

    .line 25
    .line 26
    iput-object v0, p0, Landroidx/media3/exoplayer/video/b;->E:Landroidx/media3/exoplayer/video/s;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Landroidx/media3/exoplayer/video/b;->B:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iput-object v1, p0, Landroidx/media3/exoplayer/video/b;->D:Landroid/view/Surface;

    .line 33
    .line 34
    iput-object v1, p0, Landroidx/media3/exoplayer/video/b;->E:Landroidx/media3/exoplayer/video/s;

    .line 35
    .line 36
    const/4 p1, -0x1

    .line 37
    iput p1, p0, Landroidx/media3/exoplayer/video/b;->B:I

    .line 38
    .line 39
    move-object p1, v1

    .line 40
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b;->C:Ljava/lang/Object;

    .line 41
    .line 42
    if-eq v0, p1, :cond_4

    .line 43
    .line 44
    iput-object p1, p0, Landroidx/media3/exoplayer/video/b;->C:Ljava/lang/Object;

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    iget-object p1, p0, Landroidx/media3/exoplayer/video/b;->y:Landroidx/media3/decoder/g;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    iget p1, p0, Landroidx/media3/exoplayer/video/b;->B:I

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/b;->s0(I)V

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/b;->i0()V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/b;->j0()V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    if-eqz p1, :cond_5

    .line 66
    .line 67
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/b;->k0()V

    .line 68
    .line 69
    .line 70
    :cond_5
    :goto_1
    return-void
.end method

.method protected w0(JJ)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/b;->Y(J)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method protected x0(JJ)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/b;->X(J)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method protected z0(JJ)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/b;->X(J)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-wide/32 p1, 0x186a0

    .line 8
    .line 9
    .line 10
    cmp-long p1, p3, p1

    .line 11
    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return p1
.end method
