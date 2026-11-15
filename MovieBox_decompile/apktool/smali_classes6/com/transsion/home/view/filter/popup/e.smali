.class public abstract Lcom/transsion/home/view/filter/popup/e;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:F

.field private static b:F

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final synthetic A(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/i;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/view/filter/popup/e;->k(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/i;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic B(Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/snapshots/t;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/home/view/filter/popup/e;->D(Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/snapshots/t;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic C(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/home/view/filter/popup/e;->E(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final D(Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/snapshots/t;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/util/Map$Entry;

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/snapshots/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_0

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return v0
.end method

.method private static final E(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/transsion/home/view/filter/popup/e;->c:Z

    .line 3
    .line 4
    check-cast p0, Ljava/lang/Iterable;

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/transsion/home/bean/Item;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/transsion/home/bean/Item;->getRangeVals()Lcom/transsion/home/bean/RangeValue;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/transsion/home/bean/Item;->getFilterType()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sget-object v2, Lcom/transsion/home/view/filter/popup/PopupFilterView;->Companion:Lcom/transsion/home/view/filter/popup/PopupFilterView$a;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/transsion/home/bean/Item;->getRangeVals()Lcom/transsion/home/bean/RangeValue;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Lcom/transsion/home/bean/RangeValue;->getMinVal()F

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {v0}, Lcom/transsion/home/bean/Item;->getRangeVals()Lcom/transsion/home/bean/RangeValue;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/transsion/home/bean/RangeValue;->getMaxVal()F

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-virtual {v2, v3, v0}, Lcom/transsion/home/view/filter/popup/PopupFilterView$a;->a(FF)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/home/bean/Item;->getFilterValsV2()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Ljava/util/Collection;

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_0

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/transsion/home/bean/Item;->getFilterType()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0}, Lcom/transsion/home/bean/Item;->getFilterValsV2()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const/4 v2, 0x0

    .line 79
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lcom/transsion/home/bean/FilterVal;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/transsion/home/bean/FilterVal;->getId()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/google/accompanist/systemuicontroller/c;Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/home/view/filter/popup/e;->r(Lcom/google/accompanist/systemuicontroller/c;Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/ui/f;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/transsion/home/view/filter/popup/e;->o(Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/ui/f;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/home/view/filter/popup/e;->l(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/home/view/filter/popup/e;->z(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/home/view/filter/popup/e;->s(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lcom/google/accompanist/systemuicontroller/c;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/home/view/filter/popup/e;->q(Lcom/google/accompanist/systemuicontroller/c;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/transsion/home/view/filter/popup/e;->t(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Landroidx/compose/runtime/snapshots/t;Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/i1;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/home/view/filter/popup/e;->y(Landroidx/compose/runtime/snapshots/t;Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/i1;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Landroidx/compose/runtime/snapshots/t;Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/home/view/filter/popup/e;->n(Landroidx/compose/runtime/snapshots/t;Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Landroidx/compose/runtime/i1;Lkotlin/ranges/ClosedFloatingPointRange;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/home/view/filter/popup/e;->x(Landroidx/compose/runtime/i1;Lkotlin/ranges/ClosedFloatingPointRange;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final k(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/i;I)V
    .locals 34

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move/from16 v8, p3

    .line 6
    .line 7
    const v0, 0x59c9275b

    .line 8
    .line 9
    .line 10
    move-object/from16 v1, p2

    .line 11
    .line 12
    invoke-interface {v1, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    const/4 v4, 0x6

    .line 17
    and-int/lit8 v1, v8, 0x6

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v5, v6}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v1, v2

    .line 31
    :goto_0
    or-int/2addr v1, v8

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v1, v8

    .line 34
    :goto_1
    and-int/lit8 v3, v8, 0x30

    .line 35
    .line 36
    const/16 v10, 0x10

    .line 37
    .line 38
    const/16 v15, 0x20

    .line 39
    .line 40
    if-nez v3, :cond_3

    .line 41
    .line 42
    invoke-interface {v5, v7}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    move v3, v15

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    move v3, v10

    .line 51
    :goto_2
    or-int/2addr v1, v3

    .line 52
    :cond_3
    move v3, v1

    .line 53
    and-int/lit8 v1, v3, 0x13

    .line 54
    .line 55
    const/16 v9, 0x12

    .line 56
    .line 57
    if-ne v1, v9, :cond_5

    .line 58
    .line 59
    invoke-interface {v5}, Landroidx/compose/runtime/i;->h()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_4

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    invoke-interface {v5}, Landroidx/compose/runtime/i;->G()V

    .line 67
    .line 68
    .line 69
    move-object v9, v5

    .line 70
    goto/16 :goto_a

    .line 71
    .line 72
    :cond_5
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_6

    .line 77
    .line 78
    const/4 v1, -0x1

    .line 79
    const-string v9, "com.transsion.home.view.filter.popup.FilterItemView (MultiFilterPopupWindow.kt:242)"

    .line 80
    .line 81
    invoke-static {v0, v3, v1, v9}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_6
    sget-object v0, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 85
    .line 86
    sget-object v1, Landroidx/compose/foundation/layout/b;->a:Landroidx/compose/foundation/layout/b;

    .line 87
    .line 88
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/b;->d()Landroidx/compose/foundation/layout/b$k;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    sget-object v9, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    .line 93
    .line 94
    invoke-virtual {v9}, Landroidx/compose/ui/b$a;->i()Landroidx/compose/ui/b$b;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    const/4 v11, 0x0

    .line 99
    invoke-static {v1, v9, v5, v11}, Landroidx/compose/foundation/layout/i;->a(Landroidx/compose/foundation/layout/b$k;Landroidx/compose/ui/b$b;Landroidx/compose/runtime/i;I)Landroidx/compose/ui/layout/t;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {v5, v11}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    invoke-interface {v5}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    .line 108
    .line 109
    .line 110
    move-result-object v12

    .line 111
    invoke-static {v5, v0}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->c1:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 116
    .line 117
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    .line 118
    .line 119
    .line 120
    move-result-object v14

    .line 121
    invoke-interface {v5}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    instance-of v4, v4, Landroidx/compose/runtime/f;

    .line 126
    .line 127
    if-nez v4, :cond_7

    .line 128
    .line 129
    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    .line 130
    .line 131
    .line 132
    :cond_7
    invoke-interface {v5}, Landroidx/compose/runtime/i;->C()V

    .line 133
    .line 134
    .line 135
    invoke-interface {v5}, Landroidx/compose/runtime/i;->e()Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_8

    .line 140
    .line 141
    invoke-interface {v5, v14}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    .line 142
    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_8
    invoke-interface {v5}, Landroidx/compose/runtime/i;->o()V

    .line 146
    .line 147
    .line 148
    :goto_4
    invoke-static {v5}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    .line 153
    .line 154
    .line 155
    move-result-object v14

    .line 156
    invoke-static {v4, v1, v14}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-static {v4, v12, v1}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-interface {v4}, Landroidx/compose/runtime/i;->e()Z

    .line 171
    .line 172
    .line 173
    move-result v12

    .line 174
    if-nez v12, :cond_9

    .line 175
    .line 176
    invoke-interface {v4}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v12

    .line 180
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v14

    .line 184
    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v12

    .line 188
    if-nez v12, :cond_a

    .line 189
    .line 190
    :cond_9
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v12

    .line 194
    invoke-interface {v4, v12}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    invoke-interface {v4, v9, v1}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 202
    .line 203
    .line 204
    :cond_a
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-static {v4, v0, v1}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 209
    .line 210
    .line 211
    sget-object v0, Landroidx/compose/foundation/layout/l;->a:Landroidx/compose/foundation/layout/l;

    .line 212
    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/home/bean/Item;->getTitle()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    invoke-static {v10}, Lo0/x;->c(I)J

    .line 218
    .line 219
    .line 220
    move-result-wide v13

    .line 221
    sget-object v0, Landroidx/compose/ui/text/font/h;->b:Landroidx/compose/ui/text/font/h$a;

    .line 222
    .line 223
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/h$a;->b()Landroidx/compose/ui/text/font/s;

    .line 224
    .line 225
    .line 226
    move-result-object v17

    .line 227
    sget-object v0, Landroidx/compose/ui/text/font/p;->b:Landroidx/compose/ui/text/font/p$a;

    .line 228
    .line 229
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/p$a;->c()Landroidx/compose/ui/text/font/p;

    .line 230
    .line 231
    .line 232
    move-result-object v16

    .line 233
    sget v0, Lcom/tn/lib/widget/R$color;->white:I

    .line 234
    .line 235
    invoke-static {v0, v5, v11}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    .line 236
    .line 237
    .line 238
    move-result-wide v0

    .line 239
    move v4, v11

    .line 240
    move-wide v11, v0

    .line 241
    const/16 v32, 0x0

    .line 242
    .line 243
    const v33, 0x1ff92

    .line 244
    .line 245
    .line 246
    const/4 v10, 0x0

    .line 247
    const/4 v0, 0x0

    .line 248
    move v1, v15

    .line 249
    move-object v15, v0

    .line 250
    const-wide/16 v18, 0x0

    .line 251
    .line 252
    const/16 v20, 0x0

    .line 253
    .line 254
    const/16 v21, 0x0

    .line 255
    .line 256
    const-wide/16 v22, 0x0

    .line 257
    .line 258
    const/16 v24, 0x0

    .line 259
    .line 260
    const/16 v25, 0x0

    .line 261
    .line 262
    const/16 v26, 0x0

    .line 263
    .line 264
    const/16 v27, 0x0

    .line 265
    .line 266
    const/16 v28, 0x0

    .line 267
    .line 268
    const/16 v29, 0x0

    .line 269
    .line 270
    const v31, 0x30c00

    .line 271
    .line 272
    .line 273
    move-object/from16 v30, v5

    .line 274
    .line 275
    invoke-static/range {v9 .. v33}, Landroidx/compose/material3/TextKt;->a(Ljava/lang/String;Landroidx/compose/ui/f;JJLandroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/h;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/text/style/h;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/d0;Landroidx/compose/runtime/i;III)V

    .line 276
    .line 277
    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/home/bean/Item;->getRangeVals()Lcom/transsion/home/bean/RangeValue;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    if-nez v0, :cond_12

    .line 283
    .line 284
    const v0, 0x2b5e4f74

    .line 285
    .line 286
    .line 287
    invoke-interface {v5, v0}, Landroidx/compose/runtime/i;->P(I)V

    .line 288
    .line 289
    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/home/bean/Item;->getFilterValsV2()Ljava/util/List;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    check-cast v0, Ljava/lang/Iterable;

    .line 295
    .line 296
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->a0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->f()Landroidx/compose/runtime/s1;

    .line 301
    .line 302
    .line 303
    move-result-object v9

    .line 304
    invoke-interface {v5, v9}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v9

    .line 308
    check-cast v9, Landroid/content/res/Configuration;

    .line 309
    .line 310
    iget v9, v9, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 311
    .line 312
    add-int/lit8 v9, v9, -0x2c

    .line 313
    .line 314
    div-int/2addr v9, v2

    .line 315
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 316
    .line 317
    .line 318
    move-result-object v10

    .line 319
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-eqz v0, :cond_11

    .line 324
    .line 325
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    move-object v11, v0

    .line 330
    check-cast v11, Ljava/util/List;

    .line 331
    .line 332
    sget-object v0, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 333
    .line 334
    const/4 v2, 0x1

    .line 335
    const/4 v12, 0x0

    .line 336
    const/4 v13, 0x0

    .line 337
    invoke-static {v0, v13, v2, v12}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/f;FILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 338
    .line 339
    .line 340
    move-result-object v14

    .line 341
    const/16 v0, 0xc

    .line 342
    .line 343
    int-to-float v0, v0

    .line 344
    invoke-static {v0}, Lo0/i;->g(F)F

    .line 345
    .line 346
    .line 347
    move-result v16

    .line 348
    const/16 v19, 0xd

    .line 349
    .line 350
    const/16 v20, 0x0

    .line 351
    .line 352
    const/4 v15, 0x0

    .line 353
    const/16 v17, 0x0

    .line 354
    .line 355
    const/16 v18, 0x0

    .line 356
    .line 357
    invoke-static/range {v14 .. v20}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/f;FFFFILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    sget-object v2, Landroidx/compose/foundation/layout/b;->a:Landroidx/compose/foundation/layout/b;

    .line 362
    .line 363
    invoke-virtual {v2}, Landroidx/compose/foundation/layout/b;->c()Landroidx/compose/foundation/layout/b$d;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    sget-object v12, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    .line 368
    .line 369
    invoke-virtual {v12}, Landroidx/compose/ui/b$a;->j()Landroidx/compose/ui/b$c;

    .line 370
    .line 371
    .line 372
    move-result-object v12

    .line 373
    invoke-static {v2, v12, v5, v4}, Landroidx/compose/foundation/layout/a0;->b(Landroidx/compose/foundation/layout/b$d;Landroidx/compose/ui/b$c;Landroidx/compose/runtime/i;I)Landroidx/compose/ui/layout/t;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    invoke-static {v5, v4}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    .line 378
    .line 379
    .line 380
    move-result v12

    .line 381
    invoke-interface {v5}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    .line 382
    .line 383
    .line 384
    move-result-object v13

    .line 385
    invoke-static {v5, v0}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->c1:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 390
    .line 391
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    .line 392
    .line 393
    .line 394
    move-result-object v15

    .line 395
    invoke-interface {v5}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    instance-of v1, v1, Landroidx/compose/runtime/f;

    .line 400
    .line 401
    if-nez v1, :cond_b

    .line 402
    .line 403
    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    .line 404
    .line 405
    .line 406
    :cond_b
    invoke-interface {v5}, Landroidx/compose/runtime/i;->C()V

    .line 407
    .line 408
    .line 409
    invoke-interface {v5}, Landroidx/compose/runtime/i;->e()Z

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    if-eqz v1, :cond_c

    .line 414
    .line 415
    invoke-interface {v5, v15}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    .line 416
    .line 417
    .line 418
    goto :goto_6

    .line 419
    :cond_c
    invoke-interface {v5}, Landroidx/compose/runtime/i;->o()V

    .line 420
    .line 421
    .line 422
    :goto_6
    invoke-static {v5}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    .line 427
    .line 428
    .line 429
    move-result-object v15

    .line 430
    invoke-static {v1, v2, v15}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    invoke-static {v1, v13, v2}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    invoke-interface {v1}, Landroidx/compose/runtime/i;->e()Z

    .line 445
    .line 446
    .line 447
    move-result v13

    .line 448
    if-nez v13, :cond_d

    .line 449
    .line 450
    invoke-interface {v1}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v13

    .line 454
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 455
    .line 456
    .line 457
    move-result-object v15

    .line 458
    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    move-result v13

    .line 462
    if-nez v13, :cond_e

    .line 463
    .line 464
    :cond_d
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 465
    .line 466
    .line 467
    move-result-object v13

    .line 468
    invoke-interface {v1, v13}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 469
    .line 470
    .line 471
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 472
    .line 473
    .line 474
    move-result-object v12

    .line 475
    invoke-interface {v1, v12, v2}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 476
    .line 477
    .line 478
    :cond_e
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 483
    .line 484
    .line 485
    sget-object v12, Landroidx/compose/foundation/layout/d0;->a:Landroidx/compose/foundation/layout/d0;

    .line 486
    .line 487
    const v0, -0x67ea498c

    .line 488
    .line 489
    .line 490
    invoke-interface {v5, v0}, Landroidx/compose/runtime/i;->P(I)V

    .line 491
    .line 492
    .line 493
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 494
    .line 495
    .line 496
    move-result-object v13

    .line 497
    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 498
    .line 499
    .line 500
    move-result v0

    .line 501
    if-eqz v0, :cond_10

    .line 502
    .line 503
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    move-object v14, v0

    .line 508
    check-cast v14, Lcom/transsion/home/bean/FilterVal;

    .line 509
    .line 510
    sget-object v15, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 511
    .line 512
    int-to-float v0, v9

    .line 513
    invoke-static {v0}, Lo0/i;->g(F)F

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    invoke-static {v15, v0}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    .line 518
    .line 519
    .line 520
    move-result-object v17

    .line 521
    and-int/lit8 v0, v3, 0xe

    .line 522
    .line 523
    shl-int/lit8 v1, v3, 0x3

    .line 524
    .line 525
    and-int/lit16 v1, v1, 0x380

    .line 526
    .line 527
    or-int v18, v0, v1

    .line 528
    .line 529
    move-object/from16 v0, p0

    .line 530
    .line 531
    const/16 v2, 0x20

    .line 532
    .line 533
    move-object v1, v14

    .line 534
    move/from16 v16, v9

    .line 535
    .line 536
    move v9, v2

    .line 537
    move-object/from16 v2, p1

    .line 538
    .line 539
    move/from16 v23, v3

    .line 540
    .line 541
    move-object/from16 v3, v17

    .line 542
    .line 543
    move v9, v4

    .line 544
    move-object v4, v5

    .line 545
    move-object v9, v5

    .line 546
    move/from16 v5, v18

    .line 547
    .line 548
    invoke-static/range {v0 .. v5}, Lcom/transsion/home/view/filter/popup/e;->m(Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    .line 549
    .line 550
    .line 551
    const v0, -0x67ea3433

    .line 552
    .line 553
    .line 554
    invoke-interface {v9, v0}, Landroidx/compose/runtime/i;->P(I)V

    .line 555
    .line 556
    .line 557
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    if-nez v0, :cond_f

    .line 566
    .line 567
    const/16 v21, 0x2

    .line 568
    .line 569
    const/16 v22, 0x0

    .line 570
    .line 571
    const/high16 v19, 0x3f800000    # 1.0f

    .line 572
    .line 573
    const/16 v20, 0x0

    .line 574
    .line 575
    move-object/from16 v17, v12

    .line 576
    .line 577
    move-object/from16 v18, v15

    .line 578
    .line 579
    invoke-static/range {v17 .. v22}, Landroidx/compose/foundation/layout/b0;->a(Landroidx/compose/foundation/layout/c0;Landroidx/compose/ui/f;FZILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    const/4 v1, 0x0

    .line 584
    invoke-static {v0, v9, v1}, Landroidx/compose/foundation/layout/e0;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    .line 585
    .line 586
    .line 587
    goto :goto_8

    .line 588
    :cond_f
    const/4 v1, 0x0

    .line 589
    :goto_8
    invoke-interface {v9}, Landroidx/compose/runtime/i;->K()V

    .line 590
    .line 591
    .line 592
    move v4, v1

    .line 593
    move-object v5, v9

    .line 594
    move/from16 v9, v16

    .line 595
    .line 596
    move/from16 v3, v23

    .line 597
    .line 598
    goto :goto_7

    .line 599
    :cond_10
    move/from16 v23, v3

    .line 600
    .line 601
    move v1, v4

    .line 602
    move/from16 v16, v9

    .line 603
    .line 604
    move-object v9, v5

    .line 605
    invoke-interface {v9}, Landroidx/compose/runtime/i;->K()V

    .line 606
    .line 607
    .line 608
    invoke-interface {v9}, Landroidx/compose/runtime/i;->r()V

    .line 609
    .line 610
    .line 611
    move/from16 v9, v16

    .line 612
    .line 613
    const/16 v1, 0x20

    .line 614
    .line 615
    goto/16 :goto_5

    .line 616
    .line 617
    :cond_11
    move-object v9, v5

    .line 618
    invoke-interface {v9}, Landroidx/compose/runtime/i;->K()V

    .line 619
    .line 620
    .line 621
    goto :goto_9

    .line 622
    :cond_12
    move/from16 v23, v3

    .line 623
    .line 624
    move-object v9, v5

    .line 625
    const v0, 0x2b6a1d78

    .line 626
    .line 627
    .line 628
    invoke-interface {v9, v0}, Landroidx/compose/runtime/i;->P(I)V

    .line 629
    .line 630
    .line 631
    and-int/lit8 v0, v23, 0x7e

    .line 632
    .line 633
    invoke-static {v6, v7, v9, v0}, Lcom/transsion/home/view/filter/popup/e;->u(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/i;I)V

    .line 634
    .line 635
    .line 636
    invoke-interface {v9}, Landroidx/compose/runtime/i;->K()V

    .line 637
    .line 638
    .line 639
    :goto_9
    sget-object v0, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 640
    .line 641
    const/16 v1, 0x20

    .line 642
    .line 643
    int-to-float v1, v1

    .line 644
    invoke-static {v1}, Lo0/i;->g(F)F

    .line 645
    .line 646
    .line 647
    move-result v1

    .line 648
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    const/4 v1, 0x6

    .line 653
    invoke-static {v0, v9, v1}, Landroidx/compose/foundation/layout/e0;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    .line 654
    .line 655
    .line 656
    invoke-interface {v9}, Landroidx/compose/runtime/i;->r()V

    .line 657
    .line 658
    .line 659
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 660
    .line 661
    .line 662
    move-result v0

    .line 663
    if-eqz v0, :cond_13

    .line 664
    .line 665
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 666
    .line 667
    .line 668
    :cond_13
    :goto_a
    invoke-interface {v9}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    if-eqz v0, :cond_14

    .line 673
    .line 674
    new-instance v1, Lcl/e;

    .line 675
    .line 676
    invoke-direct {v1, v6, v7, v8}, Lcl/e;-><init>(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;I)V

    .line 677
    .line 678
    .line 679
    invoke-interface {v0, v1}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    .line 680
    .line 681
    .line 682
    :cond_14
    return-void
.end method

.method private static final l(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;
    .locals 0

    .line 1
    or-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    invoke-static {p2}, Landroidx/compose/runtime/v1;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-static {p0, p1, p3, p2}, Lcom/transsion/home/view/filter/popup/e;->k(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/i;I)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final m(Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V
    .locals 31

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move/from16 v5, p5

    .line 10
    .line 11
    const v0, 0x3a0834c0

    .line 12
    .line 13
    .line 14
    move-object/from16 v6, p4

    .line 15
    .line 16
    invoke-interface {v6, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    .line 17
    .line 18
    .line 19
    move-result-object v15

    .line 20
    and-int/lit8 v6, v5, 0x6

    .line 21
    .line 22
    if-nez v6, :cond_1

    .line 23
    .line 24
    invoke-interface {v15, v1}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-eqz v6, :cond_0

    .line 29
    .line 30
    const/4 v6, 0x4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v6, 0x2

    .line 33
    :goto_0
    or-int/2addr v6, v5

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v6, v5

    .line 36
    :goto_1
    and-int/lit8 v7, v5, 0x30

    .line 37
    .line 38
    const/16 v8, 0x20

    .line 39
    .line 40
    if-nez v7, :cond_3

    .line 41
    .line 42
    invoke-interface {v15, v2}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_2

    .line 47
    .line 48
    move v7, v8

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v7, 0x10

    .line 51
    .line 52
    :goto_2
    or-int/2addr v6, v7

    .line 53
    :cond_3
    and-int/lit16 v7, v5, 0x180

    .line 54
    .line 55
    if-nez v7, :cond_5

    .line 56
    .line 57
    invoke-interface {v15, v3}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_4

    .line 62
    .line 63
    const/16 v7, 0x100

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/16 v7, 0x80

    .line 67
    .line 68
    :goto_3
    or-int/2addr v6, v7

    .line 69
    :cond_5
    and-int/lit16 v7, v5, 0xc00

    .line 70
    .line 71
    if-nez v7, :cond_7

    .line 72
    .line 73
    invoke-interface {v15, v4}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_6

    .line 78
    .line 79
    const/16 v7, 0x800

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_6
    const/16 v7, 0x400

    .line 83
    .line 84
    :goto_4
    or-int/2addr v6, v7

    .line 85
    :cond_7
    and-int/lit16 v7, v6, 0x493

    .line 86
    .line 87
    const/16 v10, 0x492

    .line 88
    .line 89
    if-ne v7, v10, :cond_9

    .line 90
    .line 91
    invoke-interface {v15}, Landroidx/compose/runtime/i;->h()Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-nez v7, :cond_8

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_8
    invoke-interface {v15}, Landroidx/compose/runtime/i;->G()V

    .line 99
    .line 100
    .line 101
    move-object v0, v15

    .line 102
    goto/16 :goto_a

    .line 103
    .line 104
    :cond_9
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-eqz v7, :cond_a

    .line 109
    .line 110
    const/4 v7, -0x1

    .line 111
    const-string v10, "com.transsion.home.view.filter.popup.GridItem (MultiFilterPopupWindow.kt:285)"

    .line 112
    .line 113
    invoke-static {v0, v6, v7, v10}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/home/bean/Item;->getFilterType()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/snapshots/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/FilterVal;->getId()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    const/4 v7, 0x0

    .line 133
    if-eqz v0, :cond_b

    .line 134
    .line 135
    const v0, 0x40f6c2b2

    .line 136
    .line 137
    .line 138
    invoke-interface {v15, v0}, Landroidx/compose/runtime/i;->P(I)V

    .line 139
    .line 140
    .line 141
    sget v0, Lcom/tn/lib/widget/R$color;->white:I

    .line 142
    .line 143
    invoke-static {v0, v15, v7}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    .line 144
    .line 145
    .line 146
    move-result-wide v10

    .line 147
    sget v0, Lcom/transsion/wrapperad/R$color;->white_40:I

    .line 148
    .line 149
    invoke-static {v0, v15, v7}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    .line 150
    .line 151
    .line 152
    move-result-wide v12

    .line 153
    invoke-interface {v15}, Landroidx/compose/runtime/i;->K()V

    .line 154
    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_b
    const v0, 0x40f905a5

    .line 158
    .line 159
    .line 160
    invoke-interface {v15, v0}, Landroidx/compose/runtime/i;->P(I)V

    .line 161
    .line 162
    .line 163
    sget v0, Lcom/tn/lib/widget/R$color;->text_03:I

    .line 164
    .line 165
    invoke-static {v0, v15, v7}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    .line 166
    .line 167
    .line 168
    move-result-wide v10

    .line 169
    sget v0, Lcom/tn/lib/widget/R$color;->transparent:I

    .line 170
    .line 171
    invoke-static {v0, v15, v7}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    .line 172
    .line 173
    .line 174
    move-result-wide v12

    .line 175
    invoke-interface {v15}, Landroidx/compose/runtime/i;->K()V

    .line 176
    .line 177
    .line 178
    :goto_6
    sget-object v0, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    .line 179
    .line 180
    invoke-virtual {v0}, Landroidx/compose/ui/b$a;->d()Landroidx/compose/ui/b;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    int-to-float v14, v8

    .line 185
    invoke-static {v14}, Lo0/i;->g(F)F

    .line 186
    .line 187
    .line 188
    move-result v14

    .line 189
    invoke-static {v4, v14}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    .line 190
    .line 191
    .line 192
    move-result-object v14

    .line 193
    const/4 v7, 0x1

    .line 194
    int-to-float v8, v7

    .line 195
    invoke-static {v8}, Lo0/i;->g(F)F

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    const/16 v7, 0x64

    .line 200
    .line 201
    int-to-float v7, v7

    .line 202
    invoke-static {v7}, Lo0/i;->g(F)F

    .line 203
    .line 204
    .line 205
    move-result v18

    .line 206
    invoke-static/range {v18 .. v18}, Lq/g;->c(F)Lq/f;

    .line 207
    .line 208
    .line 209
    move-result-object v9

    .line 210
    invoke-static {v14, v8, v10, v11, v9}, Landroidx/compose/foundation/BorderKt;->e(Landroidx/compose/ui/f;FJLandroidx/compose/ui/graphics/a5;)Landroidx/compose/ui/f;

    .line 211
    .line 212
    .line 213
    move-result-object v8

    .line 214
    invoke-static {v7}, Lo0/i;->g(F)F

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    invoke-static {v7}, Lq/g;->c(F)Lq/f;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    invoke-static {v8, v12, v13, v7}, Landroidx/compose/foundation/BackgroundKt;->a(Landroidx/compose/ui/f;JLandroidx/compose/ui/graphics/a5;)Landroidx/compose/ui/f;

    .line 223
    .line 224
    .line 225
    move-result-object v20

    .line 226
    const v7, -0x6815fd56

    .line 227
    .line 228
    .line 229
    invoke-interface {v15, v7}, Landroidx/compose/runtime/i;->P(I)V

    .line 230
    .line 231
    .line 232
    and-int/lit16 v7, v6, 0x380

    .line 233
    .line 234
    const/16 v8, 0x100

    .line 235
    .line 236
    if-ne v7, v8, :cond_c

    .line 237
    .line 238
    const/4 v7, 0x1

    .line 239
    goto :goto_7

    .line 240
    :cond_c
    const/4 v7, 0x0

    .line 241
    :goto_7
    invoke-interface {v15, v1}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v8

    .line 245
    or-int/2addr v7, v8

    .line 246
    and-int/lit8 v6, v6, 0x70

    .line 247
    .line 248
    const/16 v8, 0x20

    .line 249
    .line 250
    if-ne v6, v8, :cond_d

    .line 251
    .line 252
    const/16 v17, 0x1

    .line 253
    .line 254
    goto :goto_8

    .line 255
    :cond_d
    const/16 v17, 0x0

    .line 256
    .line 257
    :goto_8
    or-int v6, v7, v17

    .line 258
    .line 259
    invoke-interface {v15}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    if-nez v6, :cond_e

    .line 264
    .line 265
    sget-object v6, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 266
    .line 267
    invoke-virtual {v6}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    if-ne v7, v6, :cond_f

    .line 272
    .line 273
    :cond_e
    new-instance v7, Lcl/i;

    .line 274
    .line 275
    invoke-direct {v7, v3, v1, v2}, Lcl/i;-><init>(Landroidx/compose/runtime/snapshots/t;Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;)V

    .line 276
    .line 277
    .line 278
    invoke-interface {v15, v7}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    :cond_f
    move-object/from16 v24, v7

    .line 282
    .line 283
    check-cast v24, Lkotlin/jvm/functions/Function0;

    .line 284
    .line 285
    invoke-interface {v15}, Landroidx/compose/runtime/i;->K()V

    .line 286
    .line 287
    .line 288
    const/16 v25, 0x7

    .line 289
    .line 290
    const/16 v26, 0x0

    .line 291
    .line 292
    const/16 v21, 0x0

    .line 293
    .line 294
    const/16 v22, 0x0

    .line 295
    .line 296
    const/16 v23, 0x0

    .line 297
    .line 298
    invoke-static/range {v20 .. v26}, Landroidx/compose/foundation/ClickableKt;->d(Landroidx/compose/ui/f;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 299
    .line 300
    .line 301
    move-result-object v6

    .line 302
    const/4 v7, 0x0

    .line 303
    invoke-static {v0, v7}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/b;Z)Landroidx/compose/ui/layout/t;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-static {v15, v7}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    .line 308
    .line 309
    .line 310
    move-result v8

    .line 311
    invoke-interface {v15}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    .line 312
    .line 313
    .line 314
    move-result-object v7

    .line 315
    invoke-static {v15, v6}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->c1:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 320
    .line 321
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    .line 322
    .line 323
    .line 324
    move-result-object v10

    .line 325
    invoke-interface {v15}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    .line 326
    .line 327
    .line 328
    move-result-object v11

    .line 329
    instance-of v11, v11, Landroidx/compose/runtime/f;

    .line 330
    .line 331
    if-nez v11, :cond_10

    .line 332
    .line 333
    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    .line 334
    .line 335
    .line 336
    :cond_10
    invoke-interface {v15}, Landroidx/compose/runtime/i;->C()V

    .line 337
    .line 338
    .line 339
    invoke-interface {v15}, Landroidx/compose/runtime/i;->e()Z

    .line 340
    .line 341
    .line 342
    move-result v11

    .line 343
    if-eqz v11, :cond_11

    .line 344
    .line 345
    invoke-interface {v15, v10}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    .line 346
    .line 347
    .line 348
    goto :goto_9

    .line 349
    :cond_11
    invoke-interface {v15}, Landroidx/compose/runtime/i;->o()V

    .line 350
    .line 351
    .line 352
    :goto_9
    invoke-static {v15}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    .line 353
    .line 354
    .line 355
    move-result-object v10

    .line 356
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    .line 357
    .line 358
    .line 359
    move-result-object v11

    .line 360
    invoke-static {v10, v0, v11}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-static {v10, v7, v0}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-interface {v10}, Landroidx/compose/runtime/i;->e()Z

    .line 375
    .line 376
    .line 377
    move-result v7

    .line 378
    if-nez v7, :cond_12

    .line 379
    .line 380
    invoke-interface {v10}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v7

    .line 384
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 385
    .line 386
    .line 387
    move-result-object v11

    .line 388
    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v7

    .line 392
    if-nez v7, :cond_13

    .line 393
    .line 394
    :cond_12
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 395
    .line 396
    .line 397
    move-result-object v7

    .line 398
    invoke-interface {v10, v7}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 399
    .line 400
    .line 401
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 402
    .line 403
    .line 404
    move-result-object v7

    .line 405
    invoke-interface {v10, v7, v0}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 406
    .line 407
    .line 408
    :cond_13
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    invoke-static {v10, v6, v0}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 413
    .line 414
    .line 415
    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 416
    .line 417
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/FilterVal;->getName()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v6

    .line 421
    const/16 v0, 0xe

    .line 422
    .line 423
    invoke-static {v0}, Lo0/x;->c(I)J

    .line 424
    .line 425
    .line 426
    move-result-wide v10

    .line 427
    sget-object v0, Landroidx/compose/ui/text/font/h;->b:Landroidx/compose/ui/text/font/h$a;

    .line 428
    .line 429
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/h$a;->b()Landroidx/compose/ui/text/font/s;

    .line 430
    .line 431
    .line 432
    move-result-object v14

    .line 433
    sget-object v0, Landroidx/compose/ui/text/font/p;->b:Landroidx/compose/ui/text/font/p$a;

    .line 434
    .line 435
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/p$a;->c()Landroidx/compose/ui/text/font/p;

    .line 436
    .line 437
    .line 438
    move-result-object v13

    .line 439
    sget v0, Lcom/tn/lib/widget/R$color;->white:I

    .line 440
    .line 441
    const/4 v7, 0x0

    .line 442
    invoke-static {v0, v15, v7}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    .line 443
    .line 444
    .line 445
    move-result-wide v8

    .line 446
    const/16 v29, 0x0

    .line 447
    .line 448
    const v30, 0x1ff92

    .line 449
    .line 450
    .line 451
    const/4 v7, 0x0

    .line 452
    const/4 v12, 0x0

    .line 453
    const-wide/16 v16, 0x0

    .line 454
    .line 455
    move-object v0, v15

    .line 456
    move-wide/from16 v15, v16

    .line 457
    .line 458
    const/16 v17, 0x0

    .line 459
    .line 460
    const/16 v18, 0x0

    .line 461
    .line 462
    const-wide/16 v19, 0x0

    .line 463
    .line 464
    const/16 v21, 0x0

    .line 465
    .line 466
    const/16 v22, 0x0

    .line 467
    .line 468
    const/16 v23, 0x0

    .line 469
    .line 470
    const/16 v24, 0x0

    .line 471
    .line 472
    const/16 v25, 0x0

    .line 473
    .line 474
    const/16 v26, 0x0

    .line 475
    .line 476
    const v28, 0x30c00

    .line 477
    .line 478
    .line 479
    move-object/from16 v27, v0

    .line 480
    .line 481
    invoke-static/range {v6 .. v30}, Landroidx/compose/material3/TextKt;->a(Ljava/lang/String;Landroidx/compose/ui/f;JJLandroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/h;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/text/style/h;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/d0;Landroidx/compose/runtime/i;III)V

    .line 482
    .line 483
    .line 484
    invoke-interface {v0}, Landroidx/compose/runtime/i;->r()V

    .line 485
    .line 486
    .line 487
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 488
    .line 489
    .line 490
    move-result v6

    .line 491
    if-eqz v6, :cond_14

    .line 492
    .line 493
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 494
    .line 495
    .line 496
    :cond_14
    :goto_a
    invoke-interface {v0}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    .line 497
    .line 498
    .line 499
    move-result-object v6

    .line 500
    if-eqz v6, :cond_15

    .line 501
    .line 502
    new-instance v7, Lcl/j;

    .line 503
    .line 504
    move-object v0, v7

    .line 505
    move-object/from16 v1, p0

    .line 506
    .line 507
    move-object/from16 v2, p1

    .line 508
    .line 509
    move-object/from16 v3, p2

    .line 510
    .line 511
    move-object/from16 v4, p3

    .line 512
    .line 513
    move/from16 v5, p5

    .line 514
    .line 515
    invoke-direct/range {v0 .. v5}, Lcl/j;-><init>(Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/ui/f;I)V

    .line 516
    .line 517
    .line 518
    invoke-interface {v6, v7}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    .line 519
    .line 520
    .line 521
    :cond_15
    return-void
.end method

.method private static final n(Landroidx/compose/runtime/snapshots/t;Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/transsion/home/bean/Item;->getFilterType()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p2}, Lcom/transsion/home/bean/FilterVal;->getId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final o(Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/ui/f;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;
    .locals 6

    .line 1
    or-int/lit8 p4, p4, 0x1

    .line 2
    .line 3
    invoke-static {p4}, Landroidx/compose/runtime/v1;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result v5

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move-object v4, p5

    .line 12
    invoke-static/range {v0 .. v5}, Lcom/transsion/home/view/filter/popup/e;->m(Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method public static final p(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/i;I)V
    .locals 22

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    move/from16 v10, p4

    .line 8
    .line 9
    const-string v0, "filterItems"

    .line 10
    .line 11
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "selectItems"

    .line 15
    .line 16
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "dismiss"

    .line 20
    .line 21
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const v0, 0x415fa82e

    .line 25
    .line 26
    .line 27
    move-object/from16 v1, p3

    .line 28
    .line 29
    invoke-interface {v1, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    .line 30
    .line 31
    .line 32
    move-result-object v11

    .line 33
    and-int/lit8 v1, v10, 0x6

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    invoke-interface {v11, v7}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    const/4 v1, 0x4

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v1, 0x2

    .line 46
    :goto_0
    or-int/2addr v1, v10

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move v1, v10

    .line 49
    :goto_1
    and-int/lit8 v2, v10, 0x30

    .line 50
    .line 51
    if-nez v2, :cond_3

    .line 52
    .line 53
    invoke-interface {v11, v8}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    const/16 v2, 0x20

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const/16 v2, 0x10

    .line 63
    .line 64
    :goto_2
    or-int/2addr v1, v2

    .line 65
    :cond_3
    and-int/lit16 v2, v10, 0x180

    .line 66
    .line 67
    if-nez v2, :cond_5

    .line 68
    .line 69
    invoke-interface {v11, v9}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    const/16 v2, 0x100

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_4
    const/16 v2, 0x80

    .line 79
    .line 80
    :goto_3
    or-int/2addr v1, v2

    .line 81
    :cond_5
    and-int/lit16 v2, v1, 0x93

    .line 82
    .line 83
    const/16 v4, 0x92

    .line 84
    .line 85
    if-ne v2, v4, :cond_7

    .line 86
    .line 87
    invoke-interface {v11}, Landroidx/compose/runtime/i;->h()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-nez v2, :cond_6

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_6
    invoke-interface {v11}, Landroidx/compose/runtime/i;->G()V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_6

    .line 98
    .line 99
    :cond_7
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_8

    .line 104
    .line 105
    const/4 v2, -0x1

    .line 106
    const-string v4, "com.transsion.home.view.filter.popup.MultiFilterPopup (MultiFilterPopupWindow.kt:61)"

    .line 107
    .line 108
    invoke-static {v0, v1, v2, v4}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_8
    const/4 v0, 0x0

    .line 112
    const/4 v2, 0x0

    .line 113
    const/4 v12, 0x1

    .line 114
    invoke-static {v0, v11, v2, v12}, Lcom/google/accompanist/systemuicontroller/SystemUiControllerKt;->e(Landroid/view/Window;Landroidx/compose/runtime/i;II)Lcom/google/accompanist/systemuicontroller/c;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sget v4, Lcom/tn/lib/widget/R$color;->black_80:I

    .line 119
    .line 120
    invoke-static {v4, v11, v2}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    .line 121
    .line 122
    .line 123
    move-result-wide v4

    .line 124
    new-instance v6, Landroid/os/Handler;

    .line 125
    .line 126
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 127
    .line 128
    .line 129
    move-result-object v13

    .line 130
    invoke-direct {v6, v13}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 131
    .line 132
    .line 133
    const v13, -0x615d173a

    .line 134
    .line 135
    .line 136
    invoke-interface {v11, v13}, Landroidx/compose/runtime/i;->P(I)V

    .line 137
    .line 138
    .line 139
    invoke-interface {v11, v0}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v14

    .line 143
    invoke-interface {v11, v4, v5}, Landroidx/compose/runtime/i;->d(J)Z

    .line 144
    .line 145
    .line 146
    move-result v15

    .line 147
    or-int/2addr v14, v15

    .line 148
    invoke-interface {v11}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v15

    .line 152
    if-nez v14, :cond_9

    .line 153
    .line 154
    sget-object v14, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 155
    .line 156
    invoke-virtual {v14}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v14

    .line 160
    if-ne v15, v14, :cond_a

    .line 161
    .line 162
    :cond_9
    new-instance v15, Lcl/a;

    .line 163
    .line 164
    invoke-direct {v15, v0, v4, v5}, Lcl/a;-><init>(Lcom/google/accompanist/systemuicontroller/c;J)V

    .line 165
    .line 166
    .line 167
    invoke-interface {v11, v15}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    :cond_a
    check-cast v15, Ljava/lang/Runnable;

    .line 171
    .line 172
    invoke-interface {v11}, Landroidx/compose/runtime/i;->K()V

    .line 173
    .line 174
    .line 175
    const-wide/16 v2, 0x64

    .line 176
    .line 177
    invoke-virtual {v6, v15, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    .line 179
    .line 180
    invoke-interface {v11, v13}, Landroidx/compose/runtime/i;->P(I)V

    .line 181
    .line 182
    .line 183
    invoke-interface {v11, v0}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    and-int/lit16 v1, v1, 0x380

    .line 188
    .line 189
    const/16 v3, 0x100

    .line 190
    .line 191
    if-ne v1, v3, :cond_b

    .line 192
    .line 193
    move v14, v12

    .line 194
    goto :goto_5

    .line 195
    :cond_b
    const/4 v14, 0x0

    .line 196
    :goto_5
    or-int v1, v2, v14

    .line 197
    .line 198
    invoke-interface {v11}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    if-nez v1, :cond_c

    .line 203
    .line 204
    sget-object v1, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 205
    .line 206
    invoke-virtual {v1}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    if-ne v2, v1, :cond_d

    .line 211
    .line 212
    :cond_c
    new-instance v2, Lcl/b;

    .line 213
    .line 214
    invoke-direct {v2, v0, v9}, Lcl/b;-><init>(Lcom/google/accompanist/systemuicontroller/c;Lkotlin/jvm/functions/Function1;)V

    .line 215
    .line 216
    .line 217
    invoke-interface {v11, v2}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    :cond_d
    move-object v6, v2

    .line 221
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 222
    .line 223
    invoke-interface {v11}, Landroidx/compose/runtime/i;->K()V

    .line 224
    .line 225
    .line 226
    new-instance v13, Landroidx/compose/runtime/snapshots/t;

    .line 227
    .line 228
    invoke-direct {v13}, Landroidx/compose/runtime/snapshots/t;-><init>()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/snapshots/t;->putAll(Ljava/util/Map;)V

    .line 232
    .line 233
    .line 234
    const v0, 0x4c5de2

    .line 235
    .line 236
    .line 237
    invoke-interface {v11, v0}, Landroidx/compose/runtime/i;->P(I)V

    .line 238
    .line 239
    .line 240
    invoke-interface {v11, v6}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    invoke-interface {v11}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    if-nez v0, :cond_e

    .line 249
    .line 250
    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 251
    .line 252
    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    if-ne v1, v0, :cond_f

    .line 257
    .line 258
    :cond_e
    new-instance v1, Lcl/c;

    .line 259
    .line 260
    invoke-direct {v1, v6}, Lcl/c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 261
    .line 262
    .line 263
    invoke-interface {v11, v1}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    :cond_f
    move-object v14, v1

    .line 267
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 268
    .line 269
    invoke-interface {v11}, Landroidx/compose/runtime/i;->K()V

    .line 270
    .line 271
    .line 272
    new-instance v21, Landroidx/compose/ui/window/c;

    .line 273
    .line 274
    const/16 v19, 0x3

    .line 275
    .line 276
    const/16 v20, 0x0

    .line 277
    .line 278
    const/16 v16, 0x0

    .line 279
    .line 280
    const/16 v17, 0x0

    .line 281
    .line 282
    const/16 v18, 0x0

    .line 283
    .line 284
    move-object/from16 v15, v21

    .line 285
    .line 286
    invoke-direct/range {v15 .. v20}, Landroidx/compose/ui/window/c;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 287
    .line 288
    .line 289
    new-instance v15, Lcom/transsion/home/view/filter/popup/e$a;

    .line 290
    .line 291
    move-object v0, v15

    .line 292
    move-wide v1, v4

    .line 293
    move-object/from16 v3, p0

    .line 294
    .line 295
    move-object v4, v13

    .line 296
    move-object v5, v6

    .line 297
    move-object/from16 v6, p1

    .line 298
    .line 299
    invoke-direct/range {v0 .. v6}, Lcom/transsion/home/view/filter/popup/e$a;-><init>(JLjava/util/List;Landroidx/compose/runtime/snapshots/t;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/snapshots/t;)V

    .line 300
    .line 301
    .line 302
    const/16 v0, 0x36

    .line 303
    .line 304
    const v1, -0x5497e4bb

    .line 305
    .line 306
    .line 307
    invoke-static {v1, v12, v15, v11, v0}, Landroidx/compose/runtime/internal/b;->d(IZLjava/lang/Object;Landroidx/compose/runtime/i;I)Landroidx/compose/runtime/internal/a;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    const/16 v5, 0x1b0

    .line 312
    .line 313
    const/4 v6, 0x0

    .line 314
    move-object v1, v14

    .line 315
    move-object/from16 v2, v21

    .line 316
    .line 317
    move-object v4, v11

    .line 318
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/c;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;II)V

    .line 319
    .line 320
    .line 321
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    if-eqz v0, :cond_10

    .line 326
    .line 327
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 328
    .line 329
    .line 330
    :cond_10
    :goto_6
    invoke-interface {v11}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    if-eqz v0, :cond_11

    .line 335
    .line 336
    new-instance v1, Lcl/d;

    .line 337
    .line 338
    invoke-direct {v1, v7, v8, v9, v10}, Lcl/d;-><init>(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;Lkotlin/jvm/functions/Function1;I)V

    .line 339
    .line 340
    .line 341
    invoke-interface {v0, v1}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    .line 342
    .line 343
    .line 344
    :cond_11
    return-void
.end method

.method private static final q(Lcom/google/accompanist/systemuicontroller/c;J)V
    .locals 8

    .line 1
    const/16 v6, 0xe

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move-wide v1, p1

    .line 9
    invoke-static/range {v0 .. v7}, Lcom/google/accompanist/systemuicontroller/b;->b(Lcom/google/accompanist/systemuicontroller/c;JZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private static final r(Lcom/google/accompanist/systemuicontroller/c;Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;
    .locals 9

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/u1$a;->d()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    const/16 v7, 0xe

    .line 8
    .line 9
    const/4 v8, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    move-object v1, p0

    .line 14
    invoke-static/range {v1 .. v8}, Lcom/google/accompanist/systemuicontroller/b;->b(Lcom/google/accompanist/systemuicontroller/c;JZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final s(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private static final t(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;
    .locals 0

    .line 1
    or-int/lit8 p3, p3, 0x1

    .line 2
    .line 3
    invoke-static {p3}, Landroidx/compose/runtime/v1;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    invoke-static {p0, p1, p2, p4, p3}, Lcom/transsion/home/view/filter/popup/e;->p(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/i;I)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final u(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/i;I)V
    .locals 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    const v3, -0x385d95eb

    .line 8
    .line 9
    .line 10
    move-object/from16 v4, p2

    .line 11
    .line 12
    invoke-interface {v4, v3}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    .line 13
    .line 14
    .line 15
    move-result-object v15

    .line 16
    and-int/lit8 v4, v2, 0x6

    .line 17
    .line 18
    const/4 v5, 0x2

    .line 19
    if-nez v4, :cond_1

    .line 20
    .line 21
    invoke-interface {v15, v0}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    const/4 v4, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v4, v5

    .line 30
    :goto_0
    or-int/2addr v4, v2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v4, v2

    .line 33
    :goto_1
    and-int/lit8 v6, v2, 0x30

    .line 34
    .line 35
    if-nez v6, :cond_3

    .line 36
    .line 37
    invoke-interface {v15, v1}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_2

    .line 42
    .line 43
    const/16 v6, 0x20

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/16 v6, 0x10

    .line 47
    .line 48
    :goto_2
    or-int/2addr v4, v6

    .line 49
    :cond_3
    move v12, v4

    .line 50
    and-int/lit8 v4, v12, 0x13

    .line 51
    .line 52
    const/16 v6, 0x12

    .line 53
    .line 54
    if-ne v4, v6, :cond_5

    .line 55
    .line 56
    invoke-interface {v15}, Landroidx/compose/runtime/i;->h()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_4

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_4
    invoke-interface {v15}, Landroidx/compose/runtime/i;->G()V

    .line 64
    .line 65
    .line 66
    move-object/from16 v29, v15

    .line 67
    .line 68
    goto/16 :goto_c

    .line 69
    .line 70
    :cond_5
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_6

    .line 75
    .line 76
    const/4 v4, -0x1

    .line 77
    const-string v6, "com.transsion.home.view.filter.popup.StepRangeSlider (MultiFilterPopupWindow.kt:337)"

    .line 78
    .line 79
    invoke-static {v3, v12, v4, v6}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/home/bean/Item;->getRangeVals()Lcom/transsion/home/bean/RangeValue;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/transsion/home/bean/RangeValue;->getMinVal()F

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    invoke-virtual {v3}, Lcom/transsion/home/bean/RangeValue;->getMaxVal()F

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/home/bean/Item;->getFilterType()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/snapshots/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    move-object/from16 v16, v7

    .line 106
    .line 107
    check-cast v16, Ljava/lang/String;

    .line 108
    .line 109
    const/4 v7, 0x0

    .line 110
    if-eqz v16, :cond_7

    .line 111
    .line 112
    const-string v8, ","

    .line 113
    .line 114
    filled-new-array {v8}, [Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v17

    .line 118
    const/16 v20, 0x6

    .line 119
    .line 120
    const/16 v21, 0x0

    .line 121
    .line 122
    const/16 v18, 0x0

    .line 123
    .line 124
    const/16 v19, 0x0

    .line 125
    .line 126
    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    goto :goto_4

    .line 131
    :cond_7
    move-object v8, v7

    .line 132
    :goto_4
    const/4 v13, 0x0

    .line 133
    if-eqz v8, :cond_8

    .line 134
    .line 135
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    goto :goto_5

    .line 140
    :cond_8
    move v9, v13

    .line 141
    :goto_5
    const/4 v14, 0x1

    .line 142
    if-lt v9, v5, :cond_b

    .line 143
    .line 144
    if-eqz v8, :cond_9

    .line 145
    .line 146
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    check-cast v4, Ljava/lang/String;

    .line 151
    .line 152
    if-eqz v4, :cond_9

    .line 153
    .line 154
    invoke-static {v4}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;)Ljava/lang/Float;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    if-eqz v4, :cond_9

    .line 159
    .line 160
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    goto :goto_6

    .line 165
    :cond_9
    invoke-virtual {v3}, Lcom/transsion/home/bean/RangeValue;->getMinVal()F

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    :goto_6
    if-eqz v8, :cond_a

    .line 170
    .line 171
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    check-cast v6, Ljava/lang/String;

    .line 176
    .line 177
    if-eqz v6, :cond_a

    .line 178
    .line 179
    invoke-static {v6}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;)Ljava/lang/Float;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    if-eqz v6, :cond_a

    .line 184
    .line 185
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    goto :goto_7

    .line 190
    :cond_a
    invoke-virtual {v3}, Lcom/transsion/home/bean/RangeValue;->getMaxVal()F

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    :cond_b
    :goto_7
    const v8, 0x6e3c21fe

    .line 195
    .line 196
    .line 197
    invoke-interface {v15, v8}, Landroidx/compose/runtime/i;->P(I)V

    .line 198
    .line 199
    .line 200
    invoke-interface {v15}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    sget-object v29, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 205
    .line 206
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v9

    .line 210
    if-ne v8, v9, :cond_c

    .line 211
    .line 212
    invoke-static {v4, v6}, Lkotlin/ranges/RangesKt;->b(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    invoke-static {v8, v7, v5, v7}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    invoke-interface {v15, v8}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    :cond_c
    move-object v7, v8

    .line 224
    check-cast v7, Landroidx/compose/runtime/i1;

    .line 225
    .line 226
    invoke-interface {v15}, Landroidx/compose/runtime/i;->K()V

    .line 227
    .line 228
    .line 229
    sget-boolean v5, Lcom/transsion/home/view/filter/popup/e;->c:Z

    .line 230
    .line 231
    if-eqz v5, :cond_d

    .line 232
    .line 233
    invoke-static {v4, v6}, Lkotlin/ranges/RangesKt;->b(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-static {v7, v4}, Lcom/transsion/home/view/filter/popup/e;->w(Landroidx/compose/runtime/i1;Lkotlin/ranges/ClosedFloatingPointRange;)V

    .line 238
    .line 239
    .line 240
    sput-boolean v13, Lcom/transsion/home/view/filter/popup/e;->c:Z

    .line 241
    .line 242
    :cond_d
    sget-object v8, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 243
    .line 244
    sget-object v30, Landroidx/compose/foundation/layout/b;->a:Landroidx/compose/foundation/layout/b;

    .line 245
    .line 246
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/foundation/layout/b;->d()Landroidx/compose/foundation/layout/b$k;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    sget-object v31, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    .line 251
    .line 252
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/b$a;->i()Landroidx/compose/ui/b$b;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    invoke-static {v4, v5, v15, v13}, Landroidx/compose/foundation/layout/i;->a(Landroidx/compose/foundation/layout/b$k;Landroidx/compose/ui/b$b;Landroidx/compose/runtime/i;I)Landroidx/compose/ui/layout/t;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    invoke-static {v15, v13}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    .line 261
    .line 262
    .line 263
    move-result v5

    .line 264
    invoke-interface {v15}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    invoke-static {v15, v8}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 269
    .line 270
    .line 271
    move-result-object v9

    .line 272
    sget-object v32, Landroidx/compose/ui/node/ComposeUiNode;->c1:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 273
    .line 274
    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    .line 275
    .line 276
    .line 277
    move-result-object v10

    .line 278
    invoke-interface {v15}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    .line 279
    .line 280
    .line 281
    move-result-object v11

    .line 282
    instance-of v11, v11, Landroidx/compose/runtime/f;

    .line 283
    .line 284
    if-nez v11, :cond_e

    .line 285
    .line 286
    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    .line 287
    .line 288
    .line 289
    :cond_e
    invoke-interface {v15}, Landroidx/compose/runtime/i;->C()V

    .line 290
    .line 291
    .line 292
    invoke-interface {v15}, Landroidx/compose/runtime/i;->e()Z

    .line 293
    .line 294
    .line 295
    move-result v11

    .line 296
    if-eqz v11, :cond_f

    .line 297
    .line 298
    invoke-interface {v15, v10}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    .line 299
    .line 300
    .line 301
    goto :goto_8

    .line 302
    :cond_f
    invoke-interface {v15}, Landroidx/compose/runtime/i;->o()V

    .line 303
    .line 304
    .line 305
    :goto_8
    invoke-static {v15}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    .line 306
    .line 307
    .line 308
    move-result-object v10

    .line 309
    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    .line 310
    .line 311
    .line 312
    move-result-object v11

    .line 313
    invoke-static {v10, v4, v11}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    invoke-static {v10, v6, v4}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    invoke-interface {v10}, Landroidx/compose/runtime/i;->e()Z

    .line 328
    .line 329
    .line 330
    move-result v6

    .line 331
    if-nez v6, :cond_10

    .line 332
    .line 333
    invoke-interface {v10}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 338
    .line 339
    .line 340
    move-result-object v11

    .line 341
    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v6

    .line 345
    if-nez v6, :cond_11

    .line 346
    .line 347
    :cond_10
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 348
    .line 349
    .line 350
    move-result-object v6

    .line 351
    invoke-interface {v10, v6}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 355
    .line 356
    .line 357
    move-result-object v5

    .line 358
    invoke-interface {v10, v5, v4}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 359
    .line 360
    .line 361
    :cond_11
    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    invoke-static {v10, v9, v4}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 366
    .line 367
    .line 368
    sget-object v4, Landroidx/compose/foundation/layout/l;->a:Landroidx/compose/foundation/layout/l;

    .line 369
    .line 370
    invoke-static {v7}, Lcom/transsion/home/view/filter/popup/e;->v(Landroidx/compose/runtime/i1;)Lkotlin/ranges/ClosedFloatingPointRange;

    .line 371
    .line 372
    .line 373
    move-result-object v4

    .line 374
    invoke-interface {v4}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    check-cast v4, Ljava/lang/Number;

    .line 379
    .line 380
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 381
    .line 382
    .line 383
    move-result v4

    .line 384
    invoke-static {v4}, Lkotlin/math/MathKt;->d(F)I

    .line 385
    .line 386
    .line 387
    move-result v33

    .line 388
    invoke-static {v7}, Lcom/transsion/home/view/filter/popup/e;->v(Landroidx/compose/runtime/i1;)Lkotlin/ranges/ClosedFloatingPointRange;

    .line 389
    .line 390
    .line 391
    move-result-object v4

    .line 392
    invoke-interface {v4}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    .line 393
    .line 394
    .line 395
    move-result-object v4

    .line 396
    check-cast v4, Ljava/lang/Number;

    .line 397
    .line 398
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 399
    .line 400
    .line 401
    move-result v4

    .line 402
    invoke-static {v4}, Lkotlin/math/MathKt;->d(F)I

    .line 403
    .line 404
    .line 405
    move-result v34

    .line 406
    invoke-static {v7}, Lcom/transsion/home/view/filter/popup/e;->v(Landroidx/compose/runtime/i1;)Lkotlin/ranges/ClosedFloatingPointRange;

    .line 407
    .line 408
    .line 409
    move-result-object v35

    .line 410
    invoke-virtual {v3}, Lcom/transsion/home/bean/RangeValue;->getMinVal()F

    .line 411
    .line 412
    .line 413
    move-result v4

    .line 414
    invoke-virtual {v3}, Lcom/transsion/home/bean/RangeValue;->getMaxVal()F

    .line 415
    .line 416
    .line 417
    move-result v5

    .line 418
    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->b(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    .line 419
    .line 420
    .line 421
    move-result-object v36

    .line 422
    invoke-virtual {v3}, Lcom/transsion/home/bean/RangeValue;->getMaxVal()F

    .line 423
    .line 424
    .line 425
    move-result v3

    .line 426
    float-to-int v3, v3

    .line 427
    sub-int/2addr v3, v14

    .line 428
    sget-object v4, Landroidx/compose/material/k;->a:Landroidx/compose/material/k;

    .line 429
    .line 430
    sget v5, Lcom/tn/lib/widget/R$color;->white:I

    .line 431
    .line 432
    invoke-static {v5, v15, v13}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    .line 433
    .line 434
    .line 435
    move-result-wide v5

    .line 436
    sget v9, Lcom/tn/lib/widget/R$color;->white:I

    .line 437
    .line 438
    invoke-static {v9, v15, v13}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    .line 439
    .line 440
    .line 441
    move-result-wide v9

    .line 442
    sget v11, Lcom/tn/lib/widget/R$color;->white_40:I

    .line 443
    .line 444
    invoke-static {v11, v15, v13}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    .line 445
    .line 446
    .line 447
    move-result-wide v16

    .line 448
    move v11, v13

    .line 449
    move/from16 v37, v14

    .line 450
    .line 451
    move-wide/from16 v13, v16

    .line 452
    .line 453
    move-object/from16 v16, v7

    .line 454
    .line 455
    sget v7, Lcom/tn/lib/widget/R$color;->transparent:I

    .line 456
    .line 457
    invoke-static {v7, v15, v11}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    .line 458
    .line 459
    .line 460
    move-result-wide v17

    .line 461
    sget v7, Lcom/tn/lib/widget/R$color;->transparent:I

    .line 462
    .line 463
    invoke-static {v7, v15, v11}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    .line 464
    .line 465
    .line 466
    move-result-wide v19

    .line 467
    sget v27, Landroidx/compose/material/k;->b:I

    .line 468
    .line 469
    const/16 v28, 0x32a

    .line 470
    .line 471
    const-wide/16 v21, 0x0

    .line 472
    .line 473
    move-object/from16 v39, v8

    .line 474
    .line 475
    move-object/from16 v38, v16

    .line 476
    .line 477
    move-wide/from16 v7, v21

    .line 478
    .line 479
    move/from16 v40, v12

    .line 480
    .line 481
    move-wide/from16 v11, v21

    .line 482
    .line 483
    move-object/from16 p2, v15

    .line 484
    .line 485
    move-wide/from16 v15, v21

    .line 486
    .line 487
    const-wide/16 v23, 0x0

    .line 488
    .line 489
    const/16 v26, 0x0

    .line 490
    .line 491
    move-object/from16 v25, p2

    .line 492
    .line 493
    invoke-virtual/range {v4 .. v28}, Landroidx/compose/material/k;->a(JJJJJJJJJJLandroidx/compose/runtime/i;III)Landroidx/compose/material/j;

    .line 494
    .line 495
    .line 496
    move-result-object v11

    .line 497
    const v4, 0x4c5de2

    .line 498
    .line 499
    .line 500
    move-object/from16 v15, p2

    .line 501
    .line 502
    invoke-interface {v15, v4}, Landroidx/compose/runtime/i;->P(I)V

    .line 503
    .line 504
    .line 505
    invoke-interface {v15}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v5

    .line 513
    if-ne v4, v5, :cond_12

    .line 514
    .line 515
    new-instance v4, Lcl/f;

    .line 516
    .line 517
    move-object/from16 v8, v38

    .line 518
    .line 519
    invoke-direct {v4, v8}, Lcl/f;-><init>(Landroidx/compose/runtime/i1;)V

    .line 520
    .line 521
    .line 522
    invoke-interface {v15, v4}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 523
    .line 524
    .line 525
    goto :goto_9

    .line 526
    :cond_12
    move-object/from16 v8, v38

    .line 527
    .line 528
    :goto_9
    move-object v5, v4

    .line 529
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 530
    .line 531
    invoke-interface {v15}, Landroidx/compose/runtime/i;->K()V

    .line 532
    .line 533
    .line 534
    const v4, -0x6815fd56

    .line 535
    .line 536
    .line 537
    invoke-interface {v15, v4}, Landroidx/compose/runtime/i;->P(I)V

    .line 538
    .line 539
    .line 540
    and-int/lit8 v4, v40, 0x70

    .line 541
    .line 542
    const/16 v6, 0x20

    .line 543
    .line 544
    if-ne v4, v6, :cond_13

    .line 545
    .line 546
    move/from16 v13, v37

    .line 547
    .line 548
    goto :goto_a

    .line 549
    :cond_13
    const/4 v13, 0x0

    .line 550
    :goto_a
    invoke-interface {v15, v0}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    move-result v4

    .line 554
    or-int/2addr v4, v13

    .line 555
    invoke-interface {v15}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v6

    .line 559
    if-nez v4, :cond_14

    .line 560
    .line 561
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v4

    .line 565
    if-ne v6, v4, :cond_15

    .line 566
    .line 567
    :cond_14
    new-instance v6, Lcl/g;

    .line 568
    .line 569
    invoke-direct {v6, v1, v0, v8}, Lcl/g;-><init>(Landroidx/compose/runtime/snapshots/t;Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/i1;)V

    .line 570
    .line 571
    .line 572
    invoke-interface {v15, v6}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 573
    .line 574
    .line 575
    :cond_15
    move-object v10, v6

    .line 576
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 577
    .line 578
    invoke-interface {v15}, Landroidx/compose/runtime/i;->K()V

    .line 579
    .line 580
    .line 581
    const/16 v13, 0x30

    .line 582
    .line 583
    const/16 v14, 0xc

    .line 584
    .line 585
    const/4 v6, 0x0

    .line 586
    const/4 v7, 0x0

    .line 587
    move-object/from16 v4, v35

    .line 588
    .line 589
    move-object/from16 v8, v36

    .line 590
    .line 591
    move v9, v3

    .line 592
    move-object v12, v15

    .line 593
    invoke-static/range {v4 .. v14}, Landroidx/compose/material/SliderKt;->b(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/f;ZLkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/functions/Function0;Landroidx/compose/material/j;Landroidx/compose/runtime/i;II)V

    .line 594
    .line 595
    .line 596
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/foundation/layout/b;->c()Landroidx/compose/foundation/layout/b$d;

    .line 597
    .line 598
    .line 599
    move-result-object v3

    .line 600
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/b$a;->j()Landroidx/compose/ui/b$c;

    .line 601
    .line 602
    .line 603
    move-result-object v4

    .line 604
    const/4 v13, 0x0

    .line 605
    invoke-static {v3, v4, v15, v13}, Landroidx/compose/foundation/layout/a0;->b(Landroidx/compose/foundation/layout/b$d;Landroidx/compose/ui/b$c;Landroidx/compose/runtime/i;I)Landroidx/compose/ui/layout/t;

    .line 606
    .line 607
    .line 608
    move-result-object v3

    .line 609
    invoke-static {v15, v13}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    .line 610
    .line 611
    .line 612
    move-result v4

    .line 613
    invoke-interface {v15}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    .line 614
    .line 615
    .line 616
    move-result-object v5

    .line 617
    move-object/from16 v14, v39

    .line 618
    .line 619
    invoke-static {v15, v14}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 620
    .line 621
    .line 622
    move-result-object v6

    .line 623
    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    .line 624
    .line 625
    .line 626
    move-result-object v7

    .line 627
    invoke-interface {v15}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    .line 628
    .line 629
    .line 630
    move-result-object v8

    .line 631
    instance-of v8, v8, Landroidx/compose/runtime/f;

    .line 632
    .line 633
    if-nez v8, :cond_16

    .line 634
    .line 635
    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    .line 636
    .line 637
    .line 638
    :cond_16
    invoke-interface {v15}, Landroidx/compose/runtime/i;->C()V

    .line 639
    .line 640
    .line 641
    invoke-interface {v15}, Landroidx/compose/runtime/i;->e()Z

    .line 642
    .line 643
    .line 644
    move-result v8

    .line 645
    if-eqz v8, :cond_17

    .line 646
    .line 647
    invoke-interface {v15, v7}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    .line 648
    .line 649
    .line 650
    goto :goto_b

    .line 651
    :cond_17
    invoke-interface {v15}, Landroidx/compose/runtime/i;->o()V

    .line 652
    .line 653
    .line 654
    :goto_b
    invoke-static {v15}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    .line 655
    .line 656
    .line 657
    move-result-object v7

    .line 658
    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    .line 659
    .line 660
    .line 661
    move-result-object v8

    .line 662
    invoke-static {v7, v3, v8}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 663
    .line 664
    .line 665
    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    .line 666
    .line 667
    .line 668
    move-result-object v3

    .line 669
    invoke-static {v7, v5, v3}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 670
    .line 671
    .line 672
    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    .line 673
    .line 674
    .line 675
    move-result-object v3

    .line 676
    invoke-interface {v7}, Landroidx/compose/runtime/i;->e()Z

    .line 677
    .line 678
    .line 679
    move-result v5

    .line 680
    if-nez v5, :cond_18

    .line 681
    .line 682
    invoke-interface {v7}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    move-result-object v5

    .line 686
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 687
    .line 688
    .line 689
    move-result-object v8

    .line 690
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 691
    .line 692
    .line 693
    move-result v5

    .line 694
    if-nez v5, :cond_19

    .line 695
    .line 696
    :cond_18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 697
    .line 698
    .line 699
    move-result-object v5

    .line 700
    invoke-interface {v7, v5}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 701
    .line 702
    .line 703
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 704
    .line 705
    .line 706
    move-result-object v4

    .line 707
    invoke-interface {v7, v4, v3}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 708
    .line 709
    .line 710
    :cond_19
    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    .line 711
    .line 712
    .line 713
    move-result-object v3

    .line 714
    invoke-static {v7, v6, v3}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 715
    .line 716
    .line 717
    sget-object v3, Landroidx/compose/foundation/layout/d0;->a:Landroidx/compose/foundation/layout/d0;

    .line 718
    .line 719
    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v4

    .line 723
    const/16 v29, 0xc

    .line 724
    .line 725
    invoke-static/range {v29 .. v29}, Lo0/x;->c(I)J

    .line 726
    .line 727
    .line 728
    move-result-wide v8

    .line 729
    sget-object v30, Landroidx/compose/ui/text/font/h;->b:Landroidx/compose/ui/text/font/h$a;

    .line 730
    .line 731
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/ui/text/font/h$a;->b()Landroidx/compose/ui/text/font/s;

    .line 732
    .line 733
    .line 734
    move-result-object v12

    .line 735
    sget-object v31, Landroidx/compose/ui/text/font/p;->b:Landroidx/compose/ui/text/font/p$a;

    .line 736
    .line 737
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/text/font/p$a;->e()Landroidx/compose/ui/text/font/p;

    .line 738
    .line 739
    .line 740
    move-result-object v11

    .line 741
    sget v5, Lcom/tn/lib/widget/R$color;->white:I

    .line 742
    .line 743
    invoke-static {v5, v15, v13}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    .line 744
    .line 745
    .line 746
    move-result-wide v6

    .line 747
    const/4 v5, 0x5

    .line 748
    int-to-float v5, v5

    .line 749
    invoke-static {v5}, Lo0/i;->g(F)F

    .line 750
    .line 751
    .line 752
    move-result v17

    .line 753
    const/16 v21, 0xe

    .line 754
    .line 755
    const/16 v22, 0x0

    .line 756
    .line 757
    const/16 v18, 0x0

    .line 758
    .line 759
    const/16 v19, 0x0

    .line 760
    .line 761
    const/16 v20, 0x0

    .line 762
    .line 763
    move-object/from16 v16, v14

    .line 764
    .line 765
    invoke-static/range {v16 .. v22}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/f;FFFFILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 766
    .line 767
    .line 768
    move-result-object v5

    .line 769
    const/16 v27, 0x0

    .line 770
    .line 771
    const v28, 0x1ff90

    .line 772
    .line 773
    .line 774
    const/4 v10, 0x0

    .line 775
    const-wide/16 v16, 0x0

    .line 776
    .line 777
    move-object/from16 v32, v14

    .line 778
    .line 779
    move-wide/from16 v13, v16

    .line 780
    .line 781
    const/16 v16, 0x0

    .line 782
    .line 783
    move-object/from16 p2, v15

    .line 784
    .line 785
    move-object/from16 v15, v16

    .line 786
    .line 787
    const-wide/16 v17, 0x0

    .line 788
    .line 789
    const/16 v19, 0x0

    .line 790
    .line 791
    const/16 v20, 0x0

    .line 792
    .line 793
    const/16 v21, 0x0

    .line 794
    .line 795
    const/16 v22, 0x0

    .line 796
    .line 797
    const/16 v23, 0x0

    .line 798
    .line 799
    const/16 v24, 0x0

    .line 800
    .line 801
    const v26, 0x30c30

    .line 802
    .line 803
    .line 804
    move-object/from16 v25, p2

    .line 805
    .line 806
    invoke-static/range {v4 .. v28}, Landroidx/compose/material3/TextKt;->a(Ljava/lang/String;Landroidx/compose/ui/f;JJLandroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/h;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/text/style/h;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/d0;Landroidx/compose/runtime/i;III)V

    .line 807
    .line 808
    .line 809
    const/16 v20, 0x2

    .line 810
    .line 811
    const/16 v21, 0x0

    .line 812
    .line 813
    const/high16 v18, 0x3f800000    # 1.0f

    .line 814
    .line 815
    move-object/from16 v16, v3

    .line 816
    .line 817
    move-object/from16 v17, v32

    .line 818
    .line 819
    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/b0;->a(Landroidx/compose/foundation/layout/c0;Landroidx/compose/ui/f;FZILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 820
    .line 821
    .line 822
    move-result-object v3

    .line 823
    move-object/from16 v15, p2

    .line 824
    .line 825
    const/4 v5, 0x0

    .line 826
    invoke-static {v3, v15, v5}, Landroidx/compose/foundation/layout/e0;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    .line 827
    .line 828
    .line 829
    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object v4

    .line 833
    invoke-static/range {v29 .. v29}, Lo0/x;->c(I)J

    .line 834
    .line 835
    .line 836
    move-result-wide v8

    .line 837
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/ui/text/font/h$a;->b()Landroidx/compose/ui/text/font/s;

    .line 838
    .line 839
    .line 840
    move-result-object v12

    .line 841
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/text/font/p$a;->e()Landroidx/compose/ui/text/font/p;

    .line 842
    .line 843
    .line 844
    move-result-object v11

    .line 845
    sget v3, Lcom/tn/lib/widget/R$color;->white:I

    .line 846
    .line 847
    invoke-static {v3, v15, v5}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    .line 848
    .line 849
    .line 850
    move-result-wide v6

    .line 851
    const v28, 0x1ff92

    .line 852
    .line 853
    .line 854
    const/4 v5, 0x0

    .line 855
    const-wide/16 v13, 0x0

    .line 856
    .line 857
    const/4 v3, 0x0

    .line 858
    move-object/from16 v29, v15

    .line 859
    .line 860
    move-object v15, v3

    .line 861
    const/16 v16, 0x0

    .line 862
    .line 863
    const-wide/16 v17, 0x0

    .line 864
    .line 865
    const/16 v20, 0x0

    .line 866
    .line 867
    const/16 v21, 0x0

    .line 868
    .line 869
    const v26, 0x30c00

    .line 870
    .line 871
    .line 872
    move-object/from16 v25, v29

    .line 873
    .line 874
    invoke-static/range {v4 .. v28}, Landroidx/compose/material3/TextKt;->a(Ljava/lang/String;Landroidx/compose/ui/f;JJLandroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/h;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/text/style/h;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/d0;Landroidx/compose/runtime/i;III)V

    .line 875
    .line 876
    .line 877
    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/i;->r()V

    .line 878
    .line 879
    .line 880
    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/i;->r()V

    .line 881
    .line 882
    .line 883
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 884
    .line 885
    .line 886
    move-result v3

    .line 887
    if-eqz v3, :cond_1a

    .line 888
    .line 889
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 890
    .line 891
    .line 892
    :cond_1a
    :goto_c
    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    .line 893
    .line 894
    .line 895
    move-result-object v3

    .line 896
    if-eqz v3, :cond_1b

    .line 897
    .line 898
    new-instance v4, Lcl/h;

    .line 899
    .line 900
    invoke-direct {v4, v0, v1, v2}, Lcl/h;-><init>(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;I)V

    .line 901
    .line 902
    .line 903
    invoke-interface {v3, v4}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    .line 904
    .line 905
    .line 906
    :cond_1b
    return-void
.end method

.method private static final v(Landroidx/compose/runtime/i1;)Lkotlin/ranges/ClosedFloatingPointRange;
    .locals 0

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lkotlin/ranges/ClosedFloatingPointRange;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final w(Landroidx/compose/runtime/i1;Lkotlin/ranges/ClosedFloatingPointRange;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final x(Landroidx/compose/runtime/i1;Lkotlin/ranges/ClosedFloatingPointRange;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/Number;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {p0}, Lcom/transsion/home/view/filter/popup/e;->v(Landroidx/compose/runtime/i1;)Lkotlin/ranges/ClosedFloatingPointRange;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/Number;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    cmpg-float v0, v0, v1

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Number;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ljava/lang/Number;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    :goto_0
    float-to-int v1, v0

    .line 56
    sget v2, Lcom/transsion/home/view/filter/popup/e;->b:F

    .line 57
    .line 58
    float-to-int v2, v2

    .line 59
    if-eq v1, v2, :cond_1

    .line 60
    .line 61
    const-wide/16 v1, 0x14

    .line 62
    .line 63
    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/f0;->b(J)V

    .line 64
    .line 65
    .line 66
    :cond_1
    sput v0, Lcom/transsion/home/view/filter/popup/e;->b:F

    .line 67
    .line 68
    invoke-static {p0, p1}, Lcom/transsion/home/view/filter/popup/e;->w(Landroidx/compose/runtime/i1;Lkotlin/ranges/ClosedFloatingPointRange;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Ljava/lang/Number;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Ljava/lang/Number;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    cmpg-float p0, p0, v0

    .line 92
    .line 93
    if-nez p0, :cond_2

    .line 94
    .line 95
    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    check-cast p0, Ljava/lang/Number;

    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    sput p0, Lcom/transsion/home/view/filter/popup/e;->a:F

    .line 106
    .line 107
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 108
    .line 109
    return-object p0
.end method

.method private static final y(Landroidx/compose/runtime/snapshots/t;Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/i1;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/transsion/home/view/filter/popup/e;->v(Landroidx/compose/runtime/i1;)Lkotlin/ranges/ClosedFloatingPointRange;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {p2}, Lcom/transsion/home/view/filter/popup/e;->v(Landroidx/compose/runtime/i1;)Lkotlin/ranges/ClosedFloatingPointRange;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/Number;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    cmpl-float v0, v0, v1

    .line 30
    .line 31
    if-lez v0, :cond_0

    .line 32
    .line 33
    sget v0, Lcom/transsion/home/view/filter/popup/e;->a:F

    .line 34
    .line 35
    invoke-static {v0, v0}, Lkotlin/ranges/RangesKt;->b(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p2, v0}, Lcom/transsion/home/view/filter/popup/e;->w(Landroidx/compose/runtime/i1;Lkotlin/ranges/ClosedFloatingPointRange;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/home/bean/Item;->getFilterType()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    sget-object v0, Lcom/transsion/home/view/filter/popup/PopupFilterView;->Companion:Lcom/transsion/home/view/filter/popup/PopupFilterView$a;

    .line 47
    .line 48
    invoke-static {p2}, Lcom/transsion/home/view/filter/popup/e;->v(Landroidx/compose/runtime/i1;)Lkotlin/ranges/ClosedFloatingPointRange;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v1}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Ljava/lang/Number;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-static {p2}, Lcom/transsion/home/view/filter/popup/e;->v(Landroidx/compose/runtime/i1;)Lkotlin/ranges/ClosedFloatingPointRange;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-interface {p2}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    check-cast p2, Ljava/lang/Number;

    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    invoke-virtual {v0, v1, p2}, Lcom/transsion/home/view/filter/popup/PopupFilterView$a;->a(FF)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 84
    .line 85
    return-object p0
.end method

.method private static final z(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;
    .locals 0

    .line 1
    or-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    invoke-static {p2}, Landroidx/compose/runtime/v1;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-static {p0, p1, p3, p2}, Lcom/transsion/home/view/filter/popup/e;->u(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/i;I)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method
