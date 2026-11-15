.class public Landroidx/compose/runtime/snapshots/b;
.super Landroidx/compose/runtime/snapshots/j;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/snapshots/b$a;
    }
.end annotation


# static fields
.field private static final p:Landroidx/compose/runtime/snapshots/b$a;

.field public static final q:I

.field private static final r:[I


# instance fields
.field private final g:Lkotlin/jvm/functions/Function1;

.field private final h:Lkotlin/jvm/functions/Function1;

.field private i:I

.field private j:Landroidx/collection/MutableScatterSet;

.field private k:Ljava/util/List;

.field private l:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

.field private m:[I

.field private n:I

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/runtime/snapshots/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/runtime/snapshots/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/runtime/snapshots/b;->p:Landroidx/compose/runtime/snapshots/b$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Landroidx/compose/runtime/snapshots/b;->q:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    new-array v0, v0, [I

    .line 15
    .line 16
    sput-object v0, Landroidx/compose/runtime/snapshots/b;->r:[I

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/runtime/snapshots/j;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/runtime/snapshots/b;->g:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/runtime/snapshots/b;->h:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    sget-object p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->e:Landroidx/compose/runtime/snapshots/SnapshotIdSet$a;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$a;->a()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/b;->l:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 16
    .line 17
    sget-object p1, Landroidx/compose/runtime/snapshots/b;->r:[I

    .line 18
    .line 19
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/b;->m:[I

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput p1, p0, Landroidx/compose/runtime/snapshots/b;->n:I

    .line 23
    .line 24
    return-void
.end method

.method private final A()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/b;->E()Landroidx/collection/MutableScatterSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/b;->R()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/snapshots/b;->P(Landroidx/collection/MutableScatterSet;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, v0, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v0, v0, Landroidx/collection/ScatterSet;->a:[J

    .line 21
    .line 22
    array-length v3, v0

    .line 23
    add-int/lit8 v3, v3, -0x2

    .line 24
    .line 25
    if-ltz v3, :cond_5

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    move v5, v4

    .line 29
    :goto_0
    aget-wide v6, v0, v5

    .line 30
    .line 31
    not-long v8, v6

    .line 32
    const/4 v10, 0x7

    .line 33
    shl-long/2addr v8, v10

    .line 34
    and-long/2addr v8, v6

    .line 35
    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    and-long/2addr v8, v10

    .line 41
    cmp-long v8, v8, v10

    .line 42
    .line 43
    if-eqz v8, :cond_4

    .line 44
    .line 45
    sub-int v8, v5, v3

    .line 46
    .line 47
    not-int v8, v8

    .line 48
    ushr-int/lit8 v8, v8, 0x1f

    .line 49
    .line 50
    const/16 v9, 0x8

    .line 51
    .line 52
    rsub-int/lit8 v8, v8, 0x8

    .line 53
    .line 54
    move v10, v4

    .line 55
    :goto_1
    if-ge v10, v8, :cond_3

    .line 56
    .line 57
    const-wide/16 v11, 0xff

    .line 58
    .line 59
    and-long/2addr v11, v6

    .line 60
    const-wide/16 v13, 0x80

    .line 61
    .line 62
    cmp-long v11, v11, v13

    .line 63
    .line 64
    if-gez v11, :cond_2

    .line 65
    .line 66
    shl-int/lit8 v11, v5, 0x3

    .line 67
    .line 68
    add-int/2addr v11, v10

    .line 69
    aget-object v11, v2, v11

    .line 70
    .line 71
    check-cast v11, Landroidx/compose/runtime/snapshots/c0;

    .line 72
    .line 73
    invoke-interface {v11}, Landroidx/compose/runtime/snapshots/c0;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/e0;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    :goto_2
    if-eqz v11, :cond_2

    .line 78
    .line 79
    invoke-virtual {v11}, Landroidx/compose/runtime/snapshots/e0;->f()I

    .line 80
    .line 81
    .line 82
    move-result v12

    .line 83
    if-eq v12, v1, :cond_0

    .line 84
    .line 85
    iget-object v12, p0, Landroidx/compose/runtime/snapshots/b;->l:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 86
    .line 87
    invoke-virtual {v11}, Landroidx/compose/runtime/snapshots/e0;->f()I

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v13

    .line 95
    invoke-static {v12, v13}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v12

    .line 99
    if-eqz v12, :cond_1

    .line 100
    .line 101
    :cond_0
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/snapshots/e0;->h(I)V

    .line 102
    .line 103
    .line 104
    :cond_1
    invoke-virtual {v11}, Landroidx/compose/runtime/snapshots/e0;->e()Landroidx/compose/runtime/snapshots/e0;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    goto :goto_2

    .line 109
    :cond_2
    shr-long/2addr v6, v9

    .line 110
    add-int/lit8 v10, v10, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    if-ne v8, v9, :cond_5

    .line 114
    .line 115
    :cond_4
    if-eq v5, v3, :cond_5

    .line 116
    .line 117
    add-int/lit8 v5, v5, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->b()V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method private final N()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/b;->m:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/b;->m:[I

    .line 8
    .line 9
    aget v2, v2, v1

    .line 10
    .line 11
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->Y(I)V

    .line 12
    .line 13
    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method private final R()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/b;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Unsupported operation on a snapshot that has been applied"

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/runtime/o1;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private final S()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/b;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/j;->a(Landroidx/compose/runtime/snapshots/j;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    if-nez v0, :cond_2

    .line 16
    .line 17
    const-string v0, "Unsupported operation on a disposed or applied snapshot"

    .line 18
    .line 19
    invoke-static {v0}, Landroidx/compose/runtime/o1;->b(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/b;->J(I)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/b;->D()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->e()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    monitor-enter v1

    .line 31
    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    add-int/lit8 v3, v2, 0x1

    .line 36
    .line 37
    invoke-static {v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->u(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/snapshots/j;->u(I)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->j()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->p(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->v(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    monitor-exit v1

    .line 59
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->z(Landroidx/compose/runtime/snapshots/SnapshotIdSet;II)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/j;->v(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    monitor-exit v1

    .line 79
    throw v0

    .line 80
    :cond_0
    :goto_0
    return-void
.end method

.method public C()Landroidx/compose/runtime/snapshots/k;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/b;->E()Landroidx/collection/MutableScatterSet;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->f()Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Landroidx/compose/runtime/snapshots/b;

    .line 20
    .line 21
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->j()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->f()Ljava/util/concurrent/atomic/AtomicReference;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    check-cast v6, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    .line 34
    .line 35
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/j;->f()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->l(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-static {v4, v1, v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->n(Landroidx/compose/runtime/snapshots/b;Landroidx/compose/runtime/snapshots/b;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move-object v4, v3

    .line 49
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    monitor-enter v6

    .line 58
    :try_start_0
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->y(Landroidx/compose/runtime/snapshots/j;)V

    .line 59
    .line 60
    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    invoke-virtual {v2}, Landroidx/collection/ScatterSet;->c()I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-nez v7, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->f()Ljava/util/concurrent/atomic/AtomicReference;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    check-cast v5, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    .line 79
    .line 80
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->j()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/j;->f()I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->l(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    invoke-virtual {v1, v7, v4, v8}, Landroidx/compose/runtime/snapshots/b;->I(ILjava/util/Map;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/k;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    sget-object v7, Landroidx/compose/runtime/snapshots/k$b;->a:Landroidx/compose/runtime/snapshots/k$b;

    .line 101
    .line 102
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    if-nez v7, :cond_2

    .line 107
    .line 108
    monitor-exit v6

    .line 109
    return-object v4

    .line 110
    :cond_2
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/b;->c()V

    .line 111
    .line 112
    .line 113
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->g()Lkotlin/jvm/functions/Function1;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-static {v5, v4}, Landroidx/compose/runtime/snapshots/SnapshotKt;->w(Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/b;->E()Landroidx/collection/MutableScatterSet;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/snapshots/b;->P(Landroidx/collection/MutableScatterSet;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/snapshots/b;->P(Landroidx/collection/MutableScatterSet;)V

    .line 128
    .line 129
    .line 130
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->e()Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    goto :goto_2

    .line 135
    :catchall_0
    move-exception v0

    .line 136
    goto/16 :goto_e

    .line 137
    .line 138
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/b;->c()V

    .line 139
    .line 140
    .line 141
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->f()Ljava/util/concurrent/atomic/AtomicReference;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    check-cast v4, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    .line 150
    .line 151
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->g()Lkotlin/jvm/functions/Function1;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    invoke-static {v4, v7}, Landroidx/compose/runtime/snapshots/SnapshotKt;->w(Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/b;->E()Landroidx/collection/MutableScatterSet;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    if-eqz v4, :cond_4

    .line 163
    .line 164
    invoke-virtual {v4}, Landroidx/collection/ScatterSet;->e()Z

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    if-eqz v7, :cond_4

    .line 169
    .line 170
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->e()Ljava/util/List;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    goto :goto_2

    .line 175
    :cond_4
    move-object v4, v3

    .line 176
    :goto_2
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    .line 178
    monitor-exit v6

    .line 179
    iput-boolean v0, v1, Landroidx/compose/runtime/snapshots/b;->o:Z

    .line 180
    .line 181
    if-eqz v4, :cond_5

    .line 182
    .line 183
    invoke-static {v4}, Landroidx/compose/runtime/collection/d;->a(Landroidx/collection/ScatterSet;)Ljava/util/Set;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    move-object v8, v7

    .line 188
    check-cast v8, Ljava/util/Collection;

    .line 189
    .line 190
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 191
    .line 192
    .line 193
    move-result v8

    .line 194
    if-nez v8, :cond_5

    .line 195
    .line 196
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    const/4 v9, 0x0

    .line 201
    :goto_3
    if-ge v9, v8, :cond_5

    .line 202
    .line 203
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 208
    .line 209
    invoke-interface {v10, v7, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    add-int/2addr v9, v0

    .line 213
    goto :goto_3

    .line 214
    :cond_5
    if-eqz v2, :cond_6

    .line 215
    .line 216
    invoke-virtual {v2}, Landroidx/collection/ScatterSet;->e()Z

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    if-eqz v7, :cond_6

    .line 221
    .line 222
    invoke-static {v2}, Landroidx/compose/runtime/collection/d;->a(Landroidx/collection/ScatterSet;)Ljava/util/Set;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 227
    .line 228
    .line 229
    move-result v8

    .line 230
    const/4 v9, 0x0

    .line 231
    :goto_4
    if-ge v9, v8, :cond_6

    .line 232
    .line 233
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v10

    .line 237
    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 238
    .line 239
    invoke-interface {v10, v7, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    add-int/2addr v9, v0

    .line 243
    goto :goto_4

    .line 244
    :cond_6
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    monitor-enter v5

    .line 249
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/b;->r()V

    .line 250
    .line 251
    .line 252
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 253
    .line 254
    .line 255
    const-wide/16 v9, 0xff

    .line 256
    .line 257
    const/4 v11, 0x7

    .line 258
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    const/16 v14, 0x8

    .line 264
    .line 265
    if-eqz v4, :cond_a

    .line 266
    .line 267
    :try_start_3
    iget-object v15, v4, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 268
    .line 269
    iget-object v4, v4, Landroidx/collection/ScatterSet;->a:[J

    .line 270
    .line 271
    array-length v6, v4

    .line 272
    add-int/lit8 v6, v6, -0x2

    .line 273
    .line 274
    if-ltz v6, :cond_a

    .line 275
    .line 276
    const/4 v3, 0x0

    .line 277
    :goto_5
    aget-wide v0, v4, v3

    .line 278
    .line 279
    not-long v7, v0

    .line 280
    shl-long/2addr v7, v11

    .line 281
    and-long/2addr v7, v0

    .line 282
    and-long/2addr v7, v12

    .line 283
    cmp-long v7, v7, v12

    .line 284
    .line 285
    if-eqz v7, :cond_9

    .line 286
    .line 287
    sub-int v7, v3, v6

    .line 288
    .line 289
    not-int v7, v7

    .line 290
    ushr-int/lit8 v7, v7, 0x1f

    .line 291
    .line 292
    rsub-int/lit8 v7, v7, 0x8

    .line 293
    .line 294
    const/4 v8, 0x0

    .line 295
    :goto_6
    if-ge v8, v7, :cond_8

    .line 296
    .line 297
    and-long v19, v0, v9

    .line 298
    .line 299
    const-wide/16 v17, 0x80

    .line 300
    .line 301
    cmp-long v19, v19, v17

    .line 302
    .line 303
    if-gez v19, :cond_7

    .line 304
    .line 305
    shl-int/lit8 v19, v3, 0x3

    .line 306
    .line 307
    add-int v19, v19, v8

    .line 308
    .line 309
    aget-object v19, v15, v19

    .line 310
    .line 311
    check-cast v19, Landroidx/compose/runtime/snapshots/c0;

    .line 312
    .line 313
    invoke-static/range {v19 .. v19}, Landroidx/compose/runtime/snapshots/SnapshotKt;->o(Landroidx/compose/runtime/snapshots/c0;)V

    .line 314
    .line 315
    .line 316
    goto :goto_7

    .line 317
    :catchall_1
    move-exception v0

    .line 318
    move-object/from16 v1, p0

    .line 319
    .line 320
    goto/16 :goto_d

    .line 321
    .line 322
    :cond_7
    :goto_7
    shr-long/2addr v0, v14

    .line 323
    const/16 v16, 0x1

    .line 324
    .line 325
    add-int/lit8 v8, v8, 0x1

    .line 326
    .line 327
    goto :goto_6

    .line 328
    :cond_8
    const/16 v16, 0x1

    .line 329
    .line 330
    if-ne v7, v14, :cond_a

    .line 331
    .line 332
    goto :goto_8

    .line 333
    :cond_9
    const/16 v16, 0x1

    .line 334
    .line 335
    :goto_8
    if-eq v3, v6, :cond_a

    .line 336
    .line 337
    add-int/lit8 v3, v3, 0x1

    .line 338
    .line 339
    goto :goto_5

    .line 340
    :cond_a
    if-eqz v2, :cond_e

    .line 341
    .line 342
    iget-object v0, v2, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 343
    .line 344
    iget-object v1, v2, Landroidx/collection/ScatterSet;->a:[J

    .line 345
    .line 346
    array-length v2, v1

    .line 347
    add-int/lit8 v2, v2, -0x2

    .line 348
    .line 349
    if-ltz v2, :cond_e

    .line 350
    .line 351
    const/4 v3, 0x0

    .line 352
    :goto_9
    aget-wide v6, v1, v3

    .line 353
    .line 354
    not-long v9, v6

    .line 355
    shl-long v8, v9, v11

    .line 356
    .line 357
    and-long/2addr v8, v6

    .line 358
    and-long/2addr v8, v12

    .line 359
    cmp-long v4, v8, v12

    .line 360
    .line 361
    if-eqz v4, :cond_d

    .line 362
    .line 363
    sub-int v4, v3, v2

    .line 364
    .line 365
    not-int v4, v4

    .line 366
    ushr-int/lit8 v4, v4, 0x1f

    .line 367
    .line 368
    rsub-int/lit8 v4, v4, 0x8

    .line 369
    .line 370
    const/4 v8, 0x0

    .line 371
    :goto_a
    if-ge v8, v4, :cond_c

    .line 372
    .line 373
    const-wide/16 v9, 0xff

    .line 374
    .line 375
    and-long v19, v6, v9

    .line 376
    .line 377
    const-wide/16 v17, 0x80

    .line 378
    .line 379
    cmp-long v15, v19, v17

    .line 380
    .line 381
    if-gez v15, :cond_b

    .line 382
    .line 383
    shl-int/lit8 v15, v3, 0x3

    .line 384
    .line 385
    add-int/2addr v15, v8

    .line 386
    aget-object v15, v0, v15

    .line 387
    .line 388
    check-cast v15, Landroidx/compose/runtime/snapshots/c0;

    .line 389
    .line 390
    invoke-static {v15}, Landroidx/compose/runtime/snapshots/SnapshotKt;->o(Landroidx/compose/runtime/snapshots/c0;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 391
    .line 392
    .line 393
    :cond_b
    shr-long/2addr v6, v14

    .line 394
    const/4 v15, 0x1

    .line 395
    add-int/2addr v8, v15

    .line 396
    goto :goto_a

    .line 397
    :cond_c
    const-wide/16 v9, 0xff

    .line 398
    .line 399
    const/4 v15, 0x1

    .line 400
    const-wide/16 v17, 0x80

    .line 401
    .line 402
    if-ne v4, v14, :cond_e

    .line 403
    .line 404
    goto :goto_b

    .line 405
    :cond_d
    const-wide/16 v9, 0xff

    .line 406
    .line 407
    const/4 v15, 0x1

    .line 408
    const-wide/16 v17, 0x80

    .line 409
    .line 410
    :goto_b
    if-eq v3, v2, :cond_e

    .line 411
    .line 412
    add-int/2addr v3, v15

    .line 413
    goto :goto_9

    .line 414
    :cond_e
    move-object/from16 v1, p0

    .line 415
    .line 416
    :try_start_4
    iget-object v0, v1, Landroidx/compose/runtime/snapshots/b;->k:Ljava/util/List;

    .line 417
    .line 418
    if-eqz v0, :cond_f

    .line 419
    .line 420
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    const/4 v6, 0x0

    .line 425
    :goto_c
    if-ge v6, v2, :cond_f

    .line 426
    .line 427
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    check-cast v3, Landroidx/compose/runtime/snapshots/c0;

    .line 432
    .line 433
    invoke-static {v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->o(Landroidx/compose/runtime/snapshots/c0;)V

    .line 434
    .line 435
    .line 436
    const/4 v3, 0x1

    .line 437
    add-int/2addr v6, v3

    .line 438
    goto :goto_c

    .line 439
    :catchall_2
    move-exception v0

    .line 440
    goto :goto_d

    .line 441
    :cond_f
    const/4 v0, 0x0

    .line 442
    iput-object v0, v1, Landroidx/compose/runtime/snapshots/b;->k:Ljava/util/List;

    .line 443
    .line 444
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 445
    .line 446
    monitor-exit v5

    .line 447
    sget-object v0, Landroidx/compose/runtime/snapshots/k$b;->a:Landroidx/compose/runtime/snapshots/k$b;

    .line 448
    .line 449
    return-object v0

    .line 450
    :goto_d
    monitor-exit v5

    .line 451
    throw v0

    .line 452
    :goto_e
    monitor-exit v6

    .line 453
    throw v0
.end method

.method public final D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/b;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method public E()Landroidx/collection/MutableScatterSet;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/b;->j:Landroidx/collection/MutableScatterSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public final F()Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/b;->l:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G()[I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/b;->m:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public H()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/b;->g:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I(ILjava/util/Map;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/k;
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/j;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->p(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v4, v1, Landroidx/compose/runtime/snapshots/b;->l:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->o(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/b;->E()Landroidx/collection/MutableScatterSet;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v5, v4, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 31
    .line 32
    iget-object v6, v4, Landroidx/collection/ScatterSet;->a:[J

    .line 33
    .line 34
    array-length v7, v6

    .line 35
    add-int/lit8 v7, v7, -0x2

    .line 36
    .line 37
    const/4 v8, 0x0

    .line 38
    if-ltz v7, :cond_10

    .line 39
    .line 40
    move-object v10, v8

    .line 41
    const/4 v11, 0x0

    .line 42
    :goto_0
    aget-wide v12, v6, v11

    .line 43
    .line 44
    not-long v14, v12

    .line 45
    const/16 v16, 0x7

    .line 46
    .line 47
    shl-long v14, v14, v16

    .line 48
    .line 49
    and-long/2addr v14, v12

    .line 50
    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    and-long v14, v14, v16

    .line 56
    .line 57
    cmp-long v14, v14, v16

    .line 58
    .line 59
    if-eqz v14, :cond_f

    .line 60
    .line 61
    sub-int v14, v11, v7

    .line 62
    .line 63
    not-int v14, v14

    .line 64
    ushr-int/lit8 v14, v14, 0x1f

    .line 65
    .line 66
    const/16 v15, 0x8

    .line 67
    .line 68
    rsub-int/lit8 v14, v14, 0x8

    .line 69
    .line 70
    const/4 v9, 0x0

    .line 71
    :goto_1
    if-ge v9, v14, :cond_e

    .line 72
    .line 73
    const-wide/16 v17, 0xff

    .line 74
    .line 75
    and-long v17, v12, v17

    .line 76
    .line 77
    const-wide/16 v19, 0x80

    .line 78
    .line 79
    cmp-long v17, v17, v19

    .line 80
    .line 81
    if-gez v17, :cond_d

    .line 82
    .line 83
    shl-int/lit8 v17, v11, 0x3

    .line 84
    .line 85
    add-int v17, v17, v9

    .line 86
    .line 87
    aget-object v17, v5, v17

    .line 88
    .line 89
    move-object/from16 v15, v17

    .line 90
    .line 91
    check-cast v15, Landroidx/compose/runtime/snapshots/c0;

    .line 92
    .line 93
    invoke-interface {v15}, Landroidx/compose/runtime/snapshots/c0;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/e0;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    move-object/from16 v21, v4

    .line 98
    .line 99
    move-object/from16 v19, v5

    .line 100
    .line 101
    move-object/from16 v20, v6

    .line 102
    .line 103
    move/from16 v5, p1

    .line 104
    .line 105
    move-object/from16 v6, p3

    .line 106
    .line 107
    invoke-static {v2, v5, v6}, Landroidx/compose/runtime/snapshots/SnapshotKt;->q(Landroidx/compose/runtime/snapshots/e0;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/e0;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    if-nez v4, :cond_0

    .line 112
    .line 113
    :goto_2
    move-object/from16 v22, v3

    .line 114
    .line 115
    goto/16 :goto_4

    .line 116
    .line 117
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    invoke-static {v2, v5, v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->q(Landroidx/compose/runtime/snapshots/e0;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/e0;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    if-nez v5, :cond_1

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_1
    move-object/from16 v22, v3

    .line 129
    .line 130
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/e0;->f()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    const/4 v6, 0x1

    .line 135
    if-ne v3, v6, :cond_2

    .line 136
    .line 137
    goto/16 :goto_4

    .line 138
    .line 139
    :cond_2
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-nez v3, :cond_c

    .line 144
    .line 145
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/j;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-static {v2, v3, v6}, Landroidx/compose/runtime/snapshots/SnapshotKt;->q(Landroidx/compose/runtime/snapshots/e0;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/e0;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    if-eqz v2, :cond_b

    .line 158
    .line 159
    if-eqz v0, :cond_3

    .line 160
    .line 161
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    check-cast v3, Landroidx/compose/runtime/snapshots/e0;

    .line 166
    .line 167
    if-nez v3, :cond_4

    .line 168
    .line 169
    :cond_3
    invoke-interface {v15, v5, v4, v2}, Landroidx/compose/runtime/snapshots/c0;->mergeRecords(Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/e0;)Landroidx/compose/runtime/snapshots/e0;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    :cond_4
    if-nez v3, :cond_5

    .line 174
    .line 175
    new-instance v0, Landroidx/compose/runtime/snapshots/k$a;

    .line 176
    .line 177
    invoke-direct {v0, v1}, Landroidx/compose/runtime/snapshots/k$a;-><init>(Landroidx/compose/runtime/snapshots/j;)V

    .line 178
    .line 179
    .line 180
    return-object v0

    .line 181
    :cond_5
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-nez v2, :cond_c

    .line 186
    .line 187
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-eqz v2, :cond_8

    .line 192
    .line 193
    if-nez v8, :cond_6

    .line 194
    .line 195
    new-instance v8, Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .line 199
    .line 200
    :cond_6
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/e0;->d()Landroidx/compose/runtime/snapshots/e0;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-static {v15, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    if-nez v10, :cond_7

    .line 212
    .line 213
    new-instance v10, Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .line 217
    .line 218
    :cond_7
    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_8
    if-nez v8, :cond_9

    .line 223
    .line 224
    new-instance v8, Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .line 228
    .line 229
    :cond_9
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-nez v2, :cond_a

    .line 234
    .line 235
    invoke-static {v15, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    goto :goto_3

    .line 240
    :cond_a
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/e0;->d()Landroidx/compose/runtime/snapshots/e0;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-static {v15, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    :goto_3
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_b
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->p()Ljava/lang/Void;

    .line 253
    .line 254
    .line 255
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 256
    .line 257
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 258
    .line 259
    .line 260
    throw v0

    .line 261
    :cond_c
    :goto_4
    const/16 v2, 0x8

    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_d
    move-object/from16 v22, v3

    .line 265
    .line 266
    move-object/from16 v21, v4

    .line 267
    .line 268
    move-object/from16 v19, v5

    .line 269
    .line 270
    move-object/from16 v20, v6

    .line 271
    .line 272
    move v2, v15

    .line 273
    :goto_5
    shr-long/2addr v12, v2

    .line 274
    const/4 v3, 0x1

    .line 275
    add-int/2addr v9, v3

    .line 276
    move v15, v2

    .line 277
    move-object/from16 v5, v19

    .line 278
    .line 279
    move-object/from16 v6, v20

    .line 280
    .line 281
    move-object/from16 v4, v21

    .line 282
    .line 283
    move-object/from16 v3, v22

    .line 284
    .line 285
    goto/16 :goto_1

    .line 286
    .line 287
    :cond_e
    move-object/from16 v22, v3

    .line 288
    .line 289
    move-object/from16 v21, v4

    .line 290
    .line 291
    move-object/from16 v19, v5

    .line 292
    .line 293
    move-object/from16 v20, v6

    .line 294
    .line 295
    move v2, v15

    .line 296
    const/4 v3, 0x1

    .line 297
    if-ne v14, v2, :cond_11

    .line 298
    .line 299
    goto :goto_6

    .line 300
    :cond_f
    move-object/from16 v22, v3

    .line 301
    .line 302
    move-object/from16 v21, v4

    .line 303
    .line 304
    move-object/from16 v19, v5

    .line 305
    .line 306
    move-object/from16 v20, v6

    .line 307
    .line 308
    const/4 v3, 0x1

    .line 309
    :goto_6
    if-eq v11, v7, :cond_11

    .line 310
    .line 311
    add-int/2addr v11, v3

    .line 312
    move-object/from16 v5, v19

    .line 313
    .line 314
    move-object/from16 v6, v20

    .line 315
    .line 316
    move-object/from16 v4, v21

    .line 317
    .line 318
    move-object/from16 v3, v22

    .line 319
    .line 320
    goto/16 :goto_0

    .line 321
    .line 322
    :cond_10
    move-object/from16 v21, v4

    .line 323
    .line 324
    move-object v10, v8

    .line 325
    :cond_11
    if-eqz v8, :cond_12

    .line 326
    .line 327
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/b;->B()V

    .line 328
    .line 329
    .line 330
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    const/4 v2, 0x0

    .line 335
    :goto_7
    if-ge v2, v0, :cond_12

    .line 336
    .line 337
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    check-cast v3, Lkotlin/Pair;

    .line 342
    .line 343
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v4

    .line 347
    check-cast v4, Landroidx/compose/runtime/snapshots/c0;

    .line 348
    .line 349
    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    check-cast v3, Landroidx/compose/runtime/snapshots/e0;

    .line 354
    .line 355
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    .line 356
    .line 357
    .line 358
    move-result v5

    .line 359
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/snapshots/e0;->h(I)V

    .line 360
    .line 361
    .line 362
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v5

    .line 366
    monitor-enter v5

    .line 367
    :try_start_0
    invoke-interface {v4}, Landroidx/compose/runtime/snapshots/c0;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/e0;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/snapshots/e0;->g(Landroidx/compose/runtime/snapshots/e0;)V

    .line 372
    .line 373
    .line 374
    invoke-interface {v4, v3}, Landroidx/compose/runtime/snapshots/c0;->prependStateRecord(Landroidx/compose/runtime/snapshots/e0;)V

    .line 375
    .line 376
    .line 377
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    .line 379
    monitor-exit v5

    .line 380
    const/4 v3, 0x1

    .line 381
    add-int/2addr v2, v3

    .line 382
    goto :goto_7

    .line 383
    :catchall_0
    move-exception v0

    .line 384
    monitor-exit v5

    .line 385
    throw v0

    .line 386
    :cond_12
    if-eqz v10, :cond_15

    .line 387
    .line 388
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    const/4 v9, 0x0

    .line 393
    :goto_8
    if-ge v9, v0, :cond_13

    .line 394
    .line 395
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    check-cast v2, Landroidx/compose/runtime/snapshots/c0;

    .line 400
    .line 401
    move-object/from16 v3, v21

    .line 402
    .line 403
    invoke-virtual {v3, v2}, Landroidx/collection/MutableScatterSet;->x(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    const/4 v2, 0x1

    .line 407
    add-int/2addr v9, v2

    .line 408
    goto :goto_8

    .line 409
    :cond_13
    iget-object v0, v1, Landroidx/compose/runtime/snapshots/b;->k:Ljava/util/List;

    .line 410
    .line 411
    if-nez v0, :cond_14

    .line 412
    .line 413
    goto :goto_9

    .line 414
    :cond_14
    check-cast v0, Ljava/util/Collection;

    .line 415
    .line 416
    invoke-static {v0, v10}, Lkotlin/collections/CollectionsKt;->B0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 417
    .line 418
    .line 419
    move-result-object v10

    .line 420
    :goto_9
    iput-object v10, v1, Landroidx/compose/runtime/snapshots/b;->k:Ljava/util/List;

    .line 421
    .line 422
    :cond_15
    sget-object v0, Landroidx/compose/runtime/snapshots/k$b;->a:Landroidx/compose/runtime/snapshots/k$b;

    .line 423
    .line 424
    return-object v0
.end method

.method public final J(I)V
    .locals 2

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/b;->l:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->p(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/b;->l:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 13
    .line 14
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0

    .line 20
    throw p1
.end method

.method public final K(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V
    .locals 2

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/b;->l:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->o(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/b;->l:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 13
    .line 14
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0

    .line 20
    throw p1
.end method

.method public final L(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/b;->m:[I

    .line 4
    .line 5
    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->A([II)[I

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/b;->m:[I

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final M([I)V
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/b;->m:[I

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->B([I[I)[I

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/b;->m:[I

    .line 16
    .line 17
    return-void
.end method

.method public final O(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/runtime/snapshots/b;->o:Z

    .line 2
    .line 3
    return-void
.end method

.method public P(Landroidx/collection/MutableScatterSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/b;->j:Landroidx/collection/MutableScatterSet;

    .line 2
    .line 3
    return-void
.end method

.method public Q(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/b;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->z()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/b;->S()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/b;->J(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    add-int/lit8 v1, v2, 0x1

    .line 24
    .line 25
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->u(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->j()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->p(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->v(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->p(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/snapshots/j;->v(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 48
    .line 49
    .line 50
    new-instance v7, Landroidx/compose/runtime/snapshots/c;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->z(Landroidx/compose/runtime/snapshots/SnapshotIdSet;II)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/b;->H()Lkotlin/jvm/functions/Function1;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const/4 v4, 0x4

    .line 67
    const/4 v5, 0x0

    .line 68
    const/4 v6, 0x0

    .line 69
    invoke-static {p1, v1, v6, v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->L(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lkotlin/jvm/functions/Function1;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/b;->k()Lkotlin/jvm/functions/Function1;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p2, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->m(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    move-object v1, v7

    .line 82
    move-object v6, p0

    .line 83
    invoke-direct/range {v1 .. v6}, Landroidx/compose/runtime/snapshots/c;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/snapshots/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    .line 85
    .line 86
    monitor-exit v0

    .line 87
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/b;->D()Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_0

    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->e()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_0

    .line 98
    .line 99
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    monitor-enter p2

    .line 108
    :try_start_1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    add-int/lit8 v1, v0, 0x1

    .line 113
    .line 114
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->u(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/j;->u(I)V

    .line 118
    .line 119
    .line 120
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->j()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->p(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->v(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 133
    .line 134
    .line 135
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    .line 137
    monitor-exit p2

    .line 138
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    add-int/lit8 p1, p1, 0x1

    .line 143
    .line 144
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-static {p2, p1, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->z(Landroidx/compose/runtime/snapshots/SnapshotIdSet;II)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/j;->v(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :catchall_0
    move-exception p1

    .line 157
    monitor-exit p2

    .line 158
    throw p1

    .line 159
    :cond_0
    :goto_0
    return-object v7

    .line 160
    :catchall_1
    move-exception p1

    .line 161
    monitor-exit v0

    .line 162
    throw p1
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->j()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->l(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/b;->l:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->j(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->v(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0}, Landroidx/compose/runtime/snapshots/j;->d()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p0}, Landroidx/compose/runtime/snapshots/b;->n(Landroidx/compose/runtime/snapshots/j;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public bridge synthetic h()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/b;->H()Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/snapshots/b;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public k()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/b;->h:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public m(Landroidx/compose/runtime/snapshots/j;)V
    .locals 0

    .line 1
    iget p1, p0, Landroidx/compose/runtime/snapshots/b;->n:I

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    iput p1, p0, Landroidx/compose/runtime/snapshots/b;->n:I

    .line 6
    .line 7
    return-void
.end method

.method public n(Landroidx/compose/runtime/snapshots/j;)V
    .locals 0

    .line 1
    iget p1, p0, Landroidx/compose/runtime/snapshots/b;->n:I

    .line 2
    .line 3
    if-lez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    const-string p1, "no pending nested snapshots"

    .line 11
    .line 12
    invoke-static {p1}, Landroidx/compose/runtime/o1;->a(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget p1, p0, Landroidx/compose/runtime/snapshots/b;->n:I

    .line 16
    .line 17
    add-int/lit8 p1, p1, -0x1

    .line 18
    .line 19
    iput p1, p0, Landroidx/compose/runtime/snapshots/b;->n:I

    .line 20
    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    iget-boolean p1, p0, Landroidx/compose/runtime/snapshots/b;->o:Z

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/b;->A()V

    .line 28
    .line 29
    .line 30
    :cond_2
    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/b;->o:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->e()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/b;->B()V

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
    return-void
.end method

.method public p(Landroidx/compose/runtime/snapshots/c0;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/b;->E()Landroidx/collection/MutableScatterSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroidx/collection/w0;->a()Landroidx/collection/MutableScatterSet;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/b;->P(Landroidx/collection/MutableScatterSet;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->h(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public r()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/b;->N()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroidx/compose/runtime/snapshots/j;->r()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public w(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/runtime/snapshots/b;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public x(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/j;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->z()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/b;->S()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/snapshots/b;->J(I)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    monitor-enter v1

    .line 23
    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    add-int/lit8 v3, v2, 0x1

    .line 28
    .line 29
    invoke-static {v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->u(I)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->j()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->p(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->v(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 41
    .line 42
    .line 43
    new-instance v3, Landroidx/compose/runtime/snapshots/d;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    invoke-static {v4, v0, v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->z(Landroidx/compose/runtime/snapshots/SnapshotIdSet;II)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/b;->H()Lkotlin/jvm/functions/Function1;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const/4 v5, 0x4

    .line 60
    const/4 v6, 0x0

    .line 61
    const/4 v7, 0x0

    .line 62
    invoke-static {p1, v4, v7, v5, v6}, Landroidx/compose/runtime/snapshots/SnapshotKt;->L(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lkotlin/jvm/functions/Function1;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {v3, v2, v0, p1, p0}, Landroidx/compose/runtime/snapshots/d;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/snapshots/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 67
    .line 68
    .line 69
    monitor-exit v1

    .line 70
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/b;->D()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_0

    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->e()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_0

    .line 81
    .line 82
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    monitor-enter v0

    .line 91
    :try_start_1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    add-int/lit8 v2, v1, 0x1

    .line 96
    .line 97
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->u(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/snapshots/j;->u(I)V

    .line 101
    .line 102
    .line 103
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->j()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->p(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->v(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 116
    .line 117
    .line 118
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .line 120
    monitor-exit v0

    .line 121
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    add-int/lit8 p1, p1, 0x1

    .line 126
    .line 127
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/j;->f()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->z(Landroidx/compose/runtime/snapshots/SnapshotIdSet;II)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/j;->v(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :catchall_0
    move-exception p1

    .line 140
    monitor-exit v0

    .line 141
    throw p1

    .line 142
    :cond_0
    :goto_0
    return-object v3

    .line 143
    :catchall_1
    move-exception p1

    .line 144
    monitor-exit v1

    .line 145
    throw p1
.end method
