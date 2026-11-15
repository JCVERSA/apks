.class final Landroidx/media3/exoplayer/hls/r;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Loader$b;
.implements Landroidx/media3/exoplayer/upstream/Loader$e;
.implements Landroidx/media3/exoplayer/source/f0;
.implements Lk2/t;
.implements Landroidx/media3/exoplayer/source/e0$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/r$b;,
        Landroidx/media3/exoplayer/hls/r$d;,
        Landroidx/media3/exoplayer/hls/r$c;
    }
.end annotation


# static fields
.field private static final Y:Ljava/util/Set;


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:Z

.field private E:I

.field private F:Landroidx/media3/common/r;

.field private G:Landroidx/media3/common/r;

.field private H:Z

.field private I:Lf2/z;

.field private J:Ljava/util/Set;

.field private K:[I

.field private L:I

.field private M:Z

.field private N:[Z

.field private O:[Z

.field private P:J

.field private Q:J

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:J

.field private W:Landroidx/media3/common/DrmInitData;

.field private X:Landroidx/media3/exoplayer/hls/i;

.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Landroidx/media3/exoplayer/hls/r$b;

.field private final d:Landroidx/media3/exoplayer/hls/e;

.field private final e:Landroidx/media3/exoplayer/upstream/b;

.field private final f:Landroidx/media3/common/r;

.field private final g:Landroidx/media3/exoplayer/drm/t;

.field private final h:Landroidx/media3/exoplayer/drm/r$a;

.field private final i:Landroidx/media3/exoplayer/upstream/m;

.field private final j:Landroidx/media3/exoplayer/upstream/Loader;

.field private final k:Landroidx/media3/exoplayer/source/s$a;

.field private final l:I

.field private final m:Landroidx/media3/exoplayer/hls/e$b;

.field private final n:Ljava/util/ArrayList;

.field private final o:Ljava/util/List;

.field private final p:Ljava/lang/Runnable;

.field private final q:Ljava/lang/Runnable;

.field private final r:Landroid/os/Handler;

.field private final s:Ljava/util/ArrayList;

.field private final t:Ljava/util/Map;

.field private u:Lg2/e;

.field private v:[Landroidx/media3/exoplayer/hls/r$d;

.field private w:[I

.field private x:Ljava/util/Set;

.field private y:Landroid/util/SparseIntArray;

.field private z:Lk2/s0;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x2

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const/4 v5, 0x5

    .line 14
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    const/4 v6, 0x3

    .line 19
    new-array v6, v6, [Ljava/lang/Integer;

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    aput-object v2, v6, v7

    .line 23
    .line 24
    aput-object v4, v6, v1

    .line 25
    .line 26
    aput-object v5, v6, v3

    .line 27
    .line 28
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Landroidx/media3/exoplayer/hls/r;->Y:Ljava/util/Set;

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroidx/media3/exoplayer/hls/r$b;Landroidx/media3/exoplayer/hls/e;Ljava/util/Map;Landroidx/media3/exoplayer/upstream/b;JLandroidx/media3/common/r;Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/upstream/m;Landroidx/media3/exoplayer/source/s$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/exoplayer/hls/r;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/hls/r;->c:Landroidx/media3/exoplayer/hls/r$b;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/media3/exoplayer/hls/r;->t:Ljava/util/Map;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/media3/exoplayer/hls/r;->e:Landroidx/media3/exoplayer/upstream/b;

    .line 15
    .line 16
    iput-object p9, p0, Landroidx/media3/exoplayer/hls/r;->f:Landroidx/media3/common/r;

    .line 17
    .line 18
    iput-object p10, p0, Landroidx/media3/exoplayer/hls/r;->g:Landroidx/media3/exoplayer/drm/t;

    .line 19
    .line 20
    iput-object p11, p0, Landroidx/media3/exoplayer/hls/r;->h:Landroidx/media3/exoplayer/drm/r$a;

    .line 21
    .line 22
    iput-object p12, p0, Landroidx/media3/exoplayer/hls/r;->i:Landroidx/media3/exoplayer/upstream/m;

    .line 23
    .line 24
    iput-object p13, p0, Landroidx/media3/exoplayer/hls/r;->k:Landroidx/media3/exoplayer/source/s$a;

    .line 25
    .line 26
    iput p14, p0, Landroidx/media3/exoplayer/hls/r;->l:I

    .line 27
    .line 28
    new-instance p1, Landroidx/media3/exoplayer/upstream/Loader;

    .line 29
    .line 30
    const-string p2, "Loader:HlsSampleStreamWrapper"

    .line 31
    .line 32
    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    .line 36
    .line 37
    new-instance p1, Landroidx/media3/exoplayer/hls/e$b;

    .line 38
    .line 39
    invoke-direct {p1}, Landroidx/media3/exoplayer/hls/e$b;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->m:Landroidx/media3/exoplayer/hls/e$b;

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    new-array p2, p1, [I

    .line 46
    .line 47
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/r;->w:[I

    .line 48
    .line 49
    new-instance p2, Ljava/util/HashSet;

    .line 50
    .line 51
    sget-object p3, Landroidx/media3/exoplayer/hls/r;->Y:Ljava/util/Set;

    .line 52
    .line 53
    invoke-interface {p3}, Ljava/util/Set;->size()I

    .line 54
    .line 55
    .line 56
    move-result p4

    .line 57
    invoke-direct {p2, p4}, Ljava/util/HashSet;-><init>(I)V

    .line 58
    .line 59
    .line 60
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/r;->x:Ljava/util/Set;

    .line 61
    .line 62
    new-instance p2, Landroid/util/SparseIntArray;

    .line 63
    .line 64
    invoke-interface {p3}, Ljava/util/Set;->size()I

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    invoke-direct {p2, p3}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 69
    .line 70
    .line 71
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/r;->y:Landroid/util/SparseIntArray;

    .line 72
    .line 73
    new-array p2, p1, [Landroidx/media3/exoplayer/hls/r$d;

    .line 74
    .line 75
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 76
    .line 77
    new-array p2, p1, [Z

    .line 78
    .line 79
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/r;->O:[Z

    .line 80
    .line 81
    new-array p1, p1, [Z

    .line 82
    .line 83
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->N:[Z

    .line 84
    .line 85
    new-instance p1, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->o:Ljava/util/List;

    .line 97
    .line 98
    new-instance p1, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->s:Ljava/util/ArrayList;

    .line 104
    .line 105
    new-instance p1, Landroidx/media3/exoplayer/hls/o;

    .line 106
    .line 107
    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/hls/o;-><init>(Landroidx/media3/exoplayer/hls/r;)V

    .line 108
    .line 109
    .line 110
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->p:Ljava/lang/Runnable;

    .line 111
    .line 112
    new-instance p1, Landroidx/media3/exoplayer/hls/p;

    .line 113
    .line 114
    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/hls/p;-><init>(Landroidx/media3/exoplayer/hls/r;)V

    .line 115
    .line 116
    .line 117
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->q:Ljava/lang/Runnable;

    .line 118
    .line 119
    invoke-static {}, Landroidx/media3/common/util/a1;->A()Landroid/os/Handler;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->r:Landroid/os/Handler;

    .line 124
    .line 125
    iput-wide p7, p0, Landroidx/media3/exoplayer/hls/r;->P:J

    .line 126
    .line 127
    iput-wide p7, p0, Landroidx/media3/exoplayer/hls/r;->Q:J

    .line 128
    .line 129
    return-void
.end method

.method private A()Landroidx/media3/exoplayer/hls/i;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/media3/exoplayer/hls/i;

    .line 14
    .line 15
    return-object v0
.end method

.method private B(II)Lk2/s0;
    .locals 3

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/hls/r;->Y:Ljava/util/Set;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->y:Landroid/util/SparseIntArray;

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return-object p1

    .line 25
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->x:Ljava/util/Set;

    .line 26
    .line 27
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->w:[I

    .line 38
    .line 39
    aput p1, v1, v0

    .line 40
    .line 41
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->w:[I

    .line 42
    .line 43
    aget v1, v1, v0

    .line 44
    .line 45
    if-ne v1, p1, :cond_2

    .line 46
    .line 47
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 48
    .line 49
    aget-object p1, p1, v0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/hls/r;->s(II)Lk2/n;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :goto_0
    return-object p1
.end method

.method private static C(I)I
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
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    return v1

    .line 13
    :cond_1
    return v2

    .line 14
    :cond_2
    return v0
.end method

.method private D(Landroidx/media3/exoplayer/hls/i;)V
    .locals 6

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->X:Landroidx/media3/exoplayer/hls/i;

    .line 2
    .line 3
    iget-object v0, p1, Lg2/e;->d:Landroidx/media3/common/r;

    .line 4
    .line 5
    iput-object v0, p0, Landroidx/media3/exoplayer/hls/r;->F:Landroidx/media3/common/r;

    .line 6
    .line 7
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    iput-wide v0, p0, Landroidx/media3/exoplayer/hls/r;->Q:J

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 24
    .line 25
    array-length v2, v1

    .line 26
    const/4 v3, 0x0

    .line 27
    move v4, v3

    .line 28
    :goto_0
    if-ge v4, v2, :cond_0

    .line 29
    .line 30
    aget-object v5, v1, v4

    .line 31
    .line 32
    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/e0;->J()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, p0, v0}, Landroidx/media3/exoplayer/hls/i;->l(Landroidx/media3/exoplayer/hls/r;Lcom/google/common/collect/ImmutableList;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 54
    .line 55
    array-length v1, v0

    .line 56
    :goto_1
    if-ge v3, v1, :cond_2

    .line 57
    .line 58
    aget-object v2, v0, v3

    .line 59
    .line 60
    invoke-virtual {v2, p1}, Landroidx/media3/exoplayer/hls/r$d;->m0(Landroidx/media3/exoplayer/hls/i;)V

    .line 61
    .line 62
    .line 63
    iget-boolean v4, p1, Landroidx/media3/exoplayer/hls/i;->n:Z

    .line 64
    .line 65
    if-eqz v4, :cond_1

    .line 66
    .line 67
    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/e0;->j0()V

    .line 68
    .line 69
    .line 70
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    return-void
.end method

.method private static E(Lg2/e;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Landroidx/media3/exoplayer/hls/i;

    .line 2
    .line 3
    return p0
.end method

.method private F()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/r;->Q:J

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
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method private synthetic I(Landroidx/media3/exoplayer/hls/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->c:Landroidx/media3/exoplayer/hls/r$b;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/media3/exoplayer/hls/i;->m:Landroid/net/Uri;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/hls/r$b;->d(Landroid/net/Uri;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private J()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->I:Lf2/z;

    .line 2
    .line 3
    iget v0, v0, Lf2/z;->a:I

    .line 4
    .line 5
    new-array v1, v0, [I

    .line 6
    .line 7
    iput-object v1, p0, Landroidx/media3/exoplayer/hls/r;->K:[I

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    :goto_0
    if-ge v2, v0, :cond_2

    .line 16
    .line 17
    move v3, v1

    .line 18
    :goto_1
    iget-object v4, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 19
    .line 20
    array-length v5, v4

    .line 21
    if-ge v3, v5, :cond_1

    .line 22
    .line 23
    aget-object v4, v4, v3

    .line 24
    .line 25
    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/e0;->I()Landroidx/media3/common/r;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {v4}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Landroidx/media3/common/r;

    .line 34
    .line 35
    iget-object v5, p0, Landroidx/media3/exoplayer/hls/r;->I:Lf2/z;

    .line 36
    .line 37
    invoke-virtual {v5, v2}, Lf2/z;->b(I)Landroidx/media3/common/f0;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v5, v1}, Landroidx/media3/common/f0;->a(I)Landroidx/media3/common/r;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-static {v4, v5}, Landroidx/media3/exoplayer/hls/r;->z(Landroidx/media3/common/r;Landroidx/media3/common/r;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    iget-object v4, p0, Landroidx/media3/exoplayer/hls/r;->K:[I

    .line 52
    .line 53
    aput v3, v4, v2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->s:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Landroidx/media3/exoplayer/hls/m;

    .line 79
    .line 80
    invoke-virtual {v1}, Landroidx/media3/exoplayer/hls/m;->a()V

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_3
    return-void
.end method

.method private K()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->H:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->K:[I

    .line 6
    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->C:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 15
    .line 16
    array-length v1, v0

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v2, v1, :cond_2

    .line 19
    .line 20
    aget-object v3, v0, v2

    .line 21
    .line 22
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/e0;->I()Landroidx/media3/common/r;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->I:Lf2/z;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->J()V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->m()V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->d0()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->c:Landroidx/media3/exoplayer/hls/r$b;

    .line 47
    .line 48
    invoke-interface {v0}, Landroidx/media3/exoplayer/hls/r$b;->onPrepared()V

    .line 49
    .line 50
    .line 51
    :cond_4
    :goto_1
    return-void
.end method

.method private U()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->C:Z

    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->K()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private Y()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v3, v1, :cond_0

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    iget-boolean v5, p0, Landroidx/media3/exoplayer/hls/r;->R:Z

    .line 11
    .line 12
    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/source/e0;->Z(Z)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iput-boolean v2, p0, Landroidx/media3/exoplayer/hls/r;->R:Z

    .line 19
    .line 20
    return-void
.end method

.method private Z(JLandroidx/media3/exoplayer/hls/i;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    if-ge v2, v0, :cond_3

    .line 7
    .line 8
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 9
    .line 10
    aget-object v3, v3, v2

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    invoke-virtual {p3, v2}, Landroidx/media3/exoplayer/hls/i;->k(I)I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/source/e0;->b0(I)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {v3, p1, p2, v1}, Landroidx/media3/exoplayer/source/e0;->c0(JZ)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    :goto_1
    if-nez v3, :cond_2

    .line 28
    .line 29
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->O:[Z

    .line 30
    .line 31
    aget-boolean v3, v3, v2

    .line 32
    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    iget-boolean v3, p0, Landroidx/media3/exoplayer/hls/r;->M:Z

    .line 36
    .line 37
    if-nez v3, :cond_2

    .line 38
    .line 39
    :cond_1
    return v1

    .line 40
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const/4 p1, 0x1

    .line 44
    return p1
.end method

.method private d0()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->D:Z

    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Landroidx/media3/exoplayer/hls/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->U()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Landroidx/media3/exoplayer/hls/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->K()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Landroidx/media3/exoplayer/hls/r;Landroidx/media3/exoplayer/hls/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/r;->I(Landroidx/media3/exoplayer/hls/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private i0([Lf2/u;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->s:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    aget-object v2, p1, v1

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->s:Ljava/util/ArrayList;

    .line 15
    .line 16
    check-cast v2, Landroidx/media3/exoplayer/hls/m;

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return-void
.end method

.method private j()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->D:Z

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->I:Lf2/z;

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->J:Ljava/util/Set;

    .line 12
    .line 13
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private m()V
    .locals 15

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 3
    .line 4
    array-length v1, v1

    .line 5
    const/4 v2, -0x2

    .line 6
    const/4 v3, -0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    move v6, v2

    .line 9
    move v7, v3

    .line 10
    move v5, v4

    .line 11
    :goto_0
    const/4 v8, 0x2

    .line 12
    if-ge v5, v1, :cond_5

    .line 13
    .line 14
    iget-object v9, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 15
    .line 16
    aget-object v9, v9, v5

    .line 17
    .line 18
    invoke-virtual {v9}, Landroidx/media3/exoplayer/source/e0;->I()Landroidx/media3/common/r;

    .line 19
    .line 20
    .line 21
    move-result-object v9

    .line 22
    invoke-static {v9}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v9

    .line 26
    check-cast v9, Landroidx/media3/common/r;

    .line 27
    .line 28
    iget-object v9, v9, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v9}, Landroidx/media3/common/y;->t(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    if-eqz v10, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-static {v9}, Landroidx/media3/common/y;->o(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    if-eqz v8, :cond_1

    .line 42
    .line 43
    move v8, v0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-static {v9}, Landroidx/media3/common/y;->s(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-eqz v8, :cond_2

    .line 50
    .line 51
    const/4 v8, 0x3

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move v8, v2

    .line 54
    :goto_1
    invoke-static {v8}, Landroidx/media3/exoplayer/hls/r;->C(I)I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    invoke-static {v6}, Landroidx/media3/exoplayer/hls/r;->C(I)I

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    if-le v9, v10, :cond_3

    .line 63
    .line 64
    move v7, v5

    .line 65
    move v6, v8

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    if-ne v8, v6, :cond_4

    .line 68
    .line 69
    if-eq v7, v3, :cond_4

    .line 70
    .line 71
    move v7, v3

    .line 72
    :cond_4
    :goto_2
    add-int/2addr v5, v0

    .line 73
    goto :goto_0

    .line 74
    :cond_5
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    .line 75
    .line 76
    invoke-virtual {v2}, Landroidx/media3/exoplayer/hls/e;->k()Landroidx/media3/common/f0;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iget v5, v2, Landroidx/media3/common/f0;->a:I

    .line 81
    .line 82
    iput v3, p0, Landroidx/media3/exoplayer/hls/r;->L:I

    .line 83
    .line 84
    new-array v3, v1, [I

    .line 85
    .line 86
    iput-object v3, p0, Landroidx/media3/exoplayer/hls/r;->K:[I

    .line 87
    .line 88
    move v3, v4

    .line 89
    :goto_3
    if-ge v3, v1, :cond_6

    .line 90
    .line 91
    iget-object v9, p0, Landroidx/media3/exoplayer/hls/r;->K:[I

    .line 92
    .line 93
    aput v3, v9, v3

    .line 94
    .line 95
    add-int/2addr v3, v0

    .line 96
    goto :goto_3

    .line 97
    :cond_6
    new-array v3, v1, [Landroidx/media3/common/f0;

    .line 98
    .line 99
    move v9, v4

    .line 100
    :goto_4
    if-ge v9, v1, :cond_d

    .line 101
    .line 102
    iget-object v10, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 103
    .line 104
    aget-object v10, v10, v9

    .line 105
    .line 106
    invoke-virtual {v10}, Landroidx/media3/exoplayer/source/e0;->I()Landroidx/media3/common/r;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    invoke-static {v10}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    check-cast v10, Landroidx/media3/common/r;

    .line 115
    .line 116
    if-ne v9, v7, :cond_a

    .line 117
    .line 118
    new-array v11, v5, [Landroidx/media3/common/r;

    .line 119
    .line 120
    move v12, v4

    .line 121
    :goto_5
    if-ge v12, v5, :cond_9

    .line 122
    .line 123
    invoke-virtual {v2, v12}, Landroidx/media3/common/f0;->a(I)Landroidx/media3/common/r;

    .line 124
    .line 125
    .line 126
    move-result-object v13

    .line 127
    if-ne v6, v0, :cond_7

    .line 128
    .line 129
    iget-object v14, p0, Landroidx/media3/exoplayer/hls/r;->f:Landroidx/media3/common/r;

    .line 130
    .line 131
    if-eqz v14, :cond_7

    .line 132
    .line 133
    invoke-virtual {v13, v14}, Landroidx/media3/common/r;->j(Landroidx/media3/common/r;)Landroidx/media3/common/r;

    .line 134
    .line 135
    .line 136
    move-result-object v13

    .line 137
    :cond_7
    if-ne v5, v0, :cond_8

    .line 138
    .line 139
    invoke-virtual {v10, v13}, Landroidx/media3/common/r;->j(Landroidx/media3/common/r;)Landroidx/media3/common/r;

    .line 140
    .line 141
    .line 142
    move-result-object v13

    .line 143
    goto :goto_6

    .line 144
    :cond_8
    invoke-static {v13, v10, v0}, Landroidx/media3/exoplayer/hls/r;->v(Landroidx/media3/common/r;Landroidx/media3/common/r;Z)Landroidx/media3/common/r;

    .line 145
    .line 146
    .line 147
    move-result-object v13

    .line 148
    :goto_6
    aput-object v13, v11, v12

    .line 149
    .line 150
    add-int/2addr v12, v0

    .line 151
    goto :goto_5

    .line 152
    :cond_9
    new-instance v10, Landroidx/media3/common/f0;

    .line 153
    .line 154
    iget-object v12, p0, Landroidx/media3/exoplayer/hls/r;->a:Ljava/lang/String;

    .line 155
    .line 156
    invoke-direct {v10, v12, v11}, Landroidx/media3/common/f0;-><init>(Ljava/lang/String;[Landroidx/media3/common/r;)V

    .line 157
    .line 158
    .line 159
    aput-object v10, v3, v9

    .line 160
    .line 161
    iput v9, p0, Landroidx/media3/exoplayer/hls/r;->L:I

    .line 162
    .line 163
    goto :goto_9

    .line 164
    :cond_a
    if-ne v6, v8, :cond_b

    .line 165
    .line 166
    iget-object v11, v10, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 167
    .line 168
    invoke-static {v11}, Landroidx/media3/common/y;->o(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v11

    .line 172
    if-eqz v11, :cond_b

    .line 173
    .line 174
    iget-object v11, p0, Landroidx/media3/exoplayer/hls/r;->f:Landroidx/media3/common/r;

    .line 175
    .line 176
    goto :goto_7

    .line 177
    :cond_b
    const/4 v11, 0x0

    .line 178
    :goto_7
    new-instance v12, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    iget-object v13, p0, Landroidx/media3/exoplayer/hls/r;->a:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v13, ":muxed:"

    .line 189
    .line 190
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    if-ge v9, v7, :cond_c

    .line 194
    .line 195
    move v13, v9

    .line 196
    goto :goto_8

    .line 197
    :cond_c
    add-int/lit8 v13, v9, -0x1

    .line 198
    .line 199
    :goto_8
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v12

    .line 206
    new-instance v13, Landroidx/media3/common/f0;

    .line 207
    .line 208
    invoke-static {v11, v10, v4}, Landroidx/media3/exoplayer/hls/r;->v(Landroidx/media3/common/r;Landroidx/media3/common/r;Z)Landroidx/media3/common/r;

    .line 209
    .line 210
    .line 211
    move-result-object v10

    .line 212
    new-array v11, v0, [Landroidx/media3/common/r;

    .line 213
    .line 214
    aput-object v10, v11, v4

    .line 215
    .line 216
    invoke-direct {v13, v12, v11}, Landroidx/media3/common/f0;-><init>(Ljava/lang/String;[Landroidx/media3/common/r;)V

    .line 217
    .line 218
    .line 219
    aput-object v13, v3, v9

    .line 220
    .line 221
    :goto_9
    add-int/2addr v9, v0

    .line 222
    goto :goto_4

    .line 223
    :cond_d
    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/hls/r;->u([Landroidx/media3/common/f0;)Lf2/z;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    iput-object v1, p0, Landroidx/media3/exoplayer/hls/r;->I:Lf2/z;

    .line 228
    .line 229
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->J:Ljava/util/Set;

    .line 230
    .line 231
    if-nez v1, :cond_e

    .line 232
    .line 233
    goto :goto_a

    .line 234
    :cond_e
    move v0, v4

    .line 235
    :goto_a
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 236
    .line 237
    .line 238
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    iput-object v0, p0, Landroidx/media3/exoplayer/hls/r;->J:Ljava/util/Set;

    .line 243
    .line 244
    return-void
.end method

.method private n(I)Z
    .locals 4

    .line 1
    move v0, p1

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/media3/exoplayer/hls/i;

    .line 18
    .line 19
    iget-boolean v1, v1, Landroidx/media3/exoplayer/hls/i;->n:Z

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    return v2

    .line 24
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroidx/media3/exoplayer/hls/i;

    .line 34
    .line 35
    move v0, v2

    .line 36
    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 37
    .line 38
    array-length v1, v1

    .line 39
    if-ge v0, v1, :cond_3

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/hls/i;->k(I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 46
    .line 47
    aget-object v3, v3, v0

    .line 48
    .line 49
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/e0;->F()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-le v3, v1, :cond_2

    .line 54
    .line 55
    return v2

    .line 56
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    const/4 p1, 0x1

    .line 60
    return p1
.end method

.method private static s(II)Lk2/n;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Unmapped track with id "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p0, " of type "

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "HlsSampleStreamWrapper"

    .line 27
    .line 28
    invoke-static {p1, p0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance p0, Lk2/n;

    .line 32
    .line 33
    invoke-direct {p0}, Lk2/n;-><init>()V

    .line 34
    .line 35
    .line 36
    return-object p0
.end method

.method private t(II)Landroidx/media3/exoplayer/source/e0;
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq p2, v1, :cond_1

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    if-ne p2, v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :cond_1
    :goto_0
    new-instance v8, Landroidx/media3/exoplayer/hls/r$d;

    .line 13
    .line 14
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->e:Landroidx/media3/exoplayer/upstream/b;

    .line 15
    .line 16
    iget-object v4, p0, Landroidx/media3/exoplayer/hls/r;->g:Landroidx/media3/exoplayer/drm/t;

    .line 17
    .line 18
    iget-object v5, p0, Landroidx/media3/exoplayer/hls/r;->h:Landroidx/media3/exoplayer/drm/r$a;

    .line 19
    .line 20
    iget-object v6, p0, Landroidx/media3/exoplayer/hls/r;->t:Ljava/util/Map;

    .line 21
    .line 22
    const/4 v7, 0x0

    .line 23
    move-object v2, v8

    .line 24
    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/hls/r$d;-><init>(Landroidx/media3/exoplayer/upstream/b;Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/drm/r$a;Ljava/util/Map;Landroidx/media3/exoplayer/hls/r$a;)V

    .line 25
    .line 26
    .line 27
    iget-wide v2, p0, Landroidx/media3/exoplayer/hls/r;->P:J

    .line 28
    .line 29
    invoke-virtual {v8, v2, v3}, Landroidx/media3/exoplayer/source/e0;->e0(J)V

    .line 30
    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/r;->W:Landroidx/media3/common/DrmInitData;

    .line 35
    .line 36
    invoke-virtual {v8, v2}, Landroidx/media3/exoplayer/hls/r$d;->l0(Landroidx/media3/common/DrmInitData;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-wide v2, p0, Landroidx/media3/exoplayer/hls/r;->V:J

    .line 40
    .line 41
    invoke-virtual {v8, v2, v3}, Landroidx/media3/exoplayer/source/e0;->d0(J)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/r;->X:Landroidx/media3/exoplayer/hls/i;

    .line 45
    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    invoke-virtual {v8, v2}, Landroidx/media3/exoplayer/hls/r$d;->m0(Landroidx/media3/exoplayer/hls/i;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-virtual {v8, p0}, Landroidx/media3/exoplayer/source/e0;->g0(Landroidx/media3/exoplayer/source/e0$d;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/r;->w:[I

    .line 55
    .line 56
    add-int/lit8 v3, v0, 0x1

    .line 57
    .line 58
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iput-object v2, p0, Landroidx/media3/exoplayer/hls/r;->w:[I

    .line 63
    .line 64
    aput p1, v2, v0

    .line 65
    .line 66
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 67
    .line 68
    invoke-static {p1, v8}, Landroidx/media3/common/util/a1;->V0([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, [Landroidx/media3/exoplayer/hls/r$d;

    .line 73
    .line 74
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 75
    .line 76
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->O:[Z

    .line 77
    .line 78
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->O:[Z

    .line 83
    .line 84
    aput-boolean v1, p1, v0

    .line 85
    .line 86
    iget-boolean p1, p0, Landroidx/media3/exoplayer/hls/r;->M:Z

    .line 87
    .line 88
    or-int/2addr p1, v1

    .line 89
    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/r;->M:Z

    .line 90
    .line 91
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->x:Ljava/util/Set;

    .line 92
    .line 93
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->y:Landroid/util/SparseIntArray;

    .line 101
    .line 102
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 103
    .line 104
    .line 105
    invoke-static {p2}, Landroidx/media3/exoplayer/hls/r;->C(I)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    iget v1, p0, Landroidx/media3/exoplayer/hls/r;->A:I

    .line 110
    .line 111
    invoke-static {v1}, Landroidx/media3/exoplayer/hls/r;->C(I)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-le p1, v1, :cond_4

    .line 116
    .line 117
    iput v0, p0, Landroidx/media3/exoplayer/hls/r;->B:I

    .line 118
    .line 119
    iput p2, p0, Landroidx/media3/exoplayer/hls/r;->A:I

    .line 120
    .line 121
    :cond_4
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->N:[Z

    .line 122
    .line 123
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->N:[Z

    .line 128
    .line 129
    return-object v8
.end method

.method private u([Landroidx/media3/common/f0;)Lf2/z;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    array-length v2, p1

    .line 4
    if-ge v1, v2, :cond_1

    .line 5
    .line 6
    aget-object v2, p1, v1

    .line 7
    .line 8
    iget v3, v2, Landroidx/media3/common/f0;->a:I

    .line 9
    .line 10
    new-array v3, v3, [Landroidx/media3/common/r;

    .line 11
    .line 12
    move v4, v0

    .line 13
    :goto_1
    iget v5, v2, Landroidx/media3/common/f0;->a:I

    .line 14
    .line 15
    if-ge v4, v5, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2, v4}, Landroidx/media3/common/f0;->a(I)Landroidx/media3/common/r;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    iget-object v6, p0, Landroidx/media3/exoplayer/hls/r;->g:Landroidx/media3/exoplayer/drm/t;

    .line 22
    .line 23
    invoke-interface {v6, v5}, Landroidx/media3/exoplayer/drm/t;->b(Landroidx/media3/common/r;)I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    invoke-virtual {v5, v6}, Landroidx/media3/common/r;->c(I)Landroidx/media3/common/r;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    aput-object v5, v3, v4

    .line 32
    .line 33
    add-int/lit8 v4, v4, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    new-instance v4, Landroidx/media3/common/f0;

    .line 37
    .line 38
    iget-object v2, v2, Landroidx/media3/common/f0;->b:Ljava/lang/String;

    .line 39
    .line 40
    invoke-direct {v4, v2, v3}, Landroidx/media3/common/f0;-><init>(Ljava/lang/String;[Landroidx/media3/common/r;)V

    .line 41
    .line 42
    .line 43
    aput-object v4, p1, v1

    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, Lf2/z;

    .line 49
    .line 50
    invoke-direct {v0, p1}, Lf2/z;-><init>([Landroidx/media3/common/f0;)V

    .line 51
    .line 52
    .line 53
    return-object v0
.end method

.method private static v(Landroidx/media3/common/r;Landroidx/media3/common/r;Z)Landroidx/media3/common/r;
    .locals 7

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    iget-object v0, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/media3/common/y;->k(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Landroidx/media3/common/r;->k:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v1, v0}, Landroidx/media3/common/util/a1;->R(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/media3/common/r;->k:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroidx/media3/common/util/a1;->S(Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Landroidx/media3/common/y;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v1, p0, Landroidx/media3/common/r;->k:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v1, v3}, Landroidx/media3/common/y;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v3, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    iget-object v5, p0, Landroidx/media3/common/r;->a:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    iget-object v5, p0, Landroidx/media3/common/r;->b:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->h0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    iget-object v5, p0, Landroidx/media3/common/r;->c:Ljava/util/List;

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->i0(Ljava/util/List;)Landroidx/media3/common/r$b;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    iget-object v5, p0, Landroidx/media3/common/r;->d:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    iget v5, p0, Landroidx/media3/common/r;->e:I

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->w0(I)Landroidx/media3/common/r$b;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    iget v5, p0, Landroidx/media3/common/r;->f:I

    .line 75
    .line 76
    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->s0(I)Landroidx/media3/common/r$b;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    const/4 v5, -0x1

    .line 81
    if-eqz p2, :cond_2

    .line 82
    .line 83
    iget v6, p0, Landroidx/media3/common/r;->h:I

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    move v6, v5

    .line 87
    :goto_1
    invoke-virtual {v4, v6}, Landroidx/media3/common/r$b;->Q(I)Landroidx/media3/common/r$b;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    if-eqz p2, :cond_3

    .line 92
    .line 93
    iget p2, p0, Landroidx/media3/common/r;->i:I

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    move p2, v5

    .line 97
    :goto_2
    invoke-virtual {v4, p2}, Landroidx/media3/common/r$b;->p0(I)Landroidx/media3/common/r$b;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p2, v1}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    const/4 v1, 0x2

    .line 106
    if-ne v0, v1, :cond_4

    .line 107
    .line 108
    iget v1, p0, Landroidx/media3/common/r;->v:I

    .line 109
    .line 110
    invoke-virtual {p2, v1}, Landroidx/media3/common/r$b;->B0(I)Landroidx/media3/common/r$b;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iget v4, p0, Landroidx/media3/common/r;->w:I

    .line 115
    .line 116
    invoke-virtual {v1, v4}, Landroidx/media3/common/r$b;->d0(I)Landroidx/media3/common/r$b;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iget v4, p0, Landroidx/media3/common/r;->x:F

    .line 121
    .line 122
    invoke-virtual {v1, v4}, Landroidx/media3/common/r$b;->b0(F)Landroidx/media3/common/r$b;

    .line 123
    .line 124
    .line 125
    :cond_4
    if-eqz v3, :cond_5

    .line 126
    .line 127
    invoke-virtual {p2, v3}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 128
    .line 129
    .line 130
    :cond_5
    iget v1, p0, Landroidx/media3/common/r;->E:I

    .line 131
    .line 132
    if-eq v1, v5, :cond_6

    .line 133
    .line 134
    if-ne v0, v2, :cond_6

    .line 135
    .line 136
    invoke-virtual {p2, v1}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    .line 137
    .line 138
    .line 139
    :cond_6
    iget-object p0, p0, Landroidx/media3/common/r;->l:Landroidx/media3/common/x;

    .line 140
    .line 141
    if-eqz p0, :cond_8

    .line 142
    .line 143
    iget-object p1, p1, Landroidx/media3/common/r;->l:Landroidx/media3/common/x;

    .line 144
    .line 145
    if-eqz p1, :cond_7

    .line 146
    .line 147
    invoke-virtual {p1, p0}, Landroidx/media3/common/x;->b(Landroidx/media3/common/x;)Landroidx/media3/common/x;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    :cond_7
    invoke-virtual {p2, p0}, Landroidx/media3/common/r$b;->n0(Landroidx/media3/common/x;)Landroidx/media3/common/r$b;

    .line 152
    .line 153
    .line 154
    :cond_8
    invoke-virtual {p2}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    return-object p0
.end method

.method private w(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 10
    .line 11
    .line 12
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, -0x1

    .line 19
    if-ge p1, v0, :cond_1

    .line 20
    .line 21
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/r;->n(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move p1, v1

    .line 32
    :goto_1
    if-ne p1, v1, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->A()Landroidx/media3/exoplayer/hls/i;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-wide v5, v0, Lg2/e;->h:J

    .line 40
    .line 41
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/r;->x(I)Landroidx/media3/exoplayer/hls/i;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/r;->P:J

    .line 54
    .line 55
    iput-wide v0, p0, Landroidx/media3/exoplayer/hls/r;->Q:J

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroidx/media3/exoplayer/hls/i;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/i;->m()V

    .line 67
    .line 68
    .line 69
    :goto_2
    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->T:Z

    .line 71
    .line 72
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->k:Landroidx/media3/exoplayer/source/s$a;

    .line 73
    .line 74
    iget v2, p0, Landroidx/media3/exoplayer/hls/r;->A:I

    .line 75
    .line 76
    iget-wide v3, p1, Lg2/e;->g:J

    .line 77
    .line 78
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/source/s$a;->F(IJJ)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method private x(I)Landroidx/media3/exoplayer/hls/i;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/exoplayer/hls/i;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v1, p1, v2}, Landroidx/media3/common/util/a1;->c1(Ljava/util/List;II)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 20
    .line 21
    array-length v1, v1

    .line 22
    if-ge p1, v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/hls/i;->k(I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 29
    .line 30
    aget-object v2, v2, p1

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/source/e0;->w(I)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 p1, p1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object v0
.end method

.method private y(Landroidx/media3/exoplayer/hls/i;)Z
    .locals 7

    .line 1
    iget p1, p1, Landroidx/media3/exoplayer/hls/i;->k:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v2, v0, :cond_1

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->N:[Z

    .line 11
    .line 12
    aget-boolean v3, v3, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 17
    .line 18
    aget-object v3, v3, v2

    .line 19
    .line 20
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/e0;->T()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    int-to-long v5, p1

    .line 25
    cmp-long v3, v3, v5

    .line 26
    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    return v1

    .line 30
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p1, 0x1

    .line 34
    return p1
.end method

.method private static z(Landroidx/media3/common/r;Landroidx/media3/common/r;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/y;->k(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x3

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x1

    .line 12
    if-eq v2, v3, :cond_1

    .line 13
    .line 14
    invoke-static {v1}, Landroidx/media3/common/y;->k(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-ne v2, p0, :cond_0

    .line 19
    .line 20
    move v4, v5

    .line 21
    :cond_0
    return v4

    .line 22
    :cond_1
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    return v4

    .line 29
    :cond_2
    const-string v1, "application/cea-608"

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_4

    .line 36
    .line 37
    const-string v1, "application/cea-708"

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    return v5

    .line 47
    :cond_4
    :goto_0
    iget p0, p0, Landroidx/media3/common/r;->J:I

    .line 48
    .line 49
    iget p1, p1, Landroidx/media3/common/r;->J:I

    .line 50
    .line 51
    if-ne p0, p1, :cond_5

    .line 52
    .line 53
    move v4, v5

    .line 54
    :cond_5
    return v4
.end method


# virtual methods
.method public G(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->F()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 8
    .line 9
    aget-object p1, v0, p1

    .line 10
    .line 11
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->T:Z

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/e0;->N(Z)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1
.end method

.method public H()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/hls/r;->A:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

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

.method public L()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->maybeThrowError()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/e;->p()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public M(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/r;->L()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 5
    .line 6
    aget-object p1, v0, p1

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/e0;->Q()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public N(Lg2/e;JJZ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    iput-object v2, v0, Landroidx/media3/exoplayer/hls/r;->u:Lg2/e;

    .line 6
    .line 7
    new-instance v2, Lf2/i;

    .line 8
    .line 9
    iget-wide v4, v1, Lg2/e;->a:J

    .line 10
    .line 11
    iget-object v6, v1, Lg2/e;->b:Lw1/h;

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Lg2/e;->d()Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    invoke-virtual/range {p1 .. p1}, Lg2/e;->c()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    invoke-virtual/range {p1 .. p1}, Lg2/e;->a()J

    .line 22
    .line 23
    .line 24
    move-result-wide v13

    .line 25
    move-object v3, v2

    .line 26
    move-wide/from16 v9, p2

    .line 27
    .line 28
    move-wide/from16 v11, p4

    .line 29
    .line 30
    invoke-direct/range {v3 .. v14}, Lf2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 31
    .line 32
    .line 33
    iget-object v3, v0, Landroidx/media3/exoplayer/hls/r;->i:Landroidx/media3/exoplayer/upstream/m;

    .line 34
    .line 35
    iget-wide v4, v1, Lg2/e;->a:J

    .line 36
    .line 37
    invoke-interface {v3, v4, v5}, Landroidx/media3/exoplayer/upstream/m;->b(J)V

    .line 38
    .line 39
    .line 40
    iget-object v3, v0, Landroidx/media3/exoplayer/hls/r;->k:Landroidx/media3/exoplayer/source/s$a;

    .line 41
    .line 42
    iget v5, v1, Lg2/e;->c:I

    .line 43
    .line 44
    iget v6, v0, Landroidx/media3/exoplayer/hls/r;->b:I

    .line 45
    .line 46
    iget-object v7, v1, Lg2/e;->d:Landroidx/media3/common/r;

    .line 47
    .line 48
    iget v8, v1, Lg2/e;->e:I

    .line 49
    .line 50
    iget-object v9, v1, Lg2/e;->f:Ljava/lang/Object;

    .line 51
    .line 52
    iget-wide v10, v1, Lg2/e;->g:J

    .line 53
    .line 54
    iget-wide v12, v1, Lg2/e;->h:J

    .line 55
    .line 56
    move-object v4, v2

    .line 57
    invoke-virtual/range {v3 .. v13}, Landroidx/media3/exoplayer/source/s$a;->t(Lf2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    .line 58
    .line 59
    .line 60
    if-nez p6, :cond_2

    .line 61
    .line 62
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->F()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_0

    .line 67
    .line 68
    iget v1, v0, Landroidx/media3/exoplayer/hls/r;->E:I

    .line 69
    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->Y()V

    .line 73
    .line 74
    .line 75
    :cond_1
    iget v1, v0, Landroidx/media3/exoplayer/hls/r;->E:I

    .line 76
    .line 77
    if-lez v1, :cond_2

    .line 78
    .line 79
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/r;->c:Landroidx/media3/exoplayer/hls/r$b;

    .line 80
    .line 81
    invoke-interface {v1, p0}, Landroidx/media3/exoplayer/source/f0$a;->h(Landroidx/media3/exoplayer/source/f0;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    return-void
.end method

.method public O(Lg2/e;JJ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    iput-object v2, v0, Landroidx/media3/exoplayer/hls/r;->u:Lg2/e;

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/hls/e;->r(Lg2/e;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lf2/i;

    .line 13
    .line 14
    iget-wide v4, v1, Lg2/e;->a:J

    .line 15
    .line 16
    iget-object v6, v1, Lg2/e;->b:Lw1/h;

    .line 17
    .line 18
    invoke-virtual/range {p1 .. p1}, Lg2/e;->d()Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    invoke-virtual/range {p1 .. p1}, Lg2/e;->c()Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    invoke-virtual/range {p1 .. p1}, Lg2/e;->a()J

    .line 27
    .line 28
    .line 29
    move-result-wide v13

    .line 30
    move-object v3, v2

    .line 31
    move-wide/from16 v9, p2

    .line 32
    .line 33
    move-wide/from16 v11, p4

    .line 34
    .line 35
    invoke-direct/range {v3 .. v14}, Lf2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 36
    .line 37
    .line 38
    iget-object v3, v0, Landroidx/media3/exoplayer/hls/r;->i:Landroidx/media3/exoplayer/upstream/m;

    .line 39
    .line 40
    iget-wide v4, v1, Lg2/e;->a:J

    .line 41
    .line 42
    invoke-interface {v3, v4, v5}, Landroidx/media3/exoplayer/upstream/m;->b(J)V

    .line 43
    .line 44
    .line 45
    iget-object v3, v0, Landroidx/media3/exoplayer/hls/r;->k:Landroidx/media3/exoplayer/source/s$a;

    .line 46
    .line 47
    iget v5, v1, Lg2/e;->c:I

    .line 48
    .line 49
    iget v6, v0, Landroidx/media3/exoplayer/hls/r;->b:I

    .line 50
    .line 51
    iget-object v7, v1, Lg2/e;->d:Landroidx/media3/common/r;

    .line 52
    .line 53
    iget v8, v1, Lg2/e;->e:I

    .line 54
    .line 55
    iget-object v9, v1, Lg2/e;->f:Ljava/lang/Object;

    .line 56
    .line 57
    iget-wide v10, v1, Lg2/e;->g:J

    .line 58
    .line 59
    iget-wide v12, v1, Lg2/e;->h:J

    .line 60
    .line 61
    move-object v4, v2

    .line 62
    invoke-virtual/range {v3 .. v13}, Landroidx/media3/exoplayer/source/s$a;->w(Lf2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    .line 63
    .line 64
    .line 65
    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/r;->D:Z

    .line 66
    .line 67
    if-nez v1, :cond_0

    .line 68
    .line 69
    new-instance v1, Landroidx/media3/exoplayer/v2$b;

    .line 70
    .line 71
    invoke-direct {v1}, Landroidx/media3/exoplayer/v2$b;-><init>()V

    .line 72
    .line 73
    .line 74
    iget-wide v2, v0, Landroidx/media3/exoplayer/hls/r;->P:J

    .line 75
    .line 76
    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/v2$b;->f(J)Landroidx/media3/exoplayer/v2$b;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Landroidx/media3/exoplayer/v2$b;->d()Landroidx/media3/exoplayer/v2;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/hls/r;->a(Landroidx/media3/exoplayer/v2;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/r;->c:Landroidx/media3/exoplayer/hls/r$b;

    .line 89
    .line 90
    invoke-interface {v1, p0}, Landroidx/media3/exoplayer/source/f0$a;->h(Landroidx/media3/exoplayer/source/f0;)V

    .line 91
    .line 92
    .line 93
    :goto_0
    return-void
.end method

.method public P(Lg2/e;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v13, p6

    .line 6
    .line 7
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/hls/r;->E(Lg2/e;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    move-object v3, v1

    .line 14
    check-cast v3, Landroidx/media3/exoplayer/hls/i;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/i;->o()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    instance-of v3, v13, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    move-object v3, v13

    .line 27
    check-cast v3, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    .line 28
    .line 29
    iget v3, v3, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    .line 30
    .line 31
    const/16 v4, 0x19a

    .line 32
    .line 33
    if-eq v3, v4, :cond_0

    .line 34
    .line 35
    const/16 v4, 0x194

    .line 36
    .line 37
    if-ne v3, v4, :cond_1

    .line 38
    .line 39
    :cond_0
    sget-object v1, Landroidx/media3/exoplayer/upstream/Loader;->d:Landroidx/media3/exoplayer/upstream/Loader$c;

    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lg2/e;->a()J

    .line 43
    .line 44
    .line 45
    move-result-wide v3

    .line 46
    new-instance v5, Lf2/i;

    .line 47
    .line 48
    iget-wide v6, v1, Lg2/e;->a:J

    .line 49
    .line 50
    iget-object v8, v1, Lg2/e;->b:Lw1/h;

    .line 51
    .line 52
    invoke-virtual/range {p1 .. p1}, Lg2/e;->d()Landroid/net/Uri;

    .line 53
    .line 54
    .line 55
    move-result-object v18

    .line 56
    invoke-virtual/range {p1 .. p1}, Lg2/e;->c()Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v19

    .line 60
    move-object v14, v5

    .line 61
    move-wide v15, v6

    .line 62
    move-object/from16 v17, v8

    .line 63
    .line 64
    move-wide/from16 v20, p2

    .line 65
    .line 66
    move-wide/from16 v22, p4

    .line 67
    .line 68
    move-wide/from16 v24, v3

    .line 69
    .line 70
    invoke-direct/range {v14 .. v25}, Lf2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 71
    .line 72
    .line 73
    new-instance v6, Lf2/j;

    .line 74
    .line 75
    iget v7, v1, Lg2/e;->c:I

    .line 76
    .line 77
    iget v8, v0, Landroidx/media3/exoplayer/hls/r;->b:I

    .line 78
    .line 79
    iget-object v9, v1, Lg2/e;->d:Landroidx/media3/common/r;

    .line 80
    .line 81
    iget v10, v1, Lg2/e;->e:I

    .line 82
    .line 83
    iget-object v11, v1, Lg2/e;->f:Ljava/lang/Object;

    .line 84
    .line 85
    iget-wide v14, v1, Lg2/e;->g:J

    .line 86
    .line 87
    invoke-static {v14, v15}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 88
    .line 89
    .line 90
    move-result-wide v26

    .line 91
    iget-wide v14, v1, Lg2/e;->h:J

    .line 92
    .line 93
    invoke-static {v14, v15}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 94
    .line 95
    .line 96
    move-result-wide v28

    .line 97
    move-object/from16 v20, v6

    .line 98
    .line 99
    move/from16 v21, v7

    .line 100
    .line 101
    move/from16 v22, v8

    .line 102
    .line 103
    move-object/from16 v23, v9

    .line 104
    .line 105
    move/from16 v24, v10

    .line 106
    .line 107
    move-object/from16 v25, v11

    .line 108
    .line 109
    invoke-direct/range {v20 .. v29}, Lf2/j;-><init>(IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    .line 110
    .line 111
    .line 112
    new-instance v7, Landroidx/media3/exoplayer/upstream/m$c;

    .line 113
    .line 114
    move/from16 v8, p7

    .line 115
    .line 116
    invoke-direct {v7, v5, v6, v13, v8}, Landroidx/media3/exoplayer/upstream/m$c;-><init>(Lf2/i;Lf2/j;Ljava/io/IOException;I)V

    .line 117
    .line 118
    .line 119
    iget-object v6, v0, Landroidx/media3/exoplayer/hls/r;->i:Landroidx/media3/exoplayer/upstream/m;

    .line 120
    .line 121
    iget-object v8, v0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    .line 122
    .line 123
    invoke-virtual {v8}, Landroidx/media3/exoplayer/hls/e;->l()Li2/z;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-static {v8}, Li2/d0;->c(Li2/z;)Landroidx/media3/exoplayer/upstream/m$a;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    invoke-interface {v6, v8, v7}, Landroidx/media3/exoplayer/upstream/m;->d(Landroidx/media3/exoplayer/upstream/m$a;Landroidx/media3/exoplayer/upstream/m$c;)Landroidx/media3/exoplayer/upstream/m$b;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    const/4 v8, 0x0

    .line 136
    if-eqz v6, :cond_2

    .line 137
    .line 138
    iget v9, v6, Landroidx/media3/exoplayer/upstream/m$b;->a:I

    .line 139
    .line 140
    const/4 v10, 0x2

    .line 141
    if-ne v9, v10, :cond_2

    .line 142
    .line 143
    iget-object v9, v0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    .line 144
    .line 145
    iget-wide v10, v6, Landroidx/media3/exoplayer/upstream/m$b;->b:J

    .line 146
    .line 147
    invoke-virtual {v9, v1, v10, v11}, Landroidx/media3/exoplayer/hls/e;->o(Lg2/e;J)Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    move v15, v6

    .line 152
    goto :goto_0

    .line 153
    :cond_2
    move v15, v8

    .line 154
    :goto_0
    if-eqz v15, :cond_6

    .line 155
    .line 156
    if-eqz v2, :cond_5

    .line 157
    .line 158
    const-wide/16 v6, 0x0

    .line 159
    .line 160
    cmp-long v2, v3, v6

    .line 161
    .line 162
    if-nez v2, :cond_5

    .line 163
    .line 164
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    const/4 v4, 0x1

    .line 171
    sub-int/2addr v3, v4

    .line 172
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    check-cast v2, Landroidx/media3/exoplayer/hls/i;

    .line 177
    .line 178
    if-ne v2, v1, :cond_3

    .line 179
    .line 180
    move v8, v4

    .line 181
    :cond_3
    invoke-static {v8}, Landroidx/media3/common/util/a;->g(Z)V

    .line 182
    .line 183
    .line 184
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-eqz v2, :cond_4

    .line 191
    .line 192
    iget-wide v2, v0, Landroidx/media3/exoplayer/hls/r;->P:J

    .line 193
    .line 194
    iput-wide v2, v0, Landroidx/media3/exoplayer/hls/r;->Q:J

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_4
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-static {v2}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    check-cast v2, Landroidx/media3/exoplayer/hls/i;

    .line 204
    .line 205
    invoke-virtual {v2}, Landroidx/media3/exoplayer/hls/i;->m()V

    .line 206
    .line 207
    .line 208
    :cond_5
    :goto_1
    sget-object v2, Landroidx/media3/exoplayer/upstream/Loader;->f:Landroidx/media3/exoplayer/upstream/Loader$c;

    .line 209
    .line 210
    :goto_2
    move-object/from16 v16, v2

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_6
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/r;->i:Landroidx/media3/exoplayer/upstream/m;

    .line 214
    .line 215
    invoke-interface {v2, v7}, Landroidx/media3/exoplayer/upstream/m;->c(Landroidx/media3/exoplayer/upstream/m$c;)J

    .line 216
    .line 217
    .line 218
    move-result-wide v2

    .line 219
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    cmp-long v4, v2, v6

    .line 225
    .line 226
    if-eqz v4, :cond_7

    .line 227
    .line 228
    invoke-static {v8, v2, v3}, Landroidx/media3/exoplayer/upstream/Loader;->g(ZJ)Landroidx/media3/exoplayer/upstream/Loader$c;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    goto :goto_2

    .line 233
    :cond_7
    sget-object v2, Landroidx/media3/exoplayer/upstream/Loader;->g:Landroidx/media3/exoplayer/upstream/Loader$c;

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :goto_3
    invoke-virtual/range {v16 .. v16}, Landroidx/media3/exoplayer/upstream/Loader$c;->c()Z

    .line 237
    .line 238
    .line 239
    move-result v17

    .line 240
    xor-int/lit8 v14, v17, 0x1

    .line 241
    .line 242
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/r;->k:Landroidx/media3/exoplayer/source/s$a;

    .line 243
    .line 244
    iget v4, v1, Lg2/e;->c:I

    .line 245
    .line 246
    iget v6, v0, Landroidx/media3/exoplayer/hls/r;->b:I

    .line 247
    .line 248
    iget-object v7, v1, Lg2/e;->d:Landroidx/media3/common/r;

    .line 249
    .line 250
    iget v8, v1, Lg2/e;->e:I

    .line 251
    .line 252
    iget-object v9, v1, Lg2/e;->f:Ljava/lang/Object;

    .line 253
    .line 254
    iget-wide v10, v1, Lg2/e;->g:J

    .line 255
    .line 256
    iget-wide v12, v1, Lg2/e;->h:J

    .line 257
    .line 258
    move-object v3, v5

    .line 259
    move v5, v6

    .line 260
    move-object v6, v7

    .line 261
    move v7, v8

    .line 262
    move-object v8, v9

    .line 263
    move-wide v9, v10

    .line 264
    move-wide v11, v12

    .line 265
    move-object/from16 v13, p6

    .line 266
    .line 267
    invoke-virtual/range {v2 .. v14}, Landroidx/media3/exoplayer/source/s$a;->y(Lf2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    .line 268
    .line 269
    .line 270
    if-nez v17, :cond_8

    .line 271
    .line 272
    const/4 v2, 0x0

    .line 273
    iput-object v2, v0, Landroidx/media3/exoplayer/hls/r;->u:Lg2/e;

    .line 274
    .line 275
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/r;->i:Landroidx/media3/exoplayer/upstream/m;

    .line 276
    .line 277
    iget-wide v3, v1, Lg2/e;->a:J

    .line 278
    .line 279
    invoke-interface {v2, v3, v4}, Landroidx/media3/exoplayer/upstream/m;->b(J)V

    .line 280
    .line 281
    .line 282
    :cond_8
    if-eqz v15, :cond_a

    .line 283
    .line 284
    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/r;->D:Z

    .line 285
    .line 286
    if-nez v1, :cond_9

    .line 287
    .line 288
    new-instance v1, Landroidx/media3/exoplayer/v2$b;

    .line 289
    .line 290
    invoke-direct {v1}, Landroidx/media3/exoplayer/v2$b;-><init>()V

    .line 291
    .line 292
    .line 293
    iget-wide v2, v0, Landroidx/media3/exoplayer/hls/r;->P:J

    .line 294
    .line 295
    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/v2$b;->f(J)Landroidx/media3/exoplayer/v2$b;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-virtual {v1}, Landroidx/media3/exoplayer/v2$b;->d()Landroidx/media3/exoplayer/v2;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/hls/r;->a(Landroidx/media3/exoplayer/v2;)Z

    .line 304
    .line 305
    .line 306
    goto :goto_4

    .line 307
    :cond_9
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/r;->c:Landroidx/media3/exoplayer/hls/r$b;

    .line 308
    .line 309
    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/source/f0$a;->h(Landroidx/media3/exoplayer/source/f0;)V

    .line 310
    .line 311
    .line 312
    :cond_a
    :goto_4
    return-object v16
.end method

.method public Q(Lg2/e;JJI)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-nez p6, :cond_0

    .line 6
    .line 7
    new-instance v8, Lf2/i;

    .line 8
    .line 9
    iget-wide v3, v1, Lg2/e;->a:J

    .line 10
    .line 11
    iget-object v5, v1, Lg2/e;->b:Lw1/h;

    .line 12
    .line 13
    move-object v2, v8

    .line 14
    move-wide/from16 v6, p2

    .line 15
    .line 16
    invoke-direct/range {v2 .. v7}, Lf2/i;-><init>(JLw1/h;J)V

    .line 17
    .line 18
    .line 19
    :goto_0
    move-object/from16 v22, v8

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance v8, Lf2/i;

    .line 23
    .line 24
    iget-wide v10, v1, Lg2/e;->a:J

    .line 25
    .line 26
    iget-object v12, v1, Lg2/e;->b:Lw1/h;

    .line 27
    .line 28
    invoke-virtual/range {p1 .. p1}, Lg2/e;->d()Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object v13

    .line 32
    invoke-virtual/range {p1 .. p1}, Lg2/e;->c()Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v14

    .line 36
    invoke-virtual/range {p1 .. p1}, Lg2/e;->a()J

    .line 37
    .line 38
    .line 39
    move-result-wide v19

    .line 40
    move-object v9, v8

    .line 41
    move-wide/from16 v15, p2

    .line 42
    .line 43
    move-wide/from16 v17, p4

    .line 44
    .line 45
    invoke-direct/range {v9 .. v20}, Lf2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :goto_1
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/r;->k:Landroidx/media3/exoplayer/source/s$a;

    .line 50
    .line 51
    iget v3, v1, Lg2/e;->c:I

    .line 52
    .line 53
    iget v4, v0, Landroidx/media3/exoplayer/hls/r;->b:I

    .line 54
    .line 55
    iget-object v5, v1, Lg2/e;->d:Landroidx/media3/common/r;

    .line 56
    .line 57
    iget v6, v1, Lg2/e;->e:I

    .line 58
    .line 59
    iget-object v7, v1, Lg2/e;->f:Ljava/lang/Object;

    .line 60
    .line 61
    iget-wide v8, v1, Lg2/e;->g:J

    .line 62
    .line 63
    iget-wide v10, v1, Lg2/e;->h:J

    .line 64
    .line 65
    move-object/from16 v21, v2

    .line 66
    .line 67
    move/from16 v23, v3

    .line 68
    .line 69
    move/from16 v24, v4

    .line 70
    .line 71
    move-object/from16 v25, v5

    .line 72
    .line 73
    move/from16 v26, v6

    .line 74
    .line 75
    move-object/from16 v27, v7

    .line 76
    .line 77
    move-wide/from16 v28, v8

    .line 78
    .line 79
    move-wide/from16 v30, v10

    .line 80
    .line 81
    move/from16 v32, p6

    .line 82
    .line 83
    invoke-virtual/range {v21 .. v32}, Landroidx/media3/exoplayer/source/s$a;->C(Lf2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJI)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public R()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->x:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public S(Landroid/net/Uri;Landroidx/media3/exoplayer/upstream/m$c;Z)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/hls/e;->q(Landroid/net/Uri;)Z

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
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    if-nez p3, :cond_1

    .line 17
    .line 18
    iget-object p3, p0, Landroidx/media3/exoplayer/hls/r;->i:Landroidx/media3/exoplayer/upstream/m;

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/e;->l()Li2/z;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Li2/d0;->c(Li2/z;)Landroidx/media3/exoplayer/upstream/m$a;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {p3, v0, p2}, Landroidx/media3/exoplayer/upstream/m;->d(Landroidx/media3/exoplayer/upstream/m$a;Landroidx/media3/exoplayer/upstream/m$c;)Landroidx/media3/exoplayer/upstream/m$b;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    iget p3, p2, Landroidx/media3/exoplayer/upstream/m$b;->a:I

    .line 37
    .line 38
    const/4 v0, 0x2

    .line 39
    if-ne p3, v0, :cond_1

    .line 40
    .line 41
    iget-wide p2, p2, Landroidx/media3/exoplayer/upstream/m$b;->b:J

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move-wide p2, v2

    .line 45
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    .line 46
    .line 47
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/exoplayer/hls/e;->s(Landroid/net/Uri;J)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    cmp-long p1, p2, v2

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const/4 v1, 0x0

    .line 59
    :goto_1
    return v1
.end method

.method public T()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

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
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/media3/exoplayer/hls/i;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/hls/e;->d(Landroidx/media3/exoplayer/hls/i;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x1

    .line 25
    if-ne v1, v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/i;->t()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    if-nez v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->r:Landroid/os/Handler;

    .line 34
    .line 35
    new-instance v2, Landroidx/media3/exoplayer/hls/n;

    .line 36
    .line 37
    invoke-direct {v2, p0, v0}, Landroidx/media3/exoplayer/hls/n;-><init>(Landroidx/media3/exoplayer/hls/r;Landroidx/media3/exoplayer/hls/i;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v0, 0x2

    .line 45
    if-ne v1, v0, :cond_3

    .line 46
    .line 47
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->T:Z

    .line 48
    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->e()V

    .line 62
    .line 63
    .line 64
    :cond_3
    :goto_0
    return-void
.end method

.method public varargs V([Landroidx/media3/common/f0;I[I)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/r;->u([Landroidx/media3/common/f0;)Lf2/z;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->I:Lf2/z;

    .line 6
    .line 7
    new-instance p1, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->J:Ljava/util/Set;

    .line 13
    .line 14
    array-length p1, p3

    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-ge v0, p1, :cond_0

    .line 17
    .line 18
    aget v1, p3, v0

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/r;->J:Ljava/util/Set;

    .line 21
    .line 22
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->I:Lf2/z;

    .line 23
    .line 24
    invoke-virtual {v3, v1}, Lf2/z;->b(I)Landroidx/media3/common/f0;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iput p2, p0, Landroidx/media3/exoplayer/hls/r;->L:I

    .line 35
    .line 36
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->r:Landroid/os/Handler;

    .line 37
    .line 38
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/r;->c:Landroidx/media3/exoplayer/hls/r$b;

    .line 39
    .line 40
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    new-instance p3, Landroidx/media3/exoplayer/hls/q;

    .line 44
    .line 45
    invoke-direct {p3, p2}, Landroidx/media3/exoplayer/hls/q;-><init>(Landroidx/media3/exoplayer/hls/r$b;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->d0()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public W(ILandroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 11

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->F()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x3

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    move v0, v2

    .line 19
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    add-int/lit8 v3, v3, -0x1

    .line 26
    .line 27
    if-ge v0, v3, :cond_1

    .line 28
    .line 29
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Landroidx/media3/exoplayer/hls/i;

    .line 36
    .line 37
    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/hls/r;->y(Landroidx/media3/exoplayer/hls/i;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-static {v3, v2, v0}, Landroidx/media3/common/util/a1;->c1(Ljava/util/List;II)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroidx/media3/exoplayer/hls/i;

    .line 58
    .line 59
    iget-object v10, v0, Lg2/e;->d:Landroidx/media3/common/r;

    .line 60
    .line 61
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->G:Landroidx/media3/common/r;

    .line 62
    .line 63
    invoke-virtual {v10, v3}, Landroidx/media3/common/r;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_2

    .line 68
    .line 69
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->k:Landroidx/media3/exoplayer/source/s$a;

    .line 70
    .line 71
    iget v4, p0, Landroidx/media3/exoplayer/hls/r;->b:I

    .line 72
    .line 73
    iget v6, v0, Lg2/e;->e:I

    .line 74
    .line 75
    iget-object v7, v0, Lg2/e;->f:Ljava/lang/Object;

    .line 76
    .line 77
    iget-wide v8, v0, Lg2/e;->g:J

    .line 78
    .line 79
    move-object v5, v10

    .line 80
    invoke-virtual/range {v3 .. v9}, Landroidx/media3/exoplayer/source/s$a;->j(ILandroidx/media3/common/r;ILjava/lang/Object;J)V

    .line 81
    .line 82
    .line 83
    :cond_2
    iput-object v10, p0, Landroidx/media3/exoplayer/hls/r;->G:Landroidx/media3/common/r;

    .line 84
    .line 85
    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_4

    .line 92
    .line 93
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Landroidx/media3/exoplayer/hls/i;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/i;->o()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_4

    .line 106
    .line 107
    return v1

    .line 108
    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 109
    .line 110
    aget-object v0, v0, p1

    .line 111
    .line 112
    iget-boolean v1, p0, Landroidx/media3/exoplayer/hls/r;->T:Z

    .line 113
    .line 114
    invoke-virtual {v0, p2, p3, p4, v1}, Landroidx/media3/exoplayer/source/e0;->V(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;IZ)I

    .line 115
    .line 116
    .line 117
    move-result p3

    .line 118
    const/4 p4, -0x5

    .line 119
    if-ne p3, p4, :cond_8

    .line 120
    .line 121
    iget-object p4, p2, Landroidx/media3/exoplayer/s2;->b:Landroidx/media3/common/r;

    .line 122
    .line 123
    invoke-static {p4}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p4

    .line 127
    check-cast p4, Landroidx/media3/common/r;

    .line 128
    .line 129
    iget v0, p0, Landroidx/media3/exoplayer/hls/r;->B:I

    .line 130
    .line 131
    if-ne p1, v0, :cond_7

    .line 132
    .line 133
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 134
    .line 135
    aget-object p1, v0, p1

    .line 136
    .line 137
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/e0;->T()J

    .line 138
    .line 139
    .line 140
    move-result-wide v0

    .line 141
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->d(J)I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-ge v2, v0, :cond_5

    .line 152
    .line 153
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Landroidx/media3/exoplayer/hls/i;

    .line 160
    .line 161
    iget v0, v0, Landroidx/media3/exoplayer/hls/i;->k:I

    .line 162
    .line 163
    if-eq v0, p1, :cond_5

    .line 164
    .line 165
    add-int/lit8 v2, v2, 0x1

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_5
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-ge v2, p1, :cond_6

    .line 175
    .line 176
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    check-cast p1, Landroidx/media3/exoplayer/hls/i;

    .line 183
    .line 184
    iget-object p1, p1, Lg2/e;->d:Landroidx/media3/common/r;

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_6
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->F:Landroidx/media3/common/r;

    .line 188
    .line 189
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    check-cast p1, Landroidx/media3/common/r;

    .line 194
    .line 195
    :goto_2
    invoke-virtual {p4, p1}, Landroidx/media3/common/r;->j(Landroidx/media3/common/r;)Landroidx/media3/common/r;

    .line 196
    .line 197
    .line 198
    move-result-object p4

    .line 199
    :cond_7
    iput-object p4, p2, Landroidx/media3/exoplayer/s2;->b:Landroidx/media3/common/r;

    .line 200
    .line 201
    :cond_8
    return p3
.end method

.method public X()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->D:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/e0;->U()V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/e;->t()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/upstream/Loader;->l(Landroidx/media3/exoplayer/upstream/Loader$e;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->r:Landroid/os/Handler;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->H:Z

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->s:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public a(Landroidx/media3/exoplayer/v2;)Z
    .locals 11

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->T:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_a

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_a

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->h()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_5

    .line 23
    .line 24
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->F()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-wide v2, p0, Landroidx/media3/exoplayer/hls/r;->Q:J

    .line 35
    .line 36
    iget-object v4, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 37
    .line 38
    array-length v5, v4

    .line 39
    move v6, v1

    .line 40
    :goto_0
    if-ge v6, v5, :cond_1

    .line 41
    .line 42
    aget-object v7, v4, v6

    .line 43
    .line 44
    iget-wide v8, p0, Landroidx/media3/exoplayer/hls/r;->Q:J

    .line 45
    .line 46
    invoke-virtual {v7, v8, v9}, Landroidx/media3/exoplayer/source/e0;->e0(J)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v6, v6, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    :goto_1
    move-object v8, v0

    .line 53
    move-wide v6, v2

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->o:Ljava/util/List;

    .line 56
    .line 57
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->A()Landroidx/media3/exoplayer/hls/i;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2}, Landroidx/media3/exoplayer/hls/i;->f()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    iget-wide v2, v2, Lg2/e;->h:J

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    iget-wide v3, p0, Landroidx/media3/exoplayer/hls/r;->P:J

    .line 71
    .line 72
    iget-wide v5, v2, Lg2/e;->g:J

    .line 73
    .line 74
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 75
    .line 76
    .line 77
    move-result-wide v2

    .line 78
    goto :goto_1

    .line 79
    :goto_2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->m:Landroidx/media3/exoplayer/hls/e$b;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/e$b;->a()V

    .line 82
    .line 83
    .line 84
    iget-object v4, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    .line 85
    .line 86
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->D:Z

    .line 87
    .line 88
    const/4 v2, 0x1

    .line 89
    if-nez v0, :cond_5

    .line 90
    .line 91
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_4

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_4
    move v9, v1

    .line 99
    goto :goto_4

    .line 100
    :cond_5
    :goto_3
    move v9, v2

    .line 101
    :goto_4
    iget-object v10, p0, Landroidx/media3/exoplayer/hls/r;->m:Landroidx/media3/exoplayer/hls/e$b;

    .line 102
    .line 103
    move-object v5, p1

    .line 104
    invoke-virtual/range {v4 .. v10}, Landroidx/media3/exoplayer/hls/e;->f(Landroidx/media3/exoplayer/v2;JLjava/util/List;ZLandroidx/media3/exoplayer/hls/e$b;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->m:Landroidx/media3/exoplayer/hls/e$b;

    .line 108
    .line 109
    iget-boolean v0, p1, Landroidx/media3/exoplayer/hls/e$b;->b:Z

    .line 110
    .line 111
    iget-object v3, p1, Landroidx/media3/exoplayer/hls/e$b;->a:Lg2/e;

    .line 112
    .line 113
    iget-object p1, p1, Landroidx/media3/exoplayer/hls/e$b;->c:Landroid/net/Uri;

    .line 114
    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    iput-wide v0, p0, Landroidx/media3/exoplayer/hls/r;->Q:J

    .line 123
    .line 124
    iput-boolean v2, p0, Landroidx/media3/exoplayer/hls/r;->T:Z

    .line 125
    .line 126
    return v2

    .line 127
    :cond_6
    if-nez v3, :cond_8

    .line 128
    .line 129
    if-eqz p1, :cond_7

    .line 130
    .line 131
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->c:Landroidx/media3/exoplayer/hls/r$b;

    .line 132
    .line 133
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/hls/r$b;->d(Landroid/net/Uri;)V

    .line 134
    .line 135
    .line 136
    :cond_7
    return v1

    .line 137
    :cond_8
    invoke-static {v3}, Landroidx/media3/exoplayer/hls/r;->E(Lg2/e;)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_9

    .line 142
    .line 143
    move-object p1, v3

    .line 144
    check-cast p1, Landroidx/media3/exoplayer/hls/i;

    .line 145
    .line 146
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/r;->D(Landroidx/media3/exoplayer/hls/i;)V

    .line 147
    .line 148
    .line 149
    :cond_9
    iput-object v3, p0, Landroidx/media3/exoplayer/hls/r;->u:Lg2/e;

    .line 150
    .line 151
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    .line 152
    .line 153
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->i:Landroidx/media3/exoplayer/upstream/m;

    .line 154
    .line 155
    iget v1, v3, Lg2/e;->c:I

    .line 156
    .line 157
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/upstream/m;->a(I)I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    invoke-virtual {p1, v3, p0, v0}, Landroidx/media3/exoplayer/upstream/Loader;->m(Landroidx/media3/exoplayer/upstream/Loader$d;Landroidx/media3/exoplayer/upstream/Loader$b;I)J

    .line 162
    .line 163
    .line 164
    return v2

    .line 165
    :cond_a
    :goto_5
    return v1
.end method

.method public a0(JZ)Z
    .locals 6

    .line 1
    iput-wide p1, p0, Landroidx/media3/exoplayer/hls/r;->P:J

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->F()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iput-wide p1, p0, Landroidx/media3/exoplayer/hls/r;->Q:J

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/e;->m()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    move v0, v2

    .line 23
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-ge v0, v3, :cond_2

    .line 30
    .line 31
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Landroidx/media3/exoplayer/hls/i;

    .line 38
    .line 39
    iget-wide v4, v3, Lg2/e;->g:J

    .line 40
    .line 41
    cmp-long v4, v4, p1

    .line 42
    .line 43
    if-nez v4, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v3, 0x0

    .line 50
    :goto_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->C:Z

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    if-nez p3, :cond_3

    .line 55
    .line 56
    invoke-direct {p0, p1, p2, v3}, Landroidx/media3/exoplayer/hls/r;->Z(JLandroidx/media3/exoplayer/hls/i;)Z

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    if-eqz p3, :cond_3

    .line 61
    .line 62
    return v2

    .line 63
    :cond_3
    iput-wide p1, p0, Landroidx/media3/exoplayer/hls/r;->Q:J

    .line 64
    .line 65
    iput-boolean v2, p0, Landroidx/media3/exoplayer/hls/r;->T:Z

    .line 66
    .line 67
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_5

    .line 79
    .line 80
    iget-boolean p1, p0, Landroidx/media3/exoplayer/hls/r;->C:Z

    .line 81
    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 85
    .line 86
    array-length p2, p1

    .line 87
    :goto_2
    if-ge v2, p2, :cond_4

    .line 88
    .line 89
    aget-object p3, p1, v2

    .line 90
    .line 91
    invoke-virtual {p3}, Landroidx/media3/exoplayer/source/e0;->s()V

    .line 92
    .line 93
    .line 94
    add-int/lit8 v2, v2, 0x1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_4
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/Loader;->e()V

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_5
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    .line 104
    .line 105
    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/Loader;->f()V

    .line 106
    .line 107
    .line 108
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->Y()V

    .line 109
    .line 110
    .line 111
    :goto_3
    return v1
.end method

.method public b(JLandroidx/media3/exoplayer/c4;)J
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/exoplayer/hls/e;->c(JLandroidx/media3/exoplayer/c4;)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public b0([Li2/z;[Z[Lf2/u;[ZJZ)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-wide/from16 v12, p5

    .line 8
    .line 9
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/r;->j()V

    .line 10
    .line 11
    .line 12
    iget v3, v0, Landroidx/media3/exoplayer/hls/r;->E:I

    .line 13
    .line 14
    const/4 v14, 0x0

    .line 15
    move v4, v14

    .line 16
    :goto_0
    array-length v5, v1

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v15, 0x1

    .line 19
    if-ge v4, v5, :cond_2

    .line 20
    .line 21
    aget-object v5, v2, v4

    .line 22
    .line 23
    check-cast v5, Landroidx/media3/exoplayer/hls/m;

    .line 24
    .line 25
    if-eqz v5, :cond_1

    .line 26
    .line 27
    aget-object v7, v1, v4

    .line 28
    .line 29
    if-eqz v7, :cond_0

    .line 30
    .line 31
    aget-boolean v7, p2, v4

    .line 32
    .line 33
    if-nez v7, :cond_1

    .line 34
    .line 35
    :cond_0
    iget v7, v0, Landroidx/media3/exoplayer/hls/r;->E:I

    .line 36
    .line 37
    sub-int/2addr v7, v15

    .line 38
    iput v7, v0, Landroidx/media3/exoplayer/hls/r;->E:I

    .line 39
    .line 40
    invoke-virtual {v5}, Landroidx/media3/exoplayer/hls/m;->d()V

    .line 41
    .line 42
    .line 43
    aput-object v6, v2, v4

    .line 44
    .line 45
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    if-nez p7, :cond_5

    .line 49
    .line 50
    iget-boolean v4, v0, Landroidx/media3/exoplayer/hls/r;->S:Z

    .line 51
    .line 52
    if-eqz v4, :cond_3

    .line 53
    .line 54
    if-nez v3, :cond_4

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    iget-wide v3, v0, Landroidx/media3/exoplayer/hls/r;->P:J

    .line 58
    .line 59
    cmp-long v3, v12, v3

    .line 60
    .line 61
    if-eqz v3, :cond_4

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    move v3, v14

    .line 65
    goto :goto_2

    .line 66
    :cond_5
    :goto_1
    move v3, v15

    .line 67
    :goto_2
    iget-object v4, v0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    .line 68
    .line 69
    invoke-virtual {v4}, Landroidx/media3/exoplayer/hls/e;->l()Li2/z;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    move/from16 v16, v3

    .line 74
    .line 75
    move-object v11, v4

    .line 76
    move v3, v14

    .line 77
    :goto_3
    array-length v5, v1

    .line 78
    if-ge v3, v5, :cond_a

    .line 79
    .line 80
    aget-object v5, v1, v3

    .line 81
    .line 82
    if-nez v5, :cond_6

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_6
    iget-object v7, v0, Landroidx/media3/exoplayer/hls/r;->I:Lf2/z;

    .line 86
    .line 87
    invoke-interface {v5}, Li2/c0;->getTrackGroup()Landroidx/media3/common/f0;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    invoke-virtual {v7, v8}, Lf2/z;->d(Landroidx/media3/common/f0;)I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    iget v8, v0, Landroidx/media3/exoplayer/hls/r;->L:I

    .line 96
    .line 97
    if-ne v7, v8, :cond_7

    .line 98
    .line 99
    iget-object v8, v0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    .line 100
    .line 101
    invoke-virtual {v8, v5}, Landroidx/media3/exoplayer/hls/e;->w(Li2/z;)V

    .line 102
    .line 103
    .line 104
    move-object v11, v5

    .line 105
    :cond_7
    aget-object v5, v2, v3

    .line 106
    .line 107
    if-nez v5, :cond_9

    .line 108
    .line 109
    iget v5, v0, Landroidx/media3/exoplayer/hls/r;->E:I

    .line 110
    .line 111
    add-int/2addr v5, v15

    .line 112
    iput v5, v0, Landroidx/media3/exoplayer/hls/r;->E:I

    .line 113
    .line 114
    new-instance v5, Landroidx/media3/exoplayer/hls/m;

    .line 115
    .line 116
    invoke-direct {v5, v0, v7}, Landroidx/media3/exoplayer/hls/m;-><init>(Landroidx/media3/exoplayer/hls/r;I)V

    .line 117
    .line 118
    .line 119
    aput-object v5, v2, v3

    .line 120
    .line 121
    aput-boolean v15, p4, v3

    .line 122
    .line 123
    iget-object v8, v0, Landroidx/media3/exoplayer/hls/r;->K:[I

    .line 124
    .line 125
    if-eqz v8, :cond_9

    .line 126
    .line 127
    invoke-virtual {v5}, Landroidx/media3/exoplayer/hls/m;->a()V

    .line 128
    .line 129
    .line 130
    if-nez v16, :cond_9

    .line 131
    .line 132
    iget-object v5, v0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 133
    .line 134
    iget-object v8, v0, Landroidx/media3/exoplayer/hls/r;->K:[I

    .line 135
    .line 136
    aget v7, v8, v7

    .line 137
    .line 138
    aget-object v5, v5, v7

    .line 139
    .line 140
    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/e0;->F()I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-eqz v7, :cond_8

    .line 145
    .line 146
    invoke-virtual {v5, v12, v13, v15}, Landroidx/media3/exoplayer/source/e0;->c0(JZ)Z

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-nez v5, :cond_8

    .line 151
    .line 152
    move v5, v15

    .line 153
    goto :goto_4

    .line 154
    :cond_8
    move v5, v14

    .line 155
    :goto_4
    move/from16 v16, v5

    .line 156
    .line 157
    :cond_9
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_a
    iget v1, v0, Landroidx/media3/exoplayer/hls/r;->E:I

    .line 161
    .line 162
    if-nez v1, :cond_d

    .line 163
    .line 164
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    .line 165
    .line 166
    invoke-virtual {v1}, Landroidx/media3/exoplayer/hls/e;->t()V

    .line 167
    .line 168
    .line 169
    iput-object v6, v0, Landroidx/media3/exoplayer/hls/r;->G:Landroidx/media3/common/r;

    .line 170
    .line 171
    iput-boolean v15, v0, Landroidx/media3/exoplayer/hls/r;->R:Z

    .line 172
    .line 173
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 176
    .line 177
    .line 178
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    .line 179
    .line 180
    invoke-virtual {v1}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_c

    .line 185
    .line 186
    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/r;->C:Z

    .line 187
    .line 188
    if-eqz v1, :cond_b

    .line 189
    .line 190
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 191
    .line 192
    array-length v3, v1

    .line 193
    :goto_6
    if-ge v14, v3, :cond_b

    .line 194
    .line 195
    aget-object v4, v1, v14

    .line 196
    .line 197
    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/e0;->s()V

    .line 198
    .line 199
    .line 200
    add-int/lit8 v14, v14, 0x1

    .line 201
    .line 202
    goto :goto_6

    .line 203
    :cond_b
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    .line 204
    .line 205
    invoke-virtual {v1}, Landroidx/media3/exoplayer/upstream/Loader;->e()V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_9

    .line 209
    .line 210
    :cond_c
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/r;->Y()V

    .line 211
    .line 212
    .line 213
    goto :goto_9

    .line 214
    :cond_d
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 215
    .line 216
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-nez v1, :cond_10

    .line 221
    .line 222
    invoke-static {v11, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-nez v1, :cond_10

    .line 227
    .line 228
    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/r;->S:Z

    .line 229
    .line 230
    if-nez v1, :cond_f

    .line 231
    .line 232
    const-wide/16 v3, 0x0

    .line 233
    .line 234
    cmp-long v1, v12, v3

    .line 235
    .line 236
    if-gez v1, :cond_e

    .line 237
    .line 238
    neg-long v3, v12

    .line 239
    :cond_e
    move-wide v6, v3

    .line 240
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/r;->A()Landroidx/media3/exoplayer/hls/i;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    iget-object v3, v0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    .line 245
    .line 246
    invoke-virtual {v3, v1, v12, v13}, Landroidx/media3/exoplayer/hls/e;->a(Landroidx/media3/exoplayer/hls/i;J)[Lg2/n;

    .line 247
    .line 248
    .line 249
    move-result-object v17

    .line 250
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    iget-object v10, v0, Landroidx/media3/exoplayer/hls/r;->o:Ljava/util/List;

    .line 256
    .line 257
    move-object v3, v11

    .line 258
    move-wide/from16 v4, p5

    .line 259
    .line 260
    move-object/from16 v18, v11

    .line 261
    .line 262
    move-object/from16 v11, v17

    .line 263
    .line 264
    invoke-interface/range {v3 .. v11}, Li2/z;->f(JJJLjava/util/List;[Lg2/n;)V

    .line 265
    .line 266
    .line 267
    iget-object v3, v0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    .line 268
    .line 269
    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/e;->k()Landroidx/media3/common/f0;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    iget-object v1, v1, Lg2/e;->d:Landroidx/media3/common/r;

    .line 274
    .line 275
    invoke-virtual {v3, v1}, Landroidx/media3/common/f0;->b(Landroidx/media3/common/r;)I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    invoke-interface/range {v18 .. v18}, Li2/z;->getSelectedIndexInTrackGroup()I

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    if-eq v3, v1, :cond_10

    .line 284
    .line 285
    :cond_f
    iput-boolean v15, v0, Landroidx/media3/exoplayer/hls/r;->R:Z

    .line 286
    .line 287
    move v1, v15

    .line 288
    move/from16 v16, v1

    .line 289
    .line 290
    goto :goto_7

    .line 291
    :cond_10
    move/from16 v1, p7

    .line 292
    .line 293
    :goto_7
    if-eqz v16, :cond_12

    .line 294
    .line 295
    invoke-virtual {v0, v12, v13, v1}, Landroidx/media3/exoplayer/hls/r;->a0(JZ)Z

    .line 296
    .line 297
    .line 298
    :goto_8
    array-length v1, v2

    .line 299
    if-ge v14, v1, :cond_12

    .line 300
    .line 301
    aget-object v1, v2, v14

    .line 302
    .line 303
    if-eqz v1, :cond_11

    .line 304
    .line 305
    aput-boolean v15, p4, v14

    .line 306
    .line 307
    :cond_11
    add-int/lit8 v14, v14, 0x1

    .line 308
    .line 309
    goto :goto_8

    .line 310
    :cond_12
    :goto_9
    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/hls/r;->i0([Lf2/u;)V

    .line 311
    .line 312
    .line 313
    iput-boolean v15, v0, Landroidx/media3/exoplayer/hls/r;->S:Z

    .line 314
    .line 315
    return v16
.end method

.method public c(Landroidx/media3/common/r;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->r:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->p:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public c0(Landroidx/media3/common/DrmInitData;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->W:Landroidx/media3/common/DrmInitData;

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->W:Landroidx/media3/common/DrmInitData;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 13
    .line 14
    array-length v2, v1

    .line 15
    if-ge v0, v2, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/r;->O:[Z

    .line 18
    .line 19
    aget-boolean v2, v2, v0

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    aget-object v1, v1, v0

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/hls/r$d;->l0(Landroidx/media3/common/DrmInitData;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method

.method public d(Lk2/m0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->C:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->F()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 13
    .line 14
    array-length v0, v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-ge v1, v0, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 19
    .line 20
    aget-object v2, v2, v1

    .line 21
    .line 22
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/r;->N:[Z

    .line 23
    .line 24
    aget-boolean v3, v3, v1

    .line 25
    .line 26
    invoke-virtual {v2, p1, p2, p3, v3}, Landroidx/media3/exoplayer/source/e0;->r(JZZ)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    :goto_1
    return-void
.end method

.method public e0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/hls/e;->v(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public endTracks()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->U:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->r:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->q:Ljava/lang/Runnable;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public f0(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/r;->V:J

    .line 2
    .line 3
    cmp-long v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Landroidx/media3/exoplayer/hls/r;->V:J

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 10
    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    .line 15
    aget-object v3, v0, v2

    .line 16
    .line 17
    invoke-virtual {v3, p1, p2}, Landroidx/media3/exoplayer/source/e0;->d0(J)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public g0(IJ)I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->F()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 10
    .line 11
    aget-object v0, v0, p1

    .line 12
    .line 13
    iget-boolean v1, p0, Landroidx/media3/exoplayer/hls/r;->T:Z

    .line 14
    .line 15
    invoke-virtual {v0, p2, p3, v1}, Landroidx/media3/exoplayer/source/e0;->H(JZ)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    iget-object p3, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {p3, v1}, Lcom/google/common/collect/g3;->h(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    check-cast p3, Landroidx/media3/exoplayer/hls/i;

    .line 27
    .line 28
    if-eqz p3, :cond_1

    .line 29
    .line 30
    invoke-virtual {p3}, Landroidx/media3/exoplayer/hls/i;->o()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/e0;->F()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {p3, p1}, Landroidx/media3/exoplayer/hls/i;->k(I)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    sub-int/2addr p1, v1

    .line 45
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    :cond_1
    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/source/e0;->h0(I)V

    .line 50
    .line 51
    .line 52
    return p2
.end method

.method public getBufferedPositionUs()J
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->T:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, -0x8000000000000000L

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->F()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/r;->Q:J

    .line 15
    .line 16
    return-wide v0

    .line 17
    :cond_1
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/r;->P:J

    .line 18
    .line 19
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->A()Landroidx/media3/exoplayer/hls/i;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Landroidx/media3/exoplayer/hls/i;->f()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x1

    .line 37
    if-le v2, v3, :cond_3

    .line 38
    .line 39
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    add-int/lit8 v3, v3, -0x2

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroidx/media3/exoplayer/hls/i;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const/4 v2, 0x0

    .line 55
    :goto_0
    if-eqz v2, :cond_4

    .line 56
    .line 57
    iget-wide v2, v2, Lg2/e;->h:J

    .line 58
    .line 59
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    :cond_4
    iget-boolean v2, p0, Landroidx/media3/exoplayer/hls/r;->C:Z

    .line 64
    .line 65
    if-eqz v2, :cond_5

    .line 66
    .line 67
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 68
    .line 69
    array-length v3, v2

    .line 70
    const/4 v4, 0x0

    .line 71
    :goto_1
    if-ge v4, v3, :cond_5

    .line 72
    .line 73
    aget-object v5, v2, v4

    .line 74
    .line 75
    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/e0;->C()J

    .line 76
    .line 77
    .line 78
    move-result-wide v5

    .line 79
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 80
    .line 81
    .line 82
    move-result-wide v0

    .line 83
    add-int/lit8 v4, v4, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->F()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/r;->Q:J

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->T:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-wide/high16 v0, -0x8000000000000000L

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->A()Landroidx/media3/exoplayer/hls/i;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-wide v0, v0, Lg2/e;->h:J

    .line 22
    .line 23
    :goto_0
    return-wide v0
.end method

.method public getTrackGroups()Lf2/z;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->j()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->I:Lf2/z;

    .line 5
    .line 6
    return-object v0
.end method

.method public h0(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->j()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->K:[I

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->K:[I

    .line 10
    .line 11
    aget p1, v0, p1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->N:[Z

    .line 14
    .line 15
    aget-boolean v0, v0, p1

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->N:[Z

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    aput-boolean v1, v0, p1

    .line 24
    .line 25
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public bridge synthetic k(Landroidx/media3/exoplayer/upstream/Loader$d;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;
    .locals 0

    .line 1
    check-cast p1, Lg2/e;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p7}, Landroidx/media3/exoplayer/hls/r;->P(Lg2/e;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public l(I)I
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->j()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->K:[I

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->K:[I

    .line 10
    .line 11
    aget v0, v0, p1

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    const/4 v2, -0x2

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->J:Ljava/util/Set;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->I:Lf2/z;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lf2/z;->b(I)Landroidx/media3/common/f0;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    const/4 v2, -0x3

    .line 32
    :cond_0
    return v2

    .line 33
    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->N:[Z

    .line 34
    .line 35
    aget-boolean v1, p1, v0

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    return v2

    .line 40
    :cond_2
    const/4 v1, 0x1

    .line 41
    aput-boolean v1, p1, v0

    .line 42
    .line 43
    return v0
.end method

.method public maybeThrowPrepareError()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/r;->L()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->T:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->D:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "Loading finished before preparation is complete."

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    throw v0

    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic o(Landroidx/media3/exoplayer/upstream/Loader$d;JJI)V
    .locals 0

    .line 1
    check-cast p1, Lg2/e;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p6}, Landroidx/media3/exoplayer/hls/r;->Q(Lg2/e;JJI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onLoaderReleased()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/e0;->W()V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public bridge synthetic p(Landroidx/media3/exoplayer/upstream/Loader$d;JJ)V
    .locals 0

    .line 1
    check-cast p1, Lg2/e;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Landroidx/media3/exoplayer/hls/r;->O(Lg2/e;JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic q(Landroidx/media3/exoplayer/upstream/Loader$d;JJZ)V
    .locals 0

    .line 1
    check-cast p1, Lg2/e;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p6}, Landroidx/media3/exoplayer/hls/r;->N(Lg2/e;JJZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public r()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->D:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/media3/exoplayer/v2$b;

    .line 6
    .line 7
    invoke-direct {v0}, Landroidx/media3/exoplayer/v2$b;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-wide v1, p0, Landroidx/media3/exoplayer/hls/r;->P:J

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/v2$b;->f(J)Landroidx/media3/exoplayer/v2$b;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroidx/media3/exoplayer/v2$b;->d()Landroidx/media3/exoplayer/v2;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/hls/r;->a(Landroidx/media3/exoplayer/v2;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public reevaluateBuffer(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->h()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_5

    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/r;->F()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->u:Lg2/e;

    .line 25
    .line 26
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    .line 30
    .line 31
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->u:Lg2/e;

    .line 32
    .line 33
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/r;->o:Ljava/util/List;

    .line 34
    .line 35
    invoke-virtual {v0, p1, p2, v1, v2}, Landroidx/media3/exoplayer/hls/e;->x(JLg2/e;Ljava/util/List;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->j:Landroidx/media3/exoplayer/upstream/Loader;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/Loader;->e()V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void

    .line 47
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->o:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    :goto_0
    if-lez v0, :cond_3

    .line 54
    .line 55
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    .line 56
    .line 57
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/r;->o:Ljava/util/List;

    .line 58
    .line 59
    add-int/lit8 v3, v0, -0x1

    .line 60
    .line 61
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Landroidx/media3/exoplayer/hls/i;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/hls/e;->d(Landroidx/media3/exoplayer/hls/i;)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    const/4 v2, 0x2

    .line 72
    if-ne v1, v2, :cond_3

    .line 73
    .line 74
    add-int/lit8 v0, v0, -0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->o:Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-ge v0, v1, :cond_4

    .line 84
    .line 85
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/hls/r;->w(I)V

    .line 86
    .line 87
    .line 88
    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r;->d:Landroidx/media3/exoplayer/hls/e;

    .line 89
    .line 90
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->o:Ljava/util/List;

    .line 91
    .line 92
    invoke-virtual {v0, p1, p2, v1}, Landroidx/media3/exoplayer/hls/e;->i(JLjava/util/List;)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/r;->n:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    if-ge p1, p2, :cond_5

    .line 103
    .line 104
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/r;->w(I)V

    .line 105
    .line 106
    .line 107
    :cond_5
    :goto_1
    return-void
.end method

.method public track(II)Lk2/s0;
    .locals 3

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/hls/r;->Y:Ljava/util/Set;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/hls/r;->B(II)Lk2/s0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r;->v:[Landroidx/media3/exoplayer/hls/r$d;

    .line 20
    .line 21
    array-length v2, v1

    .line 22
    if-ge v0, v2, :cond_2

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/r;->w:[I

    .line 25
    .line 26
    aget v2, v2, v0

    .line 27
    .line 28
    if-ne v2, p1, :cond_1

    .line 29
    .line 30
    aget-object v0, v1, v0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 v0, 0x0

    .line 37
    :goto_1
    if-nez v0, :cond_4

    .line 38
    .line 39
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/r;->U:Z

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/hls/r;->s(II)Lk2/n;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    :cond_3
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/hls/r;->t(II)Landroidx/media3/exoplayer/source/e0;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_4
    const/4 p1, 0x5

    .line 53
    if-ne p2, p1, :cond_6

    .line 54
    .line 55
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->z:Lk2/s0;

    .line 56
    .line 57
    if-nez p1, :cond_5

    .line 58
    .line 59
    new-instance p1, Landroidx/media3/exoplayer/hls/r$c;

    .line 60
    .line 61
    iget p2, p0, Landroidx/media3/exoplayer/hls/r;->l:I

    .line 62
    .line 63
    invoke-direct {p1, v0, p2}, Landroidx/media3/exoplayer/hls/r$c;-><init>(Lk2/s0;I)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r;->z:Lk2/s0;

    .line 67
    .line 68
    :cond_5
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r;->z:Lk2/s0;

    .line 69
    .line 70
    return-object p1

    .line 71
    :cond_6
    return-object v0
.end method
