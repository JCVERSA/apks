.class public Landroidx/media3/exoplayer/source/e0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lk2/s0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/e0$b;,
        Landroidx/media3/exoplayer/source/e0$c;,
        Landroidx/media3/exoplayer/source/e0$d;
    }
.end annotation


# instance fields
.field private A:Landroidx/media3/common/r;

.field private B:Landroidx/media3/common/r;

.field private C:J

.field private D:Z

.field private E:Z

.field private F:J

.field private G:Z

.field private final a:Landroidx/media3/exoplayer/source/c0;

.field private final b:Landroidx/media3/exoplayer/source/e0$b;

.field private final c:Landroidx/media3/exoplayer/source/j0;

.field private final d:Landroidx/media3/exoplayer/drm/t;

.field private final e:Landroidx/media3/exoplayer/drm/r$a;

.field private f:Landroidx/media3/exoplayer/source/e0$d;

.field private g:Landroidx/media3/common/r;

.field private h:Landroidx/media3/exoplayer/drm/DrmSession;

.field private i:I

.field private j:[J

.field private k:[J

.field private l:[I

.field private m:[I

.field private n:[J

.field private o:[Lk2/s0$a;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:J

.field private u:J

.field private v:J

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method protected constructor <init>(Landroidx/media3/exoplayer/upstream/b;Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/drm/r$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/media3/exoplayer/source/e0;->d:Landroidx/media3/exoplayer/drm/t;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/media3/exoplayer/source/e0;->e:Landroidx/media3/exoplayer/drm/r$a;

    .line 7
    .line 8
    new-instance p2, Landroidx/media3/exoplayer/source/c0;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Landroidx/media3/exoplayer/source/c0;-><init>(Landroidx/media3/exoplayer/upstream/b;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Landroidx/media3/exoplayer/source/e0;->a:Landroidx/media3/exoplayer/source/c0;

    .line 14
    .line 15
    new-instance p1, Landroidx/media3/exoplayer/source/e0$b;

    .line 16
    .line 17
    invoke-direct {p1}, Landroidx/media3/exoplayer/source/e0$b;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroidx/media3/exoplayer/source/e0;->b:Landroidx/media3/exoplayer/source/e0$b;

    .line 21
    .line 22
    const/16 p1, 0x3e8

    .line 23
    .line 24
    iput p1, p0, Landroidx/media3/exoplayer/source/e0;->i:I

    .line 25
    .line 26
    new-array p2, p1, [J

    .line 27
    .line 28
    iput-object p2, p0, Landroidx/media3/exoplayer/source/e0;->j:[J

    .line 29
    .line 30
    new-array p2, p1, [J

    .line 31
    .line 32
    iput-object p2, p0, Landroidx/media3/exoplayer/source/e0;->k:[J

    .line 33
    .line 34
    new-array p2, p1, [J

    .line 35
    .line 36
    iput-object p2, p0, Landroidx/media3/exoplayer/source/e0;->n:[J

    .line 37
    .line 38
    new-array p2, p1, [I

    .line 39
    .line 40
    iput-object p2, p0, Landroidx/media3/exoplayer/source/e0;->m:[I

    .line 41
    .line 42
    new-array p2, p1, [I

    .line 43
    .line 44
    iput-object p2, p0, Landroidx/media3/exoplayer/source/e0;->l:[I

    .line 45
    .line 46
    new-array p1, p1, [Lk2/s0$a;

    .line 47
    .line 48
    iput-object p1, p0, Landroidx/media3/exoplayer/source/e0;->o:[Lk2/s0$a;

    .line 49
    .line 50
    new-instance p1, Landroidx/media3/exoplayer/source/j0;

    .line 51
    .line 52
    new-instance p2, Landroidx/media3/exoplayer/source/d0;

    .line 53
    .line 54
    invoke-direct {p2}, Landroidx/media3/exoplayer/source/d0;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/source/j0;-><init>(Landroidx/media3/common/util/m;)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Landroidx/media3/exoplayer/source/e0;->c:Landroidx/media3/exoplayer/source/j0;

    .line 61
    .line 62
    const-wide/high16 p1, -0x8000000000000000L

    .line 63
    .line 64
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/e0;->t:J

    .line 65
    .line 66
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/e0;->u:J

    .line 67
    .line 68
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/e0;->v:J

    .line 69
    .line 70
    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/e0;->y:Z

    .line 72
    .line 73
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/e0;->x:Z

    .line 74
    .line 75
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/e0;->D:Z

    .line 76
    .line 77
    return-void
.end method

.method private E(I)J
    .locals 7

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-wide v0

    .line 6
    :cond_0
    add-int/lit8 v2, p1, -0x1

    .line 7
    .line 8
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/source/e0;->G(I)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, p1, :cond_3

    .line 14
    .line 15
    iget-object v4, p0, Landroidx/media3/exoplayer/source/e0;->n:[J

    .line 16
    .line 17
    aget-wide v5, v4, v2

    .line 18
    .line 19
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iget-object v4, p0, Landroidx/media3/exoplayer/source/e0;->m:[I

    .line 24
    .line 25
    aget v4, v4, v2

    .line 26
    .line 27
    and-int/lit8 v4, v4, 0x1

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 33
    .line 34
    const/4 v4, -0x1

    .line 35
    if-ne v2, v4, :cond_2

    .line 36
    .line 37
    iget v2, p0, Landroidx/media3/exoplayer/source/e0;->i:I

    .line 38
    .line 39
    add-int/lit8 v2, v2, -0x1

    .line 40
    .line 41
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    :goto_1
    return-wide v0
.end method

.method private G(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->r:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iget p1, p0, Landroidx/media3/exoplayer/source/e0;->i:I

    .line 5
    .line 6
    if-ge v0, p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sub-int/2addr v0, p1

    .line 10
    :goto_0
    return v0
.end method

.method private K()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->s:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/exoplayer/source/e0;->p:I

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private static synthetic O(Landroidx/media3/exoplayer/source/e0$c;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/e0$c;->b:Landroidx/media3/exoplayer/drm/t$b;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/exoplayer/drm/t$b;->release()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private P(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->m:[I

    .line 13
    .line 14
    aget p1, v0, p1

    .line 15
    .line 16
    const/high16 v0, 0x40000000    # 2.0f

    .line 17
    .line 18
    and-int/2addr p1, v0

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 22
    .line 23
    invoke-interface {p1}, Landroidx/media3/exoplayer/drm/DrmSession;->b()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 33
    :goto_1
    return p1
.end method

.method private R(Landroidx/media3/common/r;Landroidx/media3/exoplayer/s2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->g:Landroidx/media3/common/r;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, v0, Landroidx/media3/common/r;->s:Landroidx/media3/common/DrmInitData;

    .line 13
    .line 14
    :goto_1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/e0;->g:Landroidx/media3/common/r;

    .line 15
    .line 16
    iget-object v2, p1, Landroidx/media3/common/r;->s:Landroidx/media3/common/DrmInitData;

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->d:Landroidx/media3/exoplayer/drm/t;

    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    invoke-interface {v3, p1}, Landroidx/media3/exoplayer/drm/t;->b(Landroidx/media3/common/r;)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {p1, v3}, Landroidx/media3/common/r;->c(I)Landroidx/media3/common/r;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    move-object v3, p1

    .line 32
    :goto_2
    iput-object v3, p2, Landroidx/media3/exoplayer/s2;->b:Landroidx/media3/common/r;

    .line 33
    .line 34
    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 35
    .line 36
    iput-object v3, p2, Landroidx/media3/exoplayer/s2;->a:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 37
    .line 38
    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->d:Landroidx/media3/exoplayer/drm/t;

    .line 39
    .line 40
    if-nez v3, :cond_3

    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    if-nez v1, :cond_4

    .line 44
    .line 45
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    return-void

    .line 52
    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 53
    .line 54
    iget-object v1, p0, Landroidx/media3/exoplayer/source/e0;->d:Landroidx/media3/exoplayer/drm/t;

    .line 55
    .line 56
    iget-object v2, p0, Landroidx/media3/exoplayer/source/e0;->e:Landroidx/media3/exoplayer/drm/r$a;

    .line 57
    .line 58
    invoke-interface {v1, v2, p1}, Landroidx/media3/exoplayer/drm/t;->a(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/common/r;)Landroidx/media3/exoplayer/drm/DrmSession;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Landroidx/media3/exoplayer/source/e0;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 63
    .line 64
    iput-object p1, p2, Landroidx/media3/exoplayer/s2;->a:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 65
    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->e:Landroidx/media3/exoplayer/drm/r$a;

    .line 69
    .line 70
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/drm/DrmSession;->f(Landroidx/media3/exoplayer/drm/r$a;)V

    .line 71
    .line 72
    .line 73
    :cond_5
    return-void
.end method

.method private declared-synchronized S(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;ZZLandroidx/media3/exoplayer/source/e0$b;)I
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p2, Landroidx/media3/decoder/DecoderInputBuffer;->d:Z

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/e0;->K()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x4

    .line 10
    const/4 v2, -0x3

    .line 11
    const/4 v3, -0x5

    .line 12
    if-nez v0, :cond_4

    .line 13
    .line 14
    if-nez p4, :cond_3

    .line 15
    .line 16
    iget-boolean p4, p0, Landroidx/media3/exoplayer/source/e0;->w:Z

    .line 17
    .line 18
    if-eqz p4, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object p2, p0, Landroidx/media3/exoplayer/source/e0;->B:Landroidx/media3/common/r;

    .line 22
    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    if-nez p3, :cond_1

    .line 26
    .line 27
    iget-object p3, p0, Landroidx/media3/exoplayer/source/e0;->g:Landroidx/media3/common/r;

    .line 28
    .line 29
    if-eq p2, p3, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :cond_1
    :goto_0
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    check-cast p2, Landroidx/media3/common/r;

    .line 40
    .line 41
    invoke-direct {p0, p2, p1}, Landroidx/media3/exoplayer/source/e0;->R(Landroidx/media3/common/r;Landroidx/media3/exoplayer/s2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    monitor-exit p0

    .line 45
    return v3

    .line 46
    :cond_2
    monitor-exit p0

    .line 47
    return v2

    .line 48
    :cond_3
    :goto_1
    const/4 p1, 0x4

    .line 49
    :try_start_1
    invoke-virtual {p2, p1}, Landroidx/media3/decoder/a;->setFlags(I)V

    .line 50
    .line 51
    .line 52
    const-wide/high16 p3, -0x8000000000000000L

    .line 53
    .line 54
    iput-wide p3, p2, Landroidx/media3/decoder/DecoderInputBuffer;->e:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    monitor-exit p0

    .line 57
    return v1

    .line 58
    :cond_4
    :try_start_2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->c:Landroidx/media3/exoplayer/source/j0;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/e0;->F()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-virtual {v0, v4}, Landroidx/media3/exoplayer/source/j0;->f(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroidx/media3/exoplayer/source/e0$c;

    .line 69
    .line 70
    iget-object v0, v0, Landroidx/media3/exoplayer/source/e0$c;->a:Landroidx/media3/common/r;

    .line 71
    .line 72
    if-nez p3, :cond_9

    .line 73
    .line 74
    iget-object p3, p0, Landroidx/media3/exoplayer/source/e0;->g:Landroidx/media3/common/r;

    .line 75
    .line 76
    if-eq v0, p3, :cond_5

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_5
    iget p1, p0, Landroidx/media3/exoplayer/source/e0;->s:I

    .line 80
    .line 81
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/e0;->G(I)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/e0;->P(I)Z

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    const/4 v0, 0x1

    .line 90
    if-nez p3, :cond_6

    .line 91
    .line 92
    iput-boolean v0, p2, Landroidx/media3/decoder/DecoderInputBuffer;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    .line 94
    monitor-exit p0

    .line 95
    return v2

    .line 96
    :cond_6
    :try_start_3
    iget-object p3, p0, Landroidx/media3/exoplayer/source/e0;->m:[I

    .line 97
    .line 98
    aget p3, p3, p1

    .line 99
    .line 100
    invoke-virtual {p2, p3}, Landroidx/media3/decoder/a;->setFlags(I)V

    .line 101
    .line 102
    .line 103
    iget p3, p0, Landroidx/media3/exoplayer/source/e0;->s:I

    .line 104
    .line 105
    iget v2, p0, Landroidx/media3/exoplayer/source/e0;->p:I

    .line 106
    .line 107
    sub-int/2addr v2, v0

    .line 108
    if-ne p3, v2, :cond_8

    .line 109
    .line 110
    if-nez p4, :cond_7

    .line 111
    .line 112
    iget-boolean p3, p0, Landroidx/media3/exoplayer/source/e0;->w:Z

    .line 113
    .line 114
    if-eqz p3, :cond_8

    .line 115
    .line 116
    :cond_7
    const/high16 p3, 0x20000000

    .line 117
    .line 118
    invoke-virtual {p2, p3}, Landroidx/media3/decoder/a;->addFlag(I)V

    .line 119
    .line 120
    .line 121
    :cond_8
    iget-object p3, p0, Landroidx/media3/exoplayer/source/e0;->n:[J

    .line 122
    .line 123
    aget-wide v2, p3, p1

    .line 124
    .line 125
    iput-wide v2, p2, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    .line 126
    .line 127
    iget-object p2, p0, Landroidx/media3/exoplayer/source/e0;->l:[I

    .line 128
    .line 129
    aget p2, p2, p1

    .line 130
    .line 131
    iput p2, p5, Landroidx/media3/exoplayer/source/e0$b;->a:I

    .line 132
    .line 133
    iget-object p2, p0, Landroidx/media3/exoplayer/source/e0;->k:[J

    .line 134
    .line 135
    aget-wide p3, p2, p1

    .line 136
    .line 137
    iput-wide p3, p5, Landroidx/media3/exoplayer/source/e0$b;->b:J

    .line 138
    .line 139
    iget-object p2, p0, Landroidx/media3/exoplayer/source/e0;->o:[Lk2/s0$a;

    .line 140
    .line 141
    aget-object p1, p2, p1

    .line 142
    .line 143
    iput-object p1, p5, Landroidx/media3/exoplayer/source/e0$b;->c:Lk2/s0$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    .line 145
    monitor-exit p0

    .line 146
    return v1

    .line 147
    :cond_9
    :goto_2
    :try_start_4
    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/source/e0;->R(Landroidx/media3/common/r;Landroidx/media3/exoplayer/s2;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 148
    .line 149
    .line 150
    monitor-exit p0

    .line 151
    return v3

    .line 152
    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 153
    throw p1
.end method

.method private X()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/source/e0;->e:Landroidx/media3/exoplayer/drm/r$a;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/drm/DrmSession;->f(Landroidx/media3/exoplayer/drm/r$a;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/media3/exoplayer/source/e0;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/media3/exoplayer/source/e0;->g:Landroidx/media3/common/r;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private declared-synchronized a0()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput v0, p0, Landroidx/media3/exoplayer/source/e0;->s:I

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->a:Landroidx/media3/exoplayer/source/c0;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/c0;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v0
.end method

.method private declared-synchronized f0(Landroidx/media3/common/r;)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/e0;->y:Z

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/source/e0;->B:Landroidx/media3/common/r;

    .line 6
    .line 7
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return v0

    .line 15
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/media3/exoplayer/source/e0;->c:Landroidx/media3/exoplayer/source/j0;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/j0;->h()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/media3/exoplayer/source/e0;->c:Landroidx/media3/exoplayer/source/j0;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/j0;->g()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroidx/media3/exoplayer/source/e0$c;

    .line 30
    .line 31
    iget-object v1, v1, Landroidx/media3/exoplayer/source/e0$c;->a:Landroidx/media3/common/r;

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Landroidx/media3/common/r;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->c:Landroidx/media3/exoplayer/source/j0;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/j0;->g()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroidx/media3/exoplayer/source/e0$c;

    .line 46
    .line 47
    iget-object p1, p1, Landroidx/media3/exoplayer/source/e0$c;->a:Landroidx/media3/common/r;

    .line 48
    .line 49
    iput-object p1, p0, Landroidx/media3/exoplayer/source/e0;->B:Landroidx/media3/common/r;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/e0;->B:Landroidx/media3/common/r;

    .line 55
    .line 56
    :goto_0
    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/e0;->D:Z

    .line 57
    .line 58
    iget-object v1, p0, Landroidx/media3/exoplayer/source/e0;->B:Landroidx/media3/common/r;

    .line 59
    .line 60
    iget-object v2, v1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v1, v1, Landroidx/media3/common/r;->k:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v2, v1}, Landroidx/media3/common/y;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    and-int/2addr p1, v1

    .line 69
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/e0;->D:Z

    .line 70
    .line 71
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/e0;->E:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    monitor-exit p0

    .line 74
    const/4 p1, 0x1

    .line 75
    return p1

    .line 76
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    throw p1
.end method

.method public static synthetic h(Landroidx/media3/exoplayer/source/e0$c;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/source/e0;->O(Landroidx/media3/exoplayer/source/e0$c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private declared-synchronized i(J)Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->p:I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-wide v3, p0, Landroidx/media3/exoplayer/source/e0;->u:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    cmp-long p1, p1, v3

    .line 11
    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    move v1, v2

    .line 15
    :cond_0
    monitor-exit p0

    .line 16
    return v1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/e0;->D()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    cmp-long v0, v3, p1

    .line 24
    .line 25
    if-ltz v0, :cond_2

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return v1

    .line 29
    :cond_2
    :try_start_2
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/e0;->k(J)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iget p2, p0, Landroidx/media3/exoplayer/source/e0;->q:I

    .line 34
    .line 35
    add-int/2addr p2, p1

    .line 36
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/source/e0;->v(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return v2

    .line 41
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 42
    throw p1
.end method

.method private declared-synchronized j(JIJILk2/s0$a;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->p:I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-lez v0, :cond_1

    .line 7
    .line 8
    sub-int/2addr v0, v1

    .line 9
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/e0;->G(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->k:[J

    .line 14
    .line 15
    aget-wide v4, v3, v0

    .line 16
    .line 17
    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->l:[I

    .line 18
    .line 19
    aget v0, v3, v0

    .line 20
    .line 21
    int-to-long v6, v0

    .line 22
    add-long/2addr v4, v6

    .line 23
    cmp-long v0, v4, p4

    .line 24
    .line 25
    if-gtz v0, :cond_0

    .line 26
    .line 27
    move v0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v2

    .line 30
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto/16 :goto_4

    .line 36
    .line 37
    :cond_1
    :goto_1
    const/high16 v0, 0x20000000

    .line 38
    .line 39
    and-int/2addr v0, p3

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    move v0, v1

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move v0, v2

    .line 45
    :goto_2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/e0;->w:Z

    .line 46
    .line 47
    iget-wide v3, p0, Landroidx/media3/exoplayer/source/e0;->v:J

    .line 48
    .line 49
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    iput-wide v3, p0, Landroidx/media3/exoplayer/source/e0;->v:J

    .line 54
    .line 55
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->p:I

    .line 56
    .line 57
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/e0;->G(I)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->n:[J

    .line 62
    .line 63
    aput-wide p1, v3, v0

    .line 64
    .line 65
    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->k:[J

    .line 66
    .line 67
    aput-wide p4, p1, v0

    .line 68
    .line 69
    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->l:[I

    .line 70
    .line 71
    aput p6, p1, v0

    .line 72
    .line 73
    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->m:[I

    .line 74
    .line 75
    aput p3, p1, v0

    .line 76
    .line 77
    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->o:[Lk2/s0$a;

    .line 78
    .line 79
    aput-object p7, p1, v0

    .line 80
    .line 81
    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->j:[J

    .line 82
    .line 83
    iget-wide p2, p0, Landroidx/media3/exoplayer/source/e0;->C:J

    .line 84
    .line 85
    aput-wide p2, p1, v0

    .line 86
    .line 87
    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->c:Landroidx/media3/exoplayer/source/j0;

    .line 88
    .line 89
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/j0;->h()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_3

    .line 94
    .line 95
    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->c:Landroidx/media3/exoplayer/source/j0;

    .line 96
    .line 97
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/j0;->g()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Landroidx/media3/exoplayer/source/e0$c;

    .line 102
    .line 103
    iget-object p1, p1, Landroidx/media3/exoplayer/source/e0$c;->a:Landroidx/media3/common/r;

    .line 104
    .line 105
    iget-object p2, p0, Landroidx/media3/exoplayer/source/e0;->B:Landroidx/media3/common/r;

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Landroidx/media3/common/r;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_5

    .line 112
    .line 113
    :cond_3
    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->B:Landroidx/media3/common/r;

    .line 114
    .line 115
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Landroidx/media3/common/r;

    .line 120
    .line 121
    iget-object p2, p0, Landroidx/media3/exoplayer/source/e0;->d:Landroidx/media3/exoplayer/drm/t;

    .line 122
    .line 123
    if-eqz p2, :cond_4

    .line 124
    .line 125
    iget-object p3, p0, Landroidx/media3/exoplayer/source/e0;->e:Landroidx/media3/exoplayer/drm/r$a;

    .line 126
    .line 127
    invoke-interface {p2, p3, p1}, Landroidx/media3/exoplayer/drm/t;->c(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/common/r;)Landroidx/media3/exoplayer/drm/t$b;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    goto :goto_3

    .line 132
    :cond_4
    sget-object p2, Landroidx/media3/exoplayer/drm/t$b;->a:Landroidx/media3/exoplayer/drm/t$b;

    .line 133
    .line 134
    :goto_3
    iget-object p3, p0, Landroidx/media3/exoplayer/source/e0;->c:Landroidx/media3/exoplayer/source/j0;

    .line 135
    .line 136
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/e0;->J()I

    .line 137
    .line 138
    .line 139
    move-result p4

    .line 140
    new-instance p5, Landroidx/media3/exoplayer/source/e0$c;

    .line 141
    .line 142
    const/4 p6, 0x0

    .line 143
    invoke-direct {p5, p1, p2, p6}, Landroidx/media3/exoplayer/source/e0$c;-><init>(Landroidx/media3/common/r;Landroidx/media3/exoplayer/drm/t$b;Landroidx/media3/exoplayer/source/e0$a;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3, p4, p5}, Landroidx/media3/exoplayer/source/j0;->b(ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :cond_5
    iget p1, p0, Landroidx/media3/exoplayer/source/e0;->p:I

    .line 150
    .line 151
    add-int/2addr p1, v1

    .line 152
    iput p1, p0, Landroidx/media3/exoplayer/source/e0;->p:I

    .line 153
    .line 154
    iget p2, p0, Landroidx/media3/exoplayer/source/e0;->i:I

    .line 155
    .line 156
    if-ne p1, p2, :cond_6

    .line 157
    .line 158
    add-int/lit16 p1, p2, 0x3e8

    .line 159
    .line 160
    new-array p3, p1, [J

    .line 161
    .line 162
    new-array p4, p1, [J

    .line 163
    .line 164
    new-array p5, p1, [J

    .line 165
    .line 166
    new-array p6, p1, [I

    .line 167
    .line 168
    new-array p7, p1, [I

    .line 169
    .line 170
    new-array v0, p1, [Lk2/s0$a;

    .line 171
    .line 172
    iget v1, p0, Landroidx/media3/exoplayer/source/e0;->r:I

    .line 173
    .line 174
    sub-int/2addr p2, v1

    .line 175
    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->k:[J

    .line 176
    .line 177
    invoke-static {v3, v1, p4, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    .line 179
    .line 180
    iget-object v1, p0, Landroidx/media3/exoplayer/source/e0;->n:[J

    .line 181
    .line 182
    iget v3, p0, Landroidx/media3/exoplayer/source/e0;->r:I

    .line 183
    .line 184
    invoke-static {v1, v3, p5, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    .line 186
    .line 187
    iget-object v1, p0, Landroidx/media3/exoplayer/source/e0;->m:[I

    .line 188
    .line 189
    iget v3, p0, Landroidx/media3/exoplayer/source/e0;->r:I

    .line 190
    .line 191
    invoke-static {v1, v3, p6, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    .line 193
    .line 194
    iget-object v1, p0, Landroidx/media3/exoplayer/source/e0;->l:[I

    .line 195
    .line 196
    iget v3, p0, Landroidx/media3/exoplayer/source/e0;->r:I

    .line 197
    .line 198
    invoke-static {v1, v3, p7, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    .line 200
    .line 201
    iget-object v1, p0, Landroidx/media3/exoplayer/source/e0;->o:[Lk2/s0$a;

    .line 202
    .line 203
    iget v3, p0, Landroidx/media3/exoplayer/source/e0;->r:I

    .line 204
    .line 205
    invoke-static {v1, v3, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    .line 207
    .line 208
    iget-object v1, p0, Landroidx/media3/exoplayer/source/e0;->j:[J

    .line 209
    .line 210
    iget v3, p0, Landroidx/media3/exoplayer/source/e0;->r:I

    .line 211
    .line 212
    invoke-static {v1, v3, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    .line 214
    .line 215
    iget v1, p0, Landroidx/media3/exoplayer/source/e0;->r:I

    .line 216
    .line 217
    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->k:[J

    .line 218
    .line 219
    invoke-static {v3, v2, p4, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    .line 221
    .line 222
    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->n:[J

    .line 223
    .line 224
    invoke-static {v3, v2, p5, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    .line 226
    .line 227
    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->m:[I

    .line 228
    .line 229
    invoke-static {v3, v2, p6, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    .line 231
    .line 232
    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->l:[I

    .line 233
    .line 234
    invoke-static {v3, v2, p7, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    .line 236
    .line 237
    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->o:[Lk2/s0$a;

    .line 238
    .line 239
    invoke-static {v3, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    .line 241
    .line 242
    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->j:[J

    .line 243
    .line 244
    invoke-static {v3, v2, p3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    .line 246
    .line 247
    iput-object p4, p0, Landroidx/media3/exoplayer/source/e0;->k:[J

    .line 248
    .line 249
    iput-object p5, p0, Landroidx/media3/exoplayer/source/e0;->n:[J

    .line 250
    .line 251
    iput-object p6, p0, Landroidx/media3/exoplayer/source/e0;->m:[I

    .line 252
    .line 253
    iput-object p7, p0, Landroidx/media3/exoplayer/source/e0;->l:[I

    .line 254
    .line 255
    iput-object v0, p0, Landroidx/media3/exoplayer/source/e0;->o:[Lk2/s0$a;

    .line 256
    .line 257
    iput-object p3, p0, Landroidx/media3/exoplayer/source/e0;->j:[J

    .line 258
    .line 259
    iput v2, p0, Landroidx/media3/exoplayer/source/e0;->r:I

    .line 260
    .line 261
    iput p1, p0, Landroidx/media3/exoplayer/source/e0;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    .line 263
    :cond_6
    monitor-exit p0

    .line 264
    return-void

    .line 265
    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    throw p1
.end method

.method private k(J)I
    .locals 5

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->p:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/source/e0;->G(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    :cond_0
    :goto_0
    iget v2, p0, Landroidx/media3/exoplayer/source/e0;->s:I

    .line 10
    .line 11
    if-le v0, v2, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/media3/exoplayer/source/e0;->n:[J

    .line 14
    .line 15
    aget-wide v3, v2, v1

    .line 16
    .line 17
    cmp-long v2, v3, p1

    .line 18
    .line 19
    if-ltz v2, :cond_1

    .line 20
    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    add-int/lit8 v1, v1, -0x1

    .line 24
    .line 25
    const/4 v2, -0x1

    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    iget v1, p0, Landroidx/media3/exoplayer/source/e0;->i:I

    .line 29
    .line 30
    add-int/lit8 v1, v1, -0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return v0
.end method

.method public static l(Landroidx/media3/exoplayer/upstream/b;Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/drm/r$a;)Landroidx/media3/exoplayer/source/e0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/source/e0;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/media3/exoplayer/drm/t;

    .line 8
    .line 9
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Landroidx/media3/exoplayer/drm/r$a;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/exoplayer/source/e0;-><init>(Landroidx/media3/exoplayer/upstream/b;Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/drm/r$a;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static m(Landroidx/media3/exoplayer/upstream/b;)Landroidx/media3/exoplayer/source/e0;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/source/e0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1, v1}, Landroidx/media3/exoplayer/source/e0;-><init>(Landroidx/media3/exoplayer/upstream/b;Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/drm/r$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private declared-synchronized n(JZZ)J
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->p:I

    .line 3
    .line 4
    const-wide/16 v1, -0x1

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->n:[J

    .line 9
    .line 10
    iget v5, p0, Landroidx/media3/exoplayer/source/e0;->r:I

    .line 11
    .line 12
    aget-wide v6, v3, v5

    .line 13
    .line 14
    cmp-long v3, p1, v6

    .line 15
    .line 16
    if-gez v3, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    if-eqz p4, :cond_1

    .line 20
    .line 21
    iget p4, p0, Landroidx/media3/exoplayer/source/e0;->s:I

    .line 22
    .line 23
    if-eq p4, v0, :cond_1

    .line 24
    .line 25
    add-int/lit8 v0, p4, 0x1

    .line 26
    .line 27
    :cond_1
    move v6, v0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_2

    .line 31
    :goto_0
    move-object v4, p0

    .line 32
    move-wide v7, p1

    .line 33
    move v9, p3

    .line 34
    invoke-direct/range {v4 .. v9}, Landroidx/media3/exoplayer/source/e0;->y(IIJZ)I

    .line 35
    .line 36
    .line 37
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    const/4 p2, -0x1

    .line 39
    if-ne p1, p2, :cond_2

    .line 40
    .line 41
    monitor-exit p0

    .line 42
    return-wide v1

    .line 43
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/e0;->q(I)J

    .line 44
    .line 45
    .line 46
    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    monitor-exit p0

    .line 48
    return-wide p1

    .line 49
    :cond_3
    :goto_1
    monitor-exit p0

    .line 50
    return-wide v1

    .line 51
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    throw p1
.end method

.method private declared-synchronized o()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    const-wide/16 v0, -0x1

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/e0;->q(I)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-wide v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    throw v0
.end method

.method private q(I)J
    .locals 5

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/e0;->u:J

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/e0;->E(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Landroidx/media3/exoplayer/source/e0;->u:J

    .line 12
    .line 13
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->p:I

    .line 14
    .line 15
    sub-int/2addr v0, p1

    .line 16
    iput v0, p0, Landroidx/media3/exoplayer/source/e0;->p:I

    .line 17
    .line 18
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->q:I

    .line 19
    .line 20
    add-int/2addr v0, p1

    .line 21
    iput v0, p0, Landroidx/media3/exoplayer/source/e0;->q:I

    .line 22
    .line 23
    iget v1, p0, Landroidx/media3/exoplayer/source/e0;->r:I

    .line 24
    .line 25
    add-int/2addr v1, p1

    .line 26
    iput v1, p0, Landroidx/media3/exoplayer/source/e0;->r:I

    .line 27
    .line 28
    iget v2, p0, Landroidx/media3/exoplayer/source/e0;->i:I

    .line 29
    .line 30
    if-lt v1, v2, :cond_0

    .line 31
    .line 32
    sub-int/2addr v1, v2

    .line 33
    iput v1, p0, Landroidx/media3/exoplayer/source/e0;->r:I

    .line 34
    .line 35
    :cond_0
    iget v1, p0, Landroidx/media3/exoplayer/source/e0;->s:I

    .line 36
    .line 37
    sub-int/2addr v1, p1

    .line 38
    iput v1, p0, Landroidx/media3/exoplayer/source/e0;->s:I

    .line 39
    .line 40
    if-gez v1, :cond_1

    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    iput p1, p0, Landroidx/media3/exoplayer/source/e0;->s:I

    .line 44
    .line 45
    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->c:Landroidx/media3/exoplayer/source/j0;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/j0;->e(I)V

    .line 48
    .line 49
    .line 50
    iget p1, p0, Landroidx/media3/exoplayer/source/e0;->p:I

    .line 51
    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    iget p1, p0, Landroidx/media3/exoplayer/source/e0;->r:I

    .line 55
    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    iget p1, p0, Landroidx/media3/exoplayer/source/e0;->i:I

    .line 59
    .line 60
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 61
    .line 62
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->k:[J

    .line 63
    .line 64
    aget-wide v1, v0, p1

    .line 65
    .line 66
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->l:[I

    .line 67
    .line 68
    aget p1, v0, p1

    .line 69
    .line 70
    int-to-long v3, p1

    .line 71
    add-long/2addr v1, v3

    .line 72
    return-wide v1

    .line 73
    :cond_3
    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->k:[J

    .line 74
    .line 75
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->r:I

    .line 76
    .line 77
    aget-wide v0, p1, v0

    .line 78
    .line 79
    return-wide v0
.end method

.method private v(I)J
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/e0;->J()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int/2addr v0, p1

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    iget v3, p0, Landroidx/media3/exoplayer/source/e0;->p:I

    .line 11
    .line 12
    iget v4, p0, Landroidx/media3/exoplayer/source/e0;->s:I

    .line 13
    .line 14
    sub-int/2addr v3, v4

    .line 15
    if-gt v0, v3, :cond_0

    .line 16
    .line 17
    move v3, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v3, v1

    .line 20
    :goto_0
    invoke-static {v3}, Landroidx/media3/common/util/a;->a(Z)V

    .line 21
    .line 22
    .line 23
    iget v3, p0, Landroidx/media3/exoplayer/source/e0;->p:I

    .line 24
    .line 25
    sub-int/2addr v3, v0

    .line 26
    iput v3, p0, Landroidx/media3/exoplayer/source/e0;->p:I

    .line 27
    .line 28
    iget-wide v4, p0, Landroidx/media3/exoplayer/source/e0;->u:J

    .line 29
    .line 30
    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/source/e0;->E(I)J

    .line 31
    .line 32
    .line 33
    move-result-wide v6

    .line 34
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    iput-wide v3, p0, Landroidx/media3/exoplayer/source/e0;->v:J

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/e0;->w:Z

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    move v1, v2

    .line 47
    :cond_1
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/e0;->w:Z

    .line 48
    .line 49
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->c:Landroidx/media3/exoplayer/source/j0;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/j0;->d(I)V

    .line 52
    .line 53
    .line 54
    iget p1, p0, Landroidx/media3/exoplayer/source/e0;->p:I

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    sub-int/2addr p1, v2

    .line 59
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/e0;->G(I)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->k:[J

    .line 64
    .line 65
    aget-wide v1, v0, p1

    .line 66
    .line 67
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->l:[I

    .line 68
    .line 69
    aget p1, v0, p1

    .line 70
    .line 71
    int-to-long v3, p1

    .line 72
    add-long/2addr v1, v3

    .line 73
    return-wide v1

    .line 74
    :cond_2
    const-wide/16 v0, 0x0

    .line 75
    .line 76
    return-wide v0
.end method

.method private x(IIJZ)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    if-ge v1, p2, :cond_2

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/media3/exoplayer/source/e0;->n:[J

    .line 6
    .line 7
    aget-wide v3, v2, p1

    .line 8
    .line 9
    cmp-long v2, v3, p3

    .line 10
    .line 11
    if-ltz v2, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 15
    .line 16
    iget v2, p0, Landroidx/media3/exoplayer/source/e0;->i:I

    .line 17
    .line 18
    if-ne p1, v2, :cond_1

    .line 19
    .line 20
    move p1, v0

    .line 21
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    if-eqz p5, :cond_3

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_3
    const/4 p2, -0x1

    .line 28
    :goto_1
    return p2
.end method

.method private y(IIJZ)I
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, p2, :cond_4

    .line 5
    .line 6
    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->n:[J

    .line 7
    .line 8
    aget-wide v4, v3, p1

    .line 9
    .line 10
    cmp-long v3, v4, p3

    .line 11
    .line 12
    if-gtz v3, :cond_4

    .line 13
    .line 14
    if-eqz p5, :cond_0

    .line 15
    .line 16
    iget-object v3, p0, Landroidx/media3/exoplayer/source/e0;->m:[I

    .line 17
    .line 18
    aget v3, v3, p1

    .line 19
    .line 20
    and-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    :cond_0
    cmp-long v0, v4, p3

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    move v0, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v0, v2

    .line 31
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 32
    .line 33
    iget v3, p0, Landroidx/media3/exoplayer/source/e0;->i:I

    .line 34
    .line 35
    if-ne p1, v3, :cond_3

    .line 36
    .line 37
    move p1, v1

    .line 38
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_4
    :goto_1
    return v0
.end method


# virtual methods
.method public final A()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->q:I

    .line 2
    .line 3
    return v0
.end method

.method public final declared-synchronized B()J
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->p:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-wide/high16 v0, -0x8000000000000000L

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->n:[J

    .line 10
    .line 11
    iget v1, p0, Landroidx/media3/exoplayer/source/e0;->r:I

    .line 12
    .line 13
    aget-wide v1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    move-wide v0, v1

    .line 16
    :goto_0
    monitor-exit p0

    .line 17
    return-wide v0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v0
.end method

.method public final declared-synchronized C()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/e0;->v:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-wide v0

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

.method public final declared-synchronized D()J
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/e0;->u:J

    .line 3
    .line 4
    iget v2, p0, Landroidx/media3/exoplayer/source/e0;->s:I

    .line 5
    .line 6
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/source/e0;->E(I)J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-wide v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw v0
.end method

.method public final F()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->q:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/exoplayer/source/e0;->s:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public final declared-synchronized H(JZ)I
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->s:I

    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/e0;->G(I)I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/e0;->K()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v7, 0x0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->n:[J

    .line 16
    .line 17
    aget-wide v3, v0, v2

    .line 18
    .line 19
    cmp-long v0, p1, v3

    .line 20
    .line 21
    if-gez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/e0;->v:J

    .line 25
    .line 26
    cmp-long v0, p1, v0

    .line 27
    .line 28
    if-lez v0, :cond_1

    .line 29
    .line 30
    if-eqz p3, :cond_1

    .line 31
    .line 32
    iget p1, p0, Landroidx/media3/exoplayer/source/e0;->p:I

    .line 33
    .line 34
    iget p2, p0, Landroidx/media3/exoplayer/source/e0;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    sub-int/2addr p1, p2

    .line 37
    monitor-exit p0

    .line 38
    return p1

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :try_start_1
    iget p3, p0, Landroidx/media3/exoplayer/source/e0;->p:I

    .line 42
    .line 43
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->s:I

    .line 44
    .line 45
    sub-int v3, p3, v0

    .line 46
    .line 47
    const/4 v6, 0x1

    .line 48
    move-object v1, p0

    .line 49
    move-wide v4, p1

    .line 50
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/source/e0;->y(IIJZ)I

    .line 51
    .line 52
    .line 53
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    const/4 p2, -0x1

    .line 55
    if-ne p1, p2, :cond_2

    .line 56
    .line 57
    monitor-exit p0

    .line 58
    return v7

    .line 59
    :cond_2
    monitor-exit p0

    .line 60
    return p1

    .line 61
    :cond_3
    :goto_0
    monitor-exit p0

    .line 62
    return v7

    .line 63
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    throw p1
.end method

.method public final declared-synchronized I()Landroidx/media3/common/r;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/e0;->y:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->B:Landroidx/media3/common/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    :goto_0
    monitor-exit p0

    .line 11
    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v0
.end method

.method public final J()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->q:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/exoplayer/source/e0;->p:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    return v0
.end method

.method protected final L()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/e0;->z:Z

    .line 3
    .line 4
    return-void
.end method

.method public final declared-synchronized M()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/e0;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

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

.method public declared-synchronized N(Z)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/e0;->K()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/e0;->w:Z

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->B:Landroidx/media3/common/r;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->g:Landroidx/media3/common/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    if-eq p1, v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :cond_1
    :goto_0
    monitor-exit p0

    .line 28
    return v1

    .line 29
    :cond_2
    :try_start_1
    iget-object p1, p0, Landroidx/media3/exoplayer/source/e0;->c:Landroidx/media3/exoplayer/source/j0;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/e0;->F()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/j0;->f(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Landroidx/media3/exoplayer/source/e0$c;

    .line 40
    .line 41
    iget-object p1, p1, Landroidx/media3/exoplayer/source/e0$c;->a:Landroidx/media3/common/r;

    .line 42
    .line 43
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->g:Landroidx/media3/common/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    if-eq p1, v0, :cond_3

    .line 46
    .line 47
    monitor-exit p0

    .line 48
    return v1

    .line 49
    :cond_3
    :try_start_2
    iget p1, p0, Landroidx/media3/exoplayer/source/e0;->s:I

    .line 50
    .line 51
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/e0;->G(I)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/e0;->P(I)Z

    .line 56
    .line 57
    .line 58
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    monitor-exit p0

    .line 60
    return p1

    .line 61
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    throw p1
.end method

.method public Q()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 14
    .line 15
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 24
    .line 25
    throw v0

    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized T()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->s:I

    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/e0;->G(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/e0;->K()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/media3/exoplayer/source/e0;->j:[J

    .line 15
    .line 16
    aget-wide v0, v1, v0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/e0;->C:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    :goto_0
    monitor-exit p0

    .line 24
    return-wide v0

    .line 25
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw v0
.end method

.method public U()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/e0;->s()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/e0;->X()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public V(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;IZ)I
    .locals 9

    .line 1
    and-int/lit8 v0, p3, 0x2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move v6, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v6, v1

    .line 10
    :goto_0
    iget-object v8, p0, Landroidx/media3/exoplayer/source/e0;->b:Landroidx/media3/exoplayer/source/e0$b;

    .line 11
    .line 12
    move-object v3, p0

    .line 13
    move-object v4, p1

    .line 14
    move-object v5, p2

    .line 15
    move v7, p4

    .line 16
    invoke-direct/range {v3 .. v8}, Landroidx/media3/exoplayer/source/e0;->S(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;ZZLandroidx/media3/exoplayer/source/e0$b;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 p4, -0x4

    .line 21
    if-ne p1, p4, :cond_4

    .line 22
    .line 23
    invoke-virtual {p2}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    .line 24
    .line 25
    .line 26
    move-result p4

    .line 27
    if-nez p4, :cond_4

    .line 28
    .line 29
    and-int/lit8 p4, p3, 0x1

    .line 30
    .line 31
    if-eqz p4, :cond_1

    .line 32
    .line 33
    move v1, v2

    .line 34
    :cond_1
    and-int/lit8 p3, p3, 0x4

    .line 35
    .line 36
    if-nez p3, :cond_3

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    iget-object p3, p0, Landroidx/media3/exoplayer/source/e0;->a:Landroidx/media3/exoplayer/source/c0;

    .line 41
    .line 42
    iget-object p4, p0, Landroidx/media3/exoplayer/source/e0;->b:Landroidx/media3/exoplayer/source/e0$b;

    .line 43
    .line 44
    invoke-virtual {p3, p2, p4}, Landroidx/media3/exoplayer/source/c0;->f(Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/exoplayer/source/e0$b;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    iget-object p3, p0, Landroidx/media3/exoplayer/source/e0;->a:Landroidx/media3/exoplayer/source/c0;

    .line 49
    .line 50
    iget-object p4, p0, Landroidx/media3/exoplayer/source/e0;->b:Landroidx/media3/exoplayer/source/e0$b;

    .line 51
    .line 52
    invoke-virtual {p3, p2, p4}, Landroidx/media3/exoplayer/source/c0;->m(Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/exoplayer/source/e0$b;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 56
    .line 57
    iget p2, p0, Landroidx/media3/exoplayer/source/e0;->s:I

    .line 58
    .line 59
    add-int/2addr p2, v2

    .line 60
    iput p2, p0, Landroidx/media3/exoplayer/source/e0;->s:I

    .line 61
    .line 62
    :cond_4
    return p1
.end method

.method public W()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/e0;->Z(Z)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/e0;->X()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final Y()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/e0;->Z(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public Z(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->a:Landroidx/media3/exoplayer/source/c0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/c0;->n()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroidx/media3/exoplayer/source/e0;->p:I

    .line 8
    .line 9
    iput v0, p0, Landroidx/media3/exoplayer/source/e0;->q:I

    .line 10
    .line 11
    iput v0, p0, Landroidx/media3/exoplayer/source/e0;->r:I

    .line 12
    .line 13
    iput v0, p0, Landroidx/media3/exoplayer/source/e0;->s:I

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/e0;->x:Z

    .line 17
    .line 18
    const-wide/high16 v2, -0x8000000000000000L

    .line 19
    .line 20
    iput-wide v2, p0, Landroidx/media3/exoplayer/source/e0;->t:J

    .line 21
    .line 22
    iput-wide v2, p0, Landroidx/media3/exoplayer/source/e0;->u:J

    .line 23
    .line 24
    iput-wide v2, p0, Landroidx/media3/exoplayer/source/e0;->v:J

    .line 25
    .line 26
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/e0;->w:Z

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->c:Landroidx/media3/exoplayer/source/j0;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/j0;->c()V

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Landroidx/media3/exoplayer/source/e0;->A:Landroidx/media3/common/r;

    .line 37
    .line 38
    iput-object p1, p0, Landroidx/media3/exoplayer/source/e0;->B:Landroidx/media3/common/r;

    .line 39
    .line 40
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/e0;->y:Z

    .line 41
    .line 42
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/e0;->D:Z

    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public final a(Landroidx/media3/common/util/j0;II)V
    .locals 0

    .line 1
    iget-object p3, p0, Landroidx/media3/exoplayer/source/e0;->a:Landroidx/media3/exoplayer/source/c0;

    .line 2
    .line 3
    invoke-virtual {p3, p1, p2}, Landroidx/media3/exoplayer/source/c0;->q(Landroidx/media3/common/util/j0;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(JIIILk2/s0$a;)V
    .locals 11

    .line 1
    move-object v8, p0

    .line 2
    iget-boolean v0, v8, Landroidx/media3/exoplayer/source/e0;->z:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v8, Landroidx/media3/exoplayer/source/e0;->A:Landroidx/media3/common/r;

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroidx/media3/common/r;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/e0;->d(Landroidx/media3/common/r;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    and-int/lit8 v0, p3, 0x1

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    move v3, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v3, v1

    .line 26
    :goto_0
    iget-boolean v4, v8, Landroidx/media3/exoplayer/source/e0;->x:Z

    .line 27
    .line 28
    if-eqz v4, :cond_3

    .line 29
    .line 30
    if-nez v3, :cond_2

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    iput-boolean v1, v8, Landroidx/media3/exoplayer/source/e0;->x:Z

    .line 34
    .line 35
    :cond_3
    iget-wide v4, v8, Landroidx/media3/exoplayer/source/e0;->F:J

    .line 36
    .line 37
    add-long/2addr v4, p1

    .line 38
    iget-boolean v6, v8, Landroidx/media3/exoplayer/source/e0;->D:Z

    .line 39
    .line 40
    if-eqz v6, :cond_6

    .line 41
    .line 42
    iget-wide v6, v8, Landroidx/media3/exoplayer/source/e0;->t:J

    .line 43
    .line 44
    cmp-long v6, v4, v6

    .line 45
    .line 46
    if-gez v6, :cond_4

    .line 47
    .line 48
    return-void

    .line 49
    :cond_4
    if-nez v0, :cond_6

    .line 50
    .line 51
    iget-boolean v0, v8, Landroidx/media3/exoplayer/source/e0;->E:Z

    .line 52
    .line 53
    if-nez v0, :cond_5

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v6, "Overriding unexpected non-sync sample for format: "

    .line 61
    .line 62
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v6, v8, Landroidx/media3/exoplayer/source/e0;->B:Landroidx/media3/common/r;

    .line 66
    .line 67
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v6, "SampleQueue"

    .line 75
    .line 76
    invoke-static {v6, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iput-boolean v2, v8, Landroidx/media3/exoplayer/source/e0;->E:Z

    .line 80
    .line 81
    :cond_5
    or-int/lit8 v0, p3, 0x1

    .line 82
    .line 83
    move v6, v0

    .line 84
    goto :goto_1

    .line 85
    :cond_6
    move v6, p3

    .line 86
    :goto_1
    iget-boolean v0, v8, Landroidx/media3/exoplayer/source/e0;->G:Z

    .line 87
    .line 88
    if-eqz v0, :cond_9

    .line 89
    .line 90
    if-eqz v3, :cond_8

    .line 91
    .line 92
    invoke-direct {p0, v4, v5}, Landroidx/media3/exoplayer/source/e0;->i(J)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_7

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_7
    iput-boolean v1, v8, Landroidx/media3/exoplayer/source/e0;->G:Z

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_8
    :goto_2
    return-void

    .line 103
    :cond_9
    :goto_3
    iget-object v0, v8, Landroidx/media3/exoplayer/source/e0;->a:Landroidx/media3/exoplayer/source/c0;

    .line 104
    .line 105
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/c0;->e()J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    move v7, p4

    .line 110
    int-to-long v2, v7

    .line 111
    sub-long/2addr v0, v2

    .line 112
    move/from16 v2, p5

    .line 113
    .line 114
    int-to-long v2, v2

    .line 115
    sub-long v9, v0, v2

    .line 116
    .line 117
    move-object v0, p0

    .line 118
    move-wide v1, v4

    .line 119
    move v3, v6

    .line 120
    move-wide v4, v9

    .line 121
    move v6, p4

    .line 122
    move-object/from16 v7, p6

    .line 123
    .line 124
    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/source/e0;->j(JIJILk2/s0$a;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public final declared-synchronized b0(I)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/e0;->a0()V

    .line 3
    .line 4
    .line 5
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->q:I

    .line 6
    .line 7
    if-lt p1, v0, :cond_1

    .line 8
    .line 9
    iget v1, p0, Landroidx/media3/exoplayer/source/e0;->p:I

    .line 10
    .line 11
    add-int/2addr v1, v0

    .line 12
    if-le p1, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    .line 16
    .line 17
    iput-wide v1, p0, Landroidx/media3/exoplayer/source/e0;->t:J

    .line 18
    .line 19
    sub-int/2addr p1, v0

    .line 20
    iput p1, p0, Landroidx/media3/exoplayer/source/e0;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    monitor-exit p0

    .line 28
    const/4 p1, 0x0

    .line 29
    return p1

    .line 30
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p1
.end method

.method public synthetic c(Landroidx/media3/common/util/j0;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lk2/r0;->c(Lk2/s0;Landroidx/media3/common/util/j0;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final declared-synchronized c0(JZ)Z
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/e0;->a0()V

    .line 3
    .line 4
    .line 5
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->s:I

    .line 6
    .line 7
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/e0;->G(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/e0;->K()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v7, 0x0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->n:[J

    .line 19
    .line 20
    aget-wide v3, v0, v2

    .line 21
    .line 22
    cmp-long v0, p1, v3

    .line 23
    .line 24
    if-ltz v0, :cond_3

    .line 25
    .line 26
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/e0;->v:J

    .line 27
    .line 28
    cmp-long v0, p1, v0

    .line 29
    .line 30
    if-lez v0, :cond_0

    .line 31
    .line 32
    if-nez p3, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/e0;->D:Z

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->p:I

    .line 40
    .line 41
    iget v1, p0, Landroidx/media3/exoplayer/source/e0;->s:I

    .line 42
    .line 43
    sub-int v3, v0, v1

    .line 44
    .line 45
    move-object v1, p0

    .line 46
    move-wide v4, p1

    .line 47
    move v6, p3

    .line 48
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/source/e0;->x(IIJZ)I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_2

    .line 55
    :cond_1
    iget p3, p0, Landroidx/media3/exoplayer/source/e0;->p:I

    .line 56
    .line 57
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->s:I

    .line 58
    .line 59
    sub-int v3, p3, v0

    .line 60
    .line 61
    const/4 v6, 0x1

    .line 62
    move-object v1, p0

    .line 63
    move-wide v4, p1

    .line 64
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/source/e0;->y(IIJZ)I

    .line 65
    .line 66
    .line 67
    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :goto_0
    const/4 v0, -0x1

    .line 69
    if-ne p3, v0, :cond_2

    .line 70
    .line 71
    monitor-exit p0

    .line 72
    return v7

    .line 73
    :cond_2
    :try_start_1
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/e0;->t:J

    .line 74
    .line 75
    iget p1, p0, Landroidx/media3/exoplayer/source/e0;->s:I

    .line 76
    .line 77
    add-int/2addr p1, p3

    .line 78
    iput p1, p0, Landroidx/media3/exoplayer/source/e0;->s:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    monitor-exit p0

    .line 81
    const/4 p1, 0x1

    .line 82
    return p1

    .line 83
    :cond_3
    :goto_1
    monitor-exit p0

    .line 84
    return v7

    .line 85
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    throw p1
.end method

.method public final d(Landroidx/media3/common/r;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/e0;->z(Landroidx/media3/common/r;)Landroidx/media3/common/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/e0;->z:Z

    .line 7
    .line 8
    iput-object p1, p0, Landroidx/media3/exoplayer/source/e0;->A:Landroidx/media3/common/r;

    .line 9
    .line 10
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/e0;->f0(Landroidx/media3/common/r;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget-object v1, p0, Landroidx/media3/exoplayer/source/e0;->f:Landroidx/media3/exoplayer/source/e0$d;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/source/e0$d;->c(Landroidx/media3/common/r;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final d0(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/e0;->F:J

    .line 2
    .line 3
    cmp-long v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/e0;->F:J

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/e0;->L()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public synthetic e(Landroidx/media3/common/j;IZ)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lk2/r0;->b(Lk2/s0;Landroidx/media3/common/j;IZ)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final e0(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/e0;->t:J

    .line 2
    .line 3
    return-void
.end method

.method public synthetic f(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lk2/r0;->a(Lk2/s0;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final g(Landroidx/media3/common/j;IZI)I
    .locals 0

    .line 1
    iget-object p4, p0, Landroidx/media3/exoplayer/source/e0;->a:Landroidx/media3/exoplayer/source/c0;

    .line 2
    .line 3
    invoke-virtual {p4, p1, p2, p3}, Landroidx/media3/exoplayer/source/c0;->p(Landroidx/media3/common/j;IZ)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final g0(Landroidx/media3/exoplayer/source/e0$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/e0;->f:Landroidx/media3/exoplayer/source/e0$d;

    .line 2
    .line 3
    return-void
.end method

.method public final declared-synchronized h0(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->s:I

    .line 5
    .line 6
    add-int/2addr v0, p1

    .line 7
    iget v1, p0, Landroidx/media3/exoplayer/source/e0;->p:I

    .line 8
    .line 9
    if-gt v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    .line 17
    .line 18
    .line 19
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->s:I

    .line 20
    .line 21
    add-int/2addr v0, p1

    .line 22
    iput v0, p0, Landroidx/media3/exoplayer/source/e0;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p1
.end method

.method public final i0(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/e0;->C:J

    .line 2
    .line 3
    return-void
.end method

.method public final j0()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/e0;->G:Z

    .line 3
    .line 4
    return-void
.end method

.method public declared-synchronized p()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    const-wide/16 v0, -0x1

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/e0;->q(I)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-wide v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    throw v0
.end method

.method public final r(JZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->a:Landroidx/media3/exoplayer/source/c0;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/e0;->n(JZZ)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/source/c0;->b(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final s()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->a:Landroidx/media3/exoplayer/source/c0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/e0;->o()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/source/c0;->b(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final t()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->a:Landroidx/media3/exoplayer/source/c0;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/e0;->p()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/source/c0;->b(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final u(J)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/source/e0;->p:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/e0;->D()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    cmp-long v0, p1, v0

    .line 11
    .line 12
    if-lez v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/e0;->k(J)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget p2, p0, Landroidx/media3/exoplayer/source/e0;->q:I

    .line 25
    .line 26
    add-int/2addr p2, p1

    .line 27
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/source/e0;->w(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final w(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/e0;->a:Landroidx/media3/exoplayer/source/c0;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/e0;->v(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/source/c0;->c(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected z(Landroidx/media3/common/r;)Landroidx/media3/common/r;
    .locals 5

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/e0;->F:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p1, Landroidx/media3/common/r;->t:J

    .line 10
    .line 11
    const-wide v2, 0x7fffffffffffffffL

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    cmp-long v0, v0, v2

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-wide v1, p1, Landroidx/media3/common/r;->t:J

    .line 25
    .line 26
    iget-wide v3, p0, Landroidx/media3/exoplayer/source/e0;->F:J

    .line 27
    .line 28
    add-long/2addr v1, v3

    .line 29
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/r$b;->y0(J)Landroidx/media3/common/r$b;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :cond_0
    return-object p1
.end method
