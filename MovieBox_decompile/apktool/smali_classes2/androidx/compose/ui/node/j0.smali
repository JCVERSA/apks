.class public abstract Landroidx/compose/ui/node/j0;
.super Landroidx/compose/ui/node/LookaheadCapablePlaceable;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/layout/s;


# instance fields
.field private final p:Landroidx/compose/ui/node/NodeCoordinator;

.field private q:J

.field private r:Ljava/util/Map;

.field private final s:Landroidx/compose/ui/layout/q;

.field private t:Landroidx/compose/ui/layout/v;

.field private final u:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/node/j0;->p:Landroidx/compose/ui/node/NodeCoordinator;

    .line 5
    .line 6
    sget-object p1, Lo0/p;->b:Lo0/p$a;

    .line 7
    .line 8
    invoke-virtual {p1}, Lo0/p$a;->a()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Landroidx/compose/ui/node/j0;->q:J

    .line 13
    .line 14
    new-instance p1, Landroidx/compose/ui/layout/q;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Landroidx/compose/ui/layout/q;-><init>(Landroidx/compose/ui/node/j0;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/compose/ui/node/j0;->s:Landroidx/compose/ui/layout/q;

    .line 20
    .line 21
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Landroidx/compose/ui/node/j0;->u:Ljava/util/Map;

    .line 27
    .line 28
    return-void
.end method

.method private final B1(Landroidx/compose/ui/layout/v;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Landroidx/compose/ui/layout/v;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-interface {p1}, Landroidx/compose/ui/layout/v;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v0, v1}, Lo0/u;->a(II)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/layout/g0;->A0(J)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    if-nez v0, :cond_1

    .line 23
    .line 24
    sget-object v0, Lo0/t;->b:Lo0/t$a;

    .line 25
    .line 26
    invoke-virtual {v0}, Lo0/t$a;->a()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/layout/g0;->A0(J)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/j0;->t:Landroidx/compose/ui/layout/v;

    .line 34
    .line 35
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_5

    .line 40
    .line 41
    if-eqz p1, :cond_5

    .line 42
    .line 43
    iget-object v0, p0, Landroidx/compose/ui/node/j0;->r:Ljava/util/Map;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    :cond_2
    invoke-interface {p1}, Landroidx/compose/ui/layout/v;->v()Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_5

    .line 62
    .line 63
    :cond_3
    invoke-interface {p1}, Landroidx/compose/ui/layout/v;->v()Ljava/util/Map;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v1, p0, Landroidx/compose/ui/node/j0;->r:Ljava/util/Map;

    .line 68
    .line 69
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_5

    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/compose/ui/node/j0;->q1()Landroidx/compose/ui/node/a;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {v0}, Landroidx/compose/ui/node/a;->v()Landroidx/compose/ui/node/AlignmentLines;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroidx/compose/ui/node/AlignmentLines;->m()V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Landroidx/compose/ui/node/j0;->r:Ljava/util/Map;

    .line 87
    .line 88
    if-nez v0, :cond_4

    .line 89
    .line 90
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Landroidx/compose/ui/node/j0;->r:Ljava/util/Map;

    .line 96
    .line 97
    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 98
    .line 99
    .line 100
    invoke-interface {p1}, Landroidx/compose/ui/layout/v;->v()Ljava/util/Map;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 105
    .line 106
    .line 107
    :cond_5
    iput-object p1, p0, Landroidx/compose/ui/node/j0;->t:Landroidx/compose/ui/layout/v;

    .line 108
    .line 109
    return-void
.end method

.method public static final synthetic o1(Landroidx/compose/ui/node/j0;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/layout/g0;->E0(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic p1(Landroidx/compose/ui/node/j0;Landroidx/compose/ui/layout/v;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/j0;->B1(Landroidx/compose/ui/layout/v;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final x1(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/j0;->d1()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1, p1, p2}, Lo0/p;->g(JJ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/j0;->A1(J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/node/j0;->Z0()Landroidx/compose/ui/node/LayoutNode;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->P()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->H()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;->e1()V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/node/j0;->p:Landroidx/compose/ui/node/NodeCoordinator;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->f1(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->i1()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/compose/ui/node/j0;->a1()Landroidx/compose/ui/layout/v;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->Q0(Landroidx/compose/ui/layout/v;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void
.end method


# virtual methods
.method public A1(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/ui/node/j0;->q:J

    .line 2
    .line 3
    return-void
.end method

.method public B0()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/j0;->p:Landroidx/compose/ui/node/NodeCoordinator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->B0()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public G()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/j0;->p:Landroidx/compose/ui/node/NodeCoordinator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->G()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public V0()Landroidx/compose/ui/node/LookaheadCapablePlaceable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/j0;->p:Landroidx/compose/ui/node/NodeCoordinator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->Y1()Landroidx/compose/ui/node/NodeCoordinator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->T1()Landroidx/compose/ui/node/j0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method

.method public W()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public W0()Landroidx/compose/ui/layout/l;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/j0;->s:Landroidx/compose/ui/layout/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public Y0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/j0;->t:Landroidx/compose/ui/layout/v;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public Z0()Landroidx/compose/ui/node/LayoutNode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/j0;->p:Landroidx/compose/ui/node/NodeCoordinator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->Z0()Landroidx/compose/ui/node/LayoutNode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public a1()Landroidx/compose/ui/layout/v;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/j0;->t:Landroidx/compose/ui/layout/v;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "LookaheadDelegate has not been measured yet when measureResult is requested."

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public b1()Landroidx/compose/ui/node/LookaheadCapablePlaceable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/j0;->p:Landroidx/compose/ui/node/NodeCoordinator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->Z1()Landroidx/compose/ui/node/NodeCoordinator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->T1()Landroidx/compose/ui/node/j0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method

.method public d1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/node/j0;->q:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDensity()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/j0;->p:Landroidx/compose/ui/node/NodeCoordinator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getDensity()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/j0;->p:Landroidx/compose/ui/node/NodeCoordinator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public l1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/j0;->d1()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/compose/ui/node/j0;->y0(JFLkotlin/jvm/functions/Function1;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public q1()Landroidx/compose/ui/node/a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/j0;->p:Landroidx/compose/ui/node/NodeCoordinator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->Z0()Landroidx/compose/ui/node/LayoutNode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->P()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->C()Landroidx/compose/ui/node/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final r1(Landroidx/compose/ui/layout/a;)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/j0;->u:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/high16 p1, -0x80000000

    .line 17
    .line 18
    :goto_0
    return p1
.end method

.method protected final s1()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/j0;->u:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t1()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/layout/g0;->t0()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final u1()Landroidx/compose/ui/node/NodeCoordinator;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/j0;->p:Landroidx/compose/ui/node/NodeCoordinator;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v1()Landroidx/compose/ui/layout/q;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/j0;->s:Landroidx/compose/ui/layout/q;

    .line 2
    .line 3
    return-object v0
.end method

.method protected w1()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/j0;->a1()Landroidx/compose/ui/layout/v;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroidx/compose/ui/layout/v;->w()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected final y0(JFLkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/j0;->x1(J)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->j1()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/j0;->w1()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final y1(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/layout/g0;->k0()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p1, p2, v0, v1}, Lo0/p;->l(JJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/j0;->x1(J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final z1(Landroidx/compose/ui/node/j0;Z)J
    .locals 5

    .line 1
    sget-object v0, Lo0/p;->b:Lo0/p$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo0/p$a;->a()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    move-object v2, p0

    .line 8
    :goto_0
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-nez v3, :cond_2

    .line 13
    .line 14
    invoke-virtual {v2}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->h1()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    if-nez p2, :cond_1

    .line 21
    .line 22
    :cond_0
    invoke-virtual {v2}, Landroidx/compose/ui/node/j0;->d1()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    invoke-static {v0, v1, v3, v4}, Lo0/p;->l(JJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    :cond_1
    iget-object v2, v2, Landroidx/compose/ui/node/j0;->p:Landroidx/compose/ui/node/NodeCoordinator;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeCoordinator;->Z1()Landroidx/compose/ui/node/NodeCoordinator;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeCoordinator;->T1()Landroidx/compose/ui/node/j0;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    return-wide v0
.end method
