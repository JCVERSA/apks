.class final Landroidx/media3/exoplayer/source/ClippingMediaSource$c;
.super Landroidx/media3/exoplayer/source/m;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ClippingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final f:J

.field private final g:J

.field private final h:J

.field private final i:Z


# direct methods
.method public constructor <init>(Landroidx/media3/common/e0;JJZ)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/m;-><init>(Landroidx/media3/common/e0;)V

    .line 2
    .line 3
    .line 4
    const-wide/high16 v0, -0x8000000000000000L

    .line 5
    .line 6
    cmp-long v0, p4, v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    cmp-long v1, p4, p2

    .line 11
    .line 12
    if-ltz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    move-object v2, p1

    .line 19
    move-wide v4, p2

    .line 20
    move-wide v6, p4

    .line 21
    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;-><init>(IJJ)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/e0;->i()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-ne v1, v3, :cond_a

    .line 32
    .line 33
    new-instance v1, Landroidx/media3/common/e0$c;

    .line 34
    .line 35
    invoke-direct {v1}, Landroidx/media3/common/e0$c;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v2, v1}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-wide/16 v4, 0x0

    .line 43
    .line 44
    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->max(JJ)J

    .line 45
    .line 46
    .line 47
    move-result-wide p2

    .line 48
    if-nez p6, :cond_3

    .line 49
    .line 50
    iget-boolean p6, p1, Landroidx/media3/common/e0$c;->k:Z

    .line 51
    .line 52
    if-nez p6, :cond_3

    .line 53
    .line 54
    cmp-long p6, p2, v4

    .line 55
    .line 56
    if-eqz p6, :cond_3

    .line 57
    .line 58
    iget-boolean p6, p1, Landroidx/media3/common/e0$c;->h:Z

    .line 59
    .line 60
    if-eqz p6, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    new-instance p1, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    .line 64
    .line 65
    invoke-direct {p1, v3}, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 70
    .line 71
    iget-wide p4, p1, Landroidx/media3/common/e0$c;->m:J

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    invoke-static {v4, v5, p4, p5}, Ljava/lang/Math;->max(JJ)J

    .line 75
    .line 76
    .line 77
    move-result-wide p4

    .line 78
    :goto_2
    iget-wide v0, p1, Landroidx/media3/common/e0$c;->m:J

    .line 79
    .line 80
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    cmp-long p6, v0, v4

    .line 86
    .line 87
    if-eqz p6, :cond_6

    .line 88
    .line 89
    cmp-long p6, p4, v0

    .line 90
    .line 91
    if-lez p6, :cond_5

    .line 92
    .line 93
    move-wide p4, v0

    .line 94
    :cond_5
    cmp-long p6, p2, p4

    .line 95
    .line 96
    if-lez p6, :cond_6

    .line 97
    .line 98
    move-wide p2, p4

    .line 99
    :cond_6
    iput-wide p2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;->f:J

    .line 100
    .line 101
    iput-wide p4, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;->g:J

    .line 102
    .line 103
    cmp-long p6, p4, v4

    .line 104
    .line 105
    if-nez p6, :cond_7

    .line 106
    .line 107
    move-wide p2, v4

    .line 108
    goto :goto_3

    .line 109
    :cond_7
    sub-long p2, p4, p2

    .line 110
    .line 111
    :goto_3
    iput-wide p2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;->h:J

    .line 112
    .line 113
    iget-boolean p1, p1, Landroidx/media3/common/e0$c;->i:Z

    .line 114
    .line 115
    if-eqz p1, :cond_9

    .line 116
    .line 117
    if-eqz p6, :cond_8

    .line 118
    .line 119
    cmp-long p1, v0, v4

    .line 120
    .line 121
    if-eqz p1, :cond_9

    .line 122
    .line 123
    cmp-long p1, p4, v0

    .line 124
    .line 125
    if-nez p1, :cond_9

    .line 126
    .line 127
    :cond_8
    move v2, v3

    .line 128
    :cond_9
    iput-boolean v2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;->i:Z

    .line 129
    .line 130
    return-void

    .line 131
    :cond_a
    new-instance p1, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    .line 132
    .line 133
    invoke-direct {p1, v2}, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    .line 134
    .line 135
    .line 136
    throw p1
.end method


# virtual methods
.method public g(ILandroidx/media3/common/e0$b;Z)Landroidx/media3/common/e0$b;
    .locals 12

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/source/m;->e:Landroidx/media3/common/e0;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0, p2, p3}, Landroidx/media3/common/e0;->g(ILandroidx/media3/common/e0$b;Z)Landroidx/media3/common/e0$b;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/media3/common/e0$b;->o()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;->f:J

    .line 12
    .line 13
    sub-long v10, v0, v2

    .line 14
    .line 15
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;->h:J

    .line 16
    .line 17
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    cmp-long p1, v0, v2

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    move-wide v8, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sub-long/2addr v0, v10

    .line 29
    move-wide v8, v0

    .line 30
    :goto_0
    iget-object v5, p2, Landroidx/media3/common/e0$b;->a:Ljava/lang/Object;

    .line 31
    .line 32
    iget-object v6, p2, Landroidx/media3/common/e0$b;->b:Ljava/lang/Object;

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    move-object v4, p2

    .line 36
    invoke-virtual/range {v4 .. v11}, Landroidx/media3/common/e0$b;->t(Ljava/lang/Object;Ljava/lang/Object;IJJ)Landroidx/media3/common/e0$b;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method

.method public o(ILandroidx/media3/common/e0$c;J)Landroidx/media3/common/e0$c;
    .locals 4

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/source/m;->e:Landroidx/media3/common/e0;

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    invoke-virtual {p1, p3, p2, v0, v1}, Landroidx/media3/common/e0;->o(ILandroidx/media3/common/e0$c;J)Landroidx/media3/common/e0$c;

    .line 7
    .line 8
    .line 9
    iget-wide p3, p2, Landroidx/media3/common/e0$c;->p:J

    .line 10
    .line 11
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;->f:J

    .line 12
    .line 13
    add-long/2addr p3, v0

    .line 14
    iput-wide p3, p2, Landroidx/media3/common/e0$c;->p:J

    .line 15
    .line 16
    iget-wide p3, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;->h:J

    .line 17
    .line 18
    iput-wide p3, p2, Landroidx/media3/common/e0$c;->m:J

    .line 19
    .line 20
    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;->i:Z

    .line 21
    .line 22
    iput-boolean p1, p2, Landroidx/media3/common/e0$c;->i:Z

    .line 23
    .line 24
    iget-wide p3, p2, Landroidx/media3/common/e0$c;->l:J

    .line 25
    .line 26
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    cmp-long p1, p3, v2

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 36
    .line 37
    .line 38
    move-result-wide p3

    .line 39
    iput-wide p3, p2, Landroidx/media3/common/e0$c;->l:J

    .line 40
    .line 41
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;->g:J

    .line 42
    .line 43
    cmp-long p1, v0, v2

    .line 44
    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 49
    .line 50
    .line 51
    move-result-wide p3

    .line 52
    :goto_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;->f:J

    .line 53
    .line 54
    sub-long/2addr p3, v0

    .line 55
    iput-wide p3, p2, Landroidx/media3/common/e0$c;->l:J

    .line 56
    .line 57
    :cond_1
    iget-wide p3, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;->f:J

    .line 58
    .line 59
    invoke-static {p3, p4}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 60
    .line 61
    .line 62
    move-result-wide p3

    .line 63
    iget-wide v0, p2, Landroidx/media3/common/e0$c;->e:J

    .line 64
    .line 65
    cmp-long p1, v0, v2

    .line 66
    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    add-long/2addr v0, p3

    .line 70
    iput-wide v0, p2, Landroidx/media3/common/e0$c;->e:J

    .line 71
    .line 72
    :cond_2
    iget-wide v0, p2, Landroidx/media3/common/e0$c;->f:J

    .line 73
    .line 74
    cmp-long p1, v0, v2

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    add-long/2addr v0, p3

    .line 79
    iput-wide v0, p2, Landroidx/media3/common/e0$c;->f:J

    .line 80
    .line 81
    :cond_3
    return-object p2
.end method
