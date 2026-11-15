.class public final Landroidx/media3/exoplayer/source/MergingMediaSource;
.super Landroidx/media3/exoplayer/source/c;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;,
        Landroidx/media3/exoplayer/source/MergingMediaSource$c;,
        Landroidx/media3/exoplayer/source/MergingMediaSource$b;
    }
.end annotation


# static fields
.field private static final w:Landroidx/media3/common/t;


# instance fields
.field private final k:Z

.field private final l:Z

.field private final m:[Landroidx/media3/exoplayer/source/r;

.field private final n:Ljava/util/List;

.field private final o:[Landroidx/media3/common/e0;

.field private final p:Ljava/util/ArrayList;

.field private final q:Lf2/e;

.field private final r:Ljava/util/Map;

.field private final s:Lcom/google/common/collect/j3;

.field private t:I

.field private u:[[J

.field private v:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/common/t$c;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/common/t$c;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "MergingMediaSource"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/media3/common/t$c;->d(Ljava/lang/String;)Landroidx/media3/common/t$c;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroidx/media3/common/t$c;->a()Landroidx/media3/common/t;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->w:Landroidx/media3/common/t;

    .line 17
    .line 18
    return-void
.end method

.method public varargs constructor <init>(ZZLf2/e;[Landroidx/media3/exoplayer/source/r;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/c;-><init>()V

    .line 5
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->k:Z

    .line 6
    iput-boolean p2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->l:Z

    .line 7
    iput-object p4, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/r;

    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->q:Lf2/e;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->p:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->t:I

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    array-length p2, p4

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->n:Ljava/util/List;

    const/4 p1, 0x0

    move p2, p1

    .line 12
    :goto_0
    array-length p3, p4

    if-ge p2, p3, :cond_0

    .line 13
    iget-object p3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->n:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 14
    :cond_0
    array-length p2, p4

    new-array p2, p2, [Landroidx/media3/common/e0;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->o:[Landroidx/media3/common/e0;

    .line 15
    new-array p1, p1, [[J

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->u:[[J

    .line 16
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->r:Ljava/util/Map;

    .line 17
    invoke-static {}, Lcom/google/common/collect/MultimapBuilder;->a()Lcom/google/common/collect/MultimapBuilder$e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/MultimapBuilder$e;->a()Lcom/google/common/collect/MultimapBuilder$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/MultimapBuilder$d;->g()Lcom/google/common/collect/i3;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->s:Lcom/google/common/collect/j3;

    return-void
.end method

.method public varargs constructor <init>(ZZ[Landroidx/media3/exoplayer/source/r;)V
    .locals 1

    .line 3
    new-instance v0, Lf2/f;

    invoke-direct {v0}, Lf2/f;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/exoplayer/source/MergingMediaSource;-><init>(ZZLf2/e;[Landroidx/media3/exoplayer/source/r;)V

    return-void
.end method

.method public varargs constructor <init>(Z[Landroidx/media3/exoplayer/source/r;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/source/MergingMediaSource;-><init>(ZZ[Landroidx/media3/exoplayer/source/r;)V

    return-void
.end method

.method public varargs constructor <init>([Landroidx/media3/exoplayer/source/r;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/source/MergingMediaSource;-><init>(Z[Landroidx/media3/exoplayer/source/r;)V

    return-void
.end method

.method private J()V
    .locals 9

    .line 1
    new-instance v0, Landroidx/media3/common/e0$b;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/common/e0$b;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    iget v3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->t:I

    .line 9
    .line 10
    if-ge v2, v3, :cond_1

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->o:[Landroidx/media3/common/e0;

    .line 13
    .line 14
    aget-object v3, v3, v1

    .line 15
    .line 16
    invoke-virtual {v3, v2, v0}, Landroidx/media3/common/e0;->f(ILandroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Landroidx/media3/common/e0$b;->o()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    neg-long v3, v3

    .line 25
    const/4 v5, 0x1

    .line 26
    :goto_1
    iget-object v6, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->o:[Landroidx/media3/common/e0;

    .line 27
    .line 28
    array-length v7, v6

    .line 29
    if-ge v5, v7, :cond_0

    .line 30
    .line 31
    aget-object v6, v6, v5

    .line 32
    .line 33
    invoke-virtual {v6, v2, v0}, Landroidx/media3/common/e0;->f(ILandroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-virtual {v6}, Landroidx/media3/common/e0$b;->o()J

    .line 38
    .line 39
    .line 40
    move-result-wide v6

    .line 41
    neg-long v6, v6

    .line 42
    iget-object v8, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->u:[[J

    .line 43
    .line 44
    aget-object v8, v8, v2

    .line 45
    .line 46
    sub-long v6, v3, v6

    .line 47
    .line 48
    aput-wide v6, v8, v5

    .line 49
    .line 50
    add-int/lit8 v5, v5, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method

.method private M()V
    .locals 13

    .line 1
    new-instance v0, Landroidx/media3/common/e0$b;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/common/e0$b;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    iget v3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->t:I

    .line 9
    .line 10
    if-ge v2, v3, :cond_5

    .line 11
    .line 12
    const-wide/high16 v3, -0x8000000000000000L

    .line 13
    .line 14
    move v5, v1

    .line 15
    move-wide v6, v3

    .line 16
    :goto_1
    iget-object v8, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->o:[Landroidx/media3/common/e0;

    .line 17
    .line 18
    array-length v9, v8

    .line 19
    if-ge v5, v9, :cond_3

    .line 20
    .line 21
    aget-object v8, v8, v5

    .line 22
    .line 23
    invoke-virtual {v8, v2, v0}, Landroidx/media3/common/e0;->f(ILandroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    invoke-virtual {v8}, Landroidx/media3/common/e0$b;->k()J

    .line 28
    .line 29
    .line 30
    move-result-wide v8

    .line 31
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    cmp-long v10, v8, v10

    .line 37
    .line 38
    if-nez v10, :cond_0

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_0
    iget-object v10, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->u:[[J

    .line 42
    .line 43
    aget-object v10, v10, v2

    .line 44
    .line 45
    aget-wide v11, v10, v5

    .line 46
    .line 47
    add-long/2addr v8, v11

    .line 48
    cmp-long v10, v6, v3

    .line 49
    .line 50
    if-eqz v10, :cond_1

    .line 51
    .line 52
    cmp-long v10, v8, v6

    .line 53
    .line 54
    if-gez v10, :cond_2

    .line 55
    .line 56
    :cond_1
    move-wide v6, v8

    .line 57
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    aget-object v3, v8, v1

    .line 61
    .line 62
    invoke-virtual {v3, v2}, Landroidx/media3/common/e0;->m(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iget-object v4, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->r:Ljava/util/Map;

    .line 67
    .line 68
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    iget-object v4, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->s:Lcom/google/common/collect/j3;

    .line 76
    .line 77
    invoke-interface {v4, v3}, Lcom/google/common/collect/j3;->get(Ljava/lang/Object;)Ljava/util/Collection;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_4

    .line 90
    .line 91
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Landroidx/media3/exoplayer/source/b;

    .line 96
    .line 97
    const-wide/16 v8, 0x0

    .line 98
    .line 99
    invoke-virtual {v4, v8, v9, v6, v7}, Landroidx/media3/exoplayer/source/b;->n(JJ)V

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_5
    return-void
.end method


# virtual methods
.method protected B()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/media3/exoplayer/source/c;->B()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->o:[Landroidx/media3/common/e0;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->t:I

    .line 12
    .line 13
    iput-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->v:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->p:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->p:Ljava/util/ArrayList;

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/r;

    .line 23
    .line 24
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method protected bridge synthetic D(Ljava/lang/Object;Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/r$b;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/MergingMediaSource;->K(Ljava/lang/Integer;Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected bridge synthetic H(Ljava/lang/Object;Landroidx/media3/exoplayer/source/r;Landroidx/media3/common/e0;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/MergingMediaSource;->L(Ljava/lang/Integer;Landroidx/media3/exoplayer/source/r;Landroidx/media3/common/e0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected K(Ljava/lang/Integer;Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/r$b;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->n:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/util/List;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    move v1, v0

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ge v1, v2, :cond_1

    .line 20
    .line 21
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroidx/media3/exoplayer/source/MergingMediaSource$c;

    .line 26
    .line 27
    invoke-static {v2}, Landroidx/media3/exoplayer/source/MergingMediaSource$c;->b(Landroidx/media3/exoplayer/source/MergingMediaSource$c;)Landroidx/media3/exoplayer/source/r$b;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2, p2}, Landroidx/media3/exoplayer/source/r$b;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->n:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroidx/media3/exoplayer/source/MergingMediaSource$c;

    .line 50
    .line 51
    invoke-static {p1}, Landroidx/media3/exoplayer/source/MergingMediaSource$c;->b(Landroidx/media3/exoplayer/source/MergingMediaSource$c;)Landroidx/media3/exoplayer/source/r$b;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 p1, 0x0

    .line 60
    return-object p1
.end method

.method protected L(Ljava/lang/Integer;Landroidx/media3/exoplayer/source/r;Landroidx/media3/common/e0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->v:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->t:I

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p3}, Landroidx/media3/common/e0;->i()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->t:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p3}, Landroidx/media3/common/e0;->i()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->t:I

    .line 24
    .line 25
    if-eq v0, v1, :cond_2

    .line 26
    .line 27
    new-instance p1, Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    .line 28
    .line 29
    invoke-direct {p1, v2}, Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->v:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->u:[[J

    .line 36
    .line 37
    array-length v0, v0

    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    iget v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->t:I

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->o:[Landroidx/media3/common/e0;

    .line 43
    .line 44
    array-length v1, v1

    .line 45
    const/4 v3, 0x2

    .line 46
    new-array v3, v3, [I

    .line 47
    .line 48
    const/4 v4, 0x1

    .line 49
    aput v1, v3, v4

    .line 50
    .line 51
    aput v0, v3, v2

    .line 52
    .line 53
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 54
    .line 55
    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, [[J

    .line 60
    .line 61
    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->u:[[J

    .line 62
    .line 63
    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->p:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    iget-object p2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->o:[Landroidx/media3/common/e0;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    aput-object p3, p2, p1

    .line 75
    .line 76
    iget-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->p:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_6

    .line 83
    .line 84
    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->k:Z

    .line 85
    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/MergingMediaSource;->J()V

    .line 89
    .line 90
    .line 91
    :cond_4
    iget-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->o:[Landroidx/media3/common/e0;

    .line 92
    .line 93
    aget-object p1, p1, v2

    .line 94
    .line 95
    iget-boolean p2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->l:Z

    .line 96
    .line 97
    if-eqz p2, :cond_5

    .line 98
    .line 99
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/MergingMediaSource;->M()V

    .line 100
    .line 101
    .line 102
    new-instance p2, Landroidx/media3/exoplayer/source/MergingMediaSource$b;

    .line 103
    .line 104
    iget-object p3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->r:Ljava/util/Map;

    .line 105
    .line 106
    invoke-direct {p2, p1, p3}, Landroidx/media3/exoplayer/source/MergingMediaSource$b;-><init>(Landroidx/media3/common/e0;Ljava/util/Map;)V

    .line 107
    .line 108
    .line 109
    move-object p1, p2

    .line 110
    :cond_5
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/a;->A(Landroidx/media3/common/e0;)V

    .line 111
    .line 112
    .line 113
    :cond_6
    return-void
.end method

.method public a()Landroidx/media3/common/t;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/r;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-lez v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aget-object v0, v0, v1

    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/r;->a()Landroidx/media3/common/t;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->w:Landroidx/media3/common/t;

    .line 15
    .line 16
    :goto_0
    return-object v0
.end method

.method public g(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/upstream/b;J)Landroidx/media3/exoplayer/source/q;
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/r;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    new-array v1, v0, [Landroidx/media3/exoplayer/source/q;

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->o:[Landroidx/media3/common/e0;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aget-object v2, v2, v3

    .line 10
    .line 11
    iget-object v4, p1, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {v2, v4}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    :goto_0
    if-ge v3, v0, :cond_0

    .line 18
    .line 19
    iget-object v4, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->o:[Landroidx/media3/common/e0;

    .line 20
    .line 21
    aget-object v4, v4, v3

    .line 22
    .line 23
    invoke-virtual {v4, v2}, Landroidx/media3/common/e0;->m(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {p1, v4}, Landroidx/media3/exoplayer/source/r$b;->a(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/r$b;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v5, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/r;

    .line 32
    .line 33
    aget-object v5, v5, v3

    .line 34
    .line 35
    iget-object v6, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->u:[[J

    .line 36
    .line 37
    aget-object v6, v6, v2

    .line 38
    .line 39
    aget-wide v7, v6, v3

    .line 40
    .line 41
    sub-long v6, p3, v7

    .line 42
    .line 43
    invoke-interface {v5, v4, p2, v6, v7}, Landroidx/media3/exoplayer/source/r;->g(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/upstream/b;J)Landroidx/media3/exoplayer/source/q;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    aput-object v5, v1, v3

    .line 48
    .line 49
    iget-object v5, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->n:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Ljava/util/List;

    .line 56
    .line 57
    new-instance v6, Landroidx/media3/exoplayer/source/MergingMediaSource$c;

    .line 58
    .line 59
    aget-object v7, v1, v3

    .line 60
    .line 61
    const/4 v8, 0x0

    .line 62
    invoke-direct {v6, v4, v7, v8}, Landroidx/media3/exoplayer/source/MergingMediaSource$c;-><init>(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/source/q;Landroidx/media3/exoplayer/source/MergingMediaSource$a;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    new-instance v5, Landroidx/media3/exoplayer/source/u;

    .line 72
    .line 73
    iget-object p2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->q:Lf2/e;

    .line 74
    .line 75
    iget-object p3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->u:[[J

    .line 76
    .line 77
    aget-object p3, p3, v2

    .line 78
    .line 79
    invoke-direct {v5, p2, p3, v1}, Landroidx/media3/exoplayer/source/u;-><init>(Lf2/e;[J[Landroidx/media3/exoplayer/source/q;)V

    .line 80
    .line 81
    .line 82
    iget-boolean p2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->l:Z

    .line 83
    .line 84
    if-eqz p2, :cond_1

    .line 85
    .line 86
    new-instance p2, Landroidx/media3/exoplayer/source/b;

    .line 87
    .line 88
    iget-object p3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->r:Ljava/util/Map;

    .line 89
    .line 90
    iget-object p4, p1, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 91
    .line 92
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    check-cast p3, Ljava/lang/Long;

    .line 97
    .line 98
    invoke-static {p3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    check-cast p3, Ljava/lang/Long;

    .line 103
    .line 104
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 105
    .line 106
    .line 107
    move-result-wide v9

    .line 108
    const/4 v6, 0x0

    .line 109
    const-wide/16 v7, 0x0

    .line 110
    .line 111
    move-object v4, p2

    .line 112
    invoke-direct/range {v4 .. v10}, Landroidx/media3/exoplayer/source/b;-><init>(Landroidx/media3/exoplayer/source/q;ZJJ)V

    .line 113
    .line 114
    .line 115
    iget-object p3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->s:Lcom/google/common/collect/j3;

    .line 116
    .line 117
    iget-object p1, p1, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 118
    .line 119
    invoke-interface {p3, p1, p2}, Lcom/google/common/collect/j3;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-object v5, p2

    .line 123
    :cond_1
    return-object v5
.end method

.method public k(Landroidx/media3/exoplayer/source/q;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    check-cast p1, Landroidx/media3/exoplayer/source/b;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->s:Lcom/google/common/collect/j3;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/google/common/collect/j3;->entries()Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/util/Map$Entry;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroidx/media3/exoplayer/source/b;

    .line 34
    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->s:Lcom/google/common/collect/j3;

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v0, v2, v1}, Lcom/google/common/collect/j3;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object p1, p1, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    .line 55
    .line 56
    :cond_2
    move-object v0, p1

    .line 57
    check-cast v0, Landroidx/media3/exoplayer/source/u;

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    move v2, v1

    .line 61
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/r;

    .line 62
    .line 63
    array-length v3, v3

    .line 64
    if-ge v2, v3, :cond_5

    .line 65
    .line 66
    iget-object v3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->n:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Ljava/util/List;

    .line 73
    .line 74
    move v4, v1

    .line 75
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-ge v4, v5, :cond_4

    .line 80
    .line 81
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    check-cast v5, Landroidx/media3/exoplayer/source/MergingMediaSource$c;

    .line 86
    .line 87
    invoke-static {v5}, Landroidx/media3/exoplayer/source/MergingMediaSource$c;->a(Landroidx/media3/exoplayer/source/MergingMediaSource$c;)Landroidx/media3/exoplayer/source/q;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_3

    .line 96
    .line 97
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    :goto_2
    iget-object v3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/r;

    .line 105
    .line 106
    aget-object v3, v3, v2

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/source/u;->i(I)Landroidx/media3/exoplayer/source/q;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-interface {v3, v4}, Landroidx/media3/exoplayer/source/r;->k(Landroidx/media3/exoplayer/source/q;)V

    .line 113
    .line 114
    .line 115
    add-int/lit8 v2, v2, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_5
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->v:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroidx/media3/exoplayer/source/c;->maybeThrowSourceInfoRefreshError()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    throw v0
.end method

.method public n(Landroidx/media3/common/t;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/r;->n(Landroidx/media3/common/t;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public q(Landroidx/media3/common/t;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/r;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-lez v1, :cond_0

    .line 6
    .line 7
    aget-object v0, v0, v2

    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/r;->q(Landroidx/media3/common/t;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    :cond_0
    return v2
.end method

.method protected z(Lw1/n;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/media3/exoplayer/source/c;->z(Lw1/n;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/r;

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    if-ge p1, v0, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->m:[Landroidx/media3/exoplayer/source/r;

    .line 15
    .line 16
    aget-object v1, v1, p1

    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/source/c;->I(Ljava/lang/Object;Landroidx/media3/exoplayer/source/r;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 p1, p1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method
