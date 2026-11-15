.class public final Landroidx/media3/exoplayer/hls/HlsMediaSource;
.super Landroidx/media3/exoplayer/source/a;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;
    }
.end annotation


# instance fields
.field private final h:Landroidx/media3/exoplayer/hls/g;

.field private final i:Landroidx/media3/exoplayer/hls/f;

.field private final j:Lf2/e;

.field private final k:Landroidx/media3/exoplayer/drm/t;

.field private final l:Landroidx/media3/exoplayer/upstream/m;

.field private final m:Z

.field private final n:I

.field private final o:Z

.field private final p:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

.field private final q:J

.field private final r:J

.field private s:Landroidx/media3/common/t$g;

.field private t:Lw1/n;

.field private u:Landroidx/media3/common/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "media3.exoplayer.hls"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/u;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/t;Landroidx/media3/exoplayer/hls/f;Landroidx/media3/exoplayer/hls/g;Lf2/e;Landroidx/media3/exoplayer/upstream/f;Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/upstream/m;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;JZIZJ)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    .line 2
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/a;-><init>()V

    .line 3
    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->u:Landroidx/media3/common/t;

    .line 4
    iget-object v1, v1, Landroidx/media3/common/t;->d:Landroidx/media3/common/t$g;

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->s:Landroidx/media3/common/t$g;

    move-object v1, p2

    .line 5
    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->i:Landroidx/media3/exoplayer/hls/f;

    move-object v1, p3

    .line 6
    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->h:Landroidx/media3/exoplayer/hls/g;

    move-object v1, p4

    .line 7
    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->j:Lf2/e;

    move-object v1, p6

    .line 8
    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->k:Landroidx/media3/exoplayer/drm/t;

    move-object v1, p7

    .line 9
    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->l:Landroidx/media3/exoplayer/upstream/m;

    move-object v1, p8

    .line 10
    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->p:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    move-wide v1, p9

    .line 11
    iput-wide v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->q:J

    move v1, p11

    .line 12
    iput-boolean v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->m:Z

    move v1, p12

    .line 13
    iput v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->n:I

    move/from16 v1, p13

    .line 14
    iput-boolean v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->o:Z

    move-wide/from16 v1, p14

    .line 15
    iput-wide v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->r:J

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/t;Landroidx/media3/exoplayer/hls/f;Landroidx/media3/exoplayer/hls/g;Lf2/e;Landroidx/media3/exoplayer/upstream/f;Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/upstream/m;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;JZIZJLandroidx/media3/exoplayer/hls/HlsMediaSource$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p15}, Landroidx/media3/exoplayer/hls/HlsMediaSource;-><init>(Landroidx/media3/common/t;Landroidx/media3/exoplayer/hls/f;Landroidx/media3/exoplayer/hls/g;Lf2/e;Landroidx/media3/exoplayer/upstream/f;Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/upstream/m;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;JZIZJ)V

    return-void
.end method

.method private C(Landroidx/media3/exoplayer/hls/playlist/c;JJLandroidx/media3/exoplayer/hls/h;)Lf2/w;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-wide v2, v1, Landroidx/media3/exoplayer/hls/playlist/c;->h:J

    .line 6
    .line 7
    iget-object v4, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->p:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 8
    .line 9
    invoke-interface {v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->b()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    sub-long v17, v2, v4

    .line 14
    .line 15
    iget-boolean v2, v1, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    .line 16
    .line 17
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iget-wide v5, v1, Landroidx/media3/exoplayer/hls/playlist/c;->u:J

    .line 25
    .line 26
    add-long v5, v17, v5

    .line 27
    .line 28
    move-wide v13, v5

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-wide v13, v3

    .line 31
    :goto_0
    invoke-direct/range {p0 .. p1}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->G(Landroidx/media3/exoplayer/hls/playlist/c;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v11

    .line 35
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->s:Landroidx/media3/common/t$g;

    .line 36
    .line 37
    iget-wide v5, v2, Landroidx/media3/common/t$g;->a:J

    .line 38
    .line 39
    cmp-long v2, v5, v3

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-static {v5, v6}, Landroidx/media3/common/util/a1;->R0(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    :goto_1
    move-wide v5, v2

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    invoke-static {v1, v11, v12}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->I(Landroidx/media3/exoplayer/hls/playlist/c;J)J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    goto :goto_1

    .line 54
    :goto_2
    iget-wide v2, v1, Landroidx/media3/exoplayer/hls/playlist/c;->u:J

    .line 55
    .line 56
    add-long v9, v2, v11

    .line 57
    .line 58
    move-wide v7, v11

    .line 59
    invoke-static/range {v5 .. v10}, Landroidx/media3/common/util/a1;->q(JJJ)J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->J(Landroidx/media3/exoplayer/hls/playlist/c;J)V

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, v1, v11, v12}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->H(Landroidx/media3/exoplayer/hls/playlist/c;J)J

    .line 67
    .line 68
    .line 69
    move-result-wide v19

    .line 70
    iget v2, v1, Landroidx/media3/exoplayer/hls/playlist/c;->d:I

    .line 71
    .line 72
    const/4 v3, 0x2

    .line 73
    const/4 v4, 0x1

    .line 74
    if-ne v2, v3, :cond_2

    .line 75
    .line 76
    iget-boolean v2, v1, Landroidx/media3/exoplayer/hls/playlist/c;->f:Z

    .line 77
    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    move/from16 v23, v4

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_2
    const/4 v2, 0x0

    .line 84
    move/from16 v23, v2

    .line 85
    .line 86
    :goto_3
    new-instance v2, Lf2/w;

    .line 87
    .line 88
    iget-wide v9, v1, Landroidx/media3/exoplayer/hls/playlist/c;->u:J

    .line 89
    .line 90
    iget-boolean v1, v1, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    .line 91
    .line 92
    xor-int/lit8 v22, v1, 0x1

    .line 93
    .line 94
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->a()Landroidx/media3/common/t;

    .line 95
    .line 96
    .line 97
    move-result-object v25

    .line 98
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->s:Landroidx/media3/common/t$g;

    .line 99
    .line 100
    move-object/from16 v26, v1

    .line 101
    .line 102
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    const/16 v21, 0x1

    .line 108
    .line 109
    move-object v6, v2

    .line 110
    move-wide/from16 v7, p2

    .line 111
    .line 112
    move-wide v3, v9

    .line 113
    move-wide/from16 v9, p4

    .line 114
    .line 115
    move-wide v15, v3

    .line 116
    move-object/from16 v24, p6

    .line 117
    .line 118
    invoke-direct/range {v6 .. v26}, Lf2/w;-><init>(JJJJJJJZZZLjava/lang/Object;Landroidx/media3/common/t;Landroidx/media3/common/t$g;)V

    .line 119
    .line 120
    .line 121
    return-object v2
.end method

.method private D(Landroidx/media3/exoplayer/hls/playlist/c;JJLandroidx/media3/exoplayer/hls/h;)Lf2/w;
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->e:J

    .line 4
    .line 5
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v1, v1, v3

    .line 11
    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->g:Z

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->e:J

    .line 28
    .line 29
    iget-wide v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->u:J

    .line 30
    .line 31
    cmp-long v3, v1, v3

    .line 32
    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 37
    .line 38
    invoke-static {v3, v1, v2}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->F(Ljava/util/List;J)Landroidx/media3/exoplayer/hls/playlist/c$f;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-wide v1, v1, Landroidx/media3/exoplayer/hls/playlist/c$g;->e:J

    .line 43
    .line 44
    :goto_0
    move-wide/from16 v16, v1

    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_2
    :goto_1
    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->e:J

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    :goto_2
    const-wide/16 v1, 0x0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :goto_3
    new-instance v1, Lf2/w;

    .line 54
    .line 55
    move-object v3, v1

    .line 56
    iget-wide v10, v0, Landroidx/media3/exoplayer/hls/playlist/c;->u:J

    .line 57
    .line 58
    move-wide v12, v10

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->a()Landroidx/media3/common/t;

    .line 60
    .line 61
    .line 62
    move-result-object v22

    .line 63
    const/16 v23, 0x0

    .line 64
    .line 65
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    const-wide/16 v14, 0x0

    .line 71
    .line 72
    const/16 v18, 0x1

    .line 73
    .line 74
    const/16 v19, 0x0

    .line 75
    .line 76
    const/16 v20, 0x1

    .line 77
    .line 78
    move-wide/from16 v4, p2

    .line 79
    .line 80
    move-wide/from16 v6, p4

    .line 81
    .line 82
    move-object/from16 v21, p6

    .line 83
    .line 84
    invoke-direct/range {v3 .. v23}, Lf2/w;-><init>(JJJJJJJZZZLjava/lang/Object;Landroidx/media3/common/t;Landroidx/media3/common/t$g;)V

    .line 85
    .line 86
    .line 87
    return-object v1
.end method

.method private static E(Ljava/util/List;J)Landroidx/media3/exoplayer/hls/playlist/c$d;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_2

    .line 8
    .line 9
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroidx/media3/exoplayer/hls/playlist/c$d;

    .line 14
    .line 15
    iget-wide v3, v2, Landroidx/media3/exoplayer/hls/playlist/c$g;->e:J

    .line 16
    .line 17
    cmp-long v5, v3, p1

    .line 18
    .line 19
    if-gtz v5, :cond_0

    .line 20
    .line 21
    iget-boolean v5, v2, Landroidx/media3/exoplayer/hls/playlist/c$d;->l:Z

    .line 22
    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    move-object v0, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    cmp-long v2, v3, p1

    .line 28
    .line 29
    if-lez v2, :cond_1

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    :goto_2
    return-object v0
.end method

.method private static F(Ljava/util/List;J)Landroidx/media3/exoplayer/hls/playlist/c$f;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x1

    .line 6
    invoke-static {p0, p1, p2, p2}, Landroidx/media3/common/util/a1;->f(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroidx/media3/exoplayer/hls/playlist/c$f;

    .line 15
    .line 16
    return-object p0
.end method

.method private G(Landroidx/media3/exoplayer/hls/playlist/c;)J
    .locals 4

    .line 1
    iget-boolean v0, p1, Landroidx/media3/exoplayer/hls/playlist/c;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->q:J

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->h0(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->R0(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-virtual {p1}, Landroidx/media3/exoplayer/hls/playlist/c;->d()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    sub-long/2addr v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    :goto_0
    return-wide v0
.end method

.method private H(Landroidx/media3/exoplayer/hls/playlist/c;J)J
    .locals 4

    .line 1
    iget-wide v0, p1, Landroidx/media3/exoplayer/hls/playlist/c;->e:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-wide v0, p1, Landroidx/media3/exoplayer/hls/playlist/c;->u:J

    .line 14
    .line 15
    add-long/2addr v0, p2

    .line 16
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->s:Landroidx/media3/common/t$g;

    .line 17
    .line 18
    iget-wide p2, p2, Landroidx/media3/common/t$g;->a:J

    .line 19
    .line 20
    invoke-static {p2, p3}, Landroidx/media3/common/util/a1;->R0(J)J

    .line 21
    .line 22
    .line 23
    move-result-wide p2

    .line 24
    sub-long/2addr v0, p2

    .line 25
    :goto_0
    iget-boolean p2, p1, Landroidx/media3/exoplayer/hls/playlist/c;->g:Z

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    return-wide v0

    .line 30
    :cond_1
    iget-object p2, p1, Landroidx/media3/exoplayer/hls/playlist/c;->s:Ljava/util/List;

    .line 31
    .line 32
    invoke-static {p2, v0, v1}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->E(Ljava/util/List;J)Landroidx/media3/exoplayer/hls/playlist/c$d;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    iget-wide p1, p2, Landroidx/media3/exoplayer/hls/playlist/c$g;->e:J

    .line 39
    .line 40
    return-wide p1

    .line 41
    :cond_2
    iget-object p2, p1, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_3

    .line 48
    .line 49
    const-wide/16 p1, 0x0

    .line 50
    .line 51
    return-wide p1

    .line 52
    :cond_3
    iget-object p1, p1, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 53
    .line 54
    invoke-static {p1, v0, v1}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->F(Ljava/util/List;J)Landroidx/media3/exoplayer/hls/playlist/c$f;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object p2, p1, Landroidx/media3/exoplayer/hls/playlist/c$f;->m:Ljava/util/List;

    .line 59
    .line 60
    invoke-static {p2, v0, v1}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->E(Ljava/util/List;J)Landroidx/media3/exoplayer/hls/playlist/c$d;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    if-eqz p2, :cond_4

    .line 65
    .line 66
    iget-wide p1, p2, Landroidx/media3/exoplayer/hls/playlist/c$g;->e:J

    .line 67
    .line 68
    return-wide p1

    .line 69
    :cond_4
    iget-wide p1, p1, Landroidx/media3/exoplayer/hls/playlist/c$g;->e:J

    .line 70
    .line 71
    return-wide p1
.end method

.method private static I(Landroidx/media3/exoplayer/hls/playlist/c;J)J
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/c;->v:Landroidx/media3/exoplayer/hls/playlist/c$h;

    .line 2
    .line 3
    iget-wide v1, p0, Landroidx/media3/exoplayer/hls/playlist/c;->e:J

    .line 4
    .line 5
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v5, v1, v3

    .line 11
    .line 12
    if-eqz v5, :cond_0

    .line 13
    .line 14
    iget-wide v3, p0, Landroidx/media3/exoplayer/hls/playlist/c;->u:J

    .line 15
    .line 16
    sub-long/2addr v3, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$h;->d:J

    .line 19
    .line 20
    cmp-long v5, v1, v3

    .line 21
    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    iget-wide v5, p0, Landroidx/media3/exoplayer/hls/playlist/c;->n:J

    .line 25
    .line 26
    cmp-long v5, v5, v3

    .line 27
    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    move-wide v3, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-wide v0, v0, Landroidx/media3/exoplayer/hls/playlist/c$h;->c:J

    .line 33
    .line 34
    cmp-long v2, v0, v3

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    move-wide v3, v0

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const-wide/16 v0, 0x3

    .line 41
    .line 42
    iget-wide v2, p0, Landroidx/media3/exoplayer/hls/playlist/c;->m:J

    .line 43
    .line 44
    mul-long v3, v2, v0

    .line 45
    .line 46
    :goto_0
    add-long/2addr v3, p1

    .line 47
    return-wide v3
.end method

.method private J(Landroidx/media3/exoplayer/hls/playlist/c;J)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->a()Landroidx/media3/common/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroidx/media3/common/t;->d:Landroidx/media3/common/t$g;

    .line 6
    .line 7
    iget v1, v0, Landroidx/media3/common/t$g;->d:F

    .line 8
    .line 9
    const v2, -0x800001

    .line 10
    .line 11
    .line 12
    cmpl-float v1, v1, v2

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget v0, v0, Landroidx/media3/common/t$g;->e:F

    .line 17
    .line 18
    cmpl-float v0, v0, v2

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object p1, p1, Landroidx/media3/exoplayer/hls/playlist/c;->v:Landroidx/media3/exoplayer/hls/playlist/c$h;

    .line 23
    .line 24
    iget-wide v0, p1, Landroidx/media3/exoplayer/hls/playlist/c$h;->c:J

    .line 25
    .line 26
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    cmp-long v0, v0, v2

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    iget-wide v0, p1, Landroidx/media3/exoplayer/hls/playlist/c$h;->d:J

    .line 36
    .line 37
    cmp-long p1, v0, v2

    .line 38
    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    :goto_0
    new-instance v0, Landroidx/media3/common/t$g$a;

    .line 45
    .line 46
    invoke-direct {v0}, Landroidx/media3/common/t$g$a;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-static {p2, p3}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 50
    .line 51
    .line 52
    move-result-wide p2

    .line 53
    invoke-virtual {v0, p2, p3}, Landroidx/media3/common/t$g$a;->k(J)Landroidx/media3/common/t$g$a;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const/high16 p3, 0x3f800000    # 1.0f

    .line 58
    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    move v0, p3

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->s:Landroidx/media3/common/t$g;

    .line 64
    .line 65
    iget v0, v0, Landroidx/media3/common/t$g;->d:F

    .line 66
    .line 67
    :goto_1
    invoke-virtual {p2, v0}, Landroidx/media3/common/t$g$a;->j(F)Landroidx/media3/common/t$g$a;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->s:Landroidx/media3/common/t$g;

    .line 75
    .line 76
    iget p3, p1, Landroidx/media3/common/t$g;->e:F

    .line 77
    .line 78
    :goto_2
    invoke-virtual {p2, p3}, Landroidx/media3/common/t$g$a;->h(F)Landroidx/media3/common/t$g$a;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroidx/media3/common/t$g$a;->f()Landroidx/media3/common/t$g;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->s:Landroidx/media3/common/t$g;

    .line 87
    .line 88
    return-void
.end method


# virtual methods
.method protected B()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->p:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->stop()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->k:Landroidx/media3/exoplayer/drm/t;

    .line 7
    .line 8
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/t;->release()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public declared-synchronized a()Landroidx/media3/common/t;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->u:Landroidx/media3/common/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public f(Landroidx/media3/exoplayer/hls/playlist/c;)V
    .locals 12

    .line 1
    iget-boolean v0, p1, Landroidx/media3/exoplayer/hls/playlist/c;->p:Z

    .line 2
    .line 3
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-wide v3, p1, Landroidx/media3/exoplayer/hls/playlist/c;->h:J

    .line 11
    .line 12
    invoke-static {v3, v4}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    move-wide v9, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-wide v9, v1

    .line 19
    :goto_0
    iget v0, p1, Landroidx/media3/exoplayer/hls/playlist/c;->d:I

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    if-eq v0, v3, :cond_2

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    if-ne v0, v3, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-wide v7, v1

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    :goto_1
    move-wide v7, v9

    .line 31
    :goto_2
    new-instance v11, Landroidx/media3/exoplayer/hls/h;

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->p:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 34
    .line 35
    invoke-interface {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->c()Landroidx/media3/exoplayer/hls/playlist/d;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/d;

    .line 44
    .line 45
    invoke-direct {v11, v0, p1}, Landroidx/media3/exoplayer/hls/h;-><init>(Landroidx/media3/exoplayer/hls/playlist/d;Landroidx/media3/exoplayer/hls/playlist/c;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->p:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 49
    .line 50
    invoke-interface {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->f()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    move-object v5, p0

    .line 57
    move-object v6, p1

    .line 58
    invoke-direct/range {v5 .. v11}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->C(Landroidx/media3/exoplayer/hls/playlist/c;JJLandroidx/media3/exoplayer/hls/h;)Lf2/w;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    move-object v5, p0

    .line 64
    move-object v6, p1

    .line 65
    invoke-direct/range {v5 .. v11}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->D(Landroidx/media3/exoplayer/hls/playlist/c;JJLandroidx/media3/exoplayer/hls/h;)Lf2/w;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :goto_3
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/a;->A(Landroidx/media3/common/e0;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public g(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/upstream/b;J)Landroidx/media3/exoplayer/source/q;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v11, p2

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/source/a;->u(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/s$a;

    .line 6
    .line 7
    .line 8
    move-result-object v10

    .line 9
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/source/a;->s(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/drm/r$a;

    .line 10
    .line 11
    .line 12
    move-result-object v8

    .line 13
    new-instance v19, Landroidx/media3/exoplayer/hls/l;

    .line 14
    .line 15
    move-object/from16 v1, v19

    .line 16
    .line 17
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->h:Landroidx/media3/exoplayer/hls/g;

    .line 18
    .line 19
    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->p:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 20
    .line 21
    iget-object v4, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->i:Landroidx/media3/exoplayer/hls/f;

    .line 22
    .line 23
    iget-object v5, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->t:Lw1/n;

    .line 24
    .line 25
    iget-object v7, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->k:Landroidx/media3/exoplayer/drm/t;

    .line 26
    .line 27
    iget-object v9, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->l:Landroidx/media3/exoplayer/upstream/m;

    .line 28
    .line 29
    iget-object v12, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->j:Lf2/e;

    .line 30
    .line 31
    iget-boolean v13, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->m:Z

    .line 32
    .line 33
    iget v14, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->n:I

    .line 34
    .line 35
    iget-boolean v15, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->o:Z

    .line 36
    .line 37
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/source/a;->x()Lx1/f4;

    .line 38
    .line 39
    .line 40
    move-result-object v16

    .line 41
    move-object/from16 p1, v1

    .line 42
    .line 43
    move-object/from16 p2, v2

    .line 44
    .line 45
    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->r:J

    .line 46
    .line 47
    move-wide/from16 v17, v1

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    move-object/from16 v1, p1

    .line 51
    .line 52
    move-object/from16 v2, p2

    .line 53
    .line 54
    invoke-direct/range {v1 .. v18}, Landroidx/media3/exoplayer/hls/l;-><init>(Landroidx/media3/exoplayer/hls/g;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;Landroidx/media3/exoplayer/hls/f;Lw1/n;Landroidx/media3/exoplayer/upstream/f;Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/upstream/m;Landroidx/media3/exoplayer/source/s$a;Landroidx/media3/exoplayer/upstream/b;Lf2/e;ZIZLx1/f4;J)V

    .line 55
    .line 56
    .line 57
    return-object v19
.end method

.method public k(Landroidx/media3/exoplayer/source/q;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/hls/l;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/media3/exoplayer/hls/l;->u()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->p:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->h()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public declared-synchronized n(Landroidx/media3/common/t;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->u:Landroidx/media3/common/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public q(Landroidx/media3/common/t;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->a()Landroidx/media3/common/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    .line 6
    .line 7
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroidx/media3/common/t$h;

    .line 12
    .line 13
    iget-object v2, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object v3, v2, Landroidx/media3/common/t$h;->a:Landroid/net/Uri;

    .line 18
    .line 19
    iget-object v4, v1, Landroidx/media3/common/t$h;->a:Landroid/net/Uri;

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    iget-object v3, v2, Landroidx/media3/common/t$h;->d:Ljava/util/List;

    .line 28
    .line 29
    iget-object v4, v1, Landroidx/media3/common/t$h;->d:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    iget-object v2, v2, Landroidx/media3/common/t$h;->c:Landroidx/media3/common/t$f;

    .line 38
    .line 39
    iget-object v1, v1, Landroidx/media3/common/t$h;->c:Landroidx/media3/common/t$f;

    .line 40
    .line 41
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    iget-object v0, v0, Landroidx/media3/common/t;->d:Landroidx/media3/common/t$g;

    .line 48
    .line 49
    iget-object p1, p1, Landroidx/media3/common/t;->d:Landroidx/media3/common/t$g;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Landroidx/media3/common/t$g;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    const/4 p1, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 p1, 0x0

    .line 60
    :goto_0
    return p1
.end method

.method protected z(Lw1/n;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->t:Lw1/n;

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->k:Landroidx/media3/exoplayer/drm/t;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/os/Looper;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/a;->x()Lx1/f4;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/drm/t;->d(Landroid/os/Looper;Lx1/f4;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->k:Landroidx/media3/exoplayer/drm/t;

    .line 23
    .line 24
    invoke-interface {p1}, Landroidx/media3/exoplayer/drm/t;->prepare()V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/a;->u(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/s$a;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->p:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->a()Landroidx/media3/common/t;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v1, v1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    .line 39
    .line 40
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroidx/media3/common/t$h;

    .line 45
    .line 46
    iget-object v1, v1, Landroidx/media3/common/t$h;->a:Landroid/net/Uri;

    .line 47
    .line 48
    invoke-interface {v0, v1, p1, p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->j(Landroid/net/Uri;Landroidx/media3/exoplayer/source/s$a;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$c;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
