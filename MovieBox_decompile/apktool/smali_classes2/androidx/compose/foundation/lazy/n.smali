.class public final Landroidx/compose/foundation/lazy/n;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/foundation/lazy/j;
.implements Landroidx/compose/foundation/lazy/layout/s;


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;

.field private final c:Z

.field private final d:Landroidx/compose/ui/b$b;

.field private final e:Landroidx/compose/ui/b$c;

.field private final f:Landroidx/compose/ui/unit/LayoutDirection;

.field private final g:Z

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:J

.field private final l:Ljava/lang/Object;

.field private final m:Ljava/lang/Object;

.field private final n:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

.field private final o:J

.field private p:I

.field private final q:I

.field private final r:I

.field private final s:I

.field private final t:I

.field private final u:I

.field private v:Z

.field private w:I

.field private x:I

.field private y:I

.field private final z:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>(ILjava/util/List;ZLandroidx/compose/ui/b$b;Landroidx/compose/ui/b$c;Landroidx/compose/ui/unit/LayoutDirection;ZIIIJLjava/lang/Object;Ljava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;J)V
    .locals 9

    move-object v0, p0

    move-object v1, p2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v2, p1

    .line 3
    iput v2, v0, Landroidx/compose/foundation/lazy/n;->a:I

    .line 4
    iput-object v1, v0, Landroidx/compose/foundation/lazy/n;->b:Ljava/util/List;

    move v2, p3

    .line 5
    iput-boolean v2, v0, Landroidx/compose/foundation/lazy/n;->c:Z

    move-object v2, p4

    .line 6
    iput-object v2, v0, Landroidx/compose/foundation/lazy/n;->d:Landroidx/compose/ui/b$b;

    move-object v2, p5

    .line 7
    iput-object v2, v0, Landroidx/compose/foundation/lazy/n;->e:Landroidx/compose/ui/b$c;

    move-object v2, p6

    .line 8
    iput-object v2, v0, Landroidx/compose/foundation/lazy/n;->f:Landroidx/compose/ui/unit/LayoutDirection;

    move/from16 v2, p7

    .line 9
    iput-boolean v2, v0, Landroidx/compose/foundation/lazy/n;->g:Z

    move/from16 v2, p8

    .line 10
    iput v2, v0, Landroidx/compose/foundation/lazy/n;->h:I

    move/from16 v2, p9

    .line 11
    iput v2, v0, Landroidx/compose/foundation/lazy/n;->i:I

    move/from16 v2, p10

    .line 12
    iput v2, v0, Landroidx/compose/foundation/lazy/n;->j:I

    move-wide/from16 v2, p11

    .line 13
    iput-wide v2, v0, Landroidx/compose/foundation/lazy/n;->k:J

    move-object/from16 v2, p13

    .line 14
    iput-object v2, v0, Landroidx/compose/foundation/lazy/n;->l:Ljava/lang/Object;

    move-object/from16 v2, p14

    .line 15
    iput-object v2, v0, Landroidx/compose/foundation/lazy/n;->m:Ljava/lang/Object;

    move-object/from16 v2, p15

    .line 16
    iput-object v2, v0, Landroidx/compose/foundation/lazy/n;->n:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    move-wide/from16 v2, p16

    .line 17
    iput-wide v2, v0, Landroidx/compose/foundation/lazy/n;->o:J

    const/4 v2, 0x1

    .line 18
    iput v2, v0, Landroidx/compose/foundation/lazy/n;->s:I

    const/high16 v2, -0x80000000

    .line 19
    iput v2, v0, Landroidx/compose/foundation/lazy/n;->w:I

    .line 20
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v2, :cond_2

    .line 21
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 22
    check-cast v7, Landroidx/compose/ui/layout/g0;

    .line 23
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/n;->e()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Landroidx/compose/ui/layout/g0;->l0()I

    move-result v8

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Landroidx/compose/ui/layout/g0;->u0()I

    move-result v8

    :goto_1
    add-int/2addr v5, v8

    .line 24
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/n;->e()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Landroidx/compose/ui/layout/g0;->l0()I

    move-result v7

    goto :goto_2

    :cond_1
    invoke-virtual {v7}, Landroidx/compose/ui/layout/g0;->u0()I

    move-result v7

    :goto_2
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 25
    :cond_2
    iput v5, v0, Landroidx/compose/foundation/lazy/n;->q:I

    .line 26
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/n;->getSize()I

    move-result v1

    iget v2, v0, Landroidx/compose/foundation/lazy/n;->j:I

    add-int/2addr v1, v2

    invoke-static {v1, v3}, Lkotlin/ranges/RangesKt;->e(II)I

    move-result v1

    iput v1, v0, Landroidx/compose/foundation/lazy/n;->t:I

    .line 27
    iput v6, v0, Landroidx/compose/foundation/lazy/n;->u:I

    .line 28
    iget-object v1, v0, Landroidx/compose/foundation/lazy/n;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iput-object v1, v0, Landroidx/compose/foundation/lazy/n;->z:[I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;ZLandroidx/compose/ui/b$b;Landroidx/compose/ui/b$c;Landroidx/compose/ui/unit/LayoutDirection;ZIIIJLjava/lang/Object;Ljava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p17}, Landroidx/compose/foundation/lazy/n;-><init>(ILjava/util/List;ZLandroidx/compose/ui/b$b;Landroidx/compose/ui/b$c;Landroidx/compose/ui/unit/LayoutDirection;ZIIIJLjava/lang/Object;Ljava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;J)V

    return-void
.end method

.method private final n(J)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/n;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1, p2}, Lo0/p;->i(J)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p1, p2}, Lo0/p;->h(J)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    :goto_0
    return p1
.end method

.method private final o(Landroidx/compose/ui/layout/g0;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/n;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/layout/g0;->l0()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/layout/g0;->u0()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    :goto_0
    return p1
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/n;->o:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/n;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/n;->v:Z

    .line 2
    .line 3
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/n;->s:I

    .line 2
    .line 3
    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/n;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public f(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p3, p4}, Landroidx/compose/foundation/lazy/n;->r(III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/n;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/n;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/n;->l:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/n;->q:I

    .line 2
    .line 3
    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/n;->t:I

    .line 2
    .line 3
    return v0
.end method

.method public i(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/n;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/compose/ui/layout/g0;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/ui/layout/g0;->G()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public j(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/n;->z:[I

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    aget v1, v0, p1

    .line 6
    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    aget p1, v0, p1

    .line 10
    .line 11
    invoke-static {v1, p1}, Lo0/q;->a(II)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/n;->r:I

    .line 2
    .line 3
    return v0
.end method

.method public final l(IZ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/n;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/n;->g()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    add-int/2addr v0, p1

    .line 13
    iput v0, p0, Landroidx/compose/foundation/lazy/n;->p:I

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/foundation/lazy/n;->z:[I

    .line 16
    .line 17
    array-length v0, v0

    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    :goto_0
    if-ge v2, v0, :cond_4

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/n;->e()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    rem-int/lit8 v3, v2, 0x2

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    if-eq v3, v4, :cond_2

    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/n;->e()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_3

    .line 38
    .line 39
    rem-int/lit8 v3, v2, 0x2

    .line 40
    .line 41
    if-nez v3, :cond_3

    .line 42
    .line 43
    :cond_2
    iget-object v3, p0, Landroidx/compose/foundation/lazy/n;->z:[I

    .line 44
    .line 45
    aget v4, v3, v2

    .line 46
    .line 47
    add-int/2addr v4, p1

    .line 48
    aput v4, v3, v2

    .line 49
    .line 50
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_4
    if-eqz p2, :cond_5

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/n;->b()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    :goto_1
    if-ge v1, p1, :cond_5

    .line 60
    .line 61
    iget-object p2, p0, Landroidx/compose/foundation/lazy/n;->n:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/n;->getKey()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p2, v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->d(Ljava/lang/Object;I)Landroidx/compose/foundation/lazy/layout/k;

    .line 68
    .line 69
    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_5
    return-void
.end method

.method public final m()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/n;->u:I

    .line 2
    .line 3
    return v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/n;->v:Z

    .line 2
    .line 3
    return v0
.end method

.method public final q(Landroidx/compose/ui/layout/g0$a;Z)V
    .locals 10

    .line 1
    iget p2, p0, Landroidx/compose/foundation/lazy/n;->w:I

    .line 2
    .line 3
    const/high16 v0, -0x80000000

    .line 4
    .line 5
    if-eq p2, v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/n;->b()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-ge v0, p2, :cond_4

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/foundation/lazy/n;->b:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v3, v1

    .line 21
    check-cast v3, Landroidx/compose/ui/layout/g0;

    .line 22
    .line 23
    invoke-direct {p0, v3}, Landroidx/compose/foundation/lazy/n;->o(Landroidx/compose/ui/layout/g0;)I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/lazy/n;->j(I)J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    iget-object v4, p0, Landroidx/compose/foundation/lazy/n;->n:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/n;->getKey()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v4, v5, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->d(Ljava/lang/Object;I)Landroidx/compose/foundation/lazy/layout/k;

    .line 37
    .line 38
    .line 39
    iget-boolean v4, p0, Landroidx/compose/foundation/lazy/n;->g:Z

    .line 40
    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/n;->e()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    invoke-static {v1, v2}, Lo0/p;->h(J)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    invoke-static {v1, v2}, Lo0/p;->h(J)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    iget v5, p0, Landroidx/compose/foundation/lazy/n;->w:I

    .line 59
    .line 60
    sub-int/2addr v5, v4

    .line 61
    invoke-direct {p0, v3}, Landroidx/compose/foundation/lazy/n;->o(Landroidx/compose/ui/layout/g0;)I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    sub-int v4, v5, v4

    .line 66
    .line 67
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/n;->e()Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_1

    .line 72
    .line 73
    invoke-static {v1, v2}, Lo0/p;->i(J)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iget v2, p0, Landroidx/compose/foundation/lazy/n;->w:I

    .line 78
    .line 79
    sub-int/2addr v2, v1

    .line 80
    invoke-direct {p0, v3}, Landroidx/compose/foundation/lazy/n;->o(Landroidx/compose/ui/layout/g0;)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    sub-int/2addr v2, v1

    .line 85
    goto :goto_2

    .line 86
    :cond_1
    invoke-static {v1, v2}, Lo0/p;->i(J)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    :goto_2
    invoke-static {v4, v2}, Lo0/q;->a(II)J

    .line 91
    .line 92
    .line 93
    move-result-wide v1

    .line 94
    :cond_2
    iget-wide v4, p0, Landroidx/compose/foundation/lazy/n;->k:J

    .line 95
    .line 96
    invoke-static {v1, v2, v4, v5}, Lo0/p;->l(JJ)J

    .line 97
    .line 98
    .line 99
    move-result-wide v4

    .line 100
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/n;->e()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_3

    .line 105
    .line 106
    const/4 v8, 0x6

    .line 107
    const/4 v9, 0x0

    .line 108
    const/4 v6, 0x0

    .line 109
    const/4 v7, 0x0

    .line 110
    move-object v2, p1

    .line 111
    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/layout/g0$a;->w(Landroidx/compose/ui/layout/g0$a;Landroidx/compose/ui/layout/g0;JFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_3
    const/4 v8, 0x6

    .line 116
    const/4 v9, 0x0

    .line 117
    const/4 v6, 0x0

    .line 118
    const/4 v7, 0x0

    .line 119
    move-object v2, p1

    .line 120
    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/layout/g0$a;->q(Landroidx/compose/ui/layout/g0$a;Landroidx/compose/ui/layout/g0;JFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_4
    return-void

    .line 127
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 128
    .line 129
    const-string p2, "position() should be called first"

    .line 130
    .line 131
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p1
.end method

.method public final r(III)V
    .locals 9

    .line 1
    iput p1, p0, Landroidx/compose/foundation/lazy/n;->p:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/n;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, p3

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, p2

    .line 12
    :goto_0
    iput v0, p0, Landroidx/compose/foundation/lazy/n;->w:I

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/foundation/lazy/n;->b:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_1
    if-ge v2, v1, :cond_4

    .line 22
    .line 23
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroidx/compose/ui/layout/g0;

    .line 28
    .line 29
    mul-int/lit8 v4, v2, 0x2

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/n;->e()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_2

    .line 36
    .line 37
    iget-object v5, p0, Landroidx/compose/foundation/lazy/n;->z:[I

    .line 38
    .line 39
    iget-object v6, p0, Landroidx/compose/foundation/lazy/n;->d:Landroidx/compose/ui/b$b;

    .line 40
    .line 41
    if-eqz v6, :cond_1

    .line 42
    .line 43
    invoke-virtual {v3}, Landroidx/compose/ui/layout/g0;->u0()I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    iget-object v8, p0, Landroidx/compose/foundation/lazy/n;->f:Landroidx/compose/ui/unit/LayoutDirection;

    .line 48
    .line 49
    invoke-interface {v6, v7, p2, v8}, Landroidx/compose/ui/b$b;->a(IILandroidx/compose/ui/unit/LayoutDirection;)I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    aput v6, v5, v4

    .line 54
    .line 55
    iget-object v5, p0, Landroidx/compose/foundation/lazy/n;->z:[I

    .line 56
    .line 57
    add-int/lit8 v4, v4, 0x1

    .line 58
    .line 59
    aput p1, v5, v4

    .line 60
    .line 61
    invoke-virtual {v3}, Landroidx/compose/ui/layout/g0;->l0()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    :goto_2
    add-int/2addr p1, v3

    .line 66
    goto :goto_3

    .line 67
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    const-string p2, "null horizontalAlignment when isVertical == true"

    .line 70
    .line 71
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1

    .line 75
    :cond_2
    iget-object v5, p0, Landroidx/compose/foundation/lazy/n;->z:[I

    .line 76
    .line 77
    aput p1, v5, v4

    .line 78
    .line 79
    add-int/lit8 v4, v4, 0x1

    .line 80
    .line 81
    iget-object v6, p0, Landroidx/compose/foundation/lazy/n;->e:Landroidx/compose/ui/b$c;

    .line 82
    .line 83
    if-eqz v6, :cond_3

    .line 84
    .line 85
    invoke-virtual {v3}, Landroidx/compose/ui/layout/g0;->l0()I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    invoke-interface {v6, v7, p3}, Landroidx/compose/ui/b$c;->a(II)I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    aput v6, v5, v4

    .line 94
    .line 95
    invoke-virtual {v3}, Landroidx/compose/ui/layout/g0;->u0()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    goto :goto_2

    .line 100
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 104
    .line 105
    const-string p2, "null verticalAlignment when isVertical == false"

    .line 106
    .line 107
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p1

    .line 111
    :cond_4
    iget p1, p0, Landroidx/compose/foundation/lazy/n;->h:I

    .line 112
    .line 113
    neg-int p1, p1

    .line 114
    iput p1, p0, Landroidx/compose/foundation/lazy/n;->x:I

    .line 115
    .line 116
    iget p1, p0, Landroidx/compose/foundation/lazy/n;->w:I

    .line 117
    .line 118
    iget p2, p0, Landroidx/compose/foundation/lazy/n;->i:I

    .line 119
    .line 120
    add-int/2addr p1, p2

    .line 121
    iput p1, p0, Landroidx/compose/foundation/lazy/n;->y:I

    .line 122
    .line 123
    return-void
.end method

.method public final s(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/compose/foundation/lazy/n;->w:I

    .line 2
    .line 3
    iget v0, p0, Landroidx/compose/foundation/lazy/n;->i:I

    .line 4
    .line 5
    add-int/2addr p1, v0

    .line 6
    iput p1, p0, Landroidx/compose/foundation/lazy/n;->y:I

    .line 7
    .line 8
    return-void
.end method
