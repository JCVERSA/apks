.class public final Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/runtime/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;,
        Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$b;,
        Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;
    }
.end annotation


# instance fields
.field private final a:Landroidx/compose/ui/node/LayoutNode;

.field private b:Landroidx/compose/runtime/m;

.field private c:Landroidx/compose/ui/layout/p0;

.field private d:I

.field private e:I

.field private final f:Ljava/util/HashMap;

.field private final g:Ljava/util/HashMap;

.field private final h:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;

.field private final i:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$b;

.field private final j:Ljava/util/HashMap;

.field private final k:Landroidx/compose/ui/layout/p0$a;

.field private final l:Ljava/util/Map;

.field private final m:Landroidx/compose/runtime/collection/b;

.field private n:I

.field private o:I

.field private final p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/p0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->c:Landroidx/compose/ui/layout/p0;

    .line 7
    .line 8
    new-instance p1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->f:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance p1, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->g:Ljava/util/HashMap;

    .line 21
    .line 22
    new-instance p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->h:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;

    .line 28
    .line 29
    new-instance p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$b;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$b;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->i:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$b;

    .line 35
    .line 36
    new-instance p1, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j:Ljava/util/HashMap;

    .line 42
    .line 43
    new-instance p1, Landroidx/compose/ui/layout/p0$a;

    .line 44
    .line 45
    const/4 p2, 0x0

    .line 46
    const/4 v0, 0x1

    .line 47
    invoke-direct {p1, p2, v0, p2}, Landroidx/compose/ui/layout/p0$a;-><init>(Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->k:Landroidx/compose/ui/layout/p0$a;

    .line 51
    .line 52
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 53
    .line 54
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->l:Ljava/util/Map;

    .line 58
    .line 59
    new-instance p1, Landroidx/compose/runtime/collection/b;

    .line 60
    .line 61
    const/16 p2, 0x10

    .line 62
    .line 63
    new-array p2, p2, [Ljava/lang/Object;

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    invoke-direct {p1, p2, v0}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->m:Landroidx/compose/runtime/collection/b;

    .line 70
    .line 71
    const-string p1, "Asking for intrinsic measurements of SubcomposeLayout layouts is not supported. This includes components that are built on top of SubcomposeLayout, such as lazy lists, BoxWithConstraints, TabRow, etc. To mitigate this:\n- if intrinsic measurements are used to achieve \'match parent\' sizing, consider replacing the parent of the component with a custom layout which controls the order in which children are measured, making intrinsic measurement not needed\n- adding a size modifier to the component, in order to fast return the queried intrinsic measurement."

    .line 72
    .line 73
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->p:Ljava/lang/String;

    .line 74
    .line 75
    return-void
.end method

.method private final A(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroidx/compose/ui/node/LayoutNode;->p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 8
    .line 9
    invoke-virtual {v1, p1, p2, p3}, Landroidx/compose/ui/node/LayoutNode;->P0(III)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-static {v0, p1}, Landroidx/compose/ui/node/LayoutNode;->p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method static synthetic B(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;IIIILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x1

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->A(III)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final C(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->m:Landroidx/compose/runtime/collection/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->e:I

    .line 8
    .line 9
    if-lt v0, v1, :cond_5

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->m:Landroidx/compose/runtime/collection/b;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->e:I

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->m:Landroidx/compose/runtime/collection/b;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->m:Landroidx/compose/runtime/collection/b;

    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Landroidx/compose/runtime/collection/b;->y(ILjava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :goto_0
    iget v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->e:I

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    add-int/2addr v0, v1

    .line 36
    iput v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->e:I

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j:Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->D(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/SubcomposeLayoutState$a;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->l:Ljava/util/Map;

    .line 51
    .line 52
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 56
    .line 57
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->R()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    sget-object v0, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 62
    .line 63
    if-ne p2, v0, :cond_1

    .line 64
    .line 65
    iget-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 66
    .line 67
    invoke-virtual {p2, v1}, Landroidx/compose/ui/node/LayoutNode;->a1(Z)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    iget-object v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 72
    .line 73
    const/4 v6, 0x6

    .line 74
    const/4 v7, 0x0

    .line 75
    const/4 v3, 0x1

    .line 76
    const/4 v4, 0x0

    .line 77
    const/4 v5, 0x0

    .line 78
    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/node/LayoutNode;->d1(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_1
    iget-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j:Ljava/util/HashMap;

    .line 82
    .line 83
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    .line 88
    .line 89
    if-eqz p1, :cond_3

    .line 90
    .line 91
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->X()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->Y0()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    const/4 v0, 0x0

    .line 104
    :goto_2
    if-ge v0, p2, :cond_4

    .line 105
    .line 106
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    .line 111
    .line 112
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->h1()V

    .line 113
    .line 114
    .line 115
    add-int/lit8 v0, v0, 0x1

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    :cond_4
    return-object p1

    .line 123
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 124
    .line 125
    const-string p2, "Error: currentPostLookaheadIndex cannot be greater than the size of thepostLookaheadComposedSlotIds list."

    .line 126
    .line 127
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p1
.end method

.method private final E(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->X()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->t1(Landroidx/compose/ui/node/LayoutNode$UsageByParent;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->U()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;->m1(Landroidx/compose/ui/node/LayoutNode$UsageByParent;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private final I(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;)V
    .locals 13

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/j;->e:Landroidx/compose/runtime/snapshots/j$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/j$a;->d()Landroidx/compose/runtime/snapshots/j;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/j;->h()Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/j$a;->f(Landroidx/compose/runtime/snapshots/j;)Landroidx/compose/runtime/snapshots/j;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    :try_start_0
    iget-object v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    invoke-static {v4, v5}, Landroidx/compose/ui/node/LayoutNode;->p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->c()Lkotlin/jvm/functions/Function2;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-virtual {p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->b()Landroidx/compose/runtime/d2;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    iget-object v11, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->b:Landroidx/compose/runtime/m;

    .line 34
    .line 35
    if-eqz v11, :cond_1

    .line 36
    .line 37
    invoke-virtual {p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->e()Z

    .line 38
    .line 39
    .line 40
    move-result v10

    .line 41
    new-instance v7, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$subcompose$3$1$1;

    .line 42
    .line 43
    invoke-direct {v7, p2, v6}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$subcompose$3$1$1;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;Lkotlin/jvm/functions/Function2;)V

    .line 44
    .line 45
    .line 46
    const v6, -0x68551fe9

    .line 47
    .line 48
    .line 49
    invoke-static {v6, v5, v7}, Landroidx/compose/runtime/internal/b;->b(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/a;

    .line 50
    .line 51
    .line 52
    move-result-object v12

    .line 53
    move-object v7, p0

    .line 54
    move-object v9, p1

    .line 55
    invoke-direct/range {v7 .. v12}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->K(Landroidx/compose/runtime/d2;Landroidx/compose/ui/node/LayoutNode;ZLandroidx/compose/runtime/m;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/d2;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p2, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->i(Landroidx/compose/runtime/d2;)V

    .line 60
    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    invoke-virtual {p2, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->l(Z)V

    .line 64
    .line 65
    .line 66
    invoke-static {v4, p1}, Landroidx/compose/ui/node/LayoutNode;->p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 67
    .line 68
    .line 69
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    invoke-virtual {v0, v1, v3, v2}, Landroidx/compose/runtime/snapshots/j$a;->m(Landroidx/compose/runtime/snapshots/j;Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    const-string p2, "parent composition reference not set"

    .line 80
    .line 81
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :goto_1
    invoke-virtual {v0, v1, v3, v2}, Landroidx/compose/runtime/snapshots/j$a;->m(Landroidx/compose/runtime/snapshots/j;Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;)V

    .line 86
    .line 87
    .line 88
    throw p1
.end method

.method private final J(Landroidx/compose/ui/node/LayoutNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->f:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;

    .line 10
    .line 11
    sget-object v2, Landroidx/compose/ui/layout/ComposableSingletons$SubcomposeLayoutKt;->a:Landroidx/compose/ui/layout/ComposableSingletons$SubcomposeLayoutKt;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/compose/ui/layout/ComposableSingletons$SubcomposeLayoutKt;->a()Lkotlin/jvm/functions/Function2;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    const/4 v6, 0x4

    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    move-object v2, v1

    .line 21
    move-object v3, p2

    .line 22
    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/d2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    check-cast v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->b()Landroidx/compose/runtime/d2;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    invoke-interface {p2}, Landroidx/compose/runtime/l;->r()Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 p2, 0x1

    .line 42
    :goto_0
    invoke-virtual {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->c()Lkotlin/jvm/functions/Function2;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-ne v0, p3, :cond_2

    .line 47
    .line 48
    if-nez p2, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->d()Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    :cond_2
    invoke-virtual {v1, p3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->j(Lkotlin/jvm/functions/Function2;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, p1, v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->I(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;)V

    .line 60
    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    invoke-virtual {v1, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->k(Z)V

    .line 64
    .line 65
    .line 66
    :cond_3
    return-void
.end method

.method private final K(Landroidx/compose/runtime/d2;Landroidx/compose/ui/node/LayoutNode;ZLandroidx/compose/runtime/m;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/d2;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Landroidx/compose/runtime/l;->isDisposed()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :cond_0
    invoke-static {p2, p4}, Landroidx/compose/ui/platform/b3;->a(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/runtime/m;)Landroidx/compose/runtime/d2;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_1
    if-nez p3, :cond_2

    .line 14
    .line 15
    invoke-interface {p1, p5}, Landroidx/compose/runtime/l;->d(Lkotlin/jvm/functions/Function2;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    invoke-interface {p1, p5}, Landroidx/compose/runtime/d2;->p(Lkotlin/jvm/functions/Function2;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-object p1
.end method

.method private final L(Ljava/lang/Object;)Landroidx/compose/ui/node/LayoutNode;
    .locals 9

    .line 1
    iget v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->J()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->o:I

    .line 18
    .line 19
    sub-int/2addr v0, v2

    .line 20
    iget v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->n:I

    .line 21
    .line 22
    sub-int v2, v0, v2

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    sub-int/2addr v0, v3

    .line 26
    move v4, v0

    .line 27
    :goto_0
    const/4 v5, -0x1

    .line 28
    if-lt v4, v2, :cond_2

    .line 29
    .line 30
    invoke-direct {p0, v4}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->x(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    move v6, v4

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move v6, v5

    .line 46
    :goto_1
    if-ne v6, v5, :cond_6

    .line 47
    .line 48
    :goto_2
    if-lt v0, v2, :cond_5

    .line 49
    .line 50
    iget-object v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 51
    .line 52
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->J()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    .line 61
    .line 62
    iget-object v7, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->f:Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    check-cast v4, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;

    .line 72
    .line 73
    invoke-virtual {v4}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->f()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-static {}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->c()Landroidx/compose/ui/layout/SubcomposeLayoutKt$a;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    if-eq v7, v8, :cond_4

    .line 82
    .line 83
    iget-object v7, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->c:Landroidx/compose/ui/layout/p0;

    .line 84
    .line 85
    invoke-virtual {v4}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->f()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    invoke-interface {v7, p1, v8}, Landroidx/compose/ui/layout/p0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_3

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    :goto_3
    invoke-virtual {v4, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->m(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    move v4, v0

    .line 103
    move v6, v4

    .line 104
    goto :goto_4

    .line 105
    :cond_5
    move v4, v0

    .line 106
    :cond_6
    :goto_4
    if-ne v6, v5, :cond_7

    .line 107
    .line 108
    goto :goto_5

    .line 109
    :cond_7
    if-eq v4, v2, :cond_8

    .line 110
    .line 111
    invoke-direct {p0, v4, v2, v3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->A(III)V

    .line 112
    .line 113
    .line 114
    :cond_8
    iget p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->n:I

    .line 115
    .line 116
    add-int/2addr p1, v5

    .line 117
    iput p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->n:I

    .line 118
    .line 119
    iget-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 120
    .line 121
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->J()Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    .line 130
    .line 131
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->f:Ljava/util/HashMap;

    .line 132
    .line 133
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    check-cast v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;

    .line 141
    .line 142
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 143
    .line 144
    const/4 v4, 0x2

    .line 145
    invoke-static {v2, v1, v4, v1}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->h(Landroidx/compose/runtime/i1;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->l(Z)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->k(Z)V

    .line 156
    .line 157
    .line 158
    move-object v1, p1

    .line 159
    :goto_5
    return-object v1
.end method

.method public static final synthetic a(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->v()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->d:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic c(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->e:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic d(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/runtime/collection/b;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->m:Landroidx/compose/runtime/collection/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$b;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->i:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->o:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic h(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->n:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic i(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/node/LayoutNode;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic j(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->h:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->g:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic l(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->A(III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic m(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->C(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic n(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic o(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->o:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic q(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->n:I

    .line 2
    .line 3
    return-void
.end method

.method private final s(I)Landroidx/compose/ui/node/LayoutNode;
    .locals 5

    .line 1
    new-instance v0, Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/compose/ui/node/LayoutNode;-><init>(ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 11
    .line 12
    invoke-static {v1, v3}, Landroidx/compose/ui/node/LayoutNode;->p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 16
    .line 17
    invoke-virtual {v2, p1, v0}, Landroidx/compose/ui/node/LayoutNode;->u0(ILandroidx/compose/ui/node/LayoutNode;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v4}, Landroidx/compose/ui/node/LayoutNode;->p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method private final t()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroidx/compose/ui/node/LayoutNode;->p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->f:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Iterable;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->b()Landroidx/compose/runtime/d2;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-interface {v2}, Landroidx/compose/runtime/l;->dispose()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->X0()V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-static {v0, v1}, Landroidx/compose/ui/node/LayoutNode;->p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->f:Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->g:Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 58
    .line 59
    .line 60
    iput v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->o:I

    .line 61
    .line 62
    iput v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->n:I

    .line 63
    .line 64
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j:Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->y()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method private final v()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->l:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Iterable;

    .line 8
    .line 9
    new-instance v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$disposeUnusedSlotsInPostLookahead$1;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$disposeUnusedSlotsInPostLookahead$1;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->G(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final x(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->J()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->f:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    check-cast p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->f()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method private final z(Z)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->o:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->J()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->n:I

    .line 20
    .line 21
    if-eq v2, v1, :cond_5

    .line 22
    .line 23
    iput v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->n:I

    .line 24
    .line 25
    sget-object v2, Landroidx/compose/runtime/snapshots/j;->e:Landroidx/compose/runtime/snapshots/j$a;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/j$a;->d()Landroidx/compose/runtime/snapshots/j;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/4 v4, 0x0

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/j;->h()Lkotlin/jvm/functions/Function1;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move-object v5, v4

    .line 40
    :goto_0
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/snapshots/j$a;->f(Landroidx/compose/runtime/snapshots/j;)Landroidx/compose/runtime/snapshots/j;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    move v7, v0

    .line 45
    :goto_1
    if-ge v7, v1, :cond_4

    .line 46
    .line 47
    :try_start_0
    iget-object v8, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 48
    .line 49
    invoke-virtual {v8}, Landroidx/compose/ui/node/LayoutNode;->J()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    check-cast v8, Landroidx/compose/ui/node/LayoutNode;

    .line 58
    .line 59
    iget-object v9, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->f:Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    check-cast v9, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;

    .line 66
    .line 67
    if-eqz v9, :cond_3

    .line 68
    .line 69
    invoke-virtual {v9}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->a()Z

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    if-eqz v10, :cond_3

    .line 74
    .line 75
    invoke-direct {p0, v8}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->E(Landroidx/compose/ui/node/LayoutNode;)V

    .line 76
    .line 77
    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    invoke-virtual {v9}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->b()Landroidx/compose/runtime/d2;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    if-eqz v8, :cond_1

    .line 85
    .line 86
    invoke-interface {v8}, Landroidx/compose/runtime/d2;->deactivate()V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    goto :goto_4

    .line 92
    :cond_1
    :goto_2
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 93
    .line 94
    const/4 v10, 0x2

    .line 95
    invoke-static {v8, v4, v10, v4}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    invoke-virtual {v9, v8}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->h(Landroidx/compose/runtime/i1;)V

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_2
    invoke-virtual {v9, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->g(Z)V

    .line 104
    .line 105
    .line 106
    :goto_3
    invoke-static {}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->c()Landroidx/compose/ui/layout/SubcomposeLayoutKt$a;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    invoke-virtual {v9, v8}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->m(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .line 118
    invoke-virtual {v2, v3, v6, v5}, Landroidx/compose/runtime/snapshots/j$a;->m(Landroidx/compose/runtime/snapshots/j;Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->g:Ljava/util/HashMap;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 124
    .line 125
    .line 126
    goto :goto_5

    .line 127
    :goto_4
    invoke-virtual {v2, v3, v6, v5}, Landroidx/compose/runtime/snapshots/j$a;->m(Landroidx/compose/runtime/snapshots/j;Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;)V

    .line 128
    .line 129
    .line 130
    throw p1

    .line 131
    :cond_5
    :goto_5
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->y()V

    .line 132
    .line 133
    .line 134
    return-void
.end method


# virtual methods
.method public final D(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/SubcomposeLayoutState$a;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->D0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance p1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$e;

    .line 10
    .line 11
    invoke-direct {p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$e;-><init>()V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->y()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->g:Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_3

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->l:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    invoke-direct {p0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->L(Ljava/lang/Object;)Landroidx/compose/ui/node/LayoutNode;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v2, 0x1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iget-object v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 47
    .line 48
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->J()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    iget-object v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 57
    .line 58
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->J()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-direct {p0, v3, v4, v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->A(III)V

    .line 67
    .line 68
    .line 69
    iget v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->o:I

    .line 70
    .line 71
    add-int/2addr v3, v2

    .line 72
    iput v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->o:I

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 76
    .line 77
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->J()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-direct {p0, v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->s(I)Landroidx/compose/ui/node/LayoutNode;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->o:I

    .line 90
    .line 91
    add-int/2addr v3, v2

    .line 92
    iput v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->o:I

    .line 93
    .line 94
    :goto_0
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    :cond_2
    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    .line 98
    .line 99
    invoke-direct {p0, v1, p1, p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->J(Landroidx/compose/ui/node/LayoutNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    new-instance p2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$f;

    .line 103
    .line 104
    invoke-direct {p2, p0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$f;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return-object p2
.end method

.method public final F(Landroidx/compose/runtime/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->b:Landroidx/compose/runtime/m;

    .line 2
    .line 3
    return-void
.end method

.method public final G(Landroidx/compose/ui/layout/p0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->c:Landroidx/compose/ui/layout/p0;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->c:Landroidx/compose/ui/layout/p0;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->z(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 12
    .line 13
    const/4 v4, 0x7

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/node/LayoutNode;->h1(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final H(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->y()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->R()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Measuring:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    sget-object v4, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 17
    .line 18
    if-eq v0, v4, :cond_1

    .line 19
    .line 20
    sget-object v4, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LookaheadMeasuring:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 21
    .line 22
    if-eq v0, v4, :cond_1

    .line 23
    .line 24
    sget-object v4, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LookaheadLayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 25
    .line 26
    if-ne v0, v4, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v4, v2

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    move v4, v3

    .line 32
    :goto_1
    if-nez v4, :cond_2

    .line 33
    .line 34
    const-string v4, "subcompose can only be used inside the measure or layout blocks"

    .line 35
    .line 36
    invoke-static {v4}, Lg0/a;->b(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->g:Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    if-nez v5, :cond_7

    .line 46
    .line 47
    iget-object v5, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j:Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    .line 54
    .line 55
    if-eqz v5, :cond_5

    .line 56
    .line 57
    iget v6, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->o:I

    .line 58
    .line 59
    if-lez v6, :cond_3

    .line 60
    .line 61
    move v2, v3

    .line 62
    :cond_3
    if-nez v2, :cond_4

    .line 63
    .line 64
    const-string v2, "Check failed."

    .line 65
    .line 66
    invoke-static {v2}, Lg0/a;->b(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_4
    iget v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->o:I

    .line 70
    .line 71
    add-int/lit8 v2, v2, -0x1

    .line 72
    .line 73
    iput v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->o:I

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_5
    invoke-direct {p0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->L(Ljava/lang/Object;)Landroidx/compose/ui/node/LayoutNode;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    if-nez v2, :cond_6

    .line 81
    .line 82
    iget v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->d:I

    .line 83
    .line 84
    invoke-direct {p0, v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->s(I)Landroidx/compose/ui/node/LayoutNode;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    :cond_6
    move-object v5, v2

    .line 89
    :goto_2
    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    :cond_7
    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    .line 93
    .line 94
    iget-object v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 95
    .line 96
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->J()Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    iget v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->d:I

    .line 101
    .line 102
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-eq v2, v5, :cond_9

    .line 107
    .line 108
    iget-object v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 109
    .line 110
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->J()Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-interface {v2, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    iget v8, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->d:I

    .line 119
    .line 120
    if-lt v7, v8, :cond_8

    .line 121
    .line 122
    if-eq v8, v7, :cond_9

    .line 123
    .line 124
    const/4 v10, 0x4

    .line 125
    const/4 v11, 0x0

    .line 126
    const/4 v9, 0x0

    .line 127
    move-object v6, p0

    .line 128
    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->B(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;IIIILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v0, "Key \""

    .line 138
    .line 139
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string p1, "\" was already used. If you are using LazyColumn/Row please make sure you provide a unique key for each item."

    .line 146
    .line 147
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p2

    .line 164
    :cond_9
    :goto_3
    iget v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->d:I

    .line 165
    .line 166
    add-int/2addr v2, v3

    .line 167
    iput v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->d:I

    .line 168
    .line 169
    invoke-direct {p0, v5, p1, p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->J(Landroidx/compose/ui/node/LayoutNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 170
    .line 171
    .line 172
    if-eq v0, v1, :cond_b

    .line 173
    .line 174
    sget-object p1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 175
    .line 176
    if-ne v0, p1, :cond_a

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_a
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->C()Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    goto :goto_5

    .line 184
    :cond_b
    :goto_4
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->D()Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    :goto_5
    return-object p1
.end method

.method public onDeactivate()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->z(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public onRelease()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->t()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onReuse()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->z(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final r(Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/t;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->p:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$d;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v1
.end method

.method public final u(I)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->n:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->J()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->o:I

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    const/4 v2, 0x1

    .line 18
    sub-int/2addr v1, v2

    .line 19
    if-gt p1, v1, :cond_6

    .line 20
    .line 21
    iget-object v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->k:Landroidx/compose/ui/layout/p0$a;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroidx/compose/ui/layout/p0$a;->clear()V

    .line 24
    .line 25
    .line 26
    if-gt p1, v1, :cond_0

    .line 27
    .line 28
    move v3, p1

    .line 29
    :goto_0
    invoke-direct {p0, v3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->x(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    iget-object v5, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->k:Landroidx/compose/ui/layout/p0$a;

    .line 34
    .line 35
    invoke-virtual {v5, v4}, Landroidx/compose/ui/layout/p0$a;->a(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    if-eq v3, v1, :cond_0

    .line 39
    .line 40
    add-int/2addr v3, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->c:Landroidx/compose/ui/layout/p0;

    .line 43
    .line 44
    iget-object v4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->k:Landroidx/compose/ui/layout/p0$a;

    .line 45
    .line 46
    invoke-interface {v3, v4}, Landroidx/compose/ui/layout/p0;->a(Landroidx/compose/ui/layout/p0$a;)V

    .line 47
    .line 48
    .line 49
    sget-object v3, Landroidx/compose/runtime/snapshots/j;->e:Landroidx/compose/runtime/snapshots/j$a;

    .line 50
    .line 51
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/j$a;->d()Landroidx/compose/runtime/snapshots/j;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    if-eqz v4, :cond_1

    .line 56
    .line 57
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/j;->h()Lkotlin/jvm/functions/Function1;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const/4 v5, 0x0

    .line 63
    :goto_1
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/snapshots/j$a;->f(Landroidx/compose/runtime/snapshots/j;)Landroidx/compose/runtime/snapshots/j;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    move v7, v0

    .line 68
    :goto_2
    if-lt v1, p1, :cond_5

    .line 69
    .line 70
    :try_start_0
    iget-object v8, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 71
    .line 72
    invoke-virtual {v8}, Landroidx/compose/ui/node/LayoutNode;->J()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    check-cast v8, Landroidx/compose/ui/node/LayoutNode;

    .line 81
    .line 82
    iget-object v9, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->f:Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    check-cast v9, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;

    .line 92
    .line 93
    invoke-virtual {v9}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->f()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    iget-object v11, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->k:Landroidx/compose/ui/layout/p0$a;

    .line 98
    .line 99
    invoke-virtual {v11, v10}, Landroidx/compose/ui/layout/p0$a;->contains(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    if-eqz v11, :cond_2

    .line 104
    .line 105
    iget v11, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->n:I

    .line 106
    .line 107
    add-int/2addr v11, v2

    .line 108
    iput v11, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->n:I

    .line 109
    .line 110
    invoke-virtual {v9}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->a()Z

    .line 111
    .line 112
    .line 113
    move-result v11

    .line 114
    if-eqz v11, :cond_4

    .line 115
    .line 116
    invoke-direct {p0, v8}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->E(Landroidx/compose/ui/node/LayoutNode;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v9, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->g(Z)V

    .line 120
    .line 121
    .line 122
    move v7, v2

    .line 123
    goto :goto_3

    .line 124
    :catchall_0
    move-exception p1

    .line 125
    goto :goto_4

    .line 126
    :cond_2
    iget-object v11, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 127
    .line 128
    invoke-static {v11, v2}, Landroidx/compose/ui/node/LayoutNode;->p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 129
    .line 130
    .line 131
    iget-object v12, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->f:Ljava/util/HashMap;

    .line 132
    .line 133
    invoke-virtual {v12, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v9}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->b()Landroidx/compose/runtime/d2;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    if-eqz v8, :cond_3

    .line 141
    .line 142
    invoke-interface {v8}, Landroidx/compose/runtime/l;->dispose()V

    .line 143
    .line 144
    .line 145
    :cond_3
    iget-object v8, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 146
    .line 147
    invoke-virtual {v8, v1, v2}, Landroidx/compose/ui/node/LayoutNode;->Y0(II)V

    .line 148
    .line 149
    .line 150
    invoke-static {v11, v0}, Landroidx/compose/ui/node/LayoutNode;->p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 151
    .line 152
    .line 153
    :cond_4
    :goto_3
    iget-object v8, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->g:Ljava/util/HashMap;

    .line 154
    .line 155
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    add-int/lit8 v1, v1, -0x1

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .line 163
    invoke-virtual {v3, v4, v6, v5}, Landroidx/compose/runtime/snapshots/j$a;->m(Landroidx/compose/runtime/snapshots/j;Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;)V

    .line 164
    .line 165
    .line 166
    move v0, v7

    .line 167
    goto :goto_5

    .line 168
    :goto_4
    invoke-virtual {v3, v4, v6, v5}, Landroidx/compose/runtime/snapshots/j$a;->m(Landroidx/compose/runtime/snapshots/j;Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;)V

    .line 169
    .line 170
    .line 171
    throw p1

    .line 172
    :cond_6
    :goto_5
    if-eqz v0, :cond_7

    .line 173
    .line 174
    sget-object p1, Landroidx/compose/runtime/snapshots/j;->e:Landroidx/compose/runtime/snapshots/j$a;

    .line 175
    .line 176
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/j$a;->n()V

    .line 177
    .line 178
    .line 179
    :cond_7
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->y()V

    .line 180
    .line 181
    .line 182
    return-void
.end method

.method public final w()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->J()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->n:I

    .line 12
    .line 13
    if-eq v1, v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->f:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/util/Map$Entry;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-virtual {v1, v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->k(Z)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->Y()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 57
    .line 58
    const/4 v5, 0x7

    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v2, 0x0

    .line 61
    const/4 v3, 0x0

    .line 62
    const/4 v4, 0x0

    .line 63
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/node/LayoutNode;->h1(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method

.method public final y()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->J()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->f:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ne v1, v0, :cond_2

    .line 18
    .line 19
    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->n:I

    .line 20
    .line 21
    sub-int v1, v0, v1

    .line 22
    .line 23
    iget v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->o:I

    .line 24
    .line 25
    sub-int/2addr v1, v2

    .line 26
    if-ltz v1, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->o:I

    .line 35
    .line 36
    if-ne v0, v1, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v1, "Incorrect state. Precomposed children "

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->o:I

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ". Map size "

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j:Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v1

    .line 82
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v2, "Incorrect state. Total children "

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v0, ". Reusable children "

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->n:I

    .line 101
    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v0, ". Precomposed children "

    .line 106
    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->o:I

    .line 111
    .line 112
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v1

    .line 129
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v2, "Inconsistency between the count of nodes tracked by the state ("

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-object v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->f:Ljava/util/HashMap;

    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v2, ") and the children count on the SubcomposeLayout ("

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v0, "). Are you trying to use the state of the disposed SubcomposeLayout?"

    .line 157
    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw v1
.end method
