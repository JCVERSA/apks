.class public final Landroidx/compose/material/ripple/CommonRippleNode;
.super Landroidx/compose/material/ripple/RippleNode;
.source "source.java"


# instance fields
.field private final y:Landroidx/collection/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>(Lp/g;ZFLandroidx/compose/ui/graphics/x1;Lkotlin/jvm/functions/Function0;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/ripple/RippleNode;-><init>(Lp/g;ZFLandroidx/compose/ui/graphics/x1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    new-instance p1, Landroidx/collection/n0;

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-direct {p1, p4, p2, p3}, Landroidx/collection/n0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/material/ripple/CommonRippleNode;->y:Landroidx/collection/n0;

    return-void
.end method

.method public synthetic constructor <init>(Lp/g;ZFLandroidx/compose/ui/graphics/x1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/compose/material/ripple/CommonRippleNode;-><init>(Lp/g;ZFLandroidx/compose/ui/graphics/x1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic Q1(Landroidx/compose/material/ripple/CommonRippleNode;)Landroidx/collection/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/material/ripple/CommonRippleNode;->y:Landroidx/collection/n0;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public H1(Lp/k$b;JF)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/compose/material/ripple/CommonRippleNode;->y:Landroidx/collection/n0;

    .line 6
    .line 7
    iget-object v3, v2, Landroidx/collection/u0;->b:[Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v2, Landroidx/collection/u0;->c:[Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v2, v2, Landroidx/collection/u0;->a:[J

    .line 12
    .line 13
    array-length v5, v2

    .line 14
    add-int/lit8 v5, v5, -0x2

    .line 15
    .line 16
    if-ltz v5, :cond_3

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    move v7, v6

    .line 20
    :goto_0
    aget-wide v8, v2, v7

    .line 21
    .line 22
    not-long v10, v8

    .line 23
    const/4 v12, 0x7

    .line 24
    shl-long/2addr v10, v12

    .line 25
    and-long/2addr v10, v8

    .line 26
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    and-long/2addr v10, v12

    .line 32
    cmp-long v10, v10, v12

    .line 33
    .line 34
    if-eqz v10, :cond_2

    .line 35
    .line 36
    sub-int v10, v7, v5

    .line 37
    .line 38
    not-int v10, v10

    .line 39
    ushr-int/lit8 v10, v10, 0x1f

    .line 40
    .line 41
    const/16 v11, 0x8

    .line 42
    .line 43
    rsub-int/lit8 v10, v10, 0x8

    .line 44
    .line 45
    move v12, v6

    .line 46
    :goto_1
    if-ge v12, v10, :cond_1

    .line 47
    .line 48
    const-wide/16 v13, 0xff

    .line 49
    .line 50
    and-long/2addr v13, v8

    .line 51
    const-wide/16 v15, 0x80

    .line 52
    .line 53
    cmp-long v13, v13, v15

    .line 54
    .line 55
    if-gez v13, :cond_0

    .line 56
    .line 57
    shl-int/lit8 v13, v7, 0x3

    .line 58
    .line 59
    add-int/2addr v13, v12

    .line 60
    aget-object v14, v3, v13

    .line 61
    .line 62
    aget-object v13, v4, v13

    .line 63
    .line 64
    check-cast v13, Landroidx/compose/material/ripple/RippleAnimation;

    .line 65
    .line 66
    check-cast v14, Lp/k$b;

    .line 67
    .line 68
    invoke-virtual {v13}, Landroidx/compose/material/ripple/RippleAnimation;->h()V

    .line 69
    .line 70
    .line 71
    :cond_0
    shr-long/2addr v8, v11

    .line 72
    add-int/lit8 v12, v12, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    if-ne v10, v11, :cond_3

    .line 76
    .line 77
    :cond_2
    if-eq v7, v5, :cond_3

    .line 78
    .line 79
    add-int/lit8 v7, v7, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material/ripple/RippleNode;->J1()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    const/4 v3, 0x0

    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    invoke-virtual/range {p1 .. p1}, Lp/k$b;->a()J

    .line 90
    .line 91
    .line 92
    move-result-wide v4

    .line 93
    invoke-static {v4, v5}, Ly/g;->d(J)Ly/g;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    goto :goto_2

    .line 98
    :cond_4
    move-object v2, v3

    .line 99
    :goto_2
    new-instance v4, Landroidx/compose/material/ripple/RippleAnimation;

    .line 100
    .line 101
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material/ripple/RippleNode;->J1()Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    move/from16 v6, p4

    .line 106
    .line 107
    invoke-direct {v4, v2, v6, v5, v3}, Landroidx/compose/material/ripple/RippleAnimation;-><init>(Ly/g;FZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 108
    .line 109
    .line 110
    iget-object v2, v0, Landroidx/compose/material/ripple/CommonRippleNode;->y:Landroidx/collection/n0;

    .line 111
    .line 112
    invoke-virtual {v2, v1, v4}, Landroidx/collection/n0;->r(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/f$c;->c1()Lkotlinx/coroutines/n0;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    new-instance v8, Landroidx/compose/material/ripple/CommonRippleNode$addRipple$2;

    .line 120
    .line 121
    invoke-direct {v8, v4, v0, v1, v3}, Landroidx/compose/material/ripple/CommonRippleNode$addRipple$2;-><init>(Landroidx/compose/material/ripple/RippleAnimation;Landroidx/compose/material/ripple/CommonRippleNode;Lp/k$b;Lkotlin/coroutines/Continuation;)V

    .line 122
    .line 123
    .line 124
    const/4 v9, 0x3

    .line 125
    const/4 v10, 0x0

    .line 126
    const/4 v6, 0x0

    .line 127
    const/4 v7, 0x0

    .line 128
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 129
    .line 130
    .line 131
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/node/o;->a(Landroidx/compose/ui/node/n;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public I1(Lz/g;)V
    .locals 23

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material/ripple/RippleNode;->K1()Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/compose/material/ripple/c;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/material/ripple/c;->d()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    cmpg-float v1, v0, v1

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    move-object/from16 v9, p0

    .line 21
    .line 22
    goto/16 :goto_4

    .line 23
    .line 24
    :cond_0
    move-object/from16 v9, p0

    .line 25
    .line 26
    iget-object v1, v9, Landroidx/compose/material/ripple/CommonRippleNode;->y:Landroidx/collection/n0;

    .line 27
    .line 28
    iget-object v10, v1, Landroidx/collection/u0;->b:[Ljava/lang/Object;

    .line 29
    .line 30
    iget-object v11, v1, Landroidx/collection/u0;->c:[Ljava/lang/Object;

    .line 31
    .line 32
    iget-object v12, v1, Landroidx/collection/u0;->a:[J

    .line 33
    .line 34
    array-length v1, v12

    .line 35
    add-int/lit8 v13, v1, -0x2

    .line 36
    .line 37
    if-ltz v13, :cond_4

    .line 38
    .line 39
    const/4 v15, 0x0

    .line 40
    :goto_0
    aget-wide v1, v12, v15

    .line 41
    .line 42
    not-long v3, v1

    .line 43
    const/4 v5, 0x7

    .line 44
    shl-long/2addr v3, v5

    .line 45
    and-long/2addr v3, v1

    .line 46
    const-wide v5, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    and-long/2addr v3, v5

    .line 52
    cmp-long v3, v3, v5

    .line 53
    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    sub-int v3, v15, v13

    .line 57
    .line 58
    not-int v3, v3

    .line 59
    ushr-int/lit8 v3, v3, 0x1f

    .line 60
    .line 61
    const/16 v8, 0x8

    .line 62
    .line 63
    rsub-int/lit8 v7, v3, 0x8

    .line 64
    .line 65
    move-wide/from16 v16, v1

    .line 66
    .line 67
    const/4 v6, 0x0

    .line 68
    :goto_1
    if-ge v6, v7, :cond_2

    .line 69
    .line 70
    const-wide/16 v1, 0xff

    .line 71
    .line 72
    and-long v1, v16, v1

    .line 73
    .line 74
    const-wide/16 v3, 0x80

    .line 75
    .line 76
    cmp-long v1, v1, v3

    .line 77
    .line 78
    if-gez v1, :cond_1

    .line 79
    .line 80
    shl-int/lit8 v1, v15, 0x3

    .line 81
    .line 82
    add-int/2addr v1, v6

    .line 83
    aget-object v2, v10, v1

    .line 84
    .line 85
    aget-object v1, v11, v1

    .line 86
    .line 87
    move-object v5, v1

    .line 88
    check-cast v5, Landroidx/compose/material/ripple/RippleAnimation;

    .line 89
    .line 90
    check-cast v2, Lp/k$b;

    .line 91
    .line 92
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material/ripple/RippleNode;->L1()J

    .line 93
    .line 94
    .line 95
    move-result-wide v1

    .line 96
    const/16 v18, 0xe

    .line 97
    .line 98
    const/16 v19, 0x0

    .line 99
    .line 100
    const/4 v4, 0x0

    .line 101
    const/16 v20, 0x0

    .line 102
    .line 103
    const/16 v21, 0x0

    .line 104
    .line 105
    move v3, v0

    .line 106
    move-object v14, v5

    .line 107
    move/from16 v5, v20

    .line 108
    .line 109
    move/from16 v20, v6

    .line 110
    .line 111
    move/from16 v6, v21

    .line 112
    .line 113
    move/from16 v22, v7

    .line 114
    .line 115
    move/from16 v7, v18

    .line 116
    .line 117
    move/from16 v18, v0

    .line 118
    .line 119
    move v0, v8

    .line 120
    move-object/from16 v8, v19

    .line 121
    .line 122
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/u1;->k(JFFFFILjava/lang/Object;)J

    .line 123
    .line 124
    .line 125
    move-result-wide v1

    .line 126
    move-object/from16 v3, p1

    .line 127
    .line 128
    invoke-virtual {v14, v3, v1, v2}, Landroidx/compose/material/ripple/RippleAnimation;->e(Lz/g;J)V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_1
    move-object/from16 v3, p1

    .line 133
    .line 134
    move/from16 v18, v0

    .line 135
    .line 136
    move/from16 v20, v6

    .line 137
    .line 138
    move/from16 v22, v7

    .line 139
    .line 140
    move v0, v8

    .line 141
    :goto_2
    shr-long v16, v16, v0

    .line 142
    .line 143
    add-int/lit8 v6, v20, 0x1

    .line 144
    .line 145
    move v8, v0

    .line 146
    move/from16 v0, v18

    .line 147
    .line 148
    move/from16 v7, v22

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_2
    move-object/from16 v3, p1

    .line 152
    .line 153
    move/from16 v18, v0

    .line 154
    .line 155
    move v0, v8

    .line 156
    move v8, v7

    .line 157
    if-ne v8, v0, :cond_4

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_3
    move-object/from16 v3, p1

    .line 161
    .line 162
    move/from16 v18, v0

    .line 163
    .line 164
    :goto_3
    if-eq v15, v13, :cond_4

    .line 165
    .line 166
    add-int/lit8 v15, v15, 0x1

    .line 167
    .line 168
    move/from16 v0, v18

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_4
    :goto_4
    return-void
.end method

.method public O1(Lp/k$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/material/ripple/CommonRippleNode;->y:Landroidx/collection/n0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/u0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/compose/material/ripple/RippleAnimation;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/material/ripple/RippleAnimation;->h()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public n1()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/material/ripple/CommonRippleNode;->y:Landroidx/collection/n0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/collection/n0;->h()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
