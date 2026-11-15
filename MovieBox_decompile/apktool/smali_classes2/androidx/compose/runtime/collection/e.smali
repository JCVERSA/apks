.class public final Landroidx/compose/runtime/collection/e;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Landroidx/collection/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/collection/v0;->d()Landroidx/collection/n0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroidx/compose/runtime/collection/e;->a:Landroidx/collection/n0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/e;->a:Landroidx/collection/n0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/n0;->k(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-gez v1, :cond_0

    .line 10
    .line 11
    move v4, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v4, v2

    .line 14
    :goto_0
    const/4 v5, 0x0

    .line 15
    if-eqz v4, :cond_1

    .line 16
    .line 17
    move-object v6, v5

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget-object v6, v0, Landroidx/collection/u0;->c:[Ljava/lang/Object;

    .line 20
    .line 21
    aget-object v6, v6, v1

    .line 22
    .line 23
    :goto_1
    if-nez v6, :cond_2

    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_2
    instance-of v7, v6, Landroidx/collection/MutableScatterSet;

    .line 27
    .line 28
    if-eqz v7, :cond_3

    .line 29
    .line 30
    const-string v2, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.add$lambda$0>"

    .line 31
    .line 32
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object v2, v6

    .line 36
    check-cast v2, Landroidx/collection/MutableScatterSet;

    .line 37
    .line 38
    invoke-virtual {v2, p2}, Landroidx/collection/MutableScatterSet;->h(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    if-eq v6, p2, :cond_4

    .line 43
    .line 44
    new-instance v7, Landroidx/collection/MutableScatterSet;

    .line 45
    .line 46
    invoke-direct {v7, v2, v3, v5}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    .line 48
    .line 49
    const-string v2, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap.add$lambda$0"

    .line 50
    .line 51
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v7, v6}, Landroidx/collection/MutableScatterSet;->h(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7, p2}, Landroidx/collection/MutableScatterSet;->h(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-object p2, v7

    .line 61
    goto :goto_3

    .line 62
    :cond_4
    :goto_2
    move-object p2, v6

    .line 63
    :goto_3
    if-eqz v4, :cond_5

    .line 64
    .line 65
    not-int v1, v1

    .line 66
    iget-object v2, v0, Landroidx/collection/u0;->b:[Ljava/lang/Object;

    .line 67
    .line 68
    aput-object p1, v2, v1

    .line 69
    .line 70
    iget-object p1, v0, Landroidx/collection/u0;->c:[Ljava/lang/Object;

    .line 71
    .line 72
    aput-object p2, p1, v1

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_5
    iget-object p1, v0, Landroidx/collection/u0;->c:[Ljava/lang/Object;

    .line 76
    .line 77
    aput-object p2, p1, v1

    .line 78
    .line 79
    :goto_4
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/e;->a:Landroidx/collection/n0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/collection/n0;->h()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/e;->a:Landroidx/collection/n0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/u0;->a(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final d()Landroidx/collection/n0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/e;->a:Landroidx/collection/n0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/e;->a:Landroidx/collection/n0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/collection/u0;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/e;->a:Landroidx/collection/n0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/u0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    instance-of v2, v0, Landroidx/collection/MutableScatterSet;

    .line 12
    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    check-cast v0, Landroidx/collection/MutableScatterSet;

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Landroidx/collection/MutableScatterSet;->x(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/collection/ScatterSet;->d()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/compose/runtime/collection/e;->a:Landroidx/collection/n0;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroidx/collection/n0;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    :cond_1
    return p2

    .line 35
    :cond_2
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_3

    .line 40
    .line 41
    iget-object p2, p0, Landroidx/compose/runtime/collection/e;->a:Landroidx/collection/n0;

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Landroidx/collection/n0;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    :cond_3
    return v1
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/e;->a:Landroidx/collection/n0;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/collection/u0;->a:[J

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    add-int/lit8 v2, v2, -0x2

    .line 7
    .line 8
    if-ltz v2, :cond_5

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    move v4, v3

    .line 12
    :goto_0
    aget-wide v5, v1, v4

    .line 13
    .line 14
    not-long v7, v5

    .line 15
    const/4 v9, 0x7

    .line 16
    shl-long/2addr v7, v9

    .line 17
    and-long/2addr v7, v5

    .line 18
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    and-long/2addr v7, v9

    .line 24
    cmp-long v7, v7, v9

    .line 25
    .line 26
    if-eqz v7, :cond_4

    .line 27
    .line 28
    sub-int v7, v4, v2

    .line 29
    .line 30
    not-int v7, v7

    .line 31
    ushr-int/lit8 v7, v7, 0x1f

    .line 32
    .line 33
    const/16 v8, 0x8

    .line 34
    .line 35
    rsub-int/lit8 v7, v7, 0x8

    .line 36
    .line 37
    move v9, v3

    .line 38
    :goto_1
    if-ge v9, v7, :cond_3

    .line 39
    .line 40
    const-wide/16 v10, 0xff

    .line 41
    .line 42
    and-long/2addr v10, v5

    .line 43
    const-wide/16 v12, 0x80

    .line 44
    .line 45
    cmp-long v10, v10, v12

    .line 46
    .line 47
    if-gez v10, :cond_2

    .line 48
    .line 49
    shl-int/lit8 v10, v4, 0x3

    .line 50
    .line 51
    add-int/2addr v10, v9

    .line 52
    iget-object v11, v0, Landroidx/collection/u0;->b:[Ljava/lang/Object;

    .line 53
    .line 54
    aget-object v11, v11, v10

    .line 55
    .line 56
    iget-object v11, v0, Landroidx/collection/u0;->c:[Ljava/lang/Object;

    .line 57
    .line 58
    aget-object v11, v11, v10

    .line 59
    .line 60
    instance-of v12, v11, Landroidx/collection/MutableScatterSet;

    .line 61
    .line 62
    if-eqz v12, :cond_0

    .line 63
    .line 64
    const-string v12, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.removeScope$lambda$3>"

    .line 65
    .line 66
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    check-cast v11, Landroidx/collection/MutableScatterSet;

    .line 70
    .line 71
    invoke-virtual {v11, p1}, Landroidx/collection/MutableScatterSet;->x(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    invoke-virtual {v11}, Landroidx/collection/ScatterSet;->d()Z

    .line 75
    .line 76
    .line 77
    move-result v11

    .line 78
    goto :goto_2

    .line 79
    :cond_0
    if-ne v11, p1, :cond_1

    .line 80
    .line 81
    const/4 v11, 0x1

    .line 82
    goto :goto_2

    .line 83
    :cond_1
    move v11, v3

    .line 84
    :goto_2
    if-eqz v11, :cond_2

    .line 85
    .line 86
    invoke-virtual {v0, v10}, Landroidx/collection/n0;->p(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    :cond_2
    shr-long/2addr v5, v8

    .line 90
    add-int/lit8 v9, v9, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    if-ne v7, v8, :cond_5

    .line 94
    .line 95
    :cond_4
    if-eq v4, v2, :cond_5

    .line 96
    .line 97
    add-int/lit8 v4, v4, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    return-void
.end method

.method public final h(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/e;->a:Landroidx/collection/n0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/collection/n0;->r(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
