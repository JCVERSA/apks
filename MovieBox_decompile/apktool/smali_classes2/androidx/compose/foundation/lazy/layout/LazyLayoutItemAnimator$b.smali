.class final Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private a:[Landroidx/compose/foundation/lazy/layout/k;

.field private b:Lo0/b;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field final synthetic h:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->h:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroidx/compose/foundation/lazy/layout/l;->a()[Landroidx/compose/foundation/lazy/layout/k;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a:[Landroidx/compose/foundation/lazy/layout/k;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->e:I

    .line 14
    .line 15
    return-void
.end method

.method private final h()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a:[Landroidx/compose/foundation/lazy/layout/k;

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
    add-int/lit8 v3, v3, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return v2
.end method

.method public static synthetic l(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;Landroidx/compose/foundation/lazy/layout/s;Lkotlinx/coroutines/n0;Landroidx/compose/ui/graphics/a4;IIIILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p7, p7, 0x20

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget-object p6, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->h:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 6
    .line 7
    invoke-static {p6, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;Landroidx/compose/foundation/lazy/layout/s;)I

    .line 8
    .line 9
    .line 10
    move-result p6

    .line 11
    :cond_0
    move v6, p6

    .line 12
    move-object v0, p0

    .line 13
    move-object v1, p1

    .line 14
    move-object v2, p2

    .line 15
    move-object v3, p3

    .line 16
    move v4, p4

    .line 17
    move v5, p5

    .line 18
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->k(Landroidx/compose/foundation/lazy/layout/s;Lkotlinx/coroutines/n0;Landroidx/compose/ui/graphics/a4;III)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()[Landroidx/compose/foundation/lazy/layout/k;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a:[Landroidx/compose/foundation/lazy/layout/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lo0/b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->b:Lo0/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final g()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final i(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public final j(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public final k(Landroidx/compose/foundation/lazy/layout/s;Lkotlinx/coroutines/n0;Landroidx/compose/ui/graphics/a4;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->h()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    iput p4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->f:I

    .line 8
    .line 9
    iput p5, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->g:I

    .line 10
    .line 11
    :cond_0
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/s;->b()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    iget-object p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a:[Landroidx/compose/foundation/lazy/layout/k;

    .line 16
    .line 17
    array-length p3, p3

    .line 18
    :goto_0
    if-ge p2, p3, :cond_1

    .line 19
    .line 20
    iget-object p4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a:[Landroidx/compose/foundation/lazy/layout/k;

    .line 21
    .line 22
    aget-object p4, p4, p2

    .line 23
    .line 24
    add-int/lit8 p2, p2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a:[Landroidx/compose/foundation/lazy/layout/k;

    .line 28
    .line 29
    array-length p2, p2

    .line 30
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/s;->b()I

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    if-eq p2, p3, :cond_2

    .line 35
    .line 36
    iget-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a:[Landroidx/compose/foundation/lazy/layout/k;

    .line 37
    .line 38
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/s;->b()I

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    const-string p3, "copyOf(this, newSize)"

    .line 47
    .line 48
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    check-cast p2, [Landroidx/compose/foundation/lazy/layout/k;

    .line 52
    .line 53
    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a:[Landroidx/compose/foundation/lazy/layout/k;

    .line 54
    .line 55
    :cond_2
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/s;->a()J

    .line 56
    .line 57
    .line 58
    move-result-wide p2

    .line 59
    invoke-static {p2, p3}, Lo0/b;->a(J)Lo0/b;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->b:Lo0/b;

    .line 64
    .line 65
    iput p6, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->c:I

    .line 66
    .line 67
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/s;->k()I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    iput p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->d:I

    .line 72
    .line 73
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/s;->d()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    iput p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->e:I

    .line 78
    .line 79
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/s;->b()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    const/4 p3, 0x0

    .line 84
    :goto_1
    if-ge p3, p2, :cond_3

    .line 85
    .line 86
    invoke-interface {p1, p3}, Landroidx/compose/foundation/lazy/layout/s;->i(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p4

    .line 90
    invoke-static {p4}, Landroidx/compose/foundation/lazy/layout/l;->b(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/d;

    .line 91
    .line 92
    .line 93
    iget-object p4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a:[Landroidx/compose/foundation/lazy/layout/k;

    .line 94
    .line 95
    aget-object p4, p4, p3

    .line 96
    .line 97
    iget-object p4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$b;->a:[Landroidx/compose/foundation/lazy/layout/k;

    .line 98
    .line 99
    const/4 p5, 0x0

    .line 100
    aput-object p5, p4, p3

    .line 101
    .line 102
    add-int/lit8 p3, p3, 0x1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    return-void
.end method
