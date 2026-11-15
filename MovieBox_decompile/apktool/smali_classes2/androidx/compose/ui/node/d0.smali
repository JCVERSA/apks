.class public final Landroidx/compose/ui/node/d0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lz/g;
.implements Lz/c;


# instance fields
.field private final a:Lz/a;

.field private b:Landroidx/compose/ui/node/n;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Landroidx/compose/ui/node/d0;-><init>(Lz/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lz/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    return-void
.end method

.method public synthetic constructor <init>(Lz/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 4
    new-instance p1, Lz/a;

    invoke-direct {p1}, Lz/a;-><init>()V

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/d0;-><init>(Lz/a;)V

    return-void
.end method


# virtual methods
.method public B0()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lz/a;->B0()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public C0(Landroidx/compose/ui/graphics/Path;JFLz/h;Landroidx/compose/ui/graphics/v1;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-wide v2, p2

    .line 5
    move v4, p4

    .line 6
    move-object v5, p5

    .line 7
    move-object v6, p6

    .line 8
    move v7, p7

    .line 9
    invoke-virtual/range {v0 .. v7}, Lz/a;->C0(Landroidx/compose/ui/graphics/Path;JFLz/h;Landroidx/compose/ui/graphics/v1;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public D0(F)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lz/a;->D0(F)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public F0(Ljava/util/List;IJFILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;I)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    .line 3
    .line 4
    move-object v2, p1

    .line 5
    move v3, p2

    .line 6
    move-wide v4, p3

    .line 7
    move/from16 v6, p5

    .line 8
    .line 9
    move/from16 v7, p6

    .line 10
    .line 11
    move-object/from16 v8, p7

    .line 12
    .line 13
    move/from16 v9, p8

    .line 14
    .line 15
    move-object/from16 v10, p9

    .line 16
    .line 17
    move/from16 v11, p10

    .line 18
    .line 19
    invoke-virtual/range {v1 .. v11}, Lz/a;->F0(Ljava/util/List;IJFILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public G0()Lz/d;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lz/a;->G0()Lz/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public H(F)J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lz/a;->H(F)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public J(J)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lz/a;->J(J)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public J0(JFJFLz/h;Landroidx/compose/ui/graphics/v1;I)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    .line 3
    .line 4
    move-wide v2, p1

    .line 5
    move v4, p3

    .line 6
    move-wide v5, p4

    .line 7
    move/from16 v7, p6

    .line 8
    .line 9
    move-object/from16 v8, p7

    .line 10
    .line 11
    move-object/from16 v9, p8

    .line 12
    .line 13
    move/from16 v10, p9

    .line 14
    .line 15
    invoke-virtual/range {v1 .. v10}, Lz/a;->J0(JFJFLz/h;Landroidx/compose/ui/graphics/v1;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public K0(JJJFLz/h;Landroidx/compose/ui/graphics/v1;I)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    .line 3
    .line 4
    move-wide v2, p1

    .line 5
    move-wide v4, p3

    .line 6
    move-wide/from16 v6, p5

    .line 7
    .line 8
    move/from16 v8, p7

    .line 9
    .line 10
    move-object/from16 v9, p8

    .line 11
    .line 12
    move-object/from16 v10, p9

    .line 13
    .line 14
    move/from16 v11, p10

    .line 15
    .line 16
    invoke-virtual/range {v1 .. v11}, Lz/a;->K0(JJJFLz/h;Landroidx/compose/ui/graphics/v1;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public M0(Landroidx/compose/ui/graphics/j1;JJFLz/h;Landroidx/compose/ui/graphics/v1;I)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    .line 3
    .line 4
    move-object v2, p1

    .line 5
    move-wide v3, p2

    .line 6
    move-wide v5, p4

    .line 7
    move/from16 v7, p6

    .line 8
    .line 9
    move-object/from16 v8, p7

    .line 10
    .line 11
    move-object/from16 v9, p8

    .line 12
    .line 13
    move/from16 v10, p9

    .line 14
    .line 15
    invoke-virtual/range {v1 .. v10}, Lz/a;->M0(Landroidx/compose/ui/graphics/j1;JJFLz/h;Landroidx/compose/ui/graphics/v1;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public N0()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lz/a;->N0()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public P0(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lz/a;->P0(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public Q(F)J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lz/a;->Q(F)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public T(JJJJLz/h;FLandroidx/compose/ui/graphics/v1;I)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    .line 3
    .line 4
    move-wide v2, p1

    .line 5
    move-wide/from16 v4, p3

    .line 6
    .line 7
    move-wide/from16 v6, p5

    .line 8
    .line 9
    move-wide/from16 v8, p7

    .line 10
    .line 11
    move-object/from16 v10, p9

    .line 12
    .line 13
    move/from16 v11, p10

    .line 14
    .line 15
    move-object/from16 v12, p11

    .line 16
    .line 17
    move/from16 v13, p12

    .line 18
    .line 19
    invoke-virtual/range {v1 .. v13}, Lz/a;->T(JJJJLz/h;FLandroidx/compose/ui/graphics/v1;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public T0(Landroidx/compose/ui/graphics/e4;JJJJFLz/h;Landroidx/compose/ui/graphics/v1;II)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    move-wide/from16 v3, p2

    .line 8
    .line 9
    move-wide/from16 v5, p4

    .line 10
    .line 11
    move-wide/from16 v7, p6

    .line 12
    .line 13
    move-wide/from16 v9, p8

    .line 14
    .line 15
    move/from16 v11, p10

    .line 16
    .line 17
    move-object/from16 v12, p11

    .line 18
    .line 19
    move-object/from16 v13, p12

    .line 20
    .line 21
    move/from16 v14, p13

    .line 22
    .line 23
    move/from16 v15, p14

    .line 24
    .line 25
    invoke-virtual/range {v1 .. v15}, Lz/a;->T0(Landroidx/compose/ui/graphics/e4;JJJJFLz/h;Landroidx/compose/ui/graphics/v1;II)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public U0(Landroidx/compose/ui/graphics/j1;JJJFLz/h;Landroidx/compose/ui/graphics/v1;I)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    .line 3
    .line 4
    move-object v2, p1

    .line 5
    move-wide v3, p2

    .line 6
    move-wide/from16 v5, p4

    .line 7
    .line 8
    move-wide/from16 v7, p6

    .line 9
    .line 10
    move/from16 v9, p8

    .line 11
    .line 12
    move-object/from16 v10, p9

    .line 13
    .line 14
    move-object/from16 v11, p10

    .line 15
    .line 16
    move/from16 v12, p11

    .line 17
    .line 18
    invoke-virtual/range {v1 .. v12}, Lz/a;->U0(Landroidx/compose/ui/graphics/j1;JJJFLz/h;Landroidx/compose/ui/graphics/v1;I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public X0()V
    .locals 10

    .line 1
    invoke-interface {p0}, Lz/g;->G0()Lz/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/compose/ui/node/d0;->b:Landroidx/compose/ui/node/n;

    .line 10
    .line 11
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Landroidx/compose/ui/node/e0;->a(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/f$c;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x4

    .line 19
    if-eqz v2, :cond_7

    .line 20
    .line 21
    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v3, 0x0

    .line 26
    move-object v4, v3

    .line 27
    :goto_0
    if-eqz v2, :cond_9

    .line 28
    .line 29
    instance-of v5, v2, Landroidx/compose/ui/node/n;

    .line 30
    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    check-cast v2, Landroidx/compose/ui/node/n;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/compose/ui/node/d0;->G0()Lz/d;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-interface {v5}, Lz/d;->g()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {p0, v2, v0, v5}, Landroidx/compose/ui/node/d0;->z(Landroidx/compose/ui/node/n;Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_0
    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->e1()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    and-int/2addr v5, v1

    .line 52
    if-eqz v5, :cond_6

    .line 53
    .line 54
    instance-of v5, v2, Landroidx/compose/ui/node/i;

    .line 55
    .line 56
    if-eqz v5, :cond_6

    .line 57
    .line 58
    move-object v5, v2

    .line 59
    check-cast v5, Landroidx/compose/ui/node/i;

    .line 60
    .line 61
    invoke-virtual {v5}, Landroidx/compose/ui/node/i;->D1()Landroidx/compose/ui/f$c;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    const/4 v6, 0x0

    .line 66
    move v7, v6

    .line 67
    :goto_1
    const/4 v8, 0x1

    .line 68
    if-eqz v5, :cond_5

    .line 69
    .line 70
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->e1()I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    and-int/2addr v9, v1

    .line 75
    if-eqz v9, :cond_4

    .line 76
    .line 77
    add-int/lit8 v7, v7, 0x1

    .line 78
    .line 79
    if-ne v7, v8, :cond_1

    .line 80
    .line 81
    move-object v2, v5

    .line 82
    goto :goto_2

    .line 83
    :cond_1
    if-nez v4, :cond_2

    .line 84
    .line 85
    new-instance v4, Landroidx/compose/runtime/collection/b;

    .line 86
    .line 87
    const/16 v8, 0x10

    .line 88
    .line 89
    new-array v8, v8, [Landroidx/compose/ui/f$c;

    .line 90
    .line 91
    invoke-direct {v4, v8, v6}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 92
    .line 93
    .line 94
    :cond_2
    if-eqz v2, :cond_3

    .line 95
    .line 96
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-object v2, v3

    .line 100
    :cond_3
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    :cond_4
    :goto_2
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    goto :goto_1

    .line 108
    :cond_5
    if-ne v7, v8, :cond_6

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_6
    :goto_3
    invoke-static {v4}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    goto :goto_0

    .line 116
    :cond_7
    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    invoke-static {v1, v2}, Landroidx/compose/ui/node/g;->h(Landroidx/compose/ui/node/f;I)Landroidx/compose/ui/node/NodeCoordinator;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeCoordinator;->X1()Landroidx/compose/ui/f$c;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-interface {v1}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    if-ne v3, v1, :cond_8

    .line 133
    .line 134
    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeCoordinator;->Y1()Landroidx/compose/ui/node/NodeCoordinator;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    :cond_8
    invoke-virtual {p0}, Landroidx/compose/ui/node/d0;->G0()Lz/d;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-interface {v1}, Lz/d;->g()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->t2(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 150
    .line 151
    .line 152
    :cond_9
    return-void
.end method

.method public c0(F)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lz/a;->c0(F)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getDensity()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lz/a;->getDensity()F

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
    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lz/a;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public h0(J)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lz/a;->h0(J)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public i()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lz/a;->i()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public i0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/j1;FLz/h;Landroidx/compose/ui/graphics/v1;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    move v6, p6

    .line 9
    invoke-virtual/range {v0 .. v6}, Lz/a;->i0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/j1;FLz/h;Landroidx/compose/ui/graphics/v1;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final n(Landroidx/compose/ui/graphics/m1;JLandroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/f$c;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 12

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x0

    .line 7
    move-object/from16 v2, p5

    .line 8
    .line 9
    move-object v3, v1

    .line 10
    :goto_0
    if-eqz v2, :cond_7

    .line 11
    .line 12
    instance-of v4, v2, Landroidx/compose/ui/node/n;

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    move-object v10, v2

    .line 17
    check-cast v10, Landroidx/compose/ui/node/n;

    .line 18
    .line 19
    move-object v5, p0

    .line 20
    move-object v6, p1

    .line 21
    move-wide v7, p2

    .line 22
    move-object/from16 v9, p4

    .line 23
    .line 24
    move-object/from16 v11, p6

    .line 25
    .line 26
    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/node/d0;->v(Landroidx/compose/ui/graphics/m1;JLandroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/node/n;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 27
    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_0
    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->e1()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    and-int/2addr v4, v0

    .line 35
    if-eqz v4, :cond_6

    .line 36
    .line 37
    instance-of v4, v2, Landroidx/compose/ui/node/i;

    .line 38
    .line 39
    if-eqz v4, :cond_6

    .line 40
    .line 41
    move-object v4, v2

    .line 42
    check-cast v4, Landroidx/compose/ui/node/i;

    .line 43
    .line 44
    invoke-virtual {v4}, Landroidx/compose/ui/node/i;->D1()Landroidx/compose/ui/f$c;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const/4 v5, 0x0

    .line 49
    move v6, v5

    .line 50
    :goto_1
    const/4 v7, 0x1

    .line 51
    if-eqz v4, :cond_5

    .line 52
    .line 53
    invoke-virtual {v4}, Landroidx/compose/ui/f$c;->e1()I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    and-int/2addr v8, v0

    .line 58
    if-eqz v8, :cond_4

    .line 59
    .line 60
    add-int/lit8 v6, v6, 0x1

    .line 61
    .line 62
    if-ne v6, v7, :cond_1

    .line 63
    .line 64
    move-object v2, v4

    .line 65
    goto :goto_2

    .line 66
    :cond_1
    if-nez v3, :cond_2

    .line 67
    .line 68
    new-instance v3, Landroidx/compose/runtime/collection/b;

    .line 69
    .line 70
    const/16 v7, 0x10

    .line 71
    .line 72
    new-array v7, v7, [Landroidx/compose/ui/f$c;

    .line 73
    .line 74
    invoke-direct {v3, v7, v5}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 75
    .line 76
    .line 77
    :cond_2
    if-eqz v2, :cond_3

    .line 78
    .line 79
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-object v2, v1

    .line 83
    :cond_3
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :cond_4
    :goto_2
    invoke-virtual {v4}, Landroidx/compose/ui/f$c;->a1()Landroidx/compose/ui/f$c;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    goto :goto_1

    .line 91
    :cond_5
    if-ne v6, v7, :cond_6

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_6
    :goto_3
    invoke-static {v3}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    goto :goto_0

    .line 99
    :cond_7
    return-void
.end method

.method public q0(JJJFILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;I)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    .line 3
    .line 4
    move-wide v2, p1

    .line 5
    move-wide/from16 v4, p3

    .line 6
    .line 7
    move-wide/from16 v6, p5

    .line 8
    .line 9
    move/from16 v8, p7

    .line 10
    .line 11
    move/from16 v9, p8

    .line 12
    .line 13
    move-object/from16 v10, p9

    .line 14
    .line 15
    move/from16 v11, p10

    .line 16
    .line 17
    move-object/from16 v12, p11

    .line 18
    .line 19
    move/from16 v13, p12

    .line 20
    .line 21
    invoke-virtual/range {v1 .. v13}, Lz/a;->q0(JJJFILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final v(Landroidx/compose/ui/graphics/m1;JLandroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/node/n;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 14

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v0, p5

    .line 3
    .line 4
    iget-object v2, v1, Landroidx/compose/ui/node/d0;->b:Landroidx/compose/ui/node/n;

    .line 5
    .line 6
    iput-object v0, v1, Landroidx/compose/ui/node/d0;->b:Landroidx/compose/ui/node/n;

    .line 7
    .line 8
    iget-object v3, v1, Landroidx/compose/ui/node/d0;->a:Lz/a;

    .line 9
    .line 10
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-interface {v3}, Lz/g;->G0()Lz/d;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    invoke-interface {v5}, Lz/d;->getDensity()Lo0/e;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-interface {v3}, Lz/g;->G0()Lz/d;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-interface {v6}, Lz/d;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-interface {v3}, Lz/g;->G0()Lz/d;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    invoke-interface {v7}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-interface {v3}, Lz/g;->G0()Lz/d;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    invoke-interface {v8}, Lz/d;->i()J

    .line 43
    .line 44
    .line 45
    move-result-wide v8

    .line 46
    invoke-interface {v3}, Lz/g;->G0()Lz/d;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    invoke-interface {v10}, Lz/d;->g()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    invoke-interface {v3}, Lz/g;->G0()Lz/d;

    .line 55
    .line 56
    .line 57
    move-result-object v11

    .line 58
    move-object/from16 v12, p4

    .line 59
    .line 60
    invoke-interface {v11, v12}, Lz/d;->b(Lo0/e;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v11, v4}, Lz/d;->a(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 64
    .line 65
    .line 66
    move-object v4, p1

    .line 67
    invoke-interface {v11, p1}, Lz/d;->h(Landroidx/compose/ui/graphics/m1;)V

    .line 68
    .line 69
    .line 70
    move-wide/from16 v12, p2

    .line 71
    .line 72
    invoke-interface {v11, v12, v13}, Lz/d;->f(J)V

    .line 73
    .line 74
    .line 75
    move-object/from16 v12, p6

    .line 76
    .line 77
    invoke-interface {v11, v12}, Lz/d;->d(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p1}, Landroidx/compose/ui/graphics/m1;->n()V

    .line 81
    .line 82
    .line 83
    :try_start_0
    invoke-interface {v0, p0}, Landroidx/compose/ui/node/n;->n(Lz/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    invoke-interface {p1}, Landroidx/compose/ui/graphics/m1;->j()V

    .line 87
    .line 88
    .line 89
    invoke-interface {v3}, Lz/g;->G0()Lz/d;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-interface {v0, v5}, Lz/d;->b(Lo0/e;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v0, v6}, Lz/d;->a(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v0, v7}, Lz/d;->h(Landroidx/compose/ui/graphics/m1;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v0, v8, v9}, Lz/d;->f(J)V

    .line 103
    .line 104
    .line 105
    invoke-interface {v0, v10}, Lz/d;->d(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 106
    .line 107
    .line 108
    iput-object v2, v1, Landroidx/compose/ui/node/d0;->b:Landroidx/compose/ui/node/n;

    .line 109
    .line 110
    return-void

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    move-object v2, v0

    .line 113
    invoke-interface {p1}, Landroidx/compose/ui/graphics/m1;->j()V

    .line 114
    .line 115
    .line 116
    invoke-interface {v3}, Lz/g;->G0()Lz/d;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-interface {v0, v5}, Lz/d;->b(Lo0/e;)V

    .line 121
    .line 122
    .line 123
    invoke-interface {v0, v6}, Lz/d;->a(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v0, v7}, Lz/d;->h(Landroidx/compose/ui/graphics/m1;)V

    .line 127
    .line 128
    .line 129
    invoke-interface {v0, v8, v9}, Lz/d;->f(J)V

    .line 130
    .line 131
    .line 132
    invoke-interface {v0, v10}, Lz/d;->d(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 133
    .line 134
    .line 135
    throw v2
.end method

.method public x0(F)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lz/a;->x0(F)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final z(Landroidx/compose/ui/node/n;Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 8

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    invoke-static {p1, v0}, Landroidx/compose/ui/node/g;->h(Landroidx/compose/ui/node/f;I)Landroidx/compose/ui/node/NodeCoordinator;

    .line 7
    .line 8
    .line 9
    move-result-object v5

    .line 10
    invoke-virtual {v5}, Landroidx/compose/ui/node/NodeCoordinator;->k()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-static {v0, v1}, Lo0/u;->d(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    invoke-virtual {v5}, Landroidx/compose/ui/node/NodeCoordinator;->Z0()Landroidx/compose/ui/node/LayoutNode;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->W()Landroidx/compose/ui/node/d0;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    move-object v2, p2

    .line 27
    move-object v6, p1

    .line 28
    move-object v7, p3

    .line 29
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/node/d0;->v(Landroidx/compose/ui/graphics/m1;JLandroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/node/n;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
