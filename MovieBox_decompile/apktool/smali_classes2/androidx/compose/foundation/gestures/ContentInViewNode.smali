.class public final Landroidx/compose/foundation/gestures/ContentInViewNode;
.super Landroidx/compose/ui/f$c;
.source "source.java"

# interfaces
.implements Landroidx/compose/foundation/relocation/d;
.implements Landroidx/compose/ui/node/w;
.implements Landroidx/compose/ui/node/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/gestures/ContentInViewNode$a;,
        Landroidx/compose/foundation/gestures/ContentInViewNode$b;
    }
.end annotation


# instance fields
.field private n:Landroidx/compose/foundation/gestures/Orientation;

.field private final o:Landroidx/compose/foundation/gestures/ScrollingLogic;

.field private p:Z

.field private q:Landroidx/compose/foundation/gestures/d;

.field private final r:Z

.field private final s:Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

.field private t:Landroidx/compose/ui/layout/l;

.field private u:Ly/i;

.field private v:Z

.field private w:J

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollingLogic;ZLandroidx/compose/foundation/gestures/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->n:Landroidx/compose/foundation/gestures/Orientation;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->o:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 7
    .line 8
    iput-boolean p3, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->p:Z

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->q:Landroidx/compose/foundation/gestures/d;

    .line 11
    .line 12
    new-instance p1, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    .line 13
    .line 14
    invoke-direct {p1}, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->s:Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    .line 18
    .line 19
    sget-object p1, Lo0/t;->b:Lo0/t$a;

    .line 20
    .line 21
    invoke-virtual {p1}, Lo0/t$a;->a()J

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    iput-wide p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->w:J

    .line 26
    .line 27
    return-void
.end method

.method public static final synthetic C1(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/d;)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/foundation/gestures/ContentInViewNode;->M1(Landroidx/compose/foundation/gestures/d;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic D1(Landroidx/compose/foundation/gestures/ContentInViewNode;)Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->s:Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic E1(Landroidx/compose/foundation/gestures/ContentInViewNode;)Ly/i;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->R1()Ly/i;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic F1(Landroidx/compose/foundation/gestures/ContentInViewNode;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->p:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic G1(Landroidx/compose/foundation/gestures/ContentInViewNode;)Landroidx/compose/foundation/gestures/ScrollingLogic;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->o:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic H1(Landroidx/compose/foundation/gestures/ContentInViewNode;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->v:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic I1(Landroidx/compose/foundation/gestures/ContentInViewNode;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->x:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic J1(Landroidx/compose/foundation/gestures/ContentInViewNode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->V1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic K1(Landroidx/compose/foundation/gestures/ContentInViewNode;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->x:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic L1(Landroidx/compose/foundation/gestures/ContentInViewNode;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->v:Z

    .line 2
    .line 3
    return-void
.end method

.method private final M1(Landroidx/compose/foundation/gestures/d;)F
    .locals 5

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->w:J

    .line 2
    .line 3
    sget-object v2, Lo0/t;->b:Lo0/t$a;

    .line 4
    .line 5
    invoke-virtual {v2}, Lo0/t$a;->a()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-static {v0, v1, v2, v3}, Lo0/t;->e(JJ)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->Q1()Ly/i;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->v:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->R1()Ly/i;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    :goto_0
    if-nez v0, :cond_2

    .line 34
    .line 35
    return v1

    .line 36
    :cond_2
    iget-wide v1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->w:J

    .line 37
    .line 38
    invoke-static {v1, v2}, Lo0/u;->d(J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    iget-object v3, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->n:Landroidx/compose/foundation/gestures/Orientation;

    .line 43
    .line 44
    sget-object v4, Landroidx/compose/foundation/gestures/ContentInViewNode$b;->a:[I

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    aget v3, v4, v3

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    if-eq v3, v4, :cond_4

    .line 54
    .line 55
    const/4 v4, 0x2

    .line 56
    if-ne v3, v4, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0}, Ly/i;->f()F

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    invoke-virtual {v0}, Ly/i;->g()F

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-virtual {v0}, Ly/i;->f()F

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    sub-float/2addr v4, v0

    .line 71
    invoke-static {v1, v2}, Ly/m;->i(J)F

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-interface {p1, v3, v4, v0}, Landroidx/compose/foundation/gestures/d;->a(FFF)F

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 81
    .line 82
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :cond_4
    invoke-virtual {v0}, Ly/i;->i()F

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-virtual {v0}, Ly/i;->c()F

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    invoke-virtual {v0}, Ly/i;->i()F

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    sub-float/2addr v4, v0

    .line 99
    invoke-static {v1, v2}, Ly/m;->g(J)F

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-interface {p1, v3, v4, v0}, Landroidx/compose/foundation/gestures/d;->a(FFF)F

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    :goto_1
    return p1
.end method

.method private final N1(JJ)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->n:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/foundation/gestures/ContentInViewNode$b;->a:[I

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    aget v0, v1, v0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    invoke-static {p1, p2}, Lo0/t;->g(J)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p3, p4}, Lo0/t;->g(J)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->j(II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 31
    .line 32
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    invoke-static {p1, p2}, Lo0/t;->f(J)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-static {p3, p4}, Lo0/t;->f(J)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->j(II)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    :goto_0
    return p1
.end method

.method private final O1(JJ)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->n:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/foundation/gestures/ContentInViewNode$b;->a:[I

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    aget v0, v1, v0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    invoke-static {p1, p2}, Ly/m;->i(J)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p3, p4}, Ly/m;->i(J)F

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 31
    .line 32
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    invoke-static {p1, p2}, Ly/m;->g(J)F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-static {p3, p4}, Ly/m;->g(J)F

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    :goto_0
    return p1
.end method

.method private final P1(Ly/i;J)Ly/i;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ContentInViewNode;->X1(Ly/i;J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    invoke-static {p2, p3}, Ly/g;->u(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide p2

    .line 9
    invoke-virtual {p1, p2, p3}, Ly/i;->q(J)Ly/i;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method private final Q1()Ly/i;
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->s:Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->a(Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;)Landroidx/compose/runtime/collection/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-lez v1, :cond_4

    .line 13
    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    aget-object v3, v0, v1

    .line 21
    .line 22
    check-cast v3, Landroidx/compose/foundation/gestures/ContentInViewNode$a;

    .line 23
    .line 24
    invoke-virtual {v3}, Landroidx/compose/foundation/gestures/ContentInViewNode$a;->b()Lkotlin/jvm/functions/Function0;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ly/i;

    .line 33
    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    invoke-virtual {v3}, Ly/i;->h()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    iget-wide v6, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->w:J

    .line 41
    .line 42
    invoke-static {v6, v7}, Lo0/u;->d(J)J

    .line 43
    .line 44
    .line 45
    move-result-wide v6

    .line 46
    invoke-direct {p0, v4, v5, v6, v7}, Landroidx/compose/foundation/gestures/ContentInViewNode;->O1(JJ)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-gtz v4, :cond_1

    .line 51
    .line 52
    move-object v2, v3

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    if-nez v2, :cond_2

    .line 55
    .line 56
    move-object v2, v3

    .line 57
    :cond_2
    return-object v2

    .line 58
    :cond_3
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 59
    .line 60
    if-gez v1, :cond_0

    .line 61
    .line 62
    :cond_4
    return-object v2
.end method

.method private final R1()Ly/i;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->j1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/g;->k(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/layout/l;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->t:Landroidx/compose/ui/layout/l;

    .line 14
    .line 15
    if-eqz v2, :cond_3

    .line 16
    .line 17
    invoke-interface {v2}, Landroidx/compose/ui/layout/l;->F()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object v2, v1

    .line 25
    :goto_0
    if-nez v2, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    const/4 v1, 0x0

    .line 29
    invoke-interface {v0, v2, v1}, Landroidx/compose/ui/layout/l;->O(Landroidx/compose/ui/layout/l;Z)Ly/i;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0

    .line 34
    :cond_3
    :goto_1
    return-object v1
.end method

.method private final T1(Ly/i;J)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ContentInViewNode;->X1(Ly/i;J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    invoke-static {p1, p2}, Ly/g;->m(J)F

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    const/high16 v0, 0x3f000000    # 0.5f

    .line 14
    .line 15
    cmpg-float p3, p3, v0

    .line 16
    .line 17
    if-gtz p3, :cond_0

    .line 18
    .line 19
    invoke-static {p1, p2}, Ly/g;->n(J)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    cmpg-float p1, p1, v0

    .line 28
    .line 29
    if-gtz p1, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    :goto_0
    return p1
.end method

.method static synthetic U1(Landroidx/compose/foundation/gestures/ContentInViewNode;Ly/i;JILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-wide p2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->w:J

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ContentInViewNode;->T1(Ly/i;J)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private final V1()V
    .locals 9

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->Y1()Landroidx/compose/foundation/gestures/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->x:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    .line 10
    .line 11
    invoke-interface {v0}, Landroidx/compose/foundation/gestures/d;->b()Landroidx/compose/animation/core/g;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v1, v2}, Landroidx/compose/foundation/gestures/UpdatableAnimationState;-><init>(Landroidx/compose/animation/core/g;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->c1()Lkotlinx/coroutines/n0;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    sget-object v5, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 23
    .line 24
    new-instance v6, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v6, p0, v1, v0, v2}, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;-><init>(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/UpdatableAnimationState;Landroidx/compose/foundation/gestures/d;Lkotlin/coroutines/Continuation;)V

    .line 28
    .line 29
    .line 30
    const/4 v7, 0x1

    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string v1, "launchAnimation called when previous animation was running"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method private final X1(Ly/i;J)J
    .locals 4

    .line 1
    invoke-static {p2, p3}, Lo0/u;->d(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->n:Landroidx/compose/foundation/gestures/Orientation;

    .line 6
    .line 7
    sget-object v1, Landroidx/compose/foundation/gestures/ContentInViewNode$b;->a:[I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    aget v0, v1, v0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->Y1()Landroidx/compose/foundation/gestures/d;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1}, Ly/i;->f()F

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p1}, Ly/i;->g()F

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {p1}, Ly/i;->f()F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    sub-float/2addr v3, p1

    .line 39
    invoke-static {p2, p3}, Ly/m;->i(J)F

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-interface {v0, v1, v3, p1}, Landroidx/compose/foundation/gestures/d;->a(FFF)F

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-static {p1, v2}, Ly/h;->a(FF)J

    .line 48
    .line 49
    .line 50
    move-result-wide p1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 53
    .line 54
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_1
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->Y1()Landroidx/compose/foundation/gestures/d;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1}, Ly/i;->i()F

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {p1}, Ly/i;->c()F

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-virtual {p1}, Ly/i;->i()F

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    sub-float/2addr v3, p1

    .line 75
    invoke-static {p2, p3}, Ly/m;->g(J)F

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-interface {v0, v1, v3, p1}, Landroidx/compose/foundation/gestures/d;->a(FFF)F

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-static {v2, p1}, Ly/h;->a(FF)J

    .line 84
    .line 85
    .line 86
    move-result-wide p1

    .line 87
    :goto_0
    return-wide p1
.end method

.method private final Y1()Landroidx/compose/foundation/gestures/d;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->q:Landroidx/compose/foundation/gestures/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->a()Landroidx/compose/runtime/s1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0, v0}, Landroidx/compose/ui/node/e;->a(Landroidx/compose/ui/node/d;Landroidx/compose/runtime/q;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/compose/foundation/gestures/d;

    .line 14
    .line 15
    :cond_0
    return-object v0
.end method


# virtual methods
.method public E0(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move-object v2, v0

    .line 6
    check-cast v2, Ly/i;

    .line 7
    .line 8
    if-eqz v2, :cond_3

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    move-object v1, p0

    .line 15
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/gestures/ContentInViewNode;->U1(Landroidx/compose/foundation/gestures/ContentInViewNode;Ly/i;JILjava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_3

    .line 20
    .line 21
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 22
    .line 23
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->c(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 32
    .line 33
    .line 34
    new-instance v1, Landroidx/compose/foundation/gestures/ContentInViewNode$a;

    .line 35
    .line 36
    invoke-direct {v1, p1, v0}, Landroidx/compose/foundation/gestures/ContentInViewNode$a;-><init>(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/n;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->D1(Landroidx/compose/foundation/gestures/ContentInViewNode;)Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1, v1}, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->c(Landroidx/compose/foundation/gestures/ContentInViewNode$a;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    invoke-static {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->I1(Landroidx/compose/foundation/gestures/ContentInViewNode;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_0

    .line 54
    .line 55
    invoke-static {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->J1(Landroidx/compose/foundation/gestures/ContentInViewNode;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-ne p1, v0, :cond_1

    .line 67
    .line 68
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->c(Lkotlin/coroutines/Continuation;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    if-ne p1, p2, :cond_2

    .line 76
    .line 77
    return-object p1

    .line 78
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 79
    .line 80
    return-object p1

    .line 81
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 82
    .line 83
    return-object p1
.end method

.method public F(J)V
    .locals 5

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->w:J

    .line 2
    .line 3
    iput-wide p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->w:J

    .line 4
    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode;->N1(JJ)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ltz v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->R1()Ly/i;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->u:Ly/i;

    .line 19
    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    move-object v3, v2

    .line 23
    :cond_1
    iget-boolean v4, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->x:Z

    .line 24
    .line 25
    if-nez v4, :cond_2

    .line 26
    .line 27
    iget-boolean v4, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->v:Z

    .line 28
    .line 29
    if-nez v4, :cond_2

    .line 30
    .line 31
    invoke-direct {p0, v3, v0, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode;->T1(Ly/i;J)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-direct {p0, v2, p1, p2}, Landroidx/compose/foundation/gestures/ContentInViewNode;->T1(Ly/i;J)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->v:Z

    .line 45
    .line 46
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/ContentInViewNode;->V1()V

    .line 47
    .line 48
    .line 49
    :cond_2
    iput-object v2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->u:Ly/i;

    .line 50
    .line 51
    :cond_3
    return-void
.end method

.method public synthetic I(Landroidx/compose/ui/layout/l;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/node/v;->a(Landroidx/compose/ui/node/w;Landroidx/compose/ui/layout/l;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final S1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final W1(Landroidx/compose/ui/layout/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->t:Landroidx/compose/ui/layout/l;

    .line 2
    .line 3
    return-void
.end method

.method public Y(Ly/i;)Ly/i;
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->w:J

    .line 2
    .line 3
    sget-object v2, Lo0/t;->b:Lo0/t$a;

    .line 4
    .line 5
    invoke-virtual {v2}, Lo0/t$a;->a()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-static {v0, v1, v2, v3}, Lo0/t;->e(JJ)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->w:J

    .line 16
    .line 17
    invoke-direct {p0, p1, v0, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode;->P1(Ly/i;J)Ly/i;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "Expected BringIntoViewRequester to not be used before parents are placed."

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public final Z1(Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/gestures/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->n:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    iput-boolean p2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->p:Z

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->q:Landroidx/compose/foundation/gestures/d;

    .line 6
    .line 7
    return-void
.end method

.method public h1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->r:Z

    .line 2
    .line 3
    return v0
.end method
