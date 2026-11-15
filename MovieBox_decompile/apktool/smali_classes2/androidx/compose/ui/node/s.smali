.class public final Landroidx/compose/ui/node/s;
.super Landroidx/compose/ui/node/NodeCoordinator;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/s$a;,
        Landroidx/compose/ui/node/s$b;
    }
.end annotation


# static fields
.field public static final V:Landroidx/compose/ui/node/s$a;

.field private static final W:Landroidx/compose/ui/graphics/m4;


# instance fields
.field private final T:Landroidx/compose/ui/node/l1;

.field private U:Landroidx/compose/ui/node/j0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/ui/node/s$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/node/s$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/node/s;->V:Landroidx/compose/ui/node/s$a;

    .line 8
    .line 9
    invoke-static {}, Landroidx/compose/ui/graphics/t0;->a()Landroidx/compose/ui/graphics/m4;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/u1$a;->c()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/graphics/m4;->s(J)V

    .line 20
    .line 21
    .line 22
    const/high16 v1, 0x3f800000    # 1.0f

    .line 23
    .line 24
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->setStrokeWidth(F)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Landroidx/compose/ui/graphics/n4;->a:Landroidx/compose/ui/graphics/n4$a;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/n4$a;->b()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->C(I)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Landroidx/compose/ui/node/s;->W:Landroidx/compose/ui/graphics/m4;

    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/ui/node/l1;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/compose/ui/node/l1;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/ui/node/s;->T:Landroidx/compose/ui/node/l1;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/node/s;->P2()Landroidx/compose/ui/node/l1;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Landroidx/compose/ui/f$c;->B1(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->V()Landroidx/compose/ui/node/LayoutNode;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    new-instance p1, Landroidx/compose/ui/node/s$b;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Landroidx/compose/ui/node/s$b;-><init>(Landroidx/compose/ui/node/s;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    :goto_0
    iput-object p1, p0, Landroidx/compose/ui/node/s;->U:Landroidx/compose/ui/node/j0;

    .line 32
    .line 33
    return-void
.end method

.method private final Q2()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->j1()Z

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
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->r2()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->Z0()Landroidx/compose/ui/node/LayoutNode;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->X()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->n1()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public I0(Landroidx/compose/ui/layout/a;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/s;->T1()Landroidx/compose/ui/node/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->I0(Landroidx/compose/ui/layout/a;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->O1()Landroidx/compose/ui/node/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Landroidx/compose/ui/node/a;->z()Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/Integer;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/high16 p1, -0x80000000

    .line 34
    .line 35
    :goto_0
    return p1
.end method

.method public J1()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/s;->T1()Landroidx/compose/ui/node/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/ui/node/s$b;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroidx/compose/ui/node/s$b;-><init>(Landroidx/compose/ui/node/s;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/s;->R2(Landroidx/compose/ui/node/j0;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public P(J)Landroidx/compose/ui/layout/g0;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->P1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/node/s;->T1()Landroidx/compose/ui/node/j0;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/compose/ui/node/j0;->t1()J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->A1(Landroidx/compose/ui/node/NodeCoordinator;J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->Z0()Landroidx/compose/ui/node/LayoutNode;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->p0()Landroidx/compose/runtime/collection/b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-lez v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v2, 0x0

    .line 40
    :cond_1
    aget-object v3, v0, v2

    .line 41
    .line 42
    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    .line 43
    .line 44
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->X()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    sget-object v4, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->t1(Landroidx/compose/ui/node/LayoutNode$UsageByParent;)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    if-lt v2, v1, :cond_1

    .line 56
    .line 57
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->Z0()Landroidx/compose/ui/node/LayoutNode;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->Z()Landroidx/compose/ui/layout/t;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->Z0()Landroidx/compose/ui/node/LayoutNode;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->D()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-interface {v0, p0, v1, p1, p2}, Landroidx/compose/ui/layout/t;->c(Landroidx/compose/ui/layout/x;Ljava/util/List;J)Landroidx/compose/ui/layout/v;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->A2(Landroidx/compose/ui/layout/v;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->q2()V

    .line 81
    .line 82
    .line 83
    return-object p0
.end method

.method public P2()Landroidx/compose/ui/node/l1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/s;->T:Landroidx/compose/ui/node/l1;

    .line 2
    .line 3
    return-object v0
.end method

.method protected R2(Landroidx/compose/ui/node/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/node/s;->U:Landroidx/compose/ui/node/j0;

    .line 2
    .line 3
    return-void
.end method

.method public T1()Landroidx/compose/ui/node/j0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/s;->U:Landroidx/compose/ui/node/j0;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic X1()Landroidx/compose/ui/f$c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/s;->P2()Landroidx/compose/ui/node/l1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public h2(Landroidx/compose/ui/node/NodeCoordinator$d;JLandroidx/compose/ui/node/q;ZZ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-wide/from16 v8, p2

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->Z0()Landroidx/compose/ui/node/LayoutNode;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    move-object/from16 v10, p1

    .line 9
    .line 10
    invoke-interface {v10, v1}, Landroidx/compose/ui/node/NodeCoordinator$d;->d(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, v8, v9}, Landroidx/compose/ui/node/NodeCoordinator;->O2(J)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    move/from16 v11, p6

    .line 25
    .line 26
    :goto_0
    move v3, v2

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    if-eqz p5, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->U1()J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    invoke-virtual {p0, v8, v9, v4, v5}, Landroidx/compose/ui/node/NodeCoordinator;->F1(JJ)F

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_1

    .line 43
    .line 44
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    move v11, v3

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move/from16 v11, p6

    .line 53
    .line 54
    :goto_1
    if-eqz v3, :cond_6

    .line 55
    .line 56
    invoke-static/range {p4 .. p4}, Landroidx/compose/ui/node/q;->c(Landroidx/compose/ui/node/q;)I

    .line 57
    .line 58
    .line 59
    move-result v12

    .line 60
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->Z0()Landroidx/compose/ui/node/LayoutNode;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->o0()Landroidx/compose/runtime/collection/b;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->n()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-lez v3, :cond_4

    .line 73
    .line 74
    sub-int/2addr v3, v2

    .line 75
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v13

    .line 79
    move v14, v3

    .line 80
    :cond_2
    aget-object v1, v13, v14

    .line 81
    .line 82
    move-object v2, v1

    .line 83
    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    .line 84
    .line 85
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->n()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_5

    .line 90
    .line 91
    move-object/from16 v1, p1

    .line 92
    .line 93
    move-wide/from16 v3, p2

    .line 94
    .line 95
    move-object/from16 v5, p4

    .line 96
    .line 97
    move/from16 v6, p5

    .line 98
    .line 99
    move v7, v11

    .line 100
    invoke-interface/range {v1 .. v7}, Landroidx/compose/ui/node/NodeCoordinator$d;->c(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/q;ZZ)V

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/node/q;->p()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_3

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_3
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/node/q;->n()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_4

    .line 115
    .line 116
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/node/q;->a()V

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_4
    :goto_2
    move-object/from16 v1, p4

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_5
    :goto_3
    add-int/lit8 v14, v14, -0x1

    .line 124
    .line 125
    if-gez v14, :cond_2

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :goto_4
    invoke-static {v1, v12}, Landroidx/compose/ui/node/q;->f(Landroidx/compose/ui/node/q;I)V

    .line 129
    .line 130
    .line 131
    :cond_6
    return-void
.end method

.method public t2(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->Z0()Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroidx/compose/ui/node/f0;->b(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/y0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->Z0()Landroidx/compose/ui/node/LayoutNode;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->o0()Landroidx/compose/runtime/collection/b;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->n()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-lez v2, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v3, 0x0

    .line 28
    :cond_0
    aget-object v4, v1, v3

    .line 29
    .line 30
    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    .line 31
    .line 32
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->n()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    invoke-virtual {v4, p1, p2}, Landroidx/compose/ui/node/LayoutNode;->y(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    if-lt v3, v2, :cond_0

    .line 44
    .line 45
    :cond_2
    invoke-interface {v0}, Landroidx/compose/ui/node/y0;->getShowLayoutBounds()Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-eqz p2, :cond_3

    .line 50
    .line 51
    sget-object p2, Landroidx/compose/ui/node/s;->W:Landroidx/compose/ui/graphics/m4;

    .line 52
    .line 53
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->H1(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/m4;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    return-void
.end method

.method protected w0(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/NodeCoordinator;->w0(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/compose/ui/node/s;->Q2()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected y0(JFLkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/NodeCoordinator;->y0(JFLkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/compose/ui/node/s;->Q2()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
