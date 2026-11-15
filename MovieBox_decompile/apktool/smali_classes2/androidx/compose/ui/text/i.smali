.class public abstract Landroidx/compose/ui/text/i;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Ljava/util/List;I)I
    .locals 7

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-gt v3, v0, :cond_3

    .line 10
    .line 11
    add-int v4, v3, v0

    .line 12
    .line 13
    ushr-int/2addr v4, v1

    .line 14
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    check-cast v5, Landroidx/compose/ui/text/m;

    .line 19
    .line 20
    invoke-virtual {v5}, Landroidx/compose/ui/text/m;->f()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-le v6, p1, :cond_0

    .line 25
    .line 26
    move v5, v1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {v5}, Landroidx/compose/ui/text/m;->b()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-gt v5, p1, :cond_1

    .line 33
    .line 34
    const/4 v5, -0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v5, v2

    .line 37
    :goto_1
    if-gez v5, :cond_2

    .line 38
    .line 39
    add-int/lit8 v3, v4, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    if-lez v5, :cond_4

    .line 43
    .line 44
    add-int/lit8 v0, v4, -0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    add-int/2addr v3, v1

    .line 48
    neg-int v4, v3

    .line 49
    :cond_4
    return v4
.end method

.method public static final b(Ljava/util/List;I)I
    .locals 7

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-gt v3, v0, :cond_3

    .line 10
    .line 11
    add-int v4, v3, v0

    .line 12
    .line 13
    ushr-int/2addr v4, v1

    .line 14
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    check-cast v5, Landroidx/compose/ui/text/m;

    .line 19
    .line 20
    invoke-virtual {v5}, Landroidx/compose/ui/text/m;->g()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-le v6, p1, :cond_0

    .line 25
    .line 26
    move v5, v1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {v5}, Landroidx/compose/ui/text/m;->c()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-gt v5, p1, :cond_1

    .line 33
    .line 34
    const/4 v5, -0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v5, v2

    .line 37
    :goto_1
    if-gez v5, :cond_2

    .line 38
    .line 39
    add-int/lit8 v3, v4, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    if-lez v5, :cond_4

    .line 43
    .line 44
    add-int/lit8 v0, v4, -0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    add-int/2addr v3, v1

    .line 48
    neg-int v4, v3

    .line 49
    :cond_4
    return v4
.end method

.method public static final c(Ljava/util/List;F)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroidx/compose/ui/text/m;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->a()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    cmpl-float v0, p1, v0

    .line 19
    .line 20
    if-ltz v0, :cond_1

    .line 21
    .line 22
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v2, 0x1

    .line 32
    sub-int/2addr v0, v2

    .line 33
    move v3, v1

    .line 34
    :goto_0
    if-gt v3, v0, :cond_5

    .line 35
    .line 36
    add-int v4, v3, v0

    .line 37
    .line 38
    ushr-int/2addr v4, v2

    .line 39
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    check-cast v5, Landroidx/compose/ui/text/m;

    .line 44
    .line 45
    invoke-virtual {v5}, Landroidx/compose/ui/text/m;->h()F

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    cmpl-float v6, v6, p1

    .line 50
    .line 51
    if-lez v6, :cond_2

    .line 52
    .line 53
    move v5, v2

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {v5}, Landroidx/compose/ui/text/m;->a()F

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    cmpg-float v5, v5, p1

    .line 60
    .line 61
    if-gtz v5, :cond_3

    .line 62
    .line 63
    const/4 v5, -0x1

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    move v5, v1

    .line 66
    :goto_1
    if-gez v5, :cond_4

    .line 67
    .line 68
    add-int/lit8 v3, v4, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    if-lez v5, :cond_6

    .line 72
    .line 73
    add-int/lit8 v0, v4, -0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_5
    add-int/2addr v3, v2

    .line 77
    neg-int v4, v3

    .line 78
    :cond_6
    return v4
.end method

.method public static final d(Ljava/util/List;JLkotlin/jvm/functions/Function1;)V
    .locals 5

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/ui/text/b0;->j(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0, v0}, Landroidx/compose/ui/text/i;->a(Ljava/util/List;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    :goto_0
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroidx/compose/ui/text/m;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroidx/compose/ui/text/m;->f()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {p1, p2}, Landroidx/compose/ui/text/b0;->i(J)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-ge v3, v4, :cond_1

    .line 30
    .line 31
    invoke-virtual {v2}, Landroidx/compose/ui/text/m;->f()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v2}, Landroidx/compose/ui/text/m;->b()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eq v3, v4, :cond_0

    .line 40
    .line 41
    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return-void
.end method
