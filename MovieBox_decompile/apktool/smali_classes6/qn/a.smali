.class public abstract Lqn/a;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Landroidx/media3/common/i0;Lqn/d;)Landroidx/media3/common/f0;
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mediaTrackGroup"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/media3/common/i0;->a()Lcom/google/common/collect/ImmutableList;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/r4;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v0, "iterator(...)"

    .line 20
    .line 21
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroidx/media3/common/i0$a;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/media3/common/i0$a;->a()Landroidx/media3/common/f0;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v1, v1, Landroidx/media3/common/f0;->b:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1}, Lqn/d;->c()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/media3/common/i0$a;->a()Landroidx/media3/common/f0;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget v1, v1, Landroidx/media3/common/f0;->c:I

    .line 57
    .line 58
    invoke-virtual {p1}, Lqn/d;->e()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-ne v1, v2, :cond_0

    .line 63
    .line 64
    invoke-virtual {v0}, Landroidx/media3/common/i0$a;->a()Landroidx/media3/common/f0;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :cond_1
    const/4 p0, 0x0

    .line 70
    return-object p0
.end method

.method public static final b(Landroidx/media3/common/r;)Lqn/b;
    .locals 15

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lqn/b;

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/media3/common/r;->a:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/media3/common/r;->b:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v4, p0, Landroidx/media3/common/r;->d:Ljava/lang/String;

    .line 13
    .line 14
    iget v5, p0, Landroidx/media3/common/r;->e:I

    .line 15
    .line 16
    iget v6, p0, Landroidx/media3/common/r;->h:I

    .line 17
    .line 18
    iget v7, p0, Landroidx/media3/common/r;->i:I

    .line 19
    .line 20
    iget v8, p0, Landroidx/media3/common/r;->j:I

    .line 21
    .line 22
    iget-object v9, p0, Landroidx/media3/common/r;->k:Ljava/lang/String;

    .line 23
    .line 24
    iget v10, p0, Landroidx/media3/common/r;->v:I

    .line 25
    .line 26
    iget v11, p0, Landroidx/media3/common/r;->w:I

    .line 27
    .line 28
    iget v12, p0, Landroidx/media3/common/r;->x:F

    .line 29
    .line 30
    iget v13, p0, Landroidx/media3/common/r;->y:I

    .line 31
    .line 32
    iget v14, p0, Landroidx/media3/common/r;->z:F

    .line 33
    .line 34
    move-object v1, v0

    .line 35
    invoke-direct/range {v1 .. v14}, Lqn/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;IIFIF)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public static final c(Landroidx/media3/common/i0;)Lqn/c;
    .locals 5

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/common/i0;->b()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance p0, Lqn/c;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-direct {p0, v0, v1, v0}, Lqn/c;-><init>(Lcom/google/common/collect/ImmutableList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/i0;->a()Lcom/google/common/collect/ImmutableList;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    new-array v1, v0, [Lqn/d;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    :goto_0
    if-ge v2, v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/media3/common/i0;->a()Lcom/google/common/collect/ImmutableList;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string v4, "get(...)"

    .line 42
    .line 43
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    check-cast v3, Landroidx/media3/common/i0$a;

    .line 47
    .line 48
    invoke-static {v3}, Lqn/a;->d(Landroidx/media3/common/i0$a;)Lqn/d;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    aput-object v3, v1, v2

    .line 53
    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    new-instance p0, Lqn/c;

    .line 58
    .line 59
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v1, "copyOf(...)"

    .line 64
    .line 65
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, v0}, Lqn/c;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 69
    .line 70
    .line 71
    :goto_1
    return-object p0
.end method

.method public static final d(Landroidx/media3/common/i0$a;)Lqn/d;
    .locals 7

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroidx/media3/common/i0$a;->a:I

    .line 7
    .line 8
    new-array v6, v0, [Lqn/b;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroidx/media3/common/i0$a;->b(I)Landroidx/media3/common/r;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "getTrackFormat(...)"

    .line 18
    .line 19
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Lqn/a;->b(Landroidx/media3/common/r;)Lqn/b;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    aput-object v2, v6, v1

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lqn/d;

    .line 32
    .line 33
    iget v2, p0, Landroidx/media3/common/i0$a;->a:I

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/media3/common/i0$a;->a()Landroidx/media3/common/f0;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v3, v1, Landroidx/media3/common/f0;->b:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/media3/common/i0$a;->a()Landroidx/media3/common/f0;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget v4, v1, Landroidx/media3/common/f0;->c:I

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/media3/common/i0$a;->e()Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    move-object v1, v0

    .line 52
    invoke-direct/range {v1 .. v6}, Lqn/d;-><init>(ILjava/lang/String;IZ[Lqn/b;)V

    .line 53
    .line 54
    .line 55
    return-object v0
.end method
