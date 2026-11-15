.class public final Lx1/b4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lx1/c;
.implements Lx1/c4$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx1/b4$b;,
        Lx1/b4$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Z

.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lx1/c4;

.field private final d:Landroid/media/metrics/PlaybackSession;

.field private final e:J

.field private final f:Landroidx/media3/common/e0$c;

.field private final g:Landroidx/media3/common/e0$b;

.field private final h:Ljava/util/HashMap;

.field private final i:Ljava/util/HashMap;

.field private j:Ljava/lang/String;

.field private k:Landroid/media/metrics/PlaybackMetrics$Builder;

.field private l:I

.field private m:I

.field private n:I

.field private o:Landroidx/media3/common/PlaybackException;

.field private p:Lx1/b4$b;

.field private q:Lx1/b4$b;

.field private r:Lx1/b4$b;

.field private s:Landroidx/media3/common/r;

.field private t:Landroidx/media3/common/r;

.field private u:Landroidx/media3/common/r;

.field private v:Z

.field private w:I

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lx1/b4;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lx1/b4;->d:Landroid/media/metrics/PlaybackSession;

    .line 11
    .line 12
    invoke-static {}, Landroidx/media3/common/util/c;->a()Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lx1/b4;->b:Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    new-instance p1, Landroidx/media3/common/e0$c;

    .line 19
    .line 20
    invoke-direct {p1}, Landroidx/media3/common/e0$c;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lx1/b4;->f:Landroidx/media3/common/e0$c;

    .line 24
    .line 25
    new-instance p1, Landroidx/media3/common/e0$b;

    .line 26
    .line 27
    invoke-direct {p1}, Landroidx/media3/common/e0$b;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lx1/b4;->g:Landroidx/media3/common/e0$b;

    .line 31
    .line 32
    new-instance p1, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lx1/b4;->i:Ljava/util/HashMap;

    .line 38
    .line 39
    new-instance p1, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lx1/b4;->h:Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 47
    .line 48
    .line 49
    move-result-wide p1

    .line 50
    iput-wide p1, p0, Lx1/b4;->e:J

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lx1/b4;->m:I

    .line 54
    .line 55
    iput p1, p0, Lx1/b4;->n:I

    .line 56
    .line 57
    new-instance p1, Lx1/u1;

    .line 58
    .line 59
    invoke-direct {p1}, Lx1/u1;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lx1/b4;->c:Lx1/c4;

    .line 63
    .line 64
    invoke-interface {p1, p0}, Lx1/c4;->e(Lx1/c4$a;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public static synthetic A0(Lx1/b4;Landroid/media/metrics/NetworkEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lx1/b4;->Q0(Landroid/media/metrics/NetworkEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B0(Lx1/b4;Landroid/media/metrics/TrackChangeEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lx1/b4;->T0(Landroid/media/metrics/TrackChangeEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic C0(Lx1/b4;Landroid/media/metrics/PlaybackStateEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lx1/b4;->S0(Landroid/media/metrics/PlaybackStateEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private D0(Lx1/b4$b;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p1, Lx1/b4$b;->c:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lx1/b4;->c:Lx1/c4;

    .line 6
    .line 7
    invoke-interface {v0}, Lx1/c4;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public static E0(Landroid/content/Context;)Lx1/b4;
    .locals 2

    .line 1
    const-string v0, "media_metrics"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lx1/r3;->a(Ljava/lang/Object;)Landroid/media/metrics/MediaMetricsManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v1, Lx1/b4;

    .line 16
    .line 17
    invoke-static {v0}, Lx1/s3;->a(Landroid/media/metrics/MediaMetricsManager;)Landroid/media/metrics/PlaybackSession;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {v1, p0, v0}, Lx1/b4;-><init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V

    .line 22
    .line 23
    .line 24
    move-object p0, v1

    .line 25
    :goto_0
    return-object p0
.end method

.method private F0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lx1/b4;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-boolean v2, p0, Lx1/b4;->B:Z

    .line 7
    .line 8
    if-eqz v2, :cond_3

    .line 9
    .line 10
    iget v2, p0, Lx1/b4;->A:I

    .line 11
    .line 12
    invoke-static {v0, v2}, Lx1/w2;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lx1/b4;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 16
    .line 17
    iget v2, p0, Lx1/b4;->y:I

    .line 18
    .line 19
    invoke-static {v0, v2}, Lx1/x2;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lx1/b4;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 23
    .line 24
    iget v2, p0, Lx1/b4;->z:I

    .line 25
    .line 26
    invoke-static {v0, v2}, Lx1/y2;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lx1/b4;->h:Ljava/util/HashMap;

    .line 30
    .line 31
    iget-object v2, p0, Lx1/b4;->j:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/Long;

    .line 38
    .line 39
    iget-object v2, p0, Lx1/b4;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 40
    .line 41
    const-wide/16 v3, 0x0

    .line 42
    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    move-wide v5, v3

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide v5

    .line 51
    :goto_0
    invoke-static {v2, v5, v6}, Lx1/z2;->a(Landroid/media/metrics/PlaybackMetrics$Builder;J)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lx1/b4;->i:Ljava/util/HashMap;

    .line 55
    .line 56
    iget-object v2, p0, Lx1/b4;->j:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/lang/Long;

    .line 63
    .line 64
    iget-object v2, p0, Lx1/b4;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 65
    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    move-wide v5, v3

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 71
    .line 72
    .line 73
    move-result-wide v5

    .line 74
    :goto_1
    invoke-static {v2, v5, v6}, Lx1/a3;->a(Landroid/media/metrics/PlaybackMetrics$Builder;J)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lx1/b4;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    cmp-long v0, v5, v3

    .line 86
    .line 87
    if-lez v0, :cond_2

    .line 88
    .line 89
    const/4 v0, 0x1

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    move v0, v1

    .line 92
    :goto_2
    invoke-static {v2, v0}, Lx1/b3;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lx1/b4;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 96
    .line 97
    invoke-static {v0}, Lx1/d3;->a(Landroid/media/metrics/PlaybackMetrics$Builder;)Landroid/media/metrics/PlaybackMetrics;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v2, p0, Lx1/b4;->b:Ljava/util/concurrent/Executor;

    .line 102
    .line 103
    new-instance v3, Lx1/z3;

    .line 104
    .line 105
    invoke-direct {v3, p0, v0}, Lx1/z3;-><init>(Lx1/b4;Landroid/media/metrics/PlaybackMetrics;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 109
    .line 110
    .line 111
    :cond_3
    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lx1/b4;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 113
    .line 114
    iput-object v0, p0, Lx1/b4;->j:Ljava/lang/String;

    .line 115
    .line 116
    iput v1, p0, Lx1/b4;->A:I

    .line 117
    .line 118
    iput v1, p0, Lx1/b4;->y:I

    .line 119
    .line 120
    iput v1, p0, Lx1/b4;->z:I

    .line 121
    .line 122
    iput-object v0, p0, Lx1/b4;->s:Landroidx/media3/common/r;

    .line 123
    .line 124
    iput-object v0, p0, Lx1/b4;->t:Landroidx/media3/common/r;

    .line 125
    .line 126
    iput-object v0, p0, Lx1/b4;->u:Landroidx/media3/common/r;

    .line 127
    .line 128
    iput-boolean v1, p0, Lx1/b4;->B:Z

    .line 129
    .line 130
    return-void
.end method

.method private static G0(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/common/util/a1;->b0(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const/16 p0, 0x1b

    .line 9
    .line 10
    return p0

    .line 11
    :pswitch_0
    const/16 p0, 0x1a

    .line 12
    .line 13
    return p0

    .line 14
    :pswitch_1
    const/16 p0, 0x19

    .line 15
    .line 16
    return p0

    .line 17
    :pswitch_2
    const/16 p0, 0x1c

    .line 18
    .line 19
    return p0

    .line 20
    :pswitch_3
    const/16 p0, 0x18

    .line 21
    .line 22
    return p0

    :pswitch_data_0
    .packed-switch 0x1772
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static H0(Lcom/google/common/collect/ImmutableList;)Landroidx/media3/common/DrmInitData;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/r4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/media3/common/i0$a;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    iget v2, v0, Landroidx/media3/common/i0$a;->a:I

    .line 19
    .line 20
    if-ge v1, v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/media3/common/i0$a;->h(I)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroidx/media3/common/i0$a;->b(I)Landroidx/media3/common/r;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v2, v2, Landroidx/media3/common/r;->s:Landroidx/media3/common/DrmInitData;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    return-object v2

    .line 37
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method

.method private static I0(Landroidx/media3/common/DrmInitData;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroidx/media3/common/DrmInitData;->schemeDataCount:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_3

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/media3/common/DrmInitData;->get(I)Landroidx/media3/common/DrmInitData$SchemeData;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v1, v1, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 11
    .line 12
    sget-object v2, Landroidx/media3/common/h;->d:Ljava/util/UUID;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x3

    .line 21
    return p0

    .line 22
    :cond_0
    sget-object v2, Landroidx/media3/common/h;->e:Ljava/util/UUID;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    const/4 p0, 0x2

    .line 31
    return p0

    .line 32
    :cond_1
    sget-object v2, Landroidx/media3/common/h;->c:Ljava/util/UUID;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    const/4 p0, 0x6

    .line 41
    return p0

    .line 42
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    const/4 p0, 0x1

    .line 46
    return p0
.end method

.method private static J0(Landroidx/media3/common/PlaybackException;Landroid/content/Context;Z)Lx1/b4$a;
    .locals 8

    .line 1
    iget v0, p0, Landroidx/media3/common/PlaybackException;->errorCode:I

    .line 2
    .line 3
    const/16 v1, 0x3e9

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    new-instance p0, Lx1/b4$a;

    .line 9
    .line 10
    const/16 p1, 0x14

    .line 11
    .line 12
    invoke-direct {p0, p1, v2}, Lx1/b4$a;-><init>(II)V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    instance-of v0, p0, Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    move-object v0, p0

    .line 22
    check-cast v0, Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 23
    .line 24
    iget v3, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    .line 25
    .line 26
    if-ne v3, v1, :cond_1

    .line 27
    .line 28
    move v3, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v3, v2

    .line 31
    :goto_0
    iget v0, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererFormatSupport:I

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move v0, v2

    .line 35
    move v3, v0

    .line 36
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-static {v4}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Ljava/lang/Throwable;

    .line 45
    .line 46
    instance-of v5, v4, Ljava/io/IOException;

    .line 47
    .line 48
    const/4 v6, 0x3

    .line 49
    const/16 v7, 0x17

    .line 50
    .line 51
    if-eqz v5, :cond_17

    .line 52
    .line 53
    instance-of v0, v4, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    check-cast v4, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    .line 58
    .line 59
    iget p0, v4, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    .line 60
    .line 61
    new-instance p1, Lx1/b4$a;

    .line 62
    .line 63
    const/4 p2, 0x5

    .line 64
    invoke-direct {p1, p2, p0}, Lx1/b4$a;-><init>(II)V

    .line 65
    .line 66
    .line 67
    return-object p1

    .line 68
    :cond_3
    instance-of v0, v4, Landroidx/media3/datasource/HttpDataSource$InvalidContentTypeException;

    .line 69
    .line 70
    if-nez v0, :cond_15

    .line 71
    .line 72
    instance-of v0, v4, Landroidx/media3/common/ParserException;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    goto/16 :goto_3

    .line 77
    .line 78
    :cond_4
    instance-of p2, v4, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    .line 79
    .line 80
    if-nez p2, :cond_10

    .line 81
    .line 82
    instance-of v0, v4, Landroidx/media3/datasource/UdpDataSource$UdpDataSourceException;

    .line 83
    .line 84
    if-eqz v0, :cond_5

    .line 85
    .line 86
    goto/16 :goto_2

    .line 87
    .line 88
    :cond_5
    iget p0, p0, Landroidx/media3/common/PlaybackException;->errorCode:I

    .line 89
    .line 90
    const/16 p1, 0x3ea

    .line 91
    .line 92
    if-ne p0, p1, :cond_6

    .line 93
    .line 94
    new-instance p0, Lx1/b4$a;

    .line 95
    .line 96
    const/16 p1, 0x15

    .line 97
    .line 98
    invoke-direct {p0, p1, v2}, Lx1/b4$a;-><init>(II)V

    .line 99
    .line 100
    .line 101
    return-object p0

    .line 102
    :cond_6
    instance-of p0, v4, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 103
    .line 104
    if-eqz p0, :cond_d

    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {p0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    check-cast p0, Ljava/lang/Throwable;

    .line 115
    .line 116
    instance-of p1, p0, Landroid/media/MediaDrm$MediaDrmStateException;

    .line 117
    .line 118
    if-eqz p1, :cond_7

    .line 119
    .line 120
    check-cast p0, Landroid/media/MediaDrm$MediaDrmStateException;

    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-static {p0}, Landroidx/media3/common/util/a1;->c0(Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    invoke-static {p0}, Lx1/b4;->G0(I)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    new-instance p2, Lx1/b4$a;

    .line 135
    .line 136
    invoke-direct {p2, p1, p0}, Lx1/b4$a;-><init>(II)V

    .line 137
    .line 138
    .line 139
    return-object p2

    .line 140
    :cond_7
    sget p1, Landroidx/media3/common/util/a1;->a:I

    .line 141
    .line 142
    if-lt p1, v7, :cond_8

    .line 143
    .line 144
    instance-of p1, p0, Landroid/media/MediaDrmResetException;

    .line 145
    .line 146
    if-eqz p1, :cond_8

    .line 147
    .line 148
    new-instance p0, Lx1/b4$a;

    .line 149
    .line 150
    const/16 p1, 0x1b

    .line 151
    .line 152
    invoke-direct {p0, p1, v2}, Lx1/b4$a;-><init>(II)V

    .line 153
    .line 154
    .line 155
    return-object p0

    .line 156
    :cond_8
    instance-of p1, p0, Landroid/media/NotProvisionedException;

    .line 157
    .line 158
    if-eqz p1, :cond_9

    .line 159
    .line 160
    new-instance p0, Lx1/b4$a;

    .line 161
    .line 162
    const/16 p1, 0x18

    .line 163
    .line 164
    invoke-direct {p0, p1, v2}, Lx1/b4$a;-><init>(II)V

    .line 165
    .line 166
    .line 167
    return-object p0

    .line 168
    :cond_9
    instance-of p1, p0, Landroid/media/DeniedByServerException;

    .line 169
    .line 170
    if-eqz p1, :cond_a

    .line 171
    .line 172
    new-instance p0, Lx1/b4$a;

    .line 173
    .line 174
    const/16 p1, 0x1d

    .line 175
    .line 176
    invoke-direct {p0, p1, v2}, Lx1/b4$a;-><init>(II)V

    .line 177
    .line 178
    .line 179
    return-object p0

    .line 180
    :cond_a
    instance-of p1, p0, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;

    .line 181
    .line 182
    if-eqz p1, :cond_b

    .line 183
    .line 184
    new-instance p0, Lx1/b4$a;

    .line 185
    .line 186
    invoke-direct {p0, v7, v2}, Lx1/b4$a;-><init>(II)V

    .line 187
    .line 188
    .line 189
    return-object p0

    .line 190
    :cond_b
    instance-of p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    .line 191
    .line 192
    if-eqz p0, :cond_c

    .line 193
    .line 194
    new-instance p0, Lx1/b4$a;

    .line 195
    .line 196
    const/16 p1, 0x1c

    .line 197
    .line 198
    invoke-direct {p0, p1, v2}, Lx1/b4$a;-><init>(II)V

    .line 199
    .line 200
    .line 201
    return-object p0

    .line 202
    :cond_c
    new-instance p0, Lx1/b4$a;

    .line 203
    .line 204
    const/16 p1, 0x1e

    .line 205
    .line 206
    invoke-direct {p0, p1, v2}, Lx1/b4$a;-><init>(II)V

    .line 207
    .line 208
    .line 209
    return-object p0

    .line 210
    :cond_d
    instance-of p0, v4, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;

    .line 211
    .line 212
    if-eqz p0, :cond_f

    .line 213
    .line 214
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    instance-of p0, p0, Ljava/io/FileNotFoundException;

    .line 219
    .line 220
    if-eqz p0, :cond_f

    .line 221
    .line 222
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    invoke-static {p0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    check-cast p0, Ljava/lang/Throwable;

    .line 231
    .line 232
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    instance-of p1, p0, Landroid/system/ErrnoException;

    .line 237
    .line 238
    if-eqz p1, :cond_e

    .line 239
    .line 240
    check-cast p0, Landroid/system/ErrnoException;

    .line 241
    .line 242
    iget p0, p0, Landroid/system/ErrnoException;->errno:I

    .line 243
    .line 244
    sget p1, Landroid/system/OsConstants;->EACCES:I

    .line 245
    .line 246
    if-ne p0, p1, :cond_e

    .line 247
    .line 248
    new-instance p0, Lx1/b4$a;

    .line 249
    .line 250
    const/16 p1, 0x20

    .line 251
    .line 252
    invoke-direct {p0, p1, v2}, Lx1/b4$a;-><init>(II)V

    .line 253
    .line 254
    .line 255
    return-object p0

    .line 256
    :cond_e
    new-instance p0, Lx1/b4$a;

    .line 257
    .line 258
    const/16 p1, 0x1f

    .line 259
    .line 260
    invoke-direct {p0, p1, v2}, Lx1/b4$a;-><init>(II)V

    .line 261
    .line 262
    .line 263
    return-object p0

    .line 264
    :cond_f
    new-instance p0, Lx1/b4$a;

    .line 265
    .line 266
    const/16 p1, 0x9

    .line 267
    .line 268
    invoke-direct {p0, p1, v2}, Lx1/b4$a;-><init>(II)V

    .line 269
    .line 270
    .line 271
    return-object p0

    .line 272
    :cond_10
    :goto_2
    invoke-static {p1}, Landroidx/media3/common/util/z;->e(Landroid/content/Context;)Landroidx/media3/common/util/z;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    invoke-virtual {p0}, Landroidx/media3/common/util/z;->g()I

    .line 277
    .line 278
    .line 279
    move-result p0

    .line 280
    if-ne p0, v1, :cond_11

    .line 281
    .line 282
    new-instance p0, Lx1/b4$a;

    .line 283
    .line 284
    invoke-direct {p0, v6, v2}, Lx1/b4$a;-><init>(II)V

    .line 285
    .line 286
    .line 287
    return-object p0

    .line 288
    :cond_11
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    instance-of p1, p0, Ljava/net/UnknownHostException;

    .line 293
    .line 294
    if-eqz p1, :cond_12

    .line 295
    .line 296
    new-instance p0, Lx1/b4$a;

    .line 297
    .line 298
    const/4 p1, 0x6

    .line 299
    invoke-direct {p0, p1, v2}, Lx1/b4$a;-><init>(II)V

    .line 300
    .line 301
    .line 302
    return-object p0

    .line 303
    :cond_12
    instance-of p0, p0, Ljava/net/SocketTimeoutException;

    .line 304
    .line 305
    if-eqz p0, :cond_13

    .line 306
    .line 307
    new-instance p0, Lx1/b4$a;

    .line 308
    .line 309
    const/4 p1, 0x7

    .line 310
    invoke-direct {p0, p1, v2}, Lx1/b4$a;-><init>(II)V

    .line 311
    .line 312
    .line 313
    return-object p0

    .line 314
    :cond_13
    if-eqz p2, :cond_14

    .line 315
    .line 316
    check-cast v4, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    .line 317
    .line 318
    iget p0, v4, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->type:I

    .line 319
    .line 320
    if-ne p0, v1, :cond_14

    .line 321
    .line 322
    new-instance p0, Lx1/b4$a;

    .line 323
    .line 324
    const/4 p1, 0x4

    .line 325
    invoke-direct {p0, p1, v2}, Lx1/b4$a;-><init>(II)V

    .line 326
    .line 327
    .line 328
    return-object p0

    .line 329
    :cond_14
    new-instance p0, Lx1/b4$a;

    .line 330
    .line 331
    const/16 p1, 0x8

    .line 332
    .line 333
    invoke-direct {p0, p1, v2}, Lx1/b4$a;-><init>(II)V

    .line 334
    .line 335
    .line 336
    return-object p0

    .line 337
    :cond_15
    :goto_3
    new-instance p0, Lx1/b4$a;

    .line 338
    .line 339
    if-eqz p2, :cond_16

    .line 340
    .line 341
    const/16 p1, 0xa

    .line 342
    .line 343
    goto :goto_4

    .line 344
    :cond_16
    const/16 p1, 0xb

    .line 345
    .line 346
    :goto_4
    invoke-direct {p0, p1, v2}, Lx1/b4$a;-><init>(II)V

    .line 347
    .line 348
    .line 349
    return-object p0

    .line 350
    :cond_17
    if-eqz v3, :cond_19

    .line 351
    .line 352
    if-eqz v0, :cond_18

    .line 353
    .line 354
    if-ne v0, v1, :cond_19

    .line 355
    .line 356
    :cond_18
    new-instance p0, Lx1/b4$a;

    .line 357
    .line 358
    const/16 p1, 0x23

    .line 359
    .line 360
    invoke-direct {p0, p1, v2}, Lx1/b4$a;-><init>(II)V

    .line 361
    .line 362
    .line 363
    return-object p0

    .line 364
    :cond_19
    if-eqz v3, :cond_1a

    .line 365
    .line 366
    if-ne v0, v6, :cond_1a

    .line 367
    .line 368
    new-instance p0, Lx1/b4$a;

    .line 369
    .line 370
    const/16 p1, 0xf

    .line 371
    .line 372
    invoke-direct {p0, p1, v2}, Lx1/b4$a;-><init>(II)V

    .line 373
    .line 374
    .line 375
    return-object p0

    .line 376
    :cond_1a
    if-eqz v3, :cond_1b

    .line 377
    .line 378
    const/4 p0, 0x2

    .line 379
    if-ne v0, p0, :cond_1b

    .line 380
    .line 381
    new-instance p0, Lx1/b4$a;

    .line 382
    .line 383
    invoke-direct {p0, v7, v2}, Lx1/b4$a;-><init>(II)V

    .line 384
    .line 385
    .line 386
    return-object p0

    .line 387
    :cond_1b
    instance-of p0, v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 388
    .line 389
    if-eqz p0, :cond_1c

    .line 390
    .line 391
    check-cast v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 392
    .line 393
    iget-object p0, v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->diagnosticInfo:Ljava/lang/String;

    .line 394
    .line 395
    invoke-static {p0}, Landroidx/media3/common/util/a1;->c0(Ljava/lang/String;)I

    .line 396
    .line 397
    .line 398
    move-result p0

    .line 399
    new-instance p1, Lx1/b4$a;

    .line 400
    .line 401
    const/16 p2, 0xd

    .line 402
    .line 403
    invoke-direct {p1, p2, p0}, Lx1/b4$a;-><init>(II)V

    .line 404
    .line 405
    .line 406
    return-object p1

    .line 407
    :cond_1c
    instance-of p0, v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;

    .line 408
    .line 409
    const/16 p1, 0xe

    .line 410
    .line 411
    if-eqz p0, :cond_1d

    .line 412
    .line 413
    check-cast v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;

    .line 414
    .line 415
    iget p0, v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;->errorCode:I

    .line 416
    .line 417
    new-instance p2, Lx1/b4$a;

    .line 418
    .line 419
    invoke-direct {p2, p1, p0}, Lx1/b4$a;-><init>(II)V

    .line 420
    .line 421
    .line 422
    return-object p2

    .line 423
    :cond_1d
    instance-of p0, v4, Ljava/lang/OutOfMemoryError;

    .line 424
    .line 425
    if-eqz p0, :cond_1e

    .line 426
    .line 427
    new-instance p0, Lx1/b4$a;

    .line 428
    .line 429
    invoke-direct {p0, p1, v2}, Lx1/b4$a;-><init>(II)V

    .line 430
    .line 431
    .line 432
    return-object p0

    .line 433
    :cond_1e
    instance-of p0, v4, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;

    .line 434
    .line 435
    if-eqz p0, :cond_1f

    .line 436
    .line 437
    check-cast v4, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;

    .line 438
    .line 439
    iget p0, v4, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;->audioTrackState:I

    .line 440
    .line 441
    new-instance p1, Lx1/b4$a;

    .line 442
    .line 443
    const/16 p2, 0x11

    .line 444
    .line 445
    invoke-direct {p1, p2, p0}, Lx1/b4$a;-><init>(II)V

    .line 446
    .line 447
    .line 448
    return-object p1

    .line 449
    :cond_1f
    instance-of p0, v4, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;

    .line 450
    .line 451
    if-eqz p0, :cond_20

    .line 452
    .line 453
    check-cast v4, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;

    .line 454
    .line 455
    iget p0, v4, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->errorCode:I

    .line 456
    .line 457
    new-instance p1, Lx1/b4$a;

    .line 458
    .line 459
    const/16 p2, 0x12

    .line 460
    .line 461
    invoke-direct {p1, p2, p0}, Lx1/b4$a;-><init>(II)V

    .line 462
    .line 463
    .line 464
    return-object p1

    .line 465
    :cond_20
    instance-of p0, v4, Landroid/media/MediaCodec$CryptoException;

    .line 466
    .line 467
    if-eqz p0, :cond_21

    .line 468
    .line 469
    check-cast v4, Landroid/media/MediaCodec$CryptoException;

    .line 470
    .line 471
    invoke-virtual {v4}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    .line 472
    .line 473
    .line 474
    move-result p0

    .line 475
    invoke-static {p0}, Lx1/b4;->G0(I)I

    .line 476
    .line 477
    .line 478
    move-result p1

    .line 479
    new-instance p2, Lx1/b4$a;

    .line 480
    .line 481
    invoke-direct {p2, p1, p0}, Lx1/b4$a;-><init>(II)V

    .line 482
    .line 483
    .line 484
    return-object p2

    .line 485
    :cond_21
    new-instance p0, Lx1/b4$a;

    .line 486
    .line 487
    const/16 p1, 0x16

    .line 488
    .line 489
    invoke-direct {p0, p1, v2}, Lx1/b4$a;-><init>(II)V

    .line 490
    .line 491
    .line 492
    return-object p0
.end method

.method private static K0(Ljava/lang/String;)Landroid/util/Pair;
    .locals 3

    .line 1
    const-string v0, "-"

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/media3/common/util/a1;->o1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    aget-object v0, p0, v0

    .line 9
    .line 10
    array-length v1, p0

    .line 11
    const/4 v2, 0x2

    .line 12
    if-lt v1, v2, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    aget-object p0, p0, v1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method private static M0(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/common/util/z;->e(Landroid/content/Context;)Landroidx/media3/common/util/z;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroidx/media3/common/util/z;->g()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    :pswitch_0
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :pswitch_1
    const/4 p0, 0x7

    .line 15
    return p0

    .line 16
    :pswitch_2
    const/16 p0, 0x8

    .line 17
    .line 18
    return p0

    .line 19
    :pswitch_3
    const/4 p0, 0x3

    .line 20
    return p0

    .line 21
    :pswitch_4
    const/4 p0, 0x6

    .line 22
    return p0

    .line 23
    :pswitch_5
    const/4 p0, 0x5

    .line 24
    return p0

    .line 25
    :pswitch_6
    const/4 p0, 0x4

    .line 26
    return p0

    .line 27
    :pswitch_7
    const/4 p0, 0x2

    .line 28
    return p0

    .line 29
    :pswitch_8
    const/16 p0, 0x9

    .line 30
    .line 31
    return p0

    .line 32
    :pswitch_9
    const/4 p0, 0x0

    .line 33
    return p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static N0(Landroidx/media3/common/t;)I
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/t$h;->a:Landroid/net/Uri;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/media3/common/t$h;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, p0}, Landroidx/media3/common/util/a1;->A0(Landroid/net/Uri;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_3

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    if-eq p0, v0, :cond_2

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    if-eq p0, v1, :cond_1

    .line 22
    .line 23
    return v0

    .line 24
    :cond_1
    const/4 p0, 0x4

    .line 25
    return p0

    .line 26
    :cond_2
    const/4 p0, 0x5

    .line 27
    return p0

    .line 28
    :cond_3
    const/4 p0, 0x3

    .line 29
    return p0
.end method

.method private static O0(I)I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p0, v1, :cond_2

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    if-eq p0, v0, :cond_1

    .line 7
    .line 8
    if-eq p0, v2, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const/4 p0, 0x4

    .line 12
    return p0

    .line 13
    :cond_1
    return v2

    .line 14
    :cond_2
    return v0
.end method

.method private synthetic P0(Landroid/media/metrics/PlaybackMetrics;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx1/b4;->d:Landroid/media/metrics/PlaybackSession;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lx1/l3;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackMetrics;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic Q0(Landroid/media/metrics/NetworkEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx1/b4;->d:Landroid/media/metrics/PlaybackSession;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lx1/i3;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/NetworkEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic R0(Landroid/media/metrics/PlaybackErrorEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx1/b4;->d:Landroid/media/metrics/PlaybackSession;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lx1/j3;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackErrorEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic S0(Landroid/media/metrics/PlaybackStateEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx1/b4;->d:Landroid/media/metrics/PlaybackSession;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lx1/k3;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackStateEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic T0(Landroid/media/metrics/TrackChangeEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx1/b4;->d:Landroid/media/metrics/PlaybackSession;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lx1/q3;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/TrackChangeEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private U0(Lx1/c$b;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lx1/c$b;->d()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lx1/c$b;->b(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p1, v1}, Lx1/c$b;->c(I)Lx1/c$a;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lx1/b4;->c:Lx1/c4;

    .line 19
    .line 20
    invoke-interface {v1, v2}, Lx1/c4;->g(Lx1/c$a;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/16 v3, 0xb

    .line 25
    .line 26
    if-ne v1, v3, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lx1/b4;->c:Lx1/c4;

    .line 29
    .line 30
    iget v3, p0, Lx1/b4;->l:I

    .line 31
    .line 32
    invoke-interface {v1, v2, v3}, Lx1/c4;->c(Lx1/c$a;I)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object v1, p0, Lx1/b4;->c:Lx1/c4;

    .line 37
    .line 38
    invoke-interface {v1, v2}, Lx1/c4;->f(Lx1/c$a;)V

    .line 39
    .line 40
    .line 41
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-void
.end method

.method private V0(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lx1/b4;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lx1/b4;->M0(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lx1/b4;->n:I

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iput v0, p0, Lx1/b4;->n:I

    .line 12
    .line 13
    invoke-static {}, Lx1/g2;->a()Landroid/media/metrics/NetworkEvent$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1, v0}, Lx1/j2;->a(Landroid/media/metrics/NetworkEvent$Builder;I)Landroid/media/metrics/NetworkEvent$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-wide v1, p0, Lx1/b4;->e:J

    .line 22
    .line 23
    sub-long/2addr p1, v1

    .line 24
    invoke-static {v0, p1, p2}, Lx1/k2;->a(Landroid/media/metrics/NetworkEvent$Builder;J)Landroid/media/metrics/NetworkEvent$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lx1/l2;->a(Landroid/media/metrics/NetworkEvent$Builder;)Landroid/media/metrics/NetworkEvent;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p2, p0, Lx1/b4;->b:Ljava/util/concurrent/Executor;

    .line 33
    .line 34
    new-instance v0, Lx1/x3;

    .line 35
    .line 36
    invoke-direct {v0, p0, p1}, Lx1/x3;-><init>(Lx1/b4;Landroid/media/metrics/NetworkEvent;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method private W0(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lx1/b4;->o:Landroidx/media3/common/PlaybackException;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lx1/b4;->a:Landroid/content/Context;

    .line 7
    .line 8
    iget v2, p0, Lx1/b4;->w:I

    .line 9
    .line 10
    const/4 v3, 0x4

    .line 11
    const/4 v4, 0x1

    .line 12
    if-ne v2, v3, :cond_1

    .line 13
    .line 14
    move v2, v4

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v2, 0x0

    .line 17
    :goto_0
    invoke-static {v0, v1, v2}, Lx1/b4;->J0(Landroidx/media3/common/PlaybackException;Landroid/content/Context;Z)Lx1/b4$a;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {}, Lx1/c3;->a()Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-wide v5, p0, Lx1/b4;->e:J

    .line 26
    .line 27
    sub-long/2addr p1, v5

    .line 28
    invoke-static {v2, p1, p2}, Lx1/q2;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;J)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget p2, v1, Lx1/b4$a;->a:I

    .line 33
    .line 34
    invoke-static {p1, p2}, Lx1/s2;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget p2, v1, Lx1/b4$a;->b:I

    .line 39
    .line 40
    invoke-static {p1, p2}, Lx1/t2;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1, v0}, Lx1/u2;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;Ljava/lang/Exception;)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Lx1/v2;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;)Landroid/media/metrics/PlaybackErrorEvent;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object p2, p0, Lx1/b4;->b:Ljava/util/concurrent/Executor;

    .line 53
    .line 54
    new-instance v0, Lx1/y3;

    .line 55
    .line 56
    invoke-direct {v0, p0, p1}, Lx1/y3;-><init>(Lx1/b4;Landroid/media/metrics/PlaybackErrorEvent;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    iput-boolean v4, p0, Lx1/b4;->B:Z

    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lx1/b4;->o:Landroidx/media3/common/PlaybackException;

    .line 66
    .line 67
    return-void
.end method

.method private X0(Landroidx/media3/common/a0;Lx1/c$b;J)V
    .locals 3

    .line 1
    invoke-interface {p1}, Landroidx/media3/common/a0;->getPlaybackState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iput-boolean v2, p0, Lx1/b4;->v:Z

    .line 10
    .line 11
    :cond_0
    invoke-interface {p1}, Landroidx/media3/common/a0;->c()Landroidx/media3/common/PlaybackException;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iput-boolean v2, p0, Lx1/b4;->x:Z

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/16 v0, 0xa

    .line 22
    .line 23
    invoke-virtual {p2, v0}, Lx1/c$b;->a(I)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_2

    .line 28
    .line 29
    iput-boolean v1, p0, Lx1/b4;->x:Z

    .line 30
    .line 31
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lx1/b4;->f1(Landroidx/media3/common/a0;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iget p2, p0, Lx1/b4;->m:I

    .line 36
    .line 37
    if-eq p2, p1, :cond_3

    .line 38
    .line 39
    iput p1, p0, Lx1/b4;->m:I

    .line 40
    .line 41
    iput-boolean v1, p0, Lx1/b4;->B:Z

    .line 42
    .line 43
    invoke-static {}, Lx1/n3;->a()Landroid/media/metrics/PlaybackStateEvent$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget p2, p0, Lx1/b4;->m:I

    .line 48
    .line 49
    invoke-static {p1, p2}, Lx1/e3;->a(Landroid/media/metrics/PlaybackStateEvent$Builder;I)Landroid/media/metrics/PlaybackStateEvent$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-wide v0, p0, Lx1/b4;->e:J

    .line 54
    .line 55
    sub-long/2addr p3, v0

    .line 56
    invoke-static {p1, p3, p4}, Lx1/f3;->a(Landroid/media/metrics/PlaybackStateEvent$Builder;J)Landroid/media/metrics/PlaybackStateEvent$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lx1/g3;->a(Landroid/media/metrics/PlaybackStateEvent$Builder;)Landroid/media/metrics/PlaybackStateEvent;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object p2, p0, Lx1/b4;->b:Ljava/util/concurrent/Executor;

    .line 65
    .line 66
    new-instance p3, Lx1/a4;

    .line 67
    .line 68
    invoke-direct {p3, p0, p1}, Lx1/a4;-><init>(Lx1/b4;Landroid/media/metrics/PlaybackStateEvent;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    return-void
.end method

.method private Y0(Landroidx/media3/common/a0;Lx1/c$b;J)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p2, v0}, Lx1/c$b;->a(I)Z

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p2, :cond_3

    .line 8
    .line 9
    invoke-interface {p1}, Landroidx/media3/common/a0;->getCurrentTracks()Landroidx/media3/common/i0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, v0}, Landroidx/media3/common/i0;->c(I)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p1, v0}, Landroidx/media3/common/i0;->c(I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x3

    .line 23
    invoke-virtual {p1, v2}, Landroidx/media3/common/i0;->c(I)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    :cond_0
    const/4 v2, 0x0

    .line 34
    if-nez p2, :cond_1

    .line 35
    .line 36
    invoke-direct {p0, p3, p4, v1, v2}, Lx1/b4;->d1(JLandroidx/media3/common/r;I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    if-nez v0, :cond_2

    .line 40
    .line 41
    invoke-direct {p0, p3, p4, v1, v2}, Lx1/b4;->Z0(JLandroidx/media3/common/r;I)V

    .line 42
    .line 43
    .line 44
    :cond_2
    if-nez p1, :cond_3

    .line 45
    .line 46
    invoke-direct {p0, p3, p4, v1, v2}, Lx1/b4;->b1(JLandroidx/media3/common/r;I)V

    .line 47
    .line 48
    .line 49
    :cond_3
    iget-object p1, p0, Lx1/b4;->p:Lx1/b4$b;

    .line 50
    .line 51
    invoke-direct {p0, p1}, Lx1/b4;->D0(Lx1/b4$b;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    iget-object p1, p0, Lx1/b4;->p:Lx1/b4$b;

    .line 58
    .line 59
    iget-object p2, p1, Lx1/b4$b;->a:Landroidx/media3/common/r;

    .line 60
    .line 61
    iget v0, p2, Landroidx/media3/common/r;->w:I

    .line 62
    .line 63
    const/4 v2, -0x1

    .line 64
    if-eq v0, v2, :cond_4

    .line 65
    .line 66
    iget p1, p1, Lx1/b4$b;->b:I

    .line 67
    .line 68
    invoke-direct {p0, p3, p4, p2, p1}, Lx1/b4;->d1(JLandroidx/media3/common/r;I)V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lx1/b4;->p:Lx1/b4$b;

    .line 72
    .line 73
    :cond_4
    iget-object p1, p0, Lx1/b4;->q:Lx1/b4$b;

    .line 74
    .line 75
    invoke-direct {p0, p1}, Lx1/b4;->D0(Lx1/b4$b;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_5

    .line 80
    .line 81
    iget-object p1, p0, Lx1/b4;->q:Lx1/b4$b;

    .line 82
    .line 83
    iget-object p2, p1, Lx1/b4$b;->a:Landroidx/media3/common/r;

    .line 84
    .line 85
    iget p1, p1, Lx1/b4$b;->b:I

    .line 86
    .line 87
    invoke-direct {p0, p3, p4, p2, p1}, Lx1/b4;->Z0(JLandroidx/media3/common/r;I)V

    .line 88
    .line 89
    .line 90
    iput-object v1, p0, Lx1/b4;->q:Lx1/b4$b;

    .line 91
    .line 92
    :cond_5
    iget-object p1, p0, Lx1/b4;->r:Lx1/b4$b;

    .line 93
    .line 94
    invoke-direct {p0, p1}, Lx1/b4;->D0(Lx1/b4$b;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_6

    .line 99
    .line 100
    iget-object p1, p0, Lx1/b4;->r:Lx1/b4$b;

    .line 101
    .line 102
    iget-object p2, p1, Lx1/b4$b;->a:Landroidx/media3/common/r;

    .line 103
    .line 104
    iget p1, p1, Lx1/b4$b;->b:I

    .line 105
    .line 106
    invoke-direct {p0, p3, p4, p2, p1}, Lx1/b4;->b1(JLandroidx/media3/common/r;I)V

    .line 107
    .line 108
    .line 109
    iput-object v1, p0, Lx1/b4;->r:Lx1/b4$b;

    .line 110
    .line 111
    :cond_6
    return-void
.end method

.method private Z0(JLandroidx/media3/common/r;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lx1/b4;->t:Landroidx/media3/common/r;

    .line 2
    .line 3
    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lx1/b4;->t:Landroidx/media3/common/r;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    if-nez p4, :cond_1

    .line 15
    .line 16
    const/4 p4, 0x1

    .line 17
    :cond_1
    move v5, p4

    .line 18
    iput-object p3, p0, Lx1/b4;->t:Landroidx/media3/common/r;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    move-object v0, p0

    .line 22
    move-wide v2, p1

    .line 23
    move-object v4, p3

    .line 24
    invoke-direct/range {v0 .. v5}, Lx1/b4;->e1(IJLandroidx/media3/common/r;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private a1(Landroidx/media3/common/a0;Lx1/c$b;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, v0}, Lx1/c$b;->a(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Lx1/c$b;->c(I)Lx1/c$a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lx1/b4;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, v0, Lx1/c$a;->b:Landroidx/media3/common/e0;

    .line 17
    .line 18
    iget-object v0, v0, Lx1/c$a;->d:Landroidx/media3/exoplayer/source/r$b;

    .line 19
    .line 20
    invoke-direct {p0, v1, v0}, Lx1/b4;->c1(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 v0, 0x2

    .line 24
    invoke-virtual {p2, v0}, Lx1/c$b;->a(I)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lx1/b4;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-interface {p1}, Landroidx/media3/common/a0;->getCurrentTracks()Landroidx/media3/common/i0;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroidx/media3/common/i0;->a()Lcom/google/common/collect/ImmutableList;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lx1/b4;->H0(Lcom/google/common/collect/ImmutableList;)Landroidx/media3/common/DrmInitData;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lx1/b4;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 49
    .line 50
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lx1/m2;->a(Ljava/lang/Object;)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {p1}, Lx1/b4;->I0(Landroidx/media3/common/DrmInitData;)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-static {v0, p1}, Lx1/n2;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 63
    .line 64
    .line 65
    :cond_1
    const/16 p1, 0x3f3

    .line 66
    .line 67
    invoke-virtual {p2, p1}, Lx1/c$b;->a(I)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    iget p1, p0, Lx1/b4;->A:I

    .line 74
    .line 75
    add-int/lit8 p1, p1, 0x1

    .line 76
    .line 77
    iput p1, p0, Lx1/b4;->A:I

    .line 78
    .line 79
    :cond_2
    return-void
.end method

.method private b1(JLandroidx/media3/common/r;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lx1/b4;->u:Landroidx/media3/common/r;

    .line 2
    .line 3
    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lx1/b4;->u:Landroidx/media3/common/r;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    if-nez p4, :cond_1

    .line 15
    .line 16
    const/4 p4, 0x1

    .line 17
    :cond_1
    move v5, p4

    .line 18
    iput-object p3, p0, Lx1/b4;->u:Landroidx/media3/common/r;

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    move-object v0, p0

    .line 22
    move-wide v2, p1

    .line 23
    move-object v4, p3

    .line 24
    invoke-direct/range {v0 .. v5}, Lx1/b4;->e1(IJLandroidx/media3/common/r;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private c1(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lx1/b4;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p2, p2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    const/4 v1, -0x1

    .line 13
    if-ne p2, v1, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iget-object v1, p0, Lx1/b4;->g:Landroidx/media3/common/e0$b;

    .line 17
    .line 18
    invoke-virtual {p1, p2, v1}, Landroidx/media3/common/e0;->f(ILandroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lx1/b4;->g:Landroidx/media3/common/e0$b;

    .line 22
    .line 23
    iget p2, p2, Landroidx/media3/common/e0$b;->c:I

    .line 24
    .line 25
    iget-object v1, p0, Lx1/b4;->f:Landroidx/media3/common/e0$c;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v1}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lx1/b4;->f:Landroidx/media3/common/e0$c;

    .line 31
    .line 32
    iget-object p1, p1, Landroidx/media3/common/e0$c;->c:Landroidx/media3/common/t;

    .line 33
    .line 34
    invoke-static {p1}, Lx1/b4;->N0(Landroidx/media3/common/t;)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-static {v0, p1}, Lx1/m3;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lx1/b4;->f:Landroidx/media3/common/e0$c;

    .line 42
    .line 43
    iget-wide v1, p1, Landroidx/media3/common/e0$c;->m:J

    .line 44
    .line 45
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    cmp-long p2, v1, v3

    .line 51
    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    iget-boolean p2, p1, Landroidx/media3/common/e0$c;->k:Z

    .line 55
    .line 56
    if-nez p2, :cond_2

    .line 57
    .line 58
    iget-boolean p2, p1, Landroidx/media3/common/e0$c;->i:Z

    .line 59
    .line 60
    if-nez p2, :cond_2

    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/media3/common/e0$c;->f()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_2

    .line 67
    .line 68
    iget-object p1, p0, Lx1/b4;->f:Landroidx/media3/common/e0$c;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroidx/media3/common/e0$c;->d()J

    .line 71
    .line 72
    .line 73
    move-result-wide p1

    .line 74
    invoke-static {v0, p1, p2}, Lx1/o3;->a(Landroid/media/metrics/PlaybackMetrics$Builder;J)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 75
    .line 76
    .line 77
    :cond_2
    iget-object p1, p0, Lx1/b4;->f:Landroidx/media3/common/e0$c;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroidx/media3/common/e0$c;->f()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    const/4 p2, 0x1

    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    const/4 p1, 0x2

    .line 87
    goto :goto_0

    .line 88
    :cond_3
    move p1, p2

    .line 89
    :goto_0
    invoke-static {v0, p1}, Lx1/p3;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 90
    .line 91
    .line 92
    iput-boolean p2, p0, Lx1/b4;->B:Z

    .line 93
    .line 94
    return-void
.end method

.method private d1(JLandroidx/media3/common/r;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lx1/b4;->s:Landroidx/media3/common/r;

    .line 2
    .line 3
    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lx1/b4;->s:Landroidx/media3/common/r;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    if-nez p4, :cond_1

    .line 15
    .line 16
    const/4 p4, 0x1

    .line 17
    :cond_1
    move v5, p4

    .line 18
    iput-object p3, p0, Lx1/b4;->s:Landroidx/media3/common/r;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    move-object v0, p0

    .line 22
    move-wide v2, p1

    .line 23
    move-object v4, p3

    .line 24
    invoke-direct/range {v0 .. v5}, Lx1/b4;->e1(IJLandroidx/media3/common/r;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private e1(IJLandroidx/media3/common/r;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lx1/v1;->a(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-wide v0, p0, Lx1/b4;->e:J

    .line 6
    .line 7
    sub-long/2addr p2, v0

    .line 8
    invoke-static {p1, p2, p3}, Lx1/t3;->a(Landroid/media/metrics/TrackChangeEvent$Builder;J)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x1

    .line 13
    if-eqz p4, :cond_9

    .line 14
    .line 15
    invoke-static {p1, p2}, Lx1/y1;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 16
    .line 17
    .line 18
    invoke-static {p5}, Lx1/b4;->O0(I)I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    invoke-static {p1, p3}, Lx1/a2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 23
    .line 24
    .line 25
    iget-object p3, p4, Landroidx/media3/common/r;->n:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz p3, :cond_0

    .line 28
    .line 29
    invoke-static {p1, p3}, Lx1/b2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object p3, p4, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz p3, :cond_1

    .line 35
    .line 36
    invoke-static {p1, p3}, Lx1/c2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object p3, p4, Landroidx/media3/common/r;->k:Ljava/lang/String;

    .line 40
    .line 41
    if-eqz p3, :cond_2

    .line 42
    .line 43
    invoke-static {p1, p3}, Lx1/d2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 44
    .line 45
    .line 46
    :cond_2
    iget p3, p4, Landroidx/media3/common/r;->j:I

    .line 47
    .line 48
    const/4 p5, -0x1

    .line 49
    if-eq p3, p5, :cond_3

    .line 50
    .line 51
    invoke-static {p1, p3}, Lx1/e2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 52
    .line 53
    .line 54
    :cond_3
    iget p3, p4, Landroidx/media3/common/r;->v:I

    .line 55
    .line 56
    if-eq p3, p5, :cond_4

    .line 57
    .line 58
    invoke-static {p1, p3}, Lx1/f2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 59
    .line 60
    .line 61
    :cond_4
    iget p3, p4, Landroidx/media3/common/r;->w:I

    .line 62
    .line 63
    if-eq p3, p5, :cond_5

    .line 64
    .line 65
    invoke-static {p1, p3}, Lx1/h2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 66
    .line 67
    .line 68
    :cond_5
    iget p3, p4, Landroidx/media3/common/r;->E:I

    .line 69
    .line 70
    if-eq p3, p5, :cond_6

    .line 71
    .line 72
    invoke-static {p1, p3}, Lx1/i2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 73
    .line 74
    .line 75
    :cond_6
    iget p3, p4, Landroidx/media3/common/r;->F:I

    .line 76
    .line 77
    if-eq p3, p5, :cond_7

    .line 78
    .line 79
    invoke-static {p1, p3}, Lx1/u3;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 80
    .line 81
    .line 82
    :cond_7
    iget-object p3, p4, Landroidx/media3/common/r;->d:Ljava/lang/String;

    .line 83
    .line 84
    if-eqz p3, :cond_8

    .line 85
    .line 86
    invoke-static {p3}, Lx1/b4;->K0(Ljava/lang/String;)Landroid/util/Pair;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    iget-object p5, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p5, Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {p1, p5}, Lx1/v3;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 95
    .line 96
    .line 97
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 98
    .line 99
    if-eqz p3, :cond_8

    .line 100
    .line 101
    check-cast p3, Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {p1, p3}, Lx1/w1;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 104
    .line 105
    .line 106
    :cond_8
    iget p3, p4, Landroidx/media3/common/r;->x:F

    .line 107
    .line 108
    const/high16 p4, -0x40800000    # -1.0f

    .line 109
    .line 110
    cmpl-float p4, p3, p4

    .line 111
    .line 112
    if-eqz p4, :cond_a

    .line 113
    .line 114
    invoke-static {p1, p3}, Lx1/x1;->a(Landroid/media/metrics/TrackChangeEvent$Builder;F)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_9
    const/4 p3, 0x0

    .line 119
    invoke-static {p1, p3}, Lx1/y1;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 120
    .line 121
    .line 122
    :cond_a
    :goto_0
    iput-boolean p2, p0, Lx1/b4;->B:Z

    .line 123
    .line 124
    invoke-static {p1}, Lx1/z1;->a(Landroid/media/metrics/TrackChangeEvent$Builder;)Landroid/media/metrics/TrackChangeEvent;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iget-object p2, p0, Lx1/b4;->b:Ljava/util/concurrent/Executor;

    .line 129
    .line 130
    new-instance p3, Lx1/w3;

    .line 131
    .line 132
    invoke-direct {p3, p0, p1}, Lx1/w3;-><init>(Lx1/b4;Landroid/media/metrics/TrackChangeEvent;)V

    .line 133
    .line 134
    .line 135
    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method private f1(Landroidx/media3/common/a0;)I
    .locals 4

    .line 1
    invoke-interface {p1}, Landroidx/media3/common/a0;->getPlaybackState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lx1/b4;->v:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x5

    .line 10
    return p1

    .line 11
    :cond_0
    iget-boolean v1, p0, Lx1/b4;->x:Z

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const/16 p1, 0xd

    .line 16
    .line 17
    return p1

    .line 18
    :cond_1
    const/4 v1, 0x4

    .line 19
    if-ne v0, v1, :cond_2

    .line 20
    .line 21
    const/16 p1, 0xb

    .line 22
    .line 23
    return p1

    .line 24
    :cond_2
    const/16 v2, 0xc

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    if-ne v0, v3, :cond_7

    .line 28
    .line 29
    iget v0, p0, Lx1/b4;->m:I

    .line 30
    .line 31
    if-eqz v0, :cond_6

    .line 32
    .line 33
    if-eq v0, v3, :cond_6

    .line 34
    .line 35
    if-ne v0, v2, :cond_3

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    invoke-interface {p1}, Landroidx/media3/common/a0;->getPlayWhenReady()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_4

    .line 43
    .line 44
    const/4 p1, 0x7

    .line 45
    return p1

    .line 46
    :cond_4
    invoke-interface {p1}, Landroidx/media3/common/a0;->k()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_5

    .line 51
    .line 52
    const/16 p1, 0xa

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    const/4 p1, 0x6

    .line 56
    :goto_0
    return p1

    .line 57
    :cond_6
    :goto_1
    return v3

    .line 58
    :cond_7
    const/4 v3, 0x3

    .line 59
    if-ne v0, v3, :cond_a

    .line 60
    .line 61
    invoke-interface {p1}, Landroidx/media3/common/a0;->getPlayWhenReady()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_8

    .line 66
    .line 67
    return v1

    .line 68
    :cond_8
    invoke-interface {p1}, Landroidx/media3/common/a0;->k()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_9

    .line 73
    .line 74
    const/16 v3, 0x9

    .line 75
    .line 76
    :cond_9
    return v3

    .line 77
    :cond_a
    const/4 p1, 0x1

    .line 78
    if-ne v0, p1, :cond_b

    .line 79
    .line 80
    iget p1, p0, Lx1/b4;->m:I

    .line 81
    .line 82
    if-eqz p1, :cond_b

    .line 83
    .line 84
    return v2

    .line 85
    :cond_b
    iget p1, p0, Lx1/b4;->m:I

    .line 86
    .line 87
    return p1
.end method

.method public static synthetic y0(Lx1/b4;Landroid/media/metrics/PlaybackErrorEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lx1/b4;->R0(Landroid/media/metrics/PlaybackErrorEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z0(Lx1/b4;Landroid/media/metrics/PlaybackMetrics;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lx1/b4;->P0(Landroid/media/metrics/PlaybackMetrics;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public synthetic A(Lx1/c$a;Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lx1/b;->l0(Lx1/c;Lx1/c$a;Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic B(Lx1/c$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->d(Lx1/c;Lx1/c$a;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic C(Lx1/c$a;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->D(Lx1/c;Lx1/c$a;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public D(Lx1/c$a;Landroidx/media3/exoplayer/j;)V
    .locals 1

    .line 1
    iget p1, p0, Lx1/b4;->y:I

    .line 2
    .line 3
    iget v0, p2, Landroidx/media3/exoplayer/j;->g:I

    .line 4
    .line 5
    add-int/2addr p1, v0

    .line 6
    iput p1, p0, Lx1/b4;->y:I

    .line 7
    .line 8
    iget p1, p0, Lx1/b4;->z:I

    .line 9
    .line 10
    iget p2, p2, Landroidx/media3/exoplayer/j;->e:I

    .line 11
    .line 12
    add-int/2addr p1, p2

    .line 13
    iput p1, p0, Lx1/b4;->z:I

    .line 14
    .line 15
    return-void
.end method

.method public synthetic E(Lx1/c$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lx1/b;->t(Lx1/c;Lx1/c$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic F(Lx1/c$a;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->C(Lx1/c;Lx1/c$a;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic G(Lx1/c$a;Landroidx/media3/common/PlaybackException;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->Q(Lx1/c;Lx1/c$a;Landroidx/media3/common/PlaybackException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic H(Lx1/c$a;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->a(Lx1/c;Lx1/c$a;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic I(Lx1/c$a;IIIF)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lx1/b;->m0(Lx1/c;Lx1/c$a;IIIF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic J(Lx1/c$a;Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lx1/b;->U(Lx1/c;Lx1/c$a;Ljava/lang/Object;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic K(Lx1/c$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lx1/b;->z(Lx1/c;Lx1/c$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic L(Lx1/c$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->i0(Lx1/c;Lx1/c$a;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public L0()Landroid/media/metrics/LogSessionId;
    .locals 1

    .line 1
    iget-object v0, p0, Lx1/b4;->d:Landroid/media/metrics/PlaybackSession;

    .line 2
    .line 3
    invoke-static {v0}, Lx1/h3;->a(Landroid/media/metrics/PlaybackSession;)Landroid/media/metrics/LogSessionId;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public synthetic M(Lx1/c$a;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->I(Lx1/c;Lx1/c$a;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic N(Lx1/c$a;Landroidx/media3/exoplayer/audio/AudioSink$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->k(Lx1/c;Lx1/c$a;Landroidx/media3/exoplayer/audio/AudioSink$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic O(Lx1/c$a;JI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lx1/b;->k0(Lx1/c;Lx1/c$a;JI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic P(Lx1/c$a;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->x(Lx1/c;Lx1/c$a;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic Q(Lx1/c$a;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->y(Lx1/c;Lx1/c$a;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic R(Lx1/c$a;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->P(Lx1/c;Lx1/c$a;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic S(Lx1/c$a;Landroidx/media3/exoplayer/j;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->f(Lx1/c;Lx1/c$a;Landroidx/media3/exoplayer/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic T(Lx1/c$a;ZI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lx1/b;->S(Lx1/c;Lx1/c$a;ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic U(Lx1/c$a;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->f0(Lx1/c;Lx1/c$a;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic V(Lx1/c$a;Landroidx/media3/common/z;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->N(Lx1/c;Lx1/c$a;Landroidx/media3/common/z;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic W(Lx1/c$a;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lx1/b;->g0(Lx1/c;Lx1/c$a;Ljava/lang/String;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic X(Lx1/c$a;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->Y(Lx1/c;Lx1/c$a;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic Y(Lx1/c$a;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lx1/b;->h(Lx1/c;Lx1/c$a;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic Z(Lx1/c$a;Landroidx/media3/common/i0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->d0(Lx1/c;Lx1/c$a;Landroidx/media3/common/i0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic a(Lx1/c$a;IZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lx1/b;->s(Lx1/c;Lx1/c$a;IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic a0(Lx1/c$a;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lx1/b;->b(Lx1/c;Lx1/c$a;Ljava/lang/String;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic b(Lx1/c$a;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->T(Lx1/c;Lx1/c$a;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic b0(Lx1/c$a;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->i(Lx1/c;Lx1/c$a;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic c(Lx1/c$a;Landroidx/media3/exoplayer/j;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->e(Lx1/c;Lx1/c$a;Landroidx/media3/exoplayer/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic c0(Lx1/c$a;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->O(Lx1/c;Lx1/c$a;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic d(Lx1/c$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lx1/b;->v(Lx1/c;Lx1/c$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic d0(Lx1/c$a;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lx1/b;->a0(Lx1/c;Lx1/c$a;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic e(Lx1/c$a;Lf2/i;Lf2/j;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lx1/b;->H(Lx1/c;Lx1/c$a;Lf2/i;Lf2/j;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic e0(Lx1/c$a;ZI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lx1/b;->M(Lx1/c;Lx1/c$a;ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic f(Lx1/c$a;Lf2/i;Lf2/j;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lx1/b;->F(Lx1/c;Lx1/c$a;Lf2/i;Lf2/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic f0(Lx1/c$a;Landroidx/media3/common/v;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->K(Lx1/c;Lx1/c$a;Landroidx/media3/common/v;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public g(Landroidx/media3/common/a0;Lx1/c$b;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lx1/c$b;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0, p2}, Lx1/b4;->U0(Lx1/c$b;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-direct {p0, p1, p2}, Lx1/b4;->a1(Landroidx/media3/common/a0;Lx1/c$b;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0, v1}, Lx1/b4;->W0(J)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1, p2, v0, v1}, Lx1/b4;->Y0(Landroidx/media3/common/a0;Lx1/c$b;J)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0, v1}, Lx1/b4;->V0(J)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1, p2, v0, v1}, Lx1/b4;->X0(Landroidx/media3/common/a0;Lx1/c$b;J)V

    .line 28
    .line 29
    .line 30
    const/16 p1, 0x404

    .line 31
    .line 32
    invoke-virtual {p2, p1}, Lx1/c$b;->a(I)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lx1/b4;->c:Lx1/c4;

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Lx1/c$b;->c(I)Lx1/c$a;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {v0, p1}, Lx1/c4;->d(Lx1/c$a;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public synthetic g0(Lx1/c$a;Landroidx/media3/common/m;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->r(Lx1/c;Lx1/c$a;Landroidx/media3/common/m;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic h(Lx1/c$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lx1/b;->u(Lx1/c;Lx1/c$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic h0(Lx1/c$a;Landroidx/media3/common/t;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lx1/b;->J(Lx1/c;Lx1/c$a;Landroidx/media3/common/t;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public i(Lx1/c$a;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p1, p1, Lx1/c$a;->d:Landroidx/media3/exoplayer/source/r$b;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_2

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lx1/b4;->j:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-direct {p0}, Lx1/b4;->F0()V

    .line 21
    .line 22
    .line 23
    :cond_2
    :goto_0
    iget-object p1, p0, Lx1/b4;->h:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lx1/b4;->i:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public synthetic i0(Lx1/c$a;Landroidx/media3/common/a0$b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->n(Lx1/c;Lx1/c$a;Landroidx/media3/common/a0$b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic j(Lx1/c$a;F)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->n0(Lx1/c;Lx1/c$a;F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic j0(Lx1/c$a;Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lx1/b;->h0(Lx1/c;Lx1/c$a;Ljava/lang/String;JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic k(Lx1/c$a;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->W(Lx1/c;Lx1/c$a;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic k0(Lx1/c$a;Landroidx/media3/common/h0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->c0(Lx1/c;Lx1/c$a;Landroidx/media3/common/h0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic l(Lx1/c$a;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->j(Lx1/c;Lx1/c$a;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public l0(Lx1/c$a;Landroidx/media3/common/a0$e;Landroidx/media3/common/a0$e;I)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    if-ne p4, p1, :cond_0

    .line 3
    .line 4
    iput-boolean p1, p0, Lx1/b4;->v:Z

    .line 5
    .line 6
    :cond_0
    iput p4, p0, Lx1/b4;->l:I

    .line 7
    .line 8
    return-void
.end method

.method public synthetic m(Lx1/c$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lx1/b;->X(Lx1/c;Lx1/c$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic m0(Lx1/c$a;Lf2/i;Lf2/j;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lx1/b;->G(Lx1/c;Lx1/c$a;Lf2/i;Lf2/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic n(Lx1/c$a;Landroidx/media3/exoplayer/j;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->j0(Lx1/c;Lx1/c$a;Landroidx/media3/exoplayer/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic n0(Lx1/c$a;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->b0(Lx1/c;Lx1/c$a;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic o(Lx1/c$a;Lu1/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->q(Lx1/c;Lx1/c$a;Lu1/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public o0(Lx1/c$a;Landroidx/media3/common/m0;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lx1/b4;->p:Lx1/b4$b;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p1, Lx1/b4$b;->a:Landroidx/media3/common/r;

    .line 6
    .line 7
    iget v1, v0, Landroidx/media3/common/r;->w:I

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v1, p2, Landroidx/media3/common/m0;->a:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->B0(I)Landroidx/media3/common/r$b;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget p2, p2, Landroidx/media3/common/m0;->b:I

    .line 23
    .line 24
    invoke-virtual {v0, p2}, Landroidx/media3/common/r$b;->d0(I)Landroidx/media3/common/r$b;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p2}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    new-instance v0, Lx1/b4$b;

    .line 33
    .line 34
    iget v1, p1, Lx1/b4$b;->b:I

    .line 35
    .line 36
    iget-object p1, p1, Lx1/b4$b;->c:Ljava/lang/String;

    .line 37
    .line 38
    invoke-direct {v0, p2, v1, p1}, Lx1/b4$b;-><init>(Landroidx/media3/common/r;ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lx1/b4;->p:Lx1/b4$b;

    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public synthetic p(Lx1/c$a;IJ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lx1/b;->A(Lx1/c;Lx1/c$a;IJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public p0(Lx1/c$a;Lf2/i;Lf2/j;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    iget p1, p3, Lf2/j;->a:I

    .line 2
    .line 3
    iput p1, p0, Lx1/b4;->w:I

    .line 4
    .line 5
    return-void
.end method

.method public synthetic q(Lx1/c$a;IJJ)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lx1/b;->m(Lx1/c;Lx1/c$a;IJJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic q0(Lx1/c$a;Lf2/i;Lf2/j;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lx1/b;->E(Lx1/c;Lx1/c$a;Lf2/i;Lf2/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic r(Lx1/c$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lx1/b;->w(Lx1/c;Lx1/c$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic r0(Lx1/c$a;Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lx1/b;->g(Lx1/c;Lx1/c$a;Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public s(Lx1/c$a;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lx1/c$a;->d:Landroidx/media3/exoplayer/source/r$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-direct {p0}, Lx1/b4;->F0()V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lx1/b4;->j:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {}, Lx1/r2;->a()Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const-string v0, "AndroidXMedia3"

    .line 22
    .line 23
    invoke-static {p2, v0}, Lx1/o2;->a(Landroid/media/metrics/PlaybackMetrics$Builder;Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const-string v0, "1.7.1"

    .line 28
    .line 29
    invoke-static {p2, v0}, Lx1/p2;->a(Landroid/media/metrics/PlaybackMetrics$Builder;Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iput-object p2, p0, Lx1/b4;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 34
    .line 35
    iget-object p2, p1, Lx1/c$a;->b:Landroidx/media3/common/e0;

    .line 36
    .line 37
    iget-object p1, p1, Lx1/c$a;->d:Landroidx/media3/exoplayer/source/r$b;

    .line 38
    .line 39
    invoke-direct {p0, p2, p1}, Lx1/b4;->c1(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public s0(Lx1/c$a;Landroidx/media3/common/PlaybackException;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lx1/b4;->o:Landroidx/media3/common/PlaybackException;

    .line 2
    .line 3
    return-void
.end method

.method public t(Lx1/c$a;Lf2/j;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lx1/c$a;->d:Landroidx/media3/exoplayer/source/r$b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lx1/b4$b;

    .line 7
    .line 8
    iget-object v1, p2, Lf2/j;->c:Landroidx/media3/common/r;

    .line 9
    .line 10
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroidx/media3/common/r;

    .line 15
    .line 16
    iget v2, p2, Lf2/j;->d:I

    .line 17
    .line 18
    iget-object v3, p0, Lx1/b4;->c:Lx1/c4;

    .line 19
    .line 20
    iget-object v4, p1, Lx1/c$a;->b:Landroidx/media3/common/e0;

    .line 21
    .line 22
    iget-object p1, p1, Lx1/c$a;->d:Landroidx/media3/exoplayer/source/r$b;

    .line 23
    .line 24
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroidx/media3/exoplayer/source/r$b;

    .line 29
    .line 30
    invoke-interface {v3, v4, p1}, Lx1/c4;->b(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, v1, v2, p1}, Lx1/b4$b;-><init>(Landroidx/media3/common/r;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget p1, p2, Lf2/j;->b:I

    .line 38
    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    const/4 p2, 0x1

    .line 42
    if-eq p1, p2, :cond_2

    .line 43
    .line 44
    const/4 p2, 0x2

    .line 45
    if-eq p1, p2, :cond_3

    .line 46
    .line 47
    const/4 p2, 0x3

    .line 48
    if-eq p1, p2, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iput-object v0, p0, Lx1/b4;->r:Lx1/b4$b;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iput-object v0, p0, Lx1/b4;->q:Lx1/b4$b;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    iput-object v0, p0, Lx1/b4;->p:Lx1/b4$b;

    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method public synthetic t0(Lx1/c$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lx1/b;->R(Lx1/c;Lx1/c$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic u(Lx1/c$a;Lf2/j;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->e0(Lx1/c;Lx1/c$a;Lf2/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic u0(Lx1/c$a;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->Z(Lx1/c;Lx1/c$a;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public v(Lx1/c$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public synthetic v0(Lx1/c$a;IIZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lx1/b;->V(Lx1/c;Lx1/c$a;IIZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic w(Lx1/c$a;Landroidx/media3/common/x;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->L(Lx1/c;Lx1/c$a;Landroidx/media3/common/x;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic w0(Lx1/c$a;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->p(Lx1/c;Lx1/c$a;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic x(Lx1/c$a;Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lx1/b;->c(Lx1/c;Lx1/c$a;Ljava/lang/String;JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public x0(Lx1/c$a;IJJ)V
    .locals 5

    .line 1
    iget-object p5, p1, Lx1/c$a;->d:Landroidx/media3/exoplayer/source/r$b;

    .line 2
    .line 3
    if-eqz p5, :cond_2

    .line 4
    .line 5
    iget-object p6, p0, Lx1/b4;->c:Lx1/c4;

    .line 6
    .line 7
    iget-object p1, p1, Lx1/c$a;->b:Landroidx/media3/common/e0;

    .line 8
    .line 9
    invoke-static {p5}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p5

    .line 13
    check-cast p5, Landroidx/media3/exoplayer/source/r$b;

    .line 14
    .line 15
    invoke-interface {p6, p1, p5}, Lx1/c4;->b(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p5, p0, Lx1/b4;->i:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {p5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p5

    .line 25
    check-cast p5, Ljava/lang/Long;

    .line 26
    .line 27
    iget-object p6, p0, Lx1/b4;->h:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {p6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p6

    .line 33
    check-cast p6, Ljava/lang/Long;

    .line 34
    .line 35
    iget-object v0, p0, Lx1/b4;->i:Ljava/util/HashMap;

    .line 36
    .line 37
    const-wide/16 v1, 0x0

    .line 38
    .line 39
    if-nez p5, :cond_0

    .line 40
    .line 41
    move-wide v3, v1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    :goto_0
    add-long/2addr v3, p3

    .line 48
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    iget-object p3, p0, Lx1/b4;->h:Ljava/util/HashMap;

    .line 56
    .line 57
    if-nez p6, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    :goto_1
    int-to-long p4, p2

    .line 65
    add-long/2addr v1, p4

    .line 66
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :cond_2
    return-void
.end method

.method public y(Lx1/c$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public synthetic z(Lx1/c$a;Landroidx/media3/exoplayer/audio/AudioSink$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx1/b;->l(Lx1/c;Lx1/c$a;Landroidx/media3/exoplayer/audio/AudioSink$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
