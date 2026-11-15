.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsElement;,
        Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$a;,
        Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;
    }
.end annotation


# instance fields
.field private final a:Landroidx/collection/n0;

.field private b:Landroidx/compose/foundation/lazy/layout/p;

.field private c:I

.field private final d:Landroidx/collection/MutableScatterSet;

.field private final e:Ljava/util/List;

.field private final f:Ljava/util/List;

.field private final g:Ljava/util/List;

.field private final h:Ljava/util/List;

.field private final i:Ljava/util/List;

.field private j:Landroidx/compose/ui/node/n;

.field private final k:Landroidx/compose/ui/f;


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
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    .line 9
    .line 10
    invoke-static {}, Landroidx/collection/w0;->a()Landroidx/collection/MutableScatterSet;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->d:Landroidx/collection/MutableScatterSet;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->e:Ljava/util/List;

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->f:Ljava/util/List;

    .line 29
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->g:Ljava/util/List;

    .line 36
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->h:Ljava/util/List;

    .line 43
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->i:Ljava/util/List;

    .line 50
    .line 51
    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsElement;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsElement;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->k:Landroidx/compose/ui/f;

    .line 57
    .line 58
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/s;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->e(Landroidx/compose/foundation/lazy/layout/s;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic b(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->i:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/ui/node/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->j:Landroidx/compose/ui/node/n;

    .line 2
    .line 3
    return-void
.end method

.method private final e(Landroidx/compose/foundation/lazy/layout/s;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Landroidx/compose/foundation/lazy/layout/s;->j(I)J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/s;->e()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-static {v0, v1}, Lo0/p;->i(J)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {v0, v1}, Lo0/p;->h(J)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    :goto_0
    return p1
.end method

.method private final f(Landroidx/compose/foundation/lazy/layout/s;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/s;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p1, v2}, Landroidx/compose/foundation/lazy/layout/s;->i(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {v3}, Landroidx/compose/foundation/lazy/layout/l;->b(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/d;

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return v1
.end method

.method private final g(Landroidx/compose/foundation/lazy/layout/s;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Landroidx/compose/foundation/lazy/layout/s;->j(I)J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/s;->e()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-static {v0, v1}, Lo0/p;->i(J)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {v0, v1}, Lo0/p;->h(J)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    :goto_0
    return p1
.end method

.method private final j(Landroidx/compose/foundation/lazy/layout/s;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Landroidx/compose/foundation/lazy/layout/s;->j(I)J

    .line 3
    .line 4
    .line 5
    move-result-wide v1

    .line 6
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/s;->e()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    move v4, p2

    .line 16
    invoke-static/range {v1 .. v6}, Lo0/p;->e(JIIILjava/lang/Object;)J

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v5, 0x2

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    move v3, p2

    .line 24
    invoke-static/range {v1 .. v6}, Lo0/p;->e(JIIILjava/lang/Object;)J

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {p3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a()[Landroidx/compose/foundation/lazy/layout/k;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    array-length p2, p1

    .line 32
    :goto_1
    if-ge v0, p2, :cond_1

    .line 33
    .line 34
    aget-object p3, p1, v0

    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    return-void
.end method

.method static synthetic k(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/s;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    .line 6
    .line 7
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/s;->getKey()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p4

    .line 11
    invoke-virtual {p3, p4}, Landroidx/collection/u0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    check-cast p3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;

    .line 19
    .line 20
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->j(Landroidx/compose/foundation/lazy/layout/s;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private final m(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/n0;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a()[Landroidx/compose/foundation/lazy/layout/k;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    array-length v0, p1

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    if-ge v1, v0, :cond_0

    .line 20
    .line 21
    aget-object v2, p1, v1

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method private final o(Landroidx/compose/foundation/lazy/layout/s;Z)V
    .locals 2

    .line 1
    iget-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    .line 2
    .line 3
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/s;->getKey()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p2, p1}, Landroidx/collection/u0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a()[Landroidx/compose/foundation/lazy/layout/k;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    array-length p2, p1

    .line 21
    const/4 v0, 0x0

    .line 22
    :goto_0
    if-ge v0, p2, :cond_0

    .line 23
    .line 24
    aget-object v1, p1, v0

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method static synthetic p(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/s;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->o(Landroidx/compose/foundation/lazy/layout/s;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final q([ILandroidx/compose/foundation/lazy/layout/s;)I
    .locals 5

    .line 1
    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/s;->k()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/s;->d()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    aget v3, p1, v0

    .line 14
    .line 15
    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/s;->h()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    add-int/2addr v3, v4

    .line 20
    aput v3, p1, v0

    .line 21
    .line 22
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return v2
.end method


# virtual methods
.method public final d(Ljava/lang/Object;I)Landroidx/compose/foundation/lazy/layout/k;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/u0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a()[Landroidx/compose/foundation/lazy/layout/k;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    aget-object p1, p1, p2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    return-object p1
.end method

.method public final h()J
    .locals 11

    .line 1
    sget-object v0, Lo0/t;->b:Lo0/t$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo0/t$a;->a()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->i:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_0
    if-ge v4, v3, :cond_1

    .line 15
    .line 16
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    check-cast v5, Landroidx/compose/foundation/lazy/layout/k;

    .line 21
    .line 22
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/k;->e()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    invoke-static {v0, v1}, Lo0/t;->g(J)I

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/k;->h()J

    .line 33
    .line 34
    .line 35
    move-result-wide v8

    .line 36
    invoke-static {v8, v9}, Lo0/p;->h(J)I

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->v()J

    .line 41
    .line 42
    .line 43
    move-result-wide v9

    .line 44
    invoke-static {v9, v10}, Lo0/t;->g(J)I

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    add-int/2addr v8, v9

    .line 49
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    invoke-static {v0, v1}, Lo0/t;->f(J)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/k;->h()J

    .line 58
    .line 59
    .line 60
    move-result-wide v8

    .line 61
    invoke-static {v8, v9}, Lo0/p;->i(J)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->v()J

    .line 66
    .line 67
    .line 68
    move-result-wide v5

    .line 69
    invoke-static {v5, v6}, Lo0/t;->f(J)I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    add-int/2addr v1, v5

    .line 74
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-static {v7, v0}, Lo0/u;->a(II)J

    .line 79
    .line 80
    .line 81
    move-result-wide v0

    .line 82
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    return-wide v0
.end method

.method public final i()Landroidx/compose/ui/f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->k:Landroidx/compose/ui/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l(IIILjava/util/List;Landroidx/compose/foundation/lazy/layout/p;Landroidx/compose/foundation/lazy/layout/t;ZZIZIILkotlinx/coroutines/n0;Landroidx/compose/ui/graphics/a4;)V
    .locals 40

    move-object/from16 v6, p0

    move/from16 v0, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p9

    const/4 v12, 0x1

    .line 1
    iget-object v13, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->b:Landroidx/compose/foundation/lazy/layout/p;

    .line 2
    iput-object v10, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->b:Landroidx/compose/foundation/lazy/layout/p;

    .line 3
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v14, 0x0

    move v2, v14

    :goto_0
    if-ge v2, v1, :cond_1

    .line 4
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Landroidx/compose/foundation/lazy/layout/s;

    .line 6
    invoke-direct {v6, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->f(Landroidx/compose/foundation/lazy/layout/s;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v2, v12

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    invoke-virtual {v1}, Landroidx/collection/u0;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->n()V

    return-void

    .line 9
    :cond_2
    :goto_1
    iget v1, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->c:I

    .line 10
    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/layout/s;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroidx/compose/foundation/lazy/layout/s;->getIndex()I

    move-result v2

    goto :goto_2

    :cond_3
    move v2, v14

    :goto_2
    iput v2, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->c:I

    if-eqz p7, :cond_4

    .line 11
    invoke-static {v14, v0}, Lo0/q;->a(II)J

    goto :goto_3

    .line 12
    :cond_4
    invoke-static {v0, v14}, Lo0/q;->a(II)J

    :goto_3
    if-nez p8, :cond_6

    if-nez p10, :cond_5

    goto :goto_4

    :cond_5
    move v15, v14

    goto :goto_5

    :cond_6
    :goto_4
    move v15, v12

    .line 13
    :goto_5
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    .line 14
    iget-object v2, v0, Landroidx/collection/u0;->b:[Ljava/lang/Object;

    .line 15
    iget-object v0, v0, Landroidx/collection/u0;->a:[J

    .line 16
    array-length v3, v0

    const/4 v5, 0x2

    sub-int/2addr v3, v5

    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    const/16 v20, 0x7

    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v4, 0x8

    if-ltz v3, :cond_a

    move v5, v14

    move/from16 p7, v15

    .line 17
    :goto_6
    aget-wide v14, v0, v5

    move-object/from16 v24, v13

    not-long v12, v14

    shl-long v12, v12, v20

    and-long/2addr v12, v14

    and-long v12, v12, v21

    cmp-long v12, v12, v21

    if-eqz v12, :cond_9

    sub-int v12, v5, v3

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    rsub-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v12, :cond_8

    and-long v25, v14, v18

    cmp-long v25, v25, v16

    if-gez v25, :cond_7

    shl-int/lit8 v25, v5, 0x3

    add-int v25, v25, v13

    .line 18
    aget-object v4, v2, v25

    move-object/from16 v25, v0

    .line 19
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->d:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0, v4}, Landroidx/collection/MutableScatterSet;->h(Ljava/lang/Object;)Z

    const/16 v4, 0x8

    goto :goto_8

    :cond_7
    move-object/from16 v25, v0

    :goto_8
    shr-long/2addr v14, v4

    const/4 v0, 0x1

    add-int/2addr v13, v0

    move-object/from16 v0, v25

    goto :goto_7

    :cond_8
    move-object/from16 v25, v0

    const/4 v0, 0x1

    if-ne v12, v4, :cond_b

    goto :goto_9

    :cond_9
    move-object/from16 v25, v0

    const/4 v0, 0x1

    :goto_9
    if-eq v5, v3, :cond_b

    add-int/2addr v5, v0

    move v12, v0

    move-object/from16 v13, v24

    move-object/from16 v0, v25

    goto :goto_6

    :cond_a
    move-object/from16 v24, v13

    move/from16 p7, v15

    .line 20
    :cond_b
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_a
    const/4 v12, 0x0

    const/4 v13, -0x1

    if-ge v2, v0, :cond_16

    .line 21
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 22
    check-cast v3, Landroidx/compose/foundation/lazy/layout/s;

    .line 23
    iget-object v5, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->d:Landroidx/collection/MutableScatterSet;

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/s;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroidx/collection/MutableScatterSet;->x(Ljava/lang/Object;)Z

    .line 24
    invoke-direct {v6, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->f(Landroidx/compose/foundation/lazy/layout/s;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 25
    iget-object v5, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/s;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroidx/collection/u0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;

    if-eqz v24, :cond_c

    .line 26
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/s;->getKey()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v15, v24

    invoke-interface {v15, v14}, Landroidx/compose/foundation/lazy/layout/p;->a(Ljava/lang/Object;)I

    move-result v14

    goto :goto_b

    :cond_c
    move-object/from16 v15, v24

    move v14, v13

    :goto_b
    if-ne v14, v13, :cond_d

    if-eqz v15, :cond_d

    const/16 v24, 0x1

    goto :goto_c

    :cond_d
    const/16 v24, 0x0

    :goto_c
    if-nez v5, :cond_12

    .line 27
    new-instance v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;

    invoke-direct {v5, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)V

    const/16 v32, 0x20

    const/16 v33, 0x0

    const/16 v31, 0x0

    move-object/from16 v25, v5

    move-object/from16 v26, v3

    move-object/from16 v27, p13

    move-object/from16 v28, p14

    move/from16 v29, p11

    move/from16 v30, p12

    .line 28
    invoke-static/range {v25 .. v33}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->l(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;Landroidx/compose/foundation/lazy/layout/s;Lkotlinx/coroutines/n0;Landroidx/compose/ui/graphics/a4;IIIILjava/lang/Object;)V

    .line 29
    iget-object v12, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/s;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v12, v4, v5}, Landroidx/collection/n0;->r(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/s;->getIndex()I

    move-result v4

    if-eq v4, v14, :cond_10

    if-eq v14, v13, :cond_10

    if-ge v14, v1, :cond_f

    .line 31
    iget-object v4, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->e:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_d
    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v13, 0x1

    goto/16 :goto_12

    .line 32
    :cond_f
    iget-object v4, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_10
    const/4 v4, 0x0

    .line 33
    invoke-interface {v3, v4}, Landroidx/compose/foundation/lazy/layout/s;->j(I)J

    move-result-wide v12

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/s;->e()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-static {v12, v13}, Lo0/p;->i(J)I

    move-result v4

    goto :goto_e

    :cond_11
    invoke-static {v12, v13}, Lo0/p;->h(J)I

    move-result v4

    .line 34
    :goto_e
    invoke-direct {v6, v3, v4, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->j(Landroidx/compose/foundation/lazy/layout/s;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;)V

    if-eqz v24, :cond_e

    .line 35
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a()[Landroidx/compose/foundation/lazy/layout/k;

    move-result-object v3

    .line 36
    array-length v4, v3

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v4, :cond_e

    aget-object v12, v3, v5

    const/4 v12, 0x1

    add-int/2addr v5, v12

    goto :goto_f

    :cond_12
    if-eqz p7, :cond_e

    const/16 v32, 0x20

    const/16 v33, 0x0

    const/16 v31, 0x0

    move-object/from16 v25, v5

    move-object/from16 v26, v3

    move-object/from16 v27, p13

    move-object/from16 v28, p14

    move/from16 v29, p11

    move/from16 v30, p12

    .line 37
    invoke-static/range {v25 .. v33}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->l(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;Landroidx/compose/foundation/lazy/layout/s;Lkotlinx/coroutines/n0;Landroidx/compose/ui/graphics/a4;IIIILjava/lang/Object;)V

    .line 38
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a()[Landroidx/compose/foundation/lazy/layout/k;

    move-result-object v4

    .line 39
    array-length v13, v4

    const/4 v14, 0x0

    :goto_10
    if-ge v14, v13, :cond_13

    aget-object v25, v4, v14

    move/from16 v25, v13

    const/4 v13, 0x1

    add-int/2addr v14, v13

    move/from16 v13, v25

    goto :goto_10

    :cond_13
    const/4 v13, 0x1

    if-eqz v24, :cond_14

    .line 40
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a()[Landroidx/compose/foundation/lazy/layout/k;

    move-result-object v4

    .line 41
    array-length v5, v4

    const/4 v14, 0x0

    :goto_11
    if-ge v14, v5, :cond_14

    aget-object v23, v4, v14

    add-int/2addr v14, v13

    goto :goto_11

    :cond_14
    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 42
    invoke-static {v6, v3, v4, v5, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->p(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/s;ZILjava/lang/Object;)V

    goto :goto_12

    :cond_15
    move-object/from16 v15, v24

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v13, 0x1

    .line 43
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/s;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v6, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->m(Ljava/lang/Object;)V

    :goto_12
    add-int/2addr v2, v13

    move-object/from16 v24, v15

    const/16 v4, 0x8

    goto/16 :goto_a

    :cond_16
    move v14, v13

    move-object/from16 v15, v24

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v13, 0x1

    .line 44
    new-array v3, v11, [I

    move v0, v4

    :goto_13
    if-ge v0, v11, :cond_17

    aput v4, v3, v0

    add-int/2addr v0, v13

    const/4 v4, 0x0

    goto :goto_13

    :cond_17
    if-eqz p7, :cond_1d

    if-eqz v15, :cond_1d

    .line 45
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->e:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 46
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->e:Ljava/util/List;

    .line 47
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v13, :cond_18

    new-instance v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortByDescending$1;

    invoke-direct {v1, v15}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortByDescending$1;-><init>(Landroidx/compose/foundation/lazy/layout/p;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;Ljava/util/Comparator;)V

    .line 48
    :cond_18
    iget-object v13, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->e:Ljava/util/List;

    .line 49
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v4, :cond_19

    .line 50
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 51
    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/lazy/layout/s;

    .line 52
    invoke-direct {v6, v3, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->q([ILandroidx/compose/foundation/lazy/layout/s;)I

    move-result v0

    sub-int v24, p11, v0

    const/16 v25, 0x4

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 p1, v1

    move/from16 v28, v2

    move/from16 v2, v24

    move-object/from16 v30, v3

    move-object/from16 v3, v27

    move/from16 v24, v4

    const/16 v14, 0x8

    move/from16 v4, v25

    move v14, v5

    move-object/from16 v5, v26

    .line 53
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->k(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/s;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 54
    invoke-static {v6, v1, v0, v14, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->p(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/s;ZILjava/lang/Object;)V

    const/4 v0, 0x1

    add-int/lit8 v2, v28, 0x1

    move v5, v14

    move/from16 v4, v24

    move-object/from16 v3, v30

    const/4 v14, -0x1

    goto :goto_14

    :cond_19
    move-object/from16 v30, v3

    move v14, v5

    const/16 v28, 0x6

    const/16 v29, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v24, v30

    .line 55
    invoke-static/range {v24 .. v29}, Lkotlin/collections/ArraysKt;->w([IIIIILjava/lang/Object;)V

    goto :goto_15

    :cond_1a
    move-object/from16 v30, v3

    move v14, v5

    .line 56
    :goto_15
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->f:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 57
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->f:Ljava/util/List;

    .line 58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1b

    new-instance v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;

    invoke-direct {v1, v15}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;-><init>(Landroidx/compose/foundation/lazy/layout/p;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;Ljava/util/Comparator;)V

    .line 59
    :cond_1b
    iget-object v13, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->f:Ljava/util/List;

    .line 60
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v5, :cond_1c

    .line 61
    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 62
    move-object v3, v0

    check-cast v3, Landroidx/compose/foundation/lazy/layout/s;

    move-object/from16 v2, v30

    .line 63
    invoke-direct {v6, v2, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->q([ILandroidx/compose/foundation/lazy/layout/s;)I

    move-result v0

    add-int v0, p12, v0

    .line 64
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/s;->h()I

    move-result v1

    sub-int v24, v0, v1

    const/16 v25, 0x4

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move/from16 v2, v24

    move-object/from16 v34, v3

    move-object/from16 v3, v27

    move/from16 v24, v4

    move/from16 v4, v25

    move/from16 v25, v5

    move-object/from16 v5, v26

    .line 65
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->k(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/s;ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;ILjava/lang/Object;)V

    move-object/from16 v1, v34

    const/4 v0, 0x0

    .line 66
    invoke-static {v6, v1, v0, v14, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->p(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/s;ZILjava/lang/Object;)V

    const/4 v0, 0x1

    add-int/lit8 v4, v24, 0x1

    move/from16 v5, v25

    goto :goto_16

    :cond_1c
    const/16 v28, 0x6

    const/16 v29, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v24, v30

    .line 67
    invoke-static/range {v24 .. v29}, Lkotlin/collections/ArraysKt;->w([IIIIILjava/lang/Object;)V

    goto :goto_17

    :cond_1d
    move-object/from16 v30, v3

    move v14, v5

    .line 68
    :cond_1e
    :goto_17
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->d:Landroidx/collection/MutableScatterSet;

    .line 69
    iget-object v1, v0, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 70
    iget-object v0, v0, Landroidx/collection/ScatterSet;->a:[J

    .line 71
    array-length v2, v0

    sub-int/2addr v2, v14

    if-ltz v2, :cond_27

    const/4 v4, 0x0

    .line 72
    :goto_18
    aget-wide v12, v0, v4

    not-long v7, v12

    shl-long v7, v7, v20

    and-long/2addr v7, v12

    and-long v7, v7, v21

    cmp-long v3, v7, v21

    if-eqz v3, :cond_26

    sub-int v3, v4, v2

    not-int v3, v3

    ushr-int/lit8 v3, v3, 0x1f

    const/16 v5, 0x8

    rsub-int/lit8 v3, v3, 0x8

    const/4 v5, 0x0

    :goto_19
    if-ge v5, v3, :cond_25

    and-long v7, v12, v18

    cmp-long v7, v7, v16

    if-gez v7, :cond_24

    shl-int/lit8 v7, v4, 0x3

    add-int/2addr v7, v5

    .line 73
    aget-object v7, v1, v7

    .line 74
    iget-object v8, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    invoke-virtual {v8, v7}, Landroidx/collection/u0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;

    .line 75
    invoke-interface {v10, v7}, Landroidx/compose/foundation/lazy/layout/p;->a(Ljava/lang/Object;)I

    move-result v14

    move-object/from16 p1, v0

    .line 76
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->g()I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v8, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->j(I)V

    .line 77
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->g()I

    move-result v0

    sub-int v0, v11, v0

    move-object/from16 v39, v1

    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->d()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v8, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->i(I)V

    const/4 v0, -0x1

    if-ne v14, v0, :cond_20

    .line 78
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a()[Landroidx/compose/foundation/lazy/layout/k;

    move-result-object v1

    .line 79
    array-length v8, v1

    const/4 v14, 0x0

    :goto_1a
    if-ge v14, v8, :cond_1f

    aget-object v24, v1, v14

    const/16 v23, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_1a

    .line 80
    :cond_1f
    invoke-direct {v6, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->m(Ljava/lang/Object;)V

    goto :goto_1c

    .line 81
    :cond_20
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->b()Lo0/b;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lo0/b;->r()J

    move-result-wide v28

    .line 82
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->d()I

    move-result v26

    .line 83
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->g()I

    move-result v27

    move-object/from16 v24, p6

    move/from16 v25, v14

    .line 84
    invoke-interface/range {v24 .. v29}, Landroidx/compose/foundation/lazy/layout/t;->a(IIIJ)Landroidx/compose/foundation/lazy/layout/s;

    move-result-object v1

    const/4 v0, 0x1

    .line 85
    invoke-interface {v1, v0}, Landroidx/compose/foundation/lazy/layout/s;->c(Z)V

    .line 86
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a()[Landroidx/compose/foundation/lazy/layout/k;

    move-result-object v0

    .line 87
    array-length v11, v0

    const/4 v9, 0x0

    :goto_1b
    if-ge v9, v11, :cond_21

    aget-object v24, v0, v9

    const/16 v23, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    :cond_21
    if-eqz v15, :cond_22

    .line 88
    invoke-interface {v15, v7}, Landroidx/compose/foundation/lazy/layout/p;->a(Ljava/lang/Object;)I

    move-result v0

    if-ne v14, v0, :cond_22

    .line 89
    invoke-direct {v6, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->m(Ljava/lang/Object;)V

    goto :goto_1c

    .line 90
    :cond_22
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->c()I

    move-result v38

    move-object/from16 v32, v8

    move-object/from16 v33, v1

    move-object/from16 v34, p13

    move-object/from16 v35, p14

    move/from16 v36, p11

    move/from16 v37, p12

    .line 91
    invoke-virtual/range {v32 .. v38}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->k(Landroidx/compose/foundation/lazy/layout/s;Lkotlinx/coroutines/n0;Landroidx/compose/ui/graphics/a4;III)V

    .line 92
    iget v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->c:I

    if-ge v14, v0, :cond_23

    .line 93
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 94
    :cond_23
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1c
    const/16 v0, 0x8

    goto :goto_1d

    :cond_24
    move-object/from16 p1, v0

    move-object/from16 v39, v1

    goto :goto_1c

    :goto_1d
    shr-long/2addr v12, v0

    const/4 v1, 0x1

    add-int/2addr v5, v1

    move-object/from16 v0, p1

    move-object/from16 v9, p4

    move/from16 v11, p9

    move-object/from16 v1, v39

    goto/16 :goto_19

    :cond_25
    move-object/from16 p1, v0

    move-object/from16 v39, v1

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne v3, v0, :cond_27

    goto :goto_1e

    :cond_26
    move-object/from16 p1, v0

    move-object/from16 v39, v1

    const/16 v0, 0x8

    const/4 v1, 0x1

    :goto_1e
    if-eq v4, v2, :cond_27

    add-int/2addr v4, v1

    move-object/from16 v0, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v11, p9

    move-object/from16 v1, v39

    goto/16 :goto_18

    .line 95
    :cond_27
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->g:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 96
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->g:Ljava/util/List;

    .line 97
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_28

    new-instance v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortByDescending$2;

    invoke-direct {v1, v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortByDescending$2;-><init>(Landroidx/compose/foundation/lazy/layout/p;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;Ljava/util/Comparator;)V

    .line 98
    :cond_28
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->g:Ljava/util/List;

    .line 99
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v1, :cond_2b

    .line 100
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 101
    check-cast v2, Landroidx/compose/foundation/lazy/layout/s;

    .line 102
    iget-object v3, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    invoke-interface {v2}, Landroidx/compose/foundation/lazy/layout/s;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/collection/u0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;

    move-object/from16 v5, v30

    .line 103
    invoke-direct {v6, v5, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->q([ILandroidx/compose/foundation/lazy/layout/s;)I

    move-result v7

    if-eqz p8, :cond_29

    .line 104
    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/foundation/lazy/layout/s;

    invoke-direct {v6, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->g(Landroidx/compose/foundation/lazy/layout/s;)I

    move-result v8

    goto :goto_20

    .line 105
    :cond_29
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->f()I

    move-result v8

    :goto_20
    sub-int/2addr v8, v7

    .line 106
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->c()I

    move-result v3

    move/from16 v7, p2

    move/from16 v9, p3

    .line 107
    invoke-interface {v2, v8, v3, v7, v9}, Landroidx/compose/foundation/lazy/layout/s;->f(IIII)V

    const/4 v3, 0x1

    if-eqz p7, :cond_2a

    .line 108
    invoke-direct {v6, v2, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->o(Landroidx/compose/foundation/lazy/layout/s;Z)V

    :cond_2a
    add-int/2addr v4, v3

    move-object/from16 v30, v5

    goto :goto_1f

    :cond_2b
    move/from16 v7, p2

    move/from16 v9, p3

    move-object/from16 v5, v30

    const/16 v28, 0x6

    const/16 v29, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v24, v5

    .line 109
    invoke-static/range {v24 .. v29}, Lkotlin/collections/ArraysKt;->w([IIIIILjava/lang/Object;)V

    goto :goto_21

    :cond_2c
    move/from16 v7, p2

    move/from16 v9, p3

    move-object/from16 v5, v30

    .line 110
    :goto_21
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->h:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    .line 111
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->h:Ljava/util/List;

    .line 112
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2d

    new-instance v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$2;

    invoke-direct {v1, v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$2;-><init>(Landroidx/compose/foundation/lazy/layout/p;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;Ljava/util/Comparator;)V

    .line 113
    :cond_2d
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->h:Ljava/util/List;

    .line 114
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v1, :cond_30

    .line 115
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 116
    check-cast v2, Landroidx/compose/foundation/lazy/layout/s;

    .line 117
    iget-object v3, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    invoke-interface {v2}, Landroidx/compose/foundation/lazy/layout/s;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroidx/collection/u0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;

    .line 118
    invoke-direct {v6, v5, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->q([ILandroidx/compose/foundation/lazy/layout/s;)I

    move-result v8

    if-eqz p8, :cond_2e

    .line 119
    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    .line 120
    check-cast v10, Landroidx/compose/foundation/lazy/layout/s;

    invoke-direct {v6, v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->g(Landroidx/compose/foundation/lazy/layout/s;)I

    move-result v10

    goto :goto_23

    .line 121
    :cond_2e
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->e()I

    move-result v10

    invoke-interface {v2}, Landroidx/compose/foundation/lazy/layout/s;->h()I

    move-result v11

    sub-int/2addr v10, v11

    :goto_23
    add-int/2addr v10, v8

    .line 122
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->c()I

    move-result v3

    .line 123
    invoke-interface {v2, v10, v3, v7, v9}, Landroidx/compose/foundation/lazy/layout/s;->f(IIII)V

    const/4 v3, 0x1

    if-eqz p7, :cond_2f

    .line 124
    invoke-direct {v6, v2, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->o(Landroidx/compose/foundation/lazy/layout/s;Z)V

    :cond_2f
    add-int/2addr v4, v3

    goto :goto_22

    .line 125
    :cond_30
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->g:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/List;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    check-cast v0, Ljava/util/Collection;

    move-object/from16 v1, p4

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 126
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->h:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 131
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->d:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->m()V

    return-void
.end method

.method public final n()V
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/collection/u0;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    .line 10
    .line 11
    iget-object v1, v0, Landroidx/collection/u0;->c:[Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/collection/u0;->a:[J

    .line 14
    .line 15
    array-length v2, v0

    .line 16
    add-int/lit8 v2, v2, -0x2

    .line 17
    .line 18
    if-ltz v2, :cond_3

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    move v4, v3

    .line 22
    :goto_0
    aget-wide v5, v0, v4

    .line 23
    .line 24
    not-long v7, v5

    .line 25
    const/4 v9, 0x7

    .line 26
    shl-long/2addr v7, v9

    .line 27
    and-long/2addr v7, v5

    .line 28
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    and-long/2addr v7, v9

    .line 34
    cmp-long v7, v7, v9

    .line 35
    .line 36
    if-eqz v7, :cond_2

    .line 37
    .line 38
    sub-int v7, v4, v2

    .line 39
    .line 40
    not-int v7, v7

    .line 41
    ushr-int/lit8 v7, v7, 0x1f

    .line 42
    .line 43
    const/16 v8, 0x8

    .line 44
    .line 45
    rsub-int/lit8 v7, v7, 0x8

    .line 46
    .line 47
    move v9, v3

    .line 48
    :goto_1
    if-ge v9, v7, :cond_1

    .line 49
    .line 50
    const-wide/16 v10, 0xff

    .line 51
    .line 52
    and-long/2addr v10, v5

    .line 53
    const-wide/16 v12, 0x80

    .line 54
    .line 55
    cmp-long v10, v10, v12

    .line 56
    .line 57
    if-gez v10, :cond_0

    .line 58
    .line 59
    shl-int/lit8 v10, v4, 0x3

    .line 60
    .line 61
    add-int/2addr v10, v9

    .line 62
    aget-object v10, v1, v10

    .line 63
    .line 64
    check-cast v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;

    .line 65
    .line 66
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a()[Landroidx/compose/foundation/lazy/layout/k;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    array-length v11, v10

    .line 71
    move v12, v3

    .line 72
    :goto_2
    if-ge v12, v11, :cond_0

    .line 73
    .line 74
    aget-object v13, v10, v12

    .line 75
    .line 76
    add-int/lit8 v12, v12, 0x1

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_0
    shr-long/2addr v5, v8

    .line 80
    add-int/lit8 v9, v9, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    if-ne v7, v8, :cond_3

    .line 84
    .line 85
    :cond_2
    if-eq v4, v2, :cond_3

    .line 86
    .line 87
    add-int/lit8 v4, v4, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a:Landroidx/collection/n0;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroidx/collection/n0;->h()V

    .line 93
    .line 94
    .line 95
    :cond_4
    sget-object v0, Landroidx/compose/foundation/lazy/layout/p;->a:Landroidx/compose/foundation/lazy/layout/p$a;

    .line 96
    .line 97
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->b:Landroidx/compose/foundation/lazy/layout/p;

    .line 98
    .line 99
    const/4 v0, -0x1

    .line 100
    iput v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->c:I

    .line 101
    .line 102
    return-void
.end method
