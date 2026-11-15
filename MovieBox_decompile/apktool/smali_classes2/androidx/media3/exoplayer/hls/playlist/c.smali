.class public final Landroidx/media3/exoplayer/hls/playlist/c;
.super Lb2/d;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/playlist/c$d;,
        Landroidx/media3/exoplayer/hls/playlist/c$f;,
        Landroidx/media3/exoplayer/hls/playlist/c$h;,
        Landroidx/media3/exoplayer/hls/playlist/c$b;,
        Landroidx/media3/exoplayer/hls/playlist/c$c;,
        Landroidx/media3/exoplayer/hls/playlist/c$e;,
        Landroidx/media3/exoplayer/hls/playlist/c$g;
    }
.end annotation


# instance fields
.field public final d:I

.field public final e:J

.field public final f:Z

.field public final g:Z

.field public final h:J

.field public final i:Z

.field public final j:I

.field public final k:J

.field public final l:I

.field public final m:J

.field public final n:J

.field public final o:Z

.field public final p:Z

.field public final q:Landroidx/media3/common/DrmInitData;

.field public final r:Ljava/util/List;

.field public final s:Ljava/util/List;

.field public final t:Ljava/util/Map;

.field public final u:J

.field public final v:Landroidx/media3/exoplayer/hls/playlist/c$h;

.field public final w:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLandroidx/media3/common/DrmInitData;Ljava/util/List;Ljava/util/List;Landroidx/media3/exoplayer/hls/playlist/c$h;Ljava/util/Map;Ljava/util/List;)V
    .locals 10

    move-object v0, p0

    move-wide v1, p4

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p18

    .line 1
    invoke-direct {p0, p2, p3, v5}, Lb2/d;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    move v3, p1

    .line 2
    iput v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->d:I

    move-wide/from16 v3, p7

    .line 3
    iput-wide v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->h:J

    move/from16 v3, p6

    .line 4
    iput-boolean v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->g:Z

    move/from16 v3, p9

    .line 5
    iput-boolean v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->i:Z

    move/from16 v3, p10

    .line 6
    iput v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->j:I

    move-wide/from16 v3, p11

    .line 7
    iput-wide v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    move/from16 v3, p13

    .line 8
    iput v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->l:I

    move-wide/from16 v3, p14

    .line 9
    iput-wide v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->m:J

    move-wide/from16 v3, p16

    .line 10
    iput-wide v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->n:J

    move/from16 v3, p19

    .line 11
    iput-boolean v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    move/from16 v3, p20

    .line 12
    iput-boolean v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->p:Z

    move-object/from16 v3, p21

    .line 13
    iput-object v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->q:Landroidx/media3/common/DrmInitData;

    .line 14
    invoke-static/range {p22 .. p22}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 15
    invoke-static/range {p23 .. p23}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->s:Ljava/util/List;

    .line 16
    invoke-static/range {p25 .. p25}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->t:Ljava/util/Map;

    .line 17
    invoke-static/range {p26 .. p26}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->w:Lcom/google/common/collect/ImmutableList;

    .line 18
    invoke-interface/range {p23 .. p23}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_0

    .line 19
    invoke-static/range {p23 .. p23}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/hls/playlist/c$d;

    .line 20
    iget-wide v6, v3, Landroidx/media3/exoplayer/hls/playlist/c$g;->e:J

    iget-wide v8, v3, Landroidx/media3/exoplayer/hls/playlist/c$g;->c:J

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroidx/media3/exoplayer/hls/playlist/c;->u:J

    goto :goto_0

    .line 21
    :cond_0
    invoke-interface/range {p22 .. p22}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 22
    invoke-static/range {p22 .. p22}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/hls/playlist/c$f;

    .line 23
    iget-wide v6, v3, Landroidx/media3/exoplayer/hls/playlist/c$g;->e:J

    iget-wide v8, v3, Landroidx/media3/exoplayer/hls/playlist/c$g;->c:J

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroidx/media3/exoplayer/hls/playlist/c;->u:J

    goto :goto_0

    .line 24
    :cond_1
    iput-wide v4, v0, Landroidx/media3/exoplayer/hls/playlist/c;->u:J

    :goto_0
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v6

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    cmp-long v3, v1, v4

    if-ltz v3, :cond_3

    .line 25
    iget-wide v6, v0, Landroidx/media3/exoplayer/hls/playlist/c;->u:J

    invoke-static {v6, v7, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_1

    .line 26
    :cond_3
    iget-wide v6, v0, Landroidx/media3/exoplayer/hls/playlist/c;->u:J

    add-long/2addr v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :goto_1
    iput-wide v6, v0, Landroidx/media3/exoplayer/hls/playlist/c;->e:J

    cmp-long v1, v1, v4

    if-ltz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 27
    :goto_2
    iput-boolean v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->f:Z

    move-object/from16 v1, p24

    .line 28
    iput-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->v:Landroidx/media3/exoplayer/hls/playlist/c$h;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Landroidx/media3/exoplayer/hls/playlist/c;
    .locals 0

    .line 1
    return-object p0
.end method

.method public b(JI)Landroidx/media3/exoplayer/hls/playlist/c;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v8, p1

    .line 4
    .line 5
    move/from16 v11, p3

    .line 6
    .line 7
    new-instance v28, Landroidx/media3/exoplayer/hls/playlist/c;

    .line 8
    .line 9
    move-object/from16 v1, v28

    .line 10
    .line 11
    iget v2, v0, Landroidx/media3/exoplayer/hls/playlist/c;->d:I

    .line 12
    .line 13
    iget-object v3, v0, Lb2/d;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v4, v0, Lb2/d;->b:Ljava/util/List;

    .line 16
    .line 17
    iget-wide v5, v0, Landroidx/media3/exoplayer/hls/playlist/c;->e:J

    .line 18
    .line 19
    iget-boolean v7, v0, Landroidx/media3/exoplayer/hls/playlist/c;->g:Z

    .line 20
    .line 21
    iget-wide v12, v0, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    .line 22
    .line 23
    iget v14, v0, Landroidx/media3/exoplayer/hls/playlist/c;->l:I

    .line 24
    .line 25
    move-object/from16 p1, v1

    .line 26
    .line 27
    move/from16 p2, v2

    .line 28
    .line 29
    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->m:J

    .line 30
    .line 31
    move-wide v15, v1

    .line 32
    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->n:J

    .line 33
    .line 34
    move-wide/from16 v17, v1

    .line 35
    .line 36
    iget-boolean v1, v0, Lb2/d;->c:Z

    .line 37
    .line 38
    move/from16 v19, v1

    .line 39
    .line 40
    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    .line 41
    .line 42
    move/from16 v20, v1

    .line 43
    .line 44
    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->p:Z

    .line 45
    .line 46
    move/from16 v21, v1

    .line 47
    .line 48
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->q:Landroidx/media3/common/DrmInitData;

    .line 49
    .line 50
    move-object/from16 v22, v1

    .line 51
    .line 52
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 53
    .line 54
    move-object/from16 v23, v1

    .line 55
    .line 56
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->s:Ljava/util/List;

    .line 57
    .line 58
    move-object/from16 v24, v1

    .line 59
    .line 60
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->v:Landroidx/media3/exoplayer/hls/playlist/c$h;

    .line 61
    .line 62
    move-object/from16 v25, v1

    .line 63
    .line 64
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->t:Ljava/util/Map;

    .line 65
    .line 66
    move-object/from16 v26, v1

    .line 67
    .line 68
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->w:Lcom/google/common/collect/ImmutableList;

    .line 69
    .line 70
    move-object/from16 v27, v1

    .line 71
    .line 72
    const/4 v10, 0x1

    .line 73
    move-object/from16 v1, p1

    .line 74
    .line 75
    move/from16 v2, p2

    .line 76
    .line 77
    invoke-direct/range {v1 .. v27}, Landroidx/media3/exoplayer/hls/playlist/c;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLandroidx/media3/common/DrmInitData;Ljava/util/List;Ljava/util/List;Landroidx/media3/exoplayer/hls/playlist/c$h;Ljava/util/Map;Ljava/util/List;)V

    .line 78
    .line 79
    .line 80
    return-object v28
.end method

.method public c()Landroidx/media3/exoplayer/hls/playlist/c;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v1, Landroidx/media3/exoplayer/hls/playlist/c;

    .line 9
    .line 10
    move-object v2, v1

    .line 11
    iget v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->d:I

    .line 12
    .line 13
    iget-object v4, v0, Lb2/d;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v5, v0, Lb2/d;->b:Ljava/util/List;

    .line 16
    .line 17
    iget-wide v6, v0, Landroidx/media3/exoplayer/hls/playlist/c;->e:J

    .line 18
    .line 19
    iget-boolean v8, v0, Landroidx/media3/exoplayer/hls/playlist/c;->g:Z

    .line 20
    .line 21
    iget-wide v9, v0, Landroidx/media3/exoplayer/hls/playlist/c;->h:J

    .line 22
    .line 23
    iget-boolean v11, v0, Landroidx/media3/exoplayer/hls/playlist/c;->i:Z

    .line 24
    .line 25
    iget v12, v0, Landroidx/media3/exoplayer/hls/playlist/c;->j:I

    .line 26
    .line 27
    iget-wide v13, v0, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    .line 28
    .line 29
    iget v15, v0, Landroidx/media3/exoplayer/hls/playlist/c;->l:I

    .line 30
    .line 31
    move-object/from16 v29, v1

    .line 32
    .line 33
    move-object/from16 v30, v2

    .line 34
    .line 35
    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->m:J

    .line 36
    .line 37
    move-wide/from16 v16, v1

    .line 38
    .line 39
    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->n:J

    .line 40
    .line 41
    move-wide/from16 v18, v1

    .line 42
    .line 43
    iget-boolean v1, v0, Lb2/d;->c:Z

    .line 44
    .line 45
    move/from16 v20, v1

    .line 46
    .line 47
    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->p:Z

    .line 48
    .line 49
    move/from16 v22, v1

    .line 50
    .line 51
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->q:Landroidx/media3/common/DrmInitData;

    .line 52
    .line 53
    move-object/from16 v23, v1

    .line 54
    .line 55
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 56
    .line 57
    move-object/from16 v24, v1

    .line 58
    .line 59
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->s:Ljava/util/List;

    .line 60
    .line 61
    move-object/from16 v25, v1

    .line 62
    .line 63
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->v:Landroidx/media3/exoplayer/hls/playlist/c$h;

    .line 64
    .line 65
    move-object/from16 v26, v1

    .line 66
    .line 67
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->t:Ljava/util/Map;

    .line 68
    .line 69
    move-object/from16 v27, v1

    .line 70
    .line 71
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->w:Lcom/google/common/collect/ImmutableList;

    .line 72
    .line 73
    move-object/from16 v28, v1

    .line 74
    .line 75
    const/16 v21, 0x1

    .line 76
    .line 77
    move-object/from16 v2, v30

    .line 78
    .line 79
    invoke-direct/range {v2 .. v28}, Landroidx/media3/exoplayer/hls/playlist/c;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLandroidx/media3/common/DrmInitData;Ljava/util/List;Ljava/util/List;Landroidx/media3/exoplayer/hls/playlist/c$h;Ljava/util/Map;Ljava/util/List;)V

    .line 80
    .line 81
    .line 82
    return-object v29
.end method

.method public bridge synthetic copy(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/hls/playlist/c;->a(Ljava/util/List;)Landroidx/media3/exoplayer/hls/playlist/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d()J
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/c;->h:J

    .line 2
    .line 3
    iget-wide v2, p0, Landroidx/media3/exoplayer/hls/playlist/c;->u:J

    .line 4
    .line 5
    add-long/2addr v0, v2

    .line 6
    return-wide v0
.end method

.method public e(Landroidx/media3/exoplayer/hls/playlist/c;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    iget-wide v1, p0, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    .line 5
    .line 6
    iget-wide v3, p1, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    .line 7
    .line 8
    cmp-long v5, v1, v3

    .line 9
    .line 10
    if-lez v5, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    cmp-long v1, v1, v3

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-gez v1, :cond_1

    .line 17
    .line 18
    return v2

    .line 19
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget-object v3, p1, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    sub-int/2addr v1, v3

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    if-lez v1, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    move v0, v2

    .line 38
    :goto_0
    return v0

    .line 39
    :cond_3
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/c;->s:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iget-object v3, p1, Landroidx/media3/exoplayer/hls/playlist/c;->s:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-gt v1, v3, :cond_5

    .line 52
    .line 53
    if-ne v1, v3, :cond_4

    .line 54
    .line 55
    iget-boolean v1, p0, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    .line 56
    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    iget-boolean p1, p1, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    .line 60
    .line 61
    if-nez p1, :cond_4

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    move v0, v2

    .line 65
    :cond_5
    :goto_1
    return v0
.end method
