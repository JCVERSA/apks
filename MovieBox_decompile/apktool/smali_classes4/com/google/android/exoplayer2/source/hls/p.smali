.class final Lcom/google/android/exoplayer2/source/hls/p;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$b;
.implements Lcom/google/android/exoplayer2/upstream/Loader$e;
.implements Lcom/google/android/exoplayer2/source/b0;
.implements Li9/n;
.implements Lcom/google/android/exoplayer2/source/a0$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/p$c;,
        Lcom/google/android/exoplayer2/source/hls/p$d;,
        Lcom/google/android/exoplayer2/source/hls/p$b;
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

.field private F:Lcom/google/android/exoplayer2/p1;

.field private G:Lcom/google/android/exoplayer2/p1;

.field private H:Z

.field private I:Lv9/y;

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

.field private W:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field private X:Lcom/google/android/exoplayer2/source/hls/i;

.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Lcom/google/android/exoplayer2/source/hls/p$b;

.field private final d:Lcom/google/android/exoplayer2/source/hls/e;

.field private final e:Lcom/google/android/exoplayer2/upstream/b;

.field private final f:Lcom/google/android/exoplayer2/p1;

.field private final g:Lcom/google/android/exoplayer2/drm/u;

.field private final h:Lcom/google/android/exoplayer2/drm/s$a;

.field private final i:Lcom/google/android/exoplayer2/upstream/z;

.field private final j:Lcom/google/android/exoplayer2/upstream/Loader;

.field private final k:Lcom/google/android/exoplayer2/source/p$a;

.field private final l:I

.field private final m:Lcom/google/android/exoplayer2/source/hls/e$b;

.field private final n:Ljava/util/ArrayList;

.field private final o:Ljava/util/List;

.field private final p:Ljava/lang/Runnable;

.field private final q:Ljava/lang/Runnable;

.field private final r:Landroid/os/Handler;

.field private final s:Ljava/util/ArrayList;

.field private final t:Ljava/util/Map;

.field private u:Lx9/f;

.field private v:[Lcom/google/android/exoplayer2/source/hls/p$d;

.field private w:[I

.field private x:Ljava/util/Set;

.field private y:Landroid/util/SparseIntArray;

.field private z:Li9/e0;


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
    sput-object v0, Lcom/google/android/exoplayer2/source/hls/p;->Y:Ljava/util/Set;

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/google/android/exoplayer2/source/hls/p$b;Lcom/google/android/exoplayer2/source/hls/e;Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/b;JLcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/upstream/z;Lcom/google/android/exoplayer2/source/p$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/p;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/p;->c:Lcom/google/android/exoplayer2/source/hls/p$b;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/p;->t:Ljava/util/Map;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/hls/p;->e:Lcom/google/android/exoplayer2/upstream/b;

    .line 15
    .line 16
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/hls/p;->f:Lcom/google/android/exoplayer2/p1;

    .line 17
    .line 18
    iput-object p10, p0, Lcom/google/android/exoplayer2/source/hls/p;->g:Lcom/google/android/exoplayer2/drm/u;

    .line 19
    .line 20
    iput-object p11, p0, Lcom/google/android/exoplayer2/source/hls/p;->h:Lcom/google/android/exoplayer2/drm/s$a;

    .line 21
    .line 22
    iput-object p12, p0, Lcom/google/android/exoplayer2/source/hls/p;->i:Lcom/google/android/exoplayer2/upstream/z;

    .line 23
    .line 24
    iput-object p13, p0, Lcom/google/android/exoplayer2/source/hls/p;->k:Lcom/google/android/exoplayer2/source/p$a;

    .line 25
    .line 26
    iput p14, p0, Lcom/google/android/exoplayer2/source/hls/p;->l:I

    .line 27
    .line 28
    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    .line 29
    .line 30
    const-string p2, "Loader:HlsSampleStreamWrapper"

    .line 31
    .line 32
    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 36
    .line 37
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/e$b;

    .line 38
    .line 39
    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/hls/e$b;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->m:Lcom/google/android/exoplayer2/source/hls/e$b;

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    new-array p2, p1, [I

    .line 46
    .line 47
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/p;->w:[I

    .line 48
    .line 49
    new-instance p2, Ljava/util/HashSet;

    .line 50
    .line 51
    sget-object p3, Lcom/google/android/exoplayer2/source/hls/p;->Y:Ljava/util/Set;

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
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/p;->x:Ljava/util/Set;

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
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/p;->y:Landroid/util/SparseIntArray;

    .line 72
    .line 73
    new-array p2, p1, [Lcom/google/android/exoplayer2/source/hls/p$d;

    .line 74
    .line 75
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    .line 76
    .line 77
    new-array p2, p1, [Z

    .line 78
    .line 79
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/p;->O:[Z

    .line 80
    .line 81
    new-array p1, p1, [Z

    .line 82
    .line 83
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->N:[Z

    .line 84
    .line 85
    new-instance p1, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->o:Ljava/util/List;

    .line 97
    .line 98
    new-instance p1, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->s:Ljava/util/ArrayList;

    .line 104
    .line 105
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/n;

    .line 106
    .line 107
    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/hls/n;-><init>(Lcom/google/android/exoplayer2/source/hls/p;)V

    .line 108
    .line 109
    .line 110
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->p:Ljava/lang/Runnable;

    .line 111
    .line 112
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/o;

    .line 113
    .line 114
    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/hls/o;-><init>(Lcom/google/android/exoplayer2/source/hls/p;)V

    .line 115
    .line 116
    .line 117
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->q:Ljava/lang/Runnable;

    .line 118
    .line 119
    invoke-static {}, Lcom/google/android/exoplayer2/util/p0;->w()Landroid/os/Handler;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->r:Landroid/os/Handler;

    .line 124
    .line 125
    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/hls/p;->P:J

    .line 126
    .line 127
    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/hls/p;->Q:J

    .line 128
    .line 129
    return-void
.end method

.method private A(Lcom/google/android/exoplayer2/source/hls/i;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->X:Lcom/google/android/exoplayer2/source/hls/i;

    .line 2
    .line 3
    iget-object v0, p1, Lx9/f;->d:Lcom/google/android/exoplayer2/p1;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->F:Lcom/google/android/exoplayer2/p1;

    .line 6
    .line 7
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->Q:J

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

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
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

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
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/a0;->G()I

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
    invoke-virtual {p1, p0, v0}, Lcom/google/android/exoplayer2/source/hls/i;->l(Lcom/google/android/exoplayer2/source/hls/p;Lcom/google/common/collect/ImmutableList;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

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
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/source/hls/p$d;->j0(Lcom/google/android/exoplayer2/source/hls/i;)V

    .line 61
    .line 62
    .line 63
    iget-boolean v4, p1, Lcom/google/android/exoplayer2/source/hls/i;->n:Z

    .line 64
    .line 65
    if-eqz v4, :cond_1

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/a0;->g0()V

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

.method private static B(Lx9/f;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Lcom/google/android/exoplayer2/source/hls/i;

    .line 2
    .line 3
    return p0
.end method

.method private C()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->Q:J

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

.method private F()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->I:Lv9/y;

    .line 2
    .line 3
    iget v0, v0, Lv9/y;->a:I

    .line 4
    .line 5
    new-array v1, v0, [I

    .line 6
    .line 7
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->K:[I

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
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

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
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/a0;->F()Lcom/google/android/exoplayer2/p1;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lcom/google/android/exoplayer2/p1;

    .line 34
    .line 35
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/p;->I:Lv9/y;

    .line 36
    .line 37
    invoke-virtual {v5, v2}, Lv9/y;->b(I)Lv9/w;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v5, v1}, Lv9/w;->c(I)Lcom/google/android/exoplayer2/p1;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/source/hls/p;->w(Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/p1;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/p;->K:[I

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->s:Ljava/util/ArrayList;

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
    check-cast v1, Lcom/google/android/exoplayer2/source/hls/l;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/l;->b()V

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_3
    return-void
.end method

.method private G()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->H:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->K:[I

    .line 6
    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->C:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

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
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/a0;->F()Lcom/google/android/exoplayer2/p1;

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->I:Lv9/y;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->F()V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->k()V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->Y()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->c:Lcom/google/android/exoplayer2/source/hls/p$b;

    .line 47
    .line 48
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/p$b;->onPrepared()V

    .line 49
    .line 50
    .line 51
    :cond_4
    :goto_1
    return-void
.end method

.method private P()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->C:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->G()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private T()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

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
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/hls/p;->R:Z

    .line 11
    .line 12
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/a0;->W(Z)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->R:Z

    .line 19
    .line 20
    return-void
.end method

.method private U(J)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    if-ge v2, v0, :cond_2

    .line 7
    .line 8
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    .line 9
    .line 10
    aget-object v3, v3, v2

    .line 11
    .line 12
    invoke-virtual {v3, p1, p2, v1}, Lcom/google/android/exoplayer2/source/a0;->Z(JZ)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->O:[Z

    .line 19
    .line 20
    aget-boolean v3, v3, v2

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->M:Z

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    :cond_0
    return v1

    .line 29
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 p1, 0x1

    .line 33
    return p1
.end method

.method private Y()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->D:Z

    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/source/hls/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->P()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/source/hls/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->G()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private d0([Lv9/s;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->s:Ljava/util/ArrayList;

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
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->s:Ljava/util/ArrayList;

    .line 15
    .line 16
    check-cast v2, Lcom/google/android/exoplayer2/source/hls/l;

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

.method private h()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->D:Z

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->I:Lv9/y;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->J:Ljava/util/Set;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private k()V
    .locals 15

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

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
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    .line 15
    .line 16
    aget-object v9, v9, v5

    .line 17
    .line 18
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/a0;->F()Lcom/google/android/exoplayer2/p1;

    .line 19
    .line 20
    .line 21
    move-result-object v9

    .line 22
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v9

    .line 26
    check-cast v9, Lcom/google/android/exoplayer2/p1;

    .line 27
    .line 28
    iget-object v9, v9, Lcom/google/android/exoplayer2/p1;->l:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/w;->s(Ljava/lang/String;)Z

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
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/w;->o(Ljava/lang/String;)Z

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
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/w;->r(Ljava/lang/String;)Z

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
    invoke-static {v8}, Lcom/google/android/exoplayer2/source/hls/p;->z(I)I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    invoke-static {v6}, Lcom/google/android/exoplayer2/source/hls/p;->z(I)I

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
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/hls/e;->j()Lv9/w;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iget v5, v2, Lv9/w;->a:I

    .line 81
    .line 82
    iput v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->L:I

    .line 83
    .line 84
    new-array v3, v1, [I

    .line 85
    .line 86
    iput-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->K:[I

    .line 87
    .line 88
    move v3, v4

    .line 89
    :goto_3
    if-ge v3, v1, :cond_6

    .line 90
    .line 91
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/hls/p;->K:[I

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
    new-array v3, v1, [Lv9/w;

    .line 98
    .line 99
    move v9, v4

    .line 100
    :goto_4
    if-ge v9, v1, :cond_d

    .line 101
    .line 102
    iget-object v10, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    .line 103
    .line 104
    aget-object v10, v10, v9

    .line 105
    .line 106
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/a0;->F()Lcom/google/android/exoplayer2/p1;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    invoke-static {v10}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    check-cast v10, Lcom/google/android/exoplayer2/p1;

    .line 115
    .line 116
    if-ne v9, v7, :cond_a

    .line 117
    .line 118
    new-array v11, v5, [Lcom/google/android/exoplayer2/p1;

    .line 119
    .line 120
    move v12, v4

    .line 121
    :goto_5
    if-ge v12, v5, :cond_9

    .line 122
    .line 123
    invoke-virtual {v2, v12}, Lv9/w;->c(I)Lcom/google/android/exoplayer2/p1;

    .line 124
    .line 125
    .line 126
    move-result-object v13

    .line 127
    if-ne v6, v0, :cond_7

    .line 128
    .line 129
    iget-object v14, p0, Lcom/google/android/exoplayer2/source/hls/p;->f:Lcom/google/android/exoplayer2/p1;

    .line 130
    .line 131
    if-eqz v14, :cond_7

    .line 132
    .line 133
    invoke-virtual {v13, v14}, Lcom/google/android/exoplayer2/p1;->j(Lcom/google/android/exoplayer2/p1;)Lcom/google/android/exoplayer2/p1;

    .line 134
    .line 135
    .line 136
    move-result-object v13

    .line 137
    :cond_7
    if-ne v5, v0, :cond_8

    .line 138
    .line 139
    invoke-virtual {v10, v13}, Lcom/google/android/exoplayer2/p1;->j(Lcom/google/android/exoplayer2/p1;)Lcom/google/android/exoplayer2/p1;

    .line 140
    .line 141
    .line 142
    move-result-object v13

    .line 143
    goto :goto_6

    .line 144
    :cond_8
    invoke-static {v13, v10, v0}, Lcom/google/android/exoplayer2/source/hls/p;->s(Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/p1;Z)Lcom/google/android/exoplayer2/p1;

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
    new-instance v10, Lv9/w;

    .line 153
    .line 154
    iget-object v12, p0, Lcom/google/android/exoplayer2/source/hls/p;->a:Ljava/lang/String;

    .line 155
    .line 156
    invoke-direct {v10, v12, v11}, Lv9/w;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/p1;)V

    .line 157
    .line 158
    .line 159
    aput-object v10, v3, v9

    .line 160
    .line 161
    iput v9, p0, Lcom/google/android/exoplayer2/source/hls/p;->L:I

    .line 162
    .line 163
    goto :goto_9

    .line 164
    :cond_a
    if-ne v6, v8, :cond_b

    .line 165
    .line 166
    iget-object v11, v10, Lcom/google/android/exoplayer2/p1;->l:Ljava/lang/String;

    .line 167
    .line 168
    invoke-static {v11}, Lcom/google/android/exoplayer2/util/w;->o(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v11

    .line 172
    if-eqz v11, :cond_b

    .line 173
    .line 174
    iget-object v11, p0, Lcom/google/android/exoplayer2/source/hls/p;->f:Lcom/google/android/exoplayer2/p1;

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
    iget-object v13, p0, Lcom/google/android/exoplayer2/source/hls/p;->a:Ljava/lang/String;

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
    new-instance v13, Lv9/w;

    .line 207
    .line 208
    invoke-static {v11, v10, v4}, Lcom/google/android/exoplayer2/source/hls/p;->s(Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/p1;Z)Lcom/google/android/exoplayer2/p1;

    .line 209
    .line 210
    .line 211
    move-result-object v10

    .line 212
    new-array v11, v0, [Lcom/google/android/exoplayer2/p1;

    .line 213
    .line 214
    aput-object v10, v11, v4

    .line 215
    .line 216
    invoke-direct {v13, v12, v11}, Lv9/w;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/p1;)V

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
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/source/hls/p;->r([Lv9/w;)Lv9/y;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->I:Lv9/y;

    .line 228
    .line 229
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->J:Ljava/util/Set;

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
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 236
    .line 237
    .line 238
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->J:Ljava/util/Set;

    .line 243
    .line 244
    return-void
.end method

.method private m(I)Z
    .locals 4

    .line 1
    move v0, p1

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

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
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/exoplayer2/source/hls/i;

    .line 18
    .line 19
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/hls/i;->n:Z

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/google/android/exoplayer2/source/hls/i;

    .line 34
    .line 35
    move v0, v2

    .line 36
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    .line 37
    .line 38
    array-length v1, v1

    .line 39
    if-ge v0, v1, :cond_3

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/hls/i;->k(I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    .line 46
    .line 47
    aget-object v3, v3, v0

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/a0;->C()I

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

.method private static p(II)Li9/k;
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
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance p0, Li9/k;

    .line 32
    .line 33
    invoke-direct {p0}, Li9/k;-><init>()V

    .line 34
    .line 35
    .line 36
    return-object p0
.end method

.method private q(II)Lcom/google/android/exoplayer2/source/a0;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

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
    new-instance v8, Lcom/google/android/exoplayer2/source/hls/p$d;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->e:Lcom/google/android/exoplayer2/upstream/b;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/p;->g:Lcom/google/android/exoplayer2/drm/u;

    .line 17
    .line 18
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/p;->h:Lcom/google/android/exoplayer2/drm/s$a;

    .line 19
    .line 20
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/p;->t:Ljava/util/Map;

    .line 21
    .line 22
    const/4 v7, 0x0

    .line 23
    move-object v2, v8

    .line 24
    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/source/hls/p$d;-><init>(Lcom/google/android/exoplayer2/upstream/b;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/drm/s$a;Ljava/util/Map;Lcom/google/android/exoplayer2/source/hls/p$a;)V

    .line 25
    .line 26
    .line 27
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->P:J

    .line 28
    .line 29
    invoke-virtual {v8, v2, v3}, Lcom/google/android/exoplayer2/source/a0;->b0(J)V

    .line 30
    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->W:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 35
    .line 36
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/source/hls/p$d;->i0(Lcom/google/android/exoplayer2/drm/DrmInitData;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->V:J

    .line 40
    .line 41
    invoke-virtual {v8, v2, v3}, Lcom/google/android/exoplayer2/source/a0;->a0(J)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->X:Lcom/google/android/exoplayer2/source/hls/i;

    .line 45
    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/source/hls/p$d;->j0(Lcom/google/android/exoplayer2/source/hls/i;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-virtual {v8, p0}, Lcom/google/android/exoplayer2/source/a0;->d0(Lcom/google/android/exoplayer2/source/a0$d;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->w:[I

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
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->w:[I

    .line 63
    .line 64
    aput p1, v2, v0

    .line 65
    .line 66
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    .line 67
    .line 68
    invoke-static {p1, v8}, Lcom/google/android/exoplayer2/util/p0;->E0([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, [Lcom/google/android/exoplayer2/source/hls/p$d;

    .line 73
    .line 74
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    .line 75
    .line 76
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->O:[Z

    .line 77
    .line 78
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->O:[Z

    .line 83
    .line 84
    aput-boolean v1, p1, v0

    .line 85
    .line 86
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->M:Z

    .line 87
    .line 88
    or-int/2addr p1, v1

    .line 89
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->M:Z

    .line 90
    .line 91
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->x:Ljava/util/Set;

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
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->y:Landroid/util/SparseIntArray;

    .line 101
    .line 102
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 103
    .line 104
    .line 105
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/p;->z(I)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->A:I

    .line 110
    .line 111
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/hls/p;->z(I)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-le p1, v1, :cond_4

    .line 116
    .line 117
    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->B:I

    .line 118
    .line 119
    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/p;->A:I

    .line 120
    .line 121
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->N:[Z

    .line 122
    .line 123
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->N:[Z

    .line 128
    .line 129
    return-object v8
.end method

.method private r([Lv9/w;)Lv9/y;
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
    iget v3, v2, Lv9/w;->a:I

    .line 9
    .line 10
    new-array v3, v3, [Lcom/google/android/exoplayer2/p1;

    .line 11
    .line 12
    move v4, v0

    .line 13
    :goto_1
    iget v5, v2, Lv9/w;->a:I

    .line 14
    .line 15
    if-ge v4, v5, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2, v4}, Lv9/w;->c(I)Lcom/google/android/exoplayer2/p1;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/p;->g:Lcom/google/android/exoplayer2/drm/u;

    .line 22
    .line 23
    invoke-interface {v6, v5}, Lcom/google/android/exoplayer2/drm/u;->a(Lcom/google/android/exoplayer2/p1;)I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/p1;->c(I)Lcom/google/android/exoplayer2/p1;

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
    new-instance v4, Lv9/w;

    .line 37
    .line 38
    iget-object v2, v2, Lv9/w;->b:Ljava/lang/String;

    .line 39
    .line 40
    invoke-direct {v4, v2, v3}, Lv9/w;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/p1;)V

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
    new-instance v0, Lv9/y;

    .line 49
    .line 50
    invoke-direct {v0, p1}, Lv9/y;-><init>([Lv9/w;)V

    .line 51
    .line 52
    .line 53
    return-object v0
.end method

.method private static s(Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/p1;Z)Lcom/google/android/exoplayer2/p1;
    .locals 7

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/p1;->l:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/w;->k(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/google/android/exoplayer2/p1;->i:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/p0;->K(Ljava/lang/String;I)I

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
    iget-object v1, p0, Lcom/google/android/exoplayer2/p1;->i:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/p0;->L(Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/w;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/p1;->i:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, p1, Lcom/google/android/exoplayer2/p1;->l:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/w;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v3, p1, Lcom/google/android/exoplayer2/p1;->l:Ljava/lang/String;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/p1;->b()Lcom/google/android/exoplayer2/p1$b;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    iget-object v5, p0, Lcom/google/android/exoplayer2/p1;->a:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/p1$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    iget-object v5, p0, Lcom/google/android/exoplayer2/p1;->b:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/p1$b;->U(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    iget-object v5, p0, Lcom/google/android/exoplayer2/p1;->c:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/p1$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    iget v5, p0, Lcom/google/android/exoplayer2/p1;->d:I

    .line 63
    .line 64
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/p1$b;->g0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    iget v5, p0, Lcom/google/android/exoplayer2/p1;->e:I

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/p1$b;->c0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    const/4 v5, -0x1

    .line 75
    if-eqz p2, :cond_2

    .line 76
    .line 77
    iget v6, p0, Lcom/google/android/exoplayer2/p1;->f:I

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    move v6, v5

    .line 81
    :goto_1
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/p1$b;->G(I)Lcom/google/android/exoplayer2/p1$b;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    if-eqz p2, :cond_3

    .line 86
    .line 87
    iget p2, p0, Lcom/google/android/exoplayer2/p1;->g:I

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    move p2, v5

    .line 91
    :goto_2
    invoke-virtual {v4, p2}, Lcom/google/android/exoplayer2/p1$b;->Z(I)Lcom/google/android/exoplayer2/p1$b;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/p1$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    const/4 v1, 0x2

    .line 100
    if-ne v0, v1, :cond_4

    .line 101
    .line 102
    iget v1, p0, Lcom/google/android/exoplayer2/p1;->q:I

    .line 103
    .line 104
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/p1$b;->j0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iget v4, p0, Lcom/google/android/exoplayer2/p1;->r:I

    .line 109
    .line 110
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/p1$b;->Q(I)Lcom/google/android/exoplayer2/p1$b;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iget v4, p0, Lcom/google/android/exoplayer2/p1;->s:F

    .line 115
    .line 116
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/p1$b;->P(F)Lcom/google/android/exoplayer2/p1$b;

    .line 117
    .line 118
    .line 119
    :cond_4
    if-eqz v3, :cond_5

    .line 120
    .line 121
    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/p1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 122
    .line 123
    .line 124
    :cond_5
    iget v1, p0, Lcom/google/android/exoplayer2/p1;->y:I

    .line 125
    .line 126
    if-eq v1, v5, :cond_6

    .line 127
    .line 128
    if-ne v0, v2, :cond_6

    .line 129
    .line 130
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/p1$b;->H(I)Lcom/google/android/exoplayer2/p1$b;

    .line 131
    .line 132
    .line 133
    :cond_6
    iget-object p0, p0, Lcom/google/android/exoplayer2/p1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 134
    .line 135
    if-eqz p0, :cond_8

    .line 136
    .line 137
    iget-object p1, p1, Lcom/google/android/exoplayer2/p1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 138
    .line 139
    if-eqz p1, :cond_7

    .line 140
    .line 141
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    :cond_7
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/p1$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/p1$b;

    .line 146
    .line 147
    .line 148
    :cond_8
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/p1$b;->E()Lcom/google/android/exoplayer2/p1;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    return-object p0
.end method

.method private t(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 10
    .line 11
    .line 12
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

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
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/p;->m(I)Z

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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->x()Lcom/google/android/exoplayer2/source/hls/i;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-wide v5, v0, Lx9/f;->h:J

    .line 40
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/p;->u(I)Lcom/google/android/exoplayer2/source/hls/i;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

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
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->P:J

    .line 54
    .line 55
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->Q:J

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/google/android/exoplayer2/source/hls/i;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/i;->m()V

    .line 67
    .line 68
    .line 69
    :goto_2
    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->T:Z

    .line 71
    .line 72
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->k:Lcom/google/android/exoplayer2/source/p$a;

    .line 73
    .line 74
    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->A:I

    .line 75
    .line 76
    iget-wide v3, p1, Lx9/f;->g:J

    .line 77
    .line 78
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/p$a;->D(IJJ)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method private u(I)Lcom/google/android/exoplayer2/source/hls/i;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/exoplayer2/source/hls/i;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v1, p1, v2}, Lcom/google/android/exoplayer2/util/p0;->M0(Ljava/util/List;II)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    .line 20
    .line 21
    array-length v1, v1

    .line 22
    if-ge p1, v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/hls/i;->k(I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    .line 29
    .line 30
    aget-object v2, v2, p1

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/a0;->u(I)V

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

.method private v(Lcom/google/android/exoplayer2/source/hls/i;)Z
    .locals 4

    .line 1
    iget p1, p1, Lcom/google/android/exoplayer2/source/hls/i;->k:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

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
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->N:[Z

    .line 11
    .line 12
    aget-boolean v3, v3, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    .line 17
    .line 18
    aget-object v3, v3, v2

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/a0;->Q()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-ne v3, p1, :cond_0

    .line 25
    .line 26
    return v1

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p1, 0x1

    .line 31
    return p1
.end method

.method private static w(Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/p1;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/p1;->l:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/google/android/exoplayer2/p1;->l:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/w;->k(Ljava/lang/String;)I

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
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/w;->k(Ljava/lang/String;)I

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
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget p0, p0, Lcom/google/android/exoplayer2/p1;->D:I

    .line 48
    .line 49
    iget p1, p1, Lcom/google/android/exoplayer2/p1;->D:I

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

.method private x()Lcom/google/android/exoplayer2/source/hls/i;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

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
    check-cast v0, Lcom/google/android/exoplayer2/source/hls/i;

    .line 14
    .line 15
    return-object v0
.end method

.method private y(II)Li9/e0;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/p;->Y:Ljava/util/Set;

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
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->y:Landroid/util/SparseIntArray;

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
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->x:Ljava/util/Set;

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
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->w:[I

    .line 38
    .line 39
    aput p1, v1, v0

    .line 40
    .line 41
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->w:[I

    .line 42
    .line 43
    aget v1, v1, v0

    .line 44
    .line 45
    if-ne v1, p1, :cond_2

    .line 46
    .line 47
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    .line 48
    .line 49
    aget-object p1, p1, v0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/hls/p;->p(II)Li9/k;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :goto_0
    return-object p1
.end method

.method private static z(I)I
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


# virtual methods
.method public D(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->C()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    .line 8
    .line 9
    aget-object p1, v0, p1

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->T:Z

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/a0;->K(Z)Z

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

.method public E()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->A:I

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

.method public H()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/e;->n()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public I(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/p;->H()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    .line 5
    .line 6
    aget-object p1, v0, p1

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/a0;->N()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public J(Lx9/f;JJZ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->u:Lx9/f;

    .line 6
    .line 7
    new-instance v2, Lv9/h;

    .line 8
    .line 9
    iget-wide v4, v1, Lx9/f;->a:J

    .line 10
    .line 11
    iget-object v6, v1, Lx9/f;->b:Lcom/google/android/exoplayer2/upstream/n;

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Lx9/f;->d()Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    invoke-virtual/range {p1 .. p1}, Lx9/f;->c()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    invoke-virtual/range {p1 .. p1}, Lx9/f;->a()J

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
    invoke-direct/range {v3 .. v14}, Lv9/h;-><init>(JLcom/google/android/exoplayer2/upstream/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 31
    .line 32
    .line 33
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/p;->i:Lcom/google/android/exoplayer2/upstream/z;

    .line 34
    .line 35
    iget-wide v4, v1, Lx9/f;->a:J

    .line 36
    .line 37
    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/z;->b(J)V

    .line 38
    .line 39
    .line 40
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/p;->k:Lcom/google/android/exoplayer2/source/p$a;

    .line 41
    .line 42
    iget v5, v1, Lx9/f;->c:I

    .line 43
    .line 44
    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/p;->b:I

    .line 45
    .line 46
    iget-object v7, v1, Lx9/f;->d:Lcom/google/android/exoplayer2/p1;

    .line 47
    .line 48
    iget v8, v1, Lx9/f;->e:I

    .line 49
    .line 50
    iget-object v9, v1, Lx9/f;->f:Ljava/lang/Object;

    .line 51
    .line 52
    iget-wide v10, v1, Lx9/f;->g:J

    .line 53
    .line 54
    iget-wide v12, v1, Lx9/f;->h:J

    .line 55
    .line 56
    move-object v4, v2

    .line 57
    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/p$a;->r(Lv9/h;IILcom/google/android/exoplayer2/p1;ILjava/lang/Object;JJ)V

    .line 58
    .line 59
    .line 60
    if-nez p6, :cond_2

    .line 61
    .line 62
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->C()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_0

    .line 67
    .line 68
    iget v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->E:I

    .line 69
    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->T()V

    .line 73
    .line 74
    .line 75
    :cond_1
    iget v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->E:I

    .line 76
    .line 77
    if-lez v1, :cond_2

    .line 78
    .line 79
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->c:Lcom/google/android/exoplayer2/source/hls/p$b;

    .line 80
    .line 81
    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/source/b0$a;->g(Lcom/google/android/exoplayer2/source/b0;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    return-void
.end method

.method public K(Lx9/f;JJ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->u:Lx9/f;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/hls/e;->p(Lx9/f;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lv9/h;

    .line 13
    .line 14
    iget-wide v4, v1, Lx9/f;->a:J

    .line 15
    .line 16
    iget-object v6, v1, Lx9/f;->b:Lcom/google/android/exoplayer2/upstream/n;

    .line 17
    .line 18
    invoke-virtual/range {p1 .. p1}, Lx9/f;->d()Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    invoke-virtual/range {p1 .. p1}, Lx9/f;->c()Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    invoke-virtual/range {p1 .. p1}, Lx9/f;->a()J

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
    invoke-direct/range {v3 .. v14}, Lv9/h;-><init>(JLcom/google/android/exoplayer2/upstream/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 36
    .line 37
    .line 38
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/p;->i:Lcom/google/android/exoplayer2/upstream/z;

    .line 39
    .line 40
    iget-wide v4, v1, Lx9/f;->a:J

    .line 41
    .line 42
    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/z;->b(J)V

    .line 43
    .line 44
    .line 45
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/p;->k:Lcom/google/android/exoplayer2/source/p$a;

    .line 46
    .line 47
    iget v5, v1, Lx9/f;->c:I

    .line 48
    .line 49
    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/p;->b:I

    .line 50
    .line 51
    iget-object v7, v1, Lx9/f;->d:Lcom/google/android/exoplayer2/p1;

    .line 52
    .line 53
    iget v8, v1, Lx9/f;->e:I

    .line 54
    .line 55
    iget-object v9, v1, Lx9/f;->f:Ljava/lang/Object;

    .line 56
    .line 57
    iget-wide v10, v1, Lx9/f;->g:J

    .line 58
    .line 59
    iget-wide v12, v1, Lx9/f;->h:J

    .line 60
    .line 61
    move-object v4, v2

    .line 62
    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/p$a;->u(Lv9/h;IILcom/google/android/exoplayer2/p1;ILjava/lang/Object;JJ)V

    .line 63
    .line 64
    .line 65
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->D:Z

    .line 66
    .line 67
    if-nez v1, :cond_0

    .line 68
    .line 69
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->P:J

    .line 70
    .line 71
    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/p;->continueLoading(J)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->c:Lcom/google/android/exoplayer2/source/hls/p$b;

    .line 76
    .line 77
    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/source/b0$a;->g(Lcom/google/android/exoplayer2/source/b0;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void
.end method

.method public L(Lx9/f;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;
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
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/hls/p;->B(Lx9/f;)Z

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
    check-cast v3, Lcom/google/android/exoplayer2/source/hls/i;

    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/i;->o()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    instance-of v3, v13, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    move-object v3, v13

    .line 27
    check-cast v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    .line 28
    .line 29
    iget v3, v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

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
    sget-object v1, Lcom/google/android/exoplayer2/upstream/Loader;->d:Lcom/google/android/exoplayer2/upstream/Loader$c;

    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lx9/f;->a()J

    .line 43
    .line 44
    .line 45
    move-result-wide v3

    .line 46
    new-instance v5, Lv9/h;

    .line 47
    .line 48
    iget-wide v6, v1, Lx9/f;->a:J

    .line 49
    .line 50
    iget-object v8, v1, Lx9/f;->b:Lcom/google/android/exoplayer2/upstream/n;

    .line 51
    .line 52
    invoke-virtual/range {p1 .. p1}, Lx9/f;->d()Landroid/net/Uri;

    .line 53
    .line 54
    .line 55
    move-result-object v18

    .line 56
    invoke-virtual/range {p1 .. p1}, Lx9/f;->c()Ljava/util/Map;

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
    invoke-direct/range {v14 .. v25}, Lv9/h;-><init>(JLcom/google/android/exoplayer2/upstream/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 71
    .line 72
    .line 73
    new-instance v6, Lv9/i;

    .line 74
    .line 75
    iget v7, v1, Lx9/f;->c:I

    .line 76
    .line 77
    iget v8, v0, Lcom/google/android/exoplayer2/source/hls/p;->b:I

    .line 78
    .line 79
    iget-object v9, v1, Lx9/f;->d:Lcom/google/android/exoplayer2/p1;

    .line 80
    .line 81
    iget v10, v1, Lx9/f;->e:I

    .line 82
    .line 83
    iget-object v11, v1, Lx9/f;->f:Ljava/lang/Object;

    .line 84
    .line 85
    iget-wide v14, v1, Lx9/f;->g:J

    .line 86
    .line 87
    invoke-static {v14, v15}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    .line 88
    .line 89
    .line 90
    move-result-wide v26

    .line 91
    iget-wide v14, v1, Lx9/f;->h:J

    .line 92
    .line 93
    invoke-static {v14, v15}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

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
    invoke-direct/range {v20 .. v29}, Lv9/i;-><init>(IILcom/google/android/exoplayer2/p1;ILjava/lang/Object;JJ)V

    .line 110
    .line 111
    .line 112
    new-instance v7, Lcom/google/android/exoplayer2/upstream/z$c;

    .line 113
    .line 114
    move/from16 v8, p7

    .line 115
    .line 116
    invoke-direct {v7, v5, v6, v13, v8}, Lcom/google/android/exoplayer2/upstream/z$c;-><init>(Lv9/h;Lv9/i;Ljava/io/IOException;I)V

    .line 117
    .line 118
    .line 119
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/p;->i:Lcom/google/android/exoplayer2/upstream/z;

    .line 120
    .line 121
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    .line 122
    .line 123
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/source/hls/e;->k()Lna/s;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-static {v8}, Lna/a0;->c(Lna/s;)Lcom/google/android/exoplayer2/upstream/z$a;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    invoke-interface {v6, v8, v7}, Lcom/google/android/exoplayer2/upstream/z;->d(Lcom/google/android/exoplayer2/upstream/z$a;Lcom/google/android/exoplayer2/upstream/z$c;)Lcom/google/android/exoplayer2/upstream/z$b;

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
    iget v9, v6, Lcom/google/android/exoplayer2/upstream/z$b;->a:I

    .line 139
    .line 140
    const/4 v10, 0x2

    .line 141
    if-ne v9, v10, :cond_2

    .line 142
    .line 143
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    .line 144
    .line 145
    iget-wide v10, v6, Lcom/google/android/exoplayer2/upstream/z$b;->b:J

    .line 146
    .line 147
    invoke-virtual {v9, v1, v10, v11}, Lcom/google/android/exoplayer2/source/hls/e;->m(Lx9/f;J)Z

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
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

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
    check-cast v2, Lcom/google/android/exoplayer2/source/hls/i;

    .line 177
    .line 178
    if-ne v2, v1, :cond_3

    .line 179
    .line 180
    move v8, v4

    .line 181
    :cond_3
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 182
    .line 183
    .line 184
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

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
    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->P:J

    .line 193
    .line 194
    iput-wide v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->Q:J

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_4
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-static {v2}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    check-cast v2, Lcom/google/android/exoplayer2/source/hls/i;

    .line 204
    .line 205
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/hls/i;->m()V

    .line 206
    .line 207
    .line 208
    :cond_5
    :goto_1
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->f:Lcom/google/android/exoplayer2/upstream/Loader$c;

    .line 209
    .line 210
    :goto_2
    move-object/from16 v16, v2

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_6
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->i:Lcom/google/android/exoplayer2/upstream/z;

    .line 214
    .line 215
    invoke-interface {v2, v7}, Lcom/google/android/exoplayer2/upstream/z;->c(Lcom/google/android/exoplayer2/upstream/z$c;)J

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
    invoke-static {v8, v2, v3}, Lcom/google/android/exoplayer2/upstream/Loader;->g(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$c;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    goto :goto_2

    .line 233
    :cond_7
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->g:Lcom/google/android/exoplayer2/upstream/Loader$c;

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/upstream/Loader$c;->c()Z

    .line 237
    .line 238
    .line 239
    move-result v17

    .line 240
    xor-int/lit8 v14, v17, 0x1

    .line 241
    .line 242
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->k:Lcom/google/android/exoplayer2/source/p$a;

    .line 243
    .line 244
    iget v4, v1, Lx9/f;->c:I

    .line 245
    .line 246
    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/p;->b:I

    .line 247
    .line 248
    iget-object v7, v1, Lx9/f;->d:Lcom/google/android/exoplayer2/p1;

    .line 249
    .line 250
    iget v8, v1, Lx9/f;->e:I

    .line 251
    .line 252
    iget-object v9, v1, Lx9/f;->f:Ljava/lang/Object;

    .line 253
    .line 254
    iget-wide v10, v1, Lx9/f;->g:J

    .line 255
    .line 256
    iget-wide v12, v1, Lx9/f;->h:J

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
    invoke-virtual/range {v2 .. v14}, Lcom/google/android/exoplayer2/source/p$a;->w(Lv9/h;IILcom/google/android/exoplayer2/p1;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    .line 268
    .line 269
    .line 270
    if-nez v17, :cond_8

    .line 271
    .line 272
    const/4 v2, 0x0

    .line 273
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->u:Lx9/f;

    .line 274
    .line 275
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->i:Lcom/google/android/exoplayer2/upstream/z;

    .line 276
    .line 277
    iget-wide v3, v1, Lx9/f;->a:J

    .line 278
    .line 279
    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/z;->b(J)V

    .line 280
    .line 281
    .line 282
    :cond_8
    if-eqz v15, :cond_a

    .line 283
    .line 284
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->D:Z

    .line 285
    .line 286
    if-nez v1, :cond_9

    .line 287
    .line 288
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->P:J

    .line 289
    .line 290
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/p;->continueLoading(J)Z

    .line 291
    .line 292
    .line 293
    goto :goto_4

    .line 294
    :cond_9
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->c:Lcom/google/android/exoplayer2/source/hls/p$b;

    .line 295
    .line 296
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/b0$a;->g(Lcom/google/android/exoplayer2/source/b0;)V

    .line 297
    .line 298
    .line 299
    :cond_a
    :goto_4
    return-object v16
.end method

.method public M()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->x:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public N(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/z$c;Z)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/hls/e;->o(Landroid/net/Uri;)Z

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
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/hls/p;->i:Lcom/google/android/exoplayer2/upstream/z;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/e;->k()Lna/s;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lna/a0;->c(Lna/s;)Lcom/google/android/exoplayer2/upstream/z$a;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {p3, v0, p2}, Lcom/google/android/exoplayer2/upstream/z;->d(Lcom/google/android/exoplayer2/upstream/z$a;Lcom/google/android/exoplayer2/upstream/z$c;)Lcom/google/android/exoplayer2/upstream/z$b;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    iget p3, p2, Lcom/google/android/exoplayer2/upstream/z$b;->a:I

    .line 37
    .line 38
    const/4 v0, 0x2

    .line 39
    if-ne p3, v0, :cond_1

    .line 40
    .line 41
    iget-wide p2, p2, Lcom/google/android/exoplayer2/upstream/z$b;->b:J

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move-wide p2, v2

    .line 45
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    .line 46
    .line 47
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/e;->q(Landroid/net/Uri;J)Z

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

.method public O()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/google/android/exoplayer2/source/hls/i;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/hls/e;->c(Lcom/google/android/exoplayer2/source/hls/i;)I

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
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/i;->t()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x2

    .line 32
    if-ne v1, v0, :cond_2

    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->T:Z

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->e()V

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    return-void
.end method

.method public varargs Q([Lv9/w;I[I)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/p;->r([Lv9/w;)Lv9/y;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->I:Lv9/y;

    .line 6
    .line 7
    new-instance p1, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->J:Ljava/util/Set;

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
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->J:Ljava/util/Set;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->I:Lv9/y;

    .line 23
    .line 24
    invoke-virtual {v3, v1}, Lv9/y;->b(I)Lv9/w;

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
    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/p;->L:I

    .line 35
    .line 36
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->r:Landroid/os/Handler;

    .line 37
    .line 38
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/hls/p;->c:Lcom/google/android/exoplayer2/source/hls/p$b;

    .line 39
    .line 40
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    new-instance p3, Lcom/google/android/exoplayer2/source/hls/m;

    .line 44
    .line 45
    invoke-direct {p3, p2}, Lcom/google/android/exoplayer2/source/hls/m;-><init>(Lcom/google/android/exoplayer2/source/hls/p$b;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->Y()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public R(ILcom/google/android/exoplayer2/q1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->C()Z

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

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
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

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
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/google/android/exoplayer2/source/hls/i;

    .line 36
    .line 37
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/source/hls/p;->v(Lcom/google/android/exoplayer2/source/hls/i;)Z

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
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-static {v3, v2, v0}, Lcom/google/android/exoplayer2/util/p0;->M0(Ljava/util/List;II)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lcom/google/android/exoplayer2/source/hls/i;

    .line 58
    .line 59
    iget-object v10, v0, Lx9/f;->d:Lcom/google/android/exoplayer2/p1;

    .line 60
    .line 61
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->G:Lcom/google/android/exoplayer2/p1;

    .line 62
    .line 63
    invoke-virtual {v10, v3}, Lcom/google/android/exoplayer2/p1;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_2

    .line 68
    .line 69
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->k:Lcom/google/android/exoplayer2/source/p$a;

    .line 70
    .line 71
    iget v4, p0, Lcom/google/android/exoplayer2/source/hls/p;->b:I

    .line 72
    .line 73
    iget v6, v0, Lx9/f;->e:I

    .line 74
    .line 75
    iget-object v7, v0, Lx9/f;->f:Ljava/lang/Object;

    .line 76
    .line 77
    iget-wide v8, v0, Lx9/f;->g:J

    .line 78
    .line 79
    move-object v5, v10

    .line 80
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/exoplayer2/source/p$a;->i(ILcom/google/android/exoplayer2/p1;ILjava/lang/Object;J)V

    .line 81
    .line 82
    .line 83
    :cond_2
    iput-object v10, p0, Lcom/google/android/exoplayer2/source/hls/p;->G:Lcom/google/android/exoplayer2/p1;

    .line 84
    .line 85
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lcom/google/android/exoplayer2/source/hls/i;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/i;->o()Z

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    .line 109
    .line 110
    aget-object v0, v0, p1

    .line 111
    .line 112
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->T:Z

    .line 113
    .line 114
    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/google/android/exoplayer2/source/a0;->S(Lcom/google/android/exoplayer2/q1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;IZ)I

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
    iget-object p4, p2, Lcom/google/android/exoplayer2/q1;->b:Lcom/google/android/exoplayer2/p1;

    .line 122
    .line 123
    invoke-static {p4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p4

    .line 127
    check-cast p4, Lcom/google/android/exoplayer2/p1;

    .line 128
    .line 129
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->B:I

    .line 130
    .line 131
    if-ne p1, v0, :cond_7

    .line 132
    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    .line 134
    .line 135
    aget-object p1, v0, p1

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/a0;->Q()I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-ge v2, v0, :cond_5

    .line 148
    .line 149
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Lcom/google/android/exoplayer2/source/hls/i;

    .line 156
    .line 157
    iget v0, v0, Lcom/google/android/exoplayer2/source/hls/i;->k:I

    .line 158
    .line 159
    if-eq v0, p1, :cond_5

    .line 160
    .line 161
    add-int/lit8 v2, v2, 0x1

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-ge v2, p1, :cond_6

    .line 171
    .line 172
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    check-cast p1, Lcom/google/android/exoplayer2/source/hls/i;

    .line 179
    .line 180
    iget-object p1, p1, Lx9/f;->d:Lcom/google/android/exoplayer2/p1;

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->F:Lcom/google/android/exoplayer2/p1;

    .line 184
    .line 185
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    check-cast p1, Lcom/google/android/exoplayer2/p1;

    .line 190
    .line 191
    :goto_2
    invoke-virtual {p4, p1}, Lcom/google/android/exoplayer2/p1;->j(Lcom/google/android/exoplayer2/p1;)Lcom/google/android/exoplayer2/p1;

    .line 192
    .line 193
    .line 194
    move-result-object p4

    .line 195
    :cond_7
    iput-object p4, p2, Lcom/google/android/exoplayer2/q1;->b:Lcom/google/android/exoplayer2/p1;

    .line 196
    .line 197
    :cond_8
    return p3
.end method

.method public S()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->D:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

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
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/a0;->R()V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->l(Lcom/google/android/exoplayer2/upstream/Loader$e;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->r:Landroid/os/Handler;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->H:Z

    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->s:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public V(JZ)Z
    .locals 3

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->P:J

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->C()Z

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
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->Q:J

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->C:Z

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    if-nez p3, :cond_1

    .line 19
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/p;->U(J)Z

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    if-eqz p3, :cond_1

    .line 25
    .line 26
    return v2

    .line 27
    :cond_1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->Q:J

    .line 28
    .line 29
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->T:Z

    .line 30
    .line 31
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->C:Z

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    .line 49
    .line 50
    array-length p2, p1

    .line 51
    :goto_0
    if-ge v2, p2, :cond_2

    .line 52
    .line 53
    aget-object p3, p1, v2

    .line 54
    .line 55
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/a0;->r()V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->e()V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->f()V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->T()V

    .line 73
    .line 74
    .line 75
    :goto_1
    return v1
.end method

.method public W([Lna/s;[Z[Lv9/s;[ZJZ)Z
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
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/p;->h()V

    .line 10
    .line 11
    .line 12
    iget v3, v0, Lcom/google/android/exoplayer2/source/hls/p;->E:I

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
    check-cast v5, Lcom/google/android/exoplayer2/source/hls/l;

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
    iget v7, v0, Lcom/google/android/exoplayer2/source/hls/p;->E:I

    .line 36
    .line 37
    sub-int/2addr v7, v15

    .line 38
    iput v7, v0, Lcom/google/android/exoplayer2/source/hls/p;->E:I

    .line 39
    .line 40
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/hls/l;->d()V

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
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/source/hls/p;->S:Z

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
    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/hls/p;->P:J

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
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    .line 68
    .line 69
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/hls/e;->k()Lna/s;

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
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/p;->I:Lv9/y;

    .line 86
    .line 87
    invoke-interface {v5}, Lna/v;->getTrackGroup()Lv9/w;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    invoke-virtual {v7, v8}, Lv9/y;->c(Lv9/w;)I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    iget v8, v0, Lcom/google/android/exoplayer2/source/hls/p;->L:I

    .line 96
    .line 97
    if-ne v7, v8, :cond_7

    .line 98
    .line 99
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    .line 100
    .line 101
    invoke-virtual {v8, v5}, Lcom/google/android/exoplayer2/source/hls/e;->u(Lna/s;)V

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
    iget v5, v0, Lcom/google/android/exoplayer2/source/hls/p;->E:I

    .line 110
    .line 111
    add-int/2addr v5, v15

    .line 112
    iput v5, v0, Lcom/google/android/exoplayer2/source/hls/p;->E:I

    .line 113
    .line 114
    new-instance v5, Lcom/google/android/exoplayer2/source/hls/l;

    .line 115
    .line 116
    invoke-direct {v5, v0, v7}, Lcom/google/android/exoplayer2/source/hls/l;-><init>(Lcom/google/android/exoplayer2/source/hls/p;I)V

    .line 117
    .line 118
    .line 119
    aput-object v5, v2, v3

    .line 120
    .line 121
    aput-boolean v15, p4, v3

    .line 122
    .line 123
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/p;->K:[I

    .line 124
    .line 125
    if-eqz v8, :cond_9

    .line 126
    .line 127
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/hls/l;->b()V

    .line 128
    .line 129
    .line 130
    if-nez v16, :cond_9

    .line 131
    .line 132
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    .line 133
    .line 134
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/p;->K:[I

    .line 135
    .line 136
    aget v7, v8, v7

    .line 137
    .line 138
    aget-object v5, v5, v7

    .line 139
    .line 140
    invoke-virtual {v5, v12, v13, v15}, Lcom/google/android/exoplayer2/source/a0;->Z(JZ)Z

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-nez v7, :cond_8

    .line 145
    .line 146
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/a0;->C()I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-eqz v5, :cond_8

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
    iget v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->E:I

    .line 161
    .line 162
    if-nez v1, :cond_d

    .line 163
    .line 164
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    .line 165
    .line 166
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/e;->r()V

    .line 167
    .line 168
    .line 169
    iput-object v6, v0, Lcom/google/android/exoplayer2/source/hls/p;->G:Lcom/google/android/exoplayer2/p1;

    .line 170
    .line 171
    iput-boolean v15, v0, Lcom/google/android/exoplayer2/source/hls/p;->R:Z

    .line 172
    .line 173
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 176
    .line 177
    .line 178
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 179
    .line 180
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_c

    .line 185
    .line 186
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->C:Z

    .line 187
    .line 188
    if-eqz v1, :cond_b

    .line 189
    .line 190
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

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
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/a0;->r()V

    .line 198
    .line 199
    .line 200
    add-int/lit8 v14, v14, 0x1

    .line 201
    .line 202
    goto :goto_6

    .line 203
    :cond_b
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 204
    .line 205
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->e()V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_9

    .line 209
    .line 210
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/p;->T()V

    .line 211
    .line 212
    .line 213
    goto :goto_9

    .line 214
    :cond_d
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

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
    invoke-static {v11, v4}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-nez v1, :cond_10

    .line 227
    .line 228
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->S:Z

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
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/p;->x()Lcom/google/android/exoplayer2/source/hls/i;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    .line 245
    .line 246
    invoke-virtual {v3, v1, v12, v13}, Lcom/google/android/exoplayer2/source/hls/e;->a(Lcom/google/android/exoplayer2/source/hls/i;J)[Lx9/o;

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
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/hls/p;->o:Ljava/util/List;

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
    invoke-interface/range {v3 .. v11}, Lna/s;->f(JJJLjava/util/List;[Lx9/o;)V

    .line 265
    .line 266
    .line 267
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    .line 268
    .line 269
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/e;->j()Lv9/w;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    iget-object v1, v1, Lx9/f;->d:Lcom/google/android/exoplayer2/p1;

    .line 274
    .line 275
    invoke-virtual {v3, v1}, Lv9/w;->d(Lcom/google/android/exoplayer2/p1;)I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    invoke-interface/range {v18 .. v18}, Lna/s;->getSelectedIndexInTrackGroup()I

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    if-eq v3, v1, :cond_10

    .line 284
    .line 285
    :cond_f
    iput-boolean v15, v0, Lcom/google/android/exoplayer2/source/hls/p;->R:Z

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
    invoke-virtual {v0, v12, v13, v1}, Lcom/google/android/exoplayer2/source/hls/p;->V(JZ)Z

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
    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/hls/p;->d0([Lv9/s;)V

    .line 311
    .line 312
    .line 313
    iput-boolean v15, v0, Lcom/google/android/exoplayer2/source/hls/p;->S:Z

    .line 314
    .line 315
    return v16
.end method

.method public X(Lcom/google/android/exoplayer2/drm/DrmInitData;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->W:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->W:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    .line 13
    .line 14
    array-length v2, v1

    .line 15
    if-ge v0, v2, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->O:[Z

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
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/hls/p$d;->i0(Lcom/google/android/exoplayer2/drm/DrmInitData;)V

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

.method public Z(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/hls/e;->t(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/p1;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->r:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->p:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public a0(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->V:J

    .line 2
    .line 3
    cmp-long v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->V:J

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

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
    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/source/a0;->a0(J)V

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

.method public b(JLcom/google/android/exoplayer2/d3;)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/e;->b(JLcom/google/android/exoplayer2/d3;)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public b0(IJ)I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->C()Z

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    .line 10
    .line 11
    aget-object v0, v0, p1

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->T:Z

    .line 14
    .line 15
    invoke-virtual {v0, p2, p3, v1}, Lcom/google/android/exoplayer2/source/a0;->E(JZ)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

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
    check-cast p3, Lcom/google/android/exoplayer2/source/hls/i;

    .line 27
    .line 28
    if-eqz p3, :cond_1

    .line 29
    .line 30
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/hls/i;->o()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/a0;->C()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/source/hls/i;->k(I)I

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
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/a0;->e0(I)V

    .line 50
    .line 51
    .line 52
    return p2
.end method

.method public c0(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->h()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->K:[I

    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->K:[I

    .line 10
    .line 11
    aget p1, v0, p1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->N:[Z

    .line 14
    .line 15
    aget-boolean v0, v0, p1

    .line 16
    .line 17
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->N:[Z

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    aput-boolean v1, v0, p1

    .line 24
    .line 25
    return-void
.end method

.method public continueLoading(J)Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->T:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_a

    .line 7
    .line 8
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_a

    .line 15
    .line 16
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->h()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    goto/16 :goto_5

    .line 25
    .line 26
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/p;->C()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/hls/p;->Q:J

    .line 37
    .line 38
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    .line 39
    .line 40
    array-length v6, v5

    .line 41
    move v7, v2

    .line 42
    :goto_0
    if-ge v7, v6, :cond_1

    .line 43
    .line 44
    aget-object v8, v5, v7

    .line 45
    .line 46
    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/hls/p;->Q:J

    .line 47
    .line 48
    invoke-virtual {v8, v9, v10}, Lcom/google/android/exoplayer2/source/a0;->b0(J)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v7, v7, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    :goto_1
    move-object v10, v1

    .line 55
    move-wide v8, v3

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->o:Ljava/util/List;

    .line 58
    .line 59
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/p;->x()Lcom/google/android/exoplayer2/source/hls/i;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/i;->f()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_3

    .line 68
    .line 69
    iget-wide v3, v3, Lx9/f;->h:J

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/hls/p;->P:J

    .line 73
    .line 74
    iget-wide v6, v3, Lx9/f;->g:J

    .line 75
    .line 76
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 77
    .line 78
    .line 79
    move-result-wide v3

    .line 80
    goto :goto_1

    .line 81
    :goto_2
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->m:Lcom/google/android/exoplayer2/source/hls/e$b;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/e$b;->a()V

    .line 84
    .line 85
    .line 86
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    .line 87
    .line 88
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->D:Z

    .line 89
    .line 90
    const/4 v3, 0x1

    .line 91
    if-nez v1, :cond_5

    .line 92
    .line 93
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_4

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_4
    move v11, v2

    .line 101
    goto :goto_4

    .line 102
    :cond_5
    :goto_3
    move v11, v3

    .line 103
    :goto_4
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/hls/p;->m:Lcom/google/android/exoplayer2/source/hls/e$b;

    .line 104
    .line 105
    move-wide/from16 v6, p1

    .line 106
    .line 107
    invoke-virtual/range {v5 .. v12}, Lcom/google/android/exoplayer2/source/hls/e;->e(JJLjava/util/List;ZLcom/google/android/exoplayer2/source/hls/e$b;)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->m:Lcom/google/android/exoplayer2/source/hls/e$b;

    .line 111
    .line 112
    iget-boolean v4, v1, Lcom/google/android/exoplayer2/source/hls/e$b;->b:Z

    .line 113
    .line 114
    iget-object v5, v1, Lcom/google/android/exoplayer2/source/hls/e$b;->a:Lx9/f;

    .line 115
    .line 116
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/hls/e$b;->c:Landroid/net/Uri;

    .line 117
    .line 118
    if-eqz v4, :cond_6

    .line 119
    .line 120
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->Q:J

    .line 126
    .line 127
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/source/hls/p;->T:Z

    .line 128
    .line 129
    return v3

    .line 130
    :cond_6
    if-nez v5, :cond_8

    .line 131
    .line 132
    if-eqz v1, :cond_7

    .line 133
    .line 134
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/p;->c:Lcom/google/android/exoplayer2/source/hls/p$b;

    .line 135
    .line 136
    invoke-interface {v3, v1}, Lcom/google/android/exoplayer2/source/hls/p$b;->d(Landroid/net/Uri;)V

    .line 137
    .line 138
    .line 139
    :cond_7
    return v2

    .line 140
    :cond_8
    invoke-static {v5}, Lcom/google/android/exoplayer2/source/hls/p;->B(Lx9/f;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_9

    .line 145
    .line 146
    move-object v1, v5

    .line 147
    check-cast v1, Lcom/google/android/exoplayer2/source/hls/i;

    .line 148
    .line 149
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/hls/p;->A(Lcom/google/android/exoplayer2/source/hls/i;)V

    .line 150
    .line 151
    .line 152
    :cond_9
    iput-object v5, v0, Lcom/google/android/exoplayer2/source/hls/p;->u:Lx9/f;

    .line 153
    .line 154
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 155
    .line 156
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/p;->i:Lcom/google/android/exoplayer2/upstream/z;

    .line 157
    .line 158
    iget v4, v5, Lx9/f;->c:I

    .line 159
    .line 160
    invoke-interface {v2, v4}, Lcom/google/android/exoplayer2/upstream/z;->a(I)I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    invoke-virtual {v1, v5, v0, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->m(Lcom/google/android/exoplayer2/upstream/Loader$d;Lcom/google/android/exoplayer2/upstream/Loader$b;I)J

    .line 165
    .line 166
    .line 167
    move-result-wide v10

    .line 168
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/hls/p;->k:Lcom/google/android/exoplayer2/source/p$a;

    .line 169
    .line 170
    new-instance v13, Lv9/h;

    .line 171
    .line 172
    iget-wide v7, v5, Lx9/f;->a:J

    .line 173
    .line 174
    iget-object v9, v5, Lx9/f;->b:Lcom/google/android/exoplayer2/upstream/n;

    .line 175
    .line 176
    move-object v6, v13

    .line 177
    invoke-direct/range {v6 .. v11}, Lv9/h;-><init>(JLcom/google/android/exoplayer2/upstream/n;J)V

    .line 178
    .line 179
    .line 180
    iget v14, v5, Lx9/f;->c:I

    .line 181
    .line 182
    iget v15, v0, Lcom/google/android/exoplayer2/source/hls/p;->b:I

    .line 183
    .line 184
    iget-object v1, v5, Lx9/f;->d:Lcom/google/android/exoplayer2/p1;

    .line 185
    .line 186
    iget v2, v5, Lx9/f;->e:I

    .line 187
    .line 188
    iget-object v4, v5, Lx9/f;->f:Ljava/lang/Object;

    .line 189
    .line 190
    iget-wide v6, v5, Lx9/f;->g:J

    .line 191
    .line 192
    iget-wide v8, v5, Lx9/f;->h:J

    .line 193
    .line 194
    move-object/from16 v16, v1

    .line 195
    .line 196
    move/from16 v17, v2

    .line 197
    .line 198
    move-object/from16 v18, v4

    .line 199
    .line 200
    move-wide/from16 v19, v6

    .line 201
    .line 202
    move-wide/from16 v21, v8

    .line 203
    .line 204
    invoke-virtual/range {v12 .. v22}, Lcom/google/android/exoplayer2/source/p$a;->A(Lv9/h;IILcom/google/android/exoplayer2/p1;ILjava/lang/Object;JJ)V

    .line 205
    .line 206
    .line 207
    return v3

    .line 208
    :cond_a
    :goto_5
    return v2
.end method

.method public discardBuffer(JZ)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->C:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->C()Z

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

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
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    .line 19
    .line 20
    aget-object v2, v2, v1

    .line 21
    .line 22
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/p;->N:[Z

    .line 23
    .line 24
    aget-boolean v3, v3, v1

    .line 25
    .line 26
    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/google/android/exoplayer2/source/a0;->q(JZZ)V

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

.method public endTracks()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->U:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->r:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->q:Ljava/lang/Runnable;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public g(Li9/b0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->T:Z

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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->C()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->Q:J

    .line 15
    .line 16
    return-wide v0

    .line 17
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->P:J

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->x()Lcom/google/android/exoplayer2/source/hls/i;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/hls/i;->f()Z

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
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

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
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

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
    check-cast v2, Lcom/google/android/exoplayer2/source/hls/i;

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
    iget-wide v2, v2, Lx9/f;->h:J

    .line 58
    .line 59
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    :cond_4
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->C:Z

    .line 64
    .line 65
    if-eqz v2, :cond_5

    .line 66
    .line 67
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

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
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/a0;->z()J

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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->C()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->Q:J

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->T:Z

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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->x()Lcom/google/android/exoplayer2/source/hls/i;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-wide v0, v0, Lx9/f;->h:J

    .line 22
    .line 23
    :goto_0
    return-wide v0
.end method

.method public getTrackGroups()Lv9/y;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->h()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->I:Lv9/y;

    .line 5
    .line 6
    return-object v0
.end method

.method public i(I)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->h()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->K:[I

    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->K:[I

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->J:Ljava/util/Set;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->I:Lv9/y;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lv9/y;->b(I)Lv9/w;

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
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->N:[Z

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

.method public isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public bridge synthetic j(Lcom/google/android/exoplayer2/upstream/Loader$d;JJZ)V
    .locals 0

    .line 1
    check-cast p1, Lx9/f;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/hls/p;->J(Lx9/f;JJZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic l(Lcom/google/android/exoplayer2/upstream/Loader$d;JJ)V
    .locals 0

    .line 1
    check-cast p1, Lx9/f;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/hls/p;->K(Lx9/f;JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/p;->H()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->T:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->D:Z

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
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

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

.method public bridge synthetic n(Lcom/google/android/exoplayer2/upstream/Loader$d;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;
    .locals 0

    .line 1
    check-cast p1, Lx9/f;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p7}, Lcom/google/android/exoplayer2/source/hls/p;->L(Lx9/f;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public o()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->D:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->P:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/hls/p;->continueLoading(J)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onLoaderReleased()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

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
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/a0;->T()V

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

.method public reevaluateBuffer(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->h()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_5

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/p;->C()Z

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->u:Lx9/f;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->u:Lx9/f;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->o:Ljava/util/List;

    .line 34
    .line 35
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/hls/e;->v(JLx9/f;Ljava/util/List;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->e()V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->o:Ljava/util/List;

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
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->o:Ljava/util/List;

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
    check-cast v2, Lcom/google/android/exoplayer2/source/hls/i;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/hls/e;->c(Lcom/google/android/exoplayer2/source/hls/i;)I

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
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->o:Ljava/util/List;

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
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/hls/p;->t(I)V

    .line 86
    .line 87
    .line 88
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->d:Lcom/google/android/exoplayer2/source/hls/e;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->o:Ljava/util/List;

    .line 91
    .line 92
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/hls/e;->h(JLjava/util/List;)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/hls/p;->n:Ljava/util/ArrayList;

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
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/p;->t(I)V

    .line 105
    .line 106
    .line 107
    :cond_5
    :goto_1
    return-void
.end method

.method public track(II)Li9/e0;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/p;->Y:Ljava/util/Set;

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
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/p;->y(II)Li9/e0;

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
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/p;->v:[Lcom/google/android/exoplayer2/source/hls/p$d;

    .line 20
    .line 21
    array-length v2, v1

    .line 22
    if-ge v0, v2, :cond_2

    .line 23
    .line 24
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/p;->w:[I

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
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/p;->U:Z

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/hls/p;->p(II)Li9/k;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/p;->q(II)Lcom/google/android/exoplayer2/source/a0;

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
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->z:Li9/e0;

    .line 56
    .line 57
    if-nez p1, :cond_5

    .line 58
    .line 59
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/p$c;

    .line 60
    .line 61
    iget p2, p0, Lcom/google/android/exoplayer2/source/hls/p;->l:I

    .line 62
    .line 63
    invoke-direct {p1, v0, p2}, Lcom/google/android/exoplayer2/source/hls/p$c;-><init>(Li9/e0;I)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->z:Li9/e0;

    .line 67
    .line 68
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/p;->z:Li9/e0;

    .line 69
    .line 70
    return-object p1

    .line 71
    :cond_6
    return-object v0
.end method
