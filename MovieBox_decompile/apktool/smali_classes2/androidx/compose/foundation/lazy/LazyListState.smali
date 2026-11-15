.class public final Landroidx/compose/foundation/lazy/LazyListState;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/foundation/gestures/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/LazyListState$a;
    }
.end annotation


# static fields
.field public static final y:Landroidx/compose/foundation/lazy/LazyListState$a;

.field private static final z:Landroidx/compose/runtime/saveable/d;


# instance fields
.field private final a:Landroidx/compose/foundation/lazy/r;

.field private b:Z

.field private c:Landroidx/compose/foundation/lazy/m;

.field private final d:Landroidx/compose/foundation/lazy/v;

.field private final e:Landroidx/compose/foundation/lazy/e;

.field private final f:Landroidx/compose/runtime/i1;

.field private final g:Lp/i;

.field private h:F

.field private final i:Landroidx/compose/foundation/gestures/o;

.field private j:I

.field private k:Z

.field private l:Landroidx/compose/ui/layout/h0;

.field private final m:Landroidx/compose/ui/layout/i0;

.field private final n:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

.field private final o:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

.field private final p:Landroidx/compose/foundation/lazy/layout/e;

.field private final q:Landroidx/compose/foundation/lazy/layout/x;

.field private final r:Landroidx/compose/foundation/lazy/p;

.field private final s:Landroidx/compose/foundation/lazy/layout/w;

.field private final t:Landroidx/compose/runtime/i1;

.field private final u:Landroidx/compose/runtime/i1;

.field private final v:Landroidx/compose/runtime/i1;

.field private final w:Landroidx/compose/runtime/i1;

.field private x:Landroidx/compose/animation/core/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListState$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/foundation/lazy/LazyListState$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/foundation/lazy/LazyListState;->y:Landroidx/compose/foundation/lazy/LazyListState$a;

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$1;->INSTANCE:Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$1;

    .line 10
    .line 11
    sget-object v1, Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$2;->INSTANCE:Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$2;

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/ListSaverKt;->a(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/d;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Landroidx/compose/foundation/lazy/LazyListState;->z:Landroidx/compose/runtime/saveable/d;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListState;-><init>(IILandroidx/compose/foundation/lazy/r;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 27
    invoke-static {v2, v0, v1}, Landroidx/compose/foundation/lazy/s;->b(IILjava/lang/Object;)Landroidx/compose/foundation/lazy/r;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/foundation/lazy/LazyListState;-><init>(IILandroidx/compose/foundation/lazy/r;)V

    return-void
.end method

.method public constructor <init>(IILandroidx/compose/foundation/lazy/r;)V
    .locals 10

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListState;->a:Landroidx/compose/foundation/lazy/r;

    .line 4
    new-instance v0, Landroidx/compose/foundation/lazy/v;

    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/lazy/v;-><init>(II)V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->d:Landroidx/compose/foundation/lazy/v;

    .line 5
    new-instance p2, Landroidx/compose/foundation/lazy/e;

    invoke-direct {p2, p0}, Landroidx/compose/foundation/lazy/e;-><init>(Landroidx/compose/foundation/lazy/LazyListState;)V

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListState;->e:Landroidx/compose/foundation/lazy/e;

    .line 6
    invoke-static {}, Landroidx/compose/foundation/lazy/LazyListStateKt;->b()Landroidx/compose/foundation/lazy/m;

    move-result-object p2

    .line 7
    invoke-static {}, Landroidx/compose/runtime/r2;->g()Landroidx/compose/runtime/q2;

    move-result-object v1

    .line 8
    invoke-static {p2, v1}, Landroidx/compose/runtime/r2;->e(Ljava/lang/Object;Landroidx/compose/runtime/q2;)Landroidx/compose/runtime/i1;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListState;->f:Landroidx/compose/runtime/i1;

    .line 9
    invoke-static {}, Lp/h;->a()Lp/i;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListState;->g:Lp/i;

    .line 10
    new-instance p2, Landroidx/compose/foundation/lazy/LazyListState$scrollableState$1;

    invoke-direct {p2, p0}, Landroidx/compose/foundation/lazy/LazyListState$scrollableState$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;)V

    invoke-static {p2}, Landroidx/compose/foundation/gestures/p;->a(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/gestures/o;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListState;->i:Landroidx/compose/foundation/gestures/o;

    const/4 p2, 0x1

    .line 11
    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListState;->k:Z

    .line 12
    new-instance v1, Landroidx/compose/foundation/lazy/LazyListState$c;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/lazy/LazyListState$c;-><init>(Landroidx/compose/foundation/lazy/LazyListState;)V

    iput-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->m:Landroidx/compose/ui/layout/i0;

    .line 13
    new-instance v1, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-direct {v1}, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;-><init>()V

    iput-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->n:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 14
    new-instance v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    invoke-direct {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;-><init>()V

    iput-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->o:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 15
    new-instance v1, Landroidx/compose/foundation/lazy/layout/e;

    invoke-direct {v1}, Landroidx/compose/foundation/lazy/layout/e;-><init>()V

    iput-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->p:Landroidx/compose/foundation/lazy/layout/e;

    .line 16
    new-instance v1, Landroidx/compose/foundation/lazy/layout/x;

    invoke-interface {p3}, Landroidx/compose/foundation/lazy/r;->c()Landroidx/compose/foundation/lazy/layout/i0;

    move-result-object p3

    new-instance v2, Landroidx/compose/foundation/lazy/LazyListState$prefetchState$1;

    invoke-direct {v2, p0, p1}, Landroidx/compose/foundation/lazy/LazyListState$prefetchState$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;I)V

    invoke-direct {v1, p3, v2}, Landroidx/compose/foundation/lazy/layout/x;-><init>(Landroidx/compose/foundation/lazy/layout/i0;Lkotlin/jvm/functions/Function1;)V

    iput-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->q:Landroidx/compose/foundation/lazy/layout/x;

    .line 17
    new-instance p1, Landroidx/compose/foundation/lazy/LazyListState$b;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/lazy/LazyListState$b;-><init>(Landroidx/compose/foundation/lazy/LazyListState;)V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->r:Landroidx/compose/foundation/lazy/p;

    .line 18
    new-instance p1, Landroidx/compose/foundation/lazy/layout/w;

    invoke-direct {p1}, Landroidx/compose/foundation/lazy/layout/w;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->s:Landroidx/compose/foundation/lazy/layout/w;

    .line 19
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/v;->b()Landroidx/compose/foundation/lazy/layout/u;

    const/4 p1, 0x0

    .line 20
    invoke-static {p1, p2, p1}, Landroidx/compose/foundation/lazy/layout/e0;->c(Landroidx/compose/runtime/i1;ILkotlin/jvm/internal/DefaultConstructorMarker;)Landroidx/compose/runtime/i1;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListState;->t:Landroidx/compose/runtime/i1;

    .line 21
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v0, 0x2

    invoke-static {p3, p1, v0, p1}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->u:Landroidx/compose/runtime/i1;

    .line 22
    invoke-static {p3, p1, v0, p1}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListState;->v:Landroidx/compose/runtime/i1;

    .line 23
    invoke-static {p1, p2, p1}, Landroidx/compose/foundation/lazy/layout/e0;->c(Landroidx/compose/runtime/i1;ILkotlin/jvm/internal/DefaultConstructorMarker;)Landroidx/compose/runtime/i1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->w:Landroidx/compose/runtime/i1;

    .line 24
    sget-object p1, Lkotlin/jvm/internal/FloatCompanionObject;->a:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {p1}, Landroidx/compose/animation/core/VectorConvertersKt;->b(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/s0;

    move-result-object v0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v8, 0x38

    const/4 v9, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v1, v2

    invoke-static/range {v0 .. v9}, Landroidx/compose/animation/core/j;->d(Landroidx/compose/animation/core/s0;Ljava/lang/Object;Ljava/lang/Object;JJZILjava/lang/Object;)Landroidx/compose/animation/core/i;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->x:Landroidx/compose/animation/core/i;

    return-void
.end method

.method public synthetic constructor <init>(IILandroidx/compose/foundation/lazy/r;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    const/4 p4, 0x1

    .line 25
    invoke-static {v0, p4, p3}, Landroidx/compose/foundation/lazy/s;->b(IILjava/lang/Object;)Landroidx/compose/foundation/lazy/r;

    move-result-object p3

    .line 26
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/LazyListState;-><init>(IILandroidx/compose/foundation/lazy/r;)V

    return-void
.end method

.method private final E(FLandroidx/compose/foundation/lazy/l;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->a:Landroidx/compose/foundation/lazy/r;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->r:Landroidx/compose/foundation/lazy/p;

    .line 8
    .line 9
    invoke-interface {v0, v1, p1, p2}, Landroidx/compose/foundation/lazy/r;->b(Landroidx/compose/foundation/lazy/p;FLandroidx/compose/foundation/lazy/l;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static synthetic H(Landroidx/compose/foundation/lazy/LazyListState;IILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/LazyListState;->G(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private I(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->v:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private J(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->u:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final L(FLo0/e;Lkotlinx/coroutines/n0;)V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    invoke-static {}, Landroidx/compose/foundation/lazy/LazyListStateKt;->a()F

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    move-object/from16 v3, p2

    .line 10
    .line 11
    invoke-interface {v3, v2}, Lo0/e;->D0(F)F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    cmpg-float v2, v0, v2

    .line 16
    .line 17
    if-gtz v2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    sget-object v2, Landroidx/compose/runtime/snapshots/j;->e:Landroidx/compose/runtime/snapshots/j$a;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/j$a;->d()Landroidx/compose/runtime/snapshots/j;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x0

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/j;->h()Lkotlin/jvm/functions/Function1;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object v5, v4

    .line 35
    :goto_0
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/snapshots/j$a;->f(Landroidx/compose/runtime/snapshots/j;)Landroidx/compose/runtime/snapshots/j;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    :try_start_0
    iget-object v7, v1, Landroidx/compose/foundation/lazy/LazyListState;->x:Landroidx/compose/animation/core/i;

    .line 40
    .line 41
    invoke-virtual {v7}, Landroidx/compose/animation/core/i;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    check-cast v7, Ljava/lang/Number;

    .line 46
    .line 47
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    iget-object v8, v1, Landroidx/compose/foundation/lazy/LazyListState;->x:Landroidx/compose/animation/core/i;

    .line 52
    .line 53
    invoke-virtual {v8}, Landroidx/compose/animation/core/i;->h()Z

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-eqz v8, :cond_2

    .line 58
    .line 59
    iget-object v9, v1, Landroidx/compose/foundation/lazy/LazyListState;->x:Landroidx/compose/animation/core/i;

    .line 60
    .line 61
    sub-float v10, v7, v0

    .line 62
    .line 63
    const/16 v17, 0x1e

    .line 64
    .line 65
    const/16 v18, 0x0

    .line 66
    .line 67
    const/4 v11, 0x0

    .line 68
    const-wide/16 v12, 0x0

    .line 69
    .line 70
    const-wide/16 v14, 0x0

    .line 71
    .line 72
    const/16 v16, 0x0

    .line 73
    .line 74
    invoke-static/range {v9 .. v18}, Landroidx/compose/animation/core/j;->g(Landroidx/compose/animation/core/i;FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/i;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, v1, Landroidx/compose/foundation/lazy/LazyListState;->x:Landroidx/compose/animation/core/i;

    .line 79
    .line 80
    new-instance v10, Landroidx/compose/foundation/lazy/LazyListState$updateScrollDeltaForPostLookahead$2$1;

    .line 81
    .line 82
    invoke-direct {v10, v1, v4}, Landroidx/compose/foundation/lazy/LazyListState$updateScrollDeltaForPostLookahead$2$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/coroutines/Continuation;)V

    .line 83
    .line 84
    .line 85
    const/4 v11, 0x3

    .line 86
    const/4 v12, 0x0

    .line 87
    const/4 v8, 0x0

    .line 88
    const/4 v9, 0x0

    .line 89
    move-object/from16 v7, p3

    .line 90
    .line 91
    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    goto :goto_2

    .line 97
    :cond_2
    new-instance v7, Landroidx/compose/animation/core/i;

    .line 98
    .line 99
    sget-object v8, Lkotlin/jvm/internal/FloatCompanionObject;->a:Lkotlin/jvm/internal/FloatCompanionObject;

    .line 100
    .line 101
    invoke-static {v8}, Landroidx/compose/animation/core/VectorConvertersKt;->b(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/s0;

    .line 102
    .line 103
    .line 104
    move-result-object v14

    .line 105
    neg-float v0, v0

    .line 106
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 107
    .line 108
    .line 109
    move-result-object v15

    .line 110
    const/16 v22, 0x3c

    .line 111
    .line 112
    const/16 v23, 0x0

    .line 113
    .line 114
    const/16 v16, 0x0

    .line 115
    .line 116
    const-wide/16 v17, 0x0

    .line 117
    .line 118
    const-wide/16 v19, 0x0

    .line 119
    .line 120
    const/16 v21, 0x0

    .line 121
    .line 122
    move-object v13, v7

    .line 123
    invoke-direct/range {v13 .. v23}, Landroidx/compose/animation/core/i;-><init>(Landroidx/compose/animation/core/s0;Ljava/lang/Object;Landroidx/compose/animation/core/o;JJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 124
    .line 125
    .line 126
    iput-object v7, v1, Landroidx/compose/foundation/lazy/LazyListState;->x:Landroidx/compose/animation/core/i;

    .line 127
    .line 128
    new-instance v11, Landroidx/compose/foundation/lazy/LazyListState$updateScrollDeltaForPostLookahead$2$2;

    .line 129
    .line 130
    invoke-direct {v11, v1, v4}, Landroidx/compose/foundation/lazy/LazyListState$updateScrollDeltaForPostLookahead$2$2;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/coroutines/Continuation;)V

    .line 131
    .line 132
    .line 133
    const/4 v12, 0x3

    .line 134
    const/4 v13, 0x0

    .line 135
    const/4 v9, 0x0

    .line 136
    const/4 v10, 0x0

    .line 137
    move-object/from16 v8, p3

    .line 138
    .line 139
    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .line 141
    .line 142
    :goto_1
    invoke-virtual {v2, v3, v6, v5}, Landroidx/compose/runtime/snapshots/j$a;->m(Landroidx/compose/runtime/snapshots/j;Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :goto_2
    invoke-virtual {v2, v3, v6, v5}, Landroidx/compose/runtime/snapshots/j$a;->m(Landroidx/compose/runtime/snapshots/j;Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;)V

    .line 147
    .line 148
    .line 149
    throw v0
.end method

.method public static final synthetic f(Landroidx/compose/foundation/lazy/LazyListState;)Landroidx/compose/runtime/i1;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->f:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Landroidx/compose/foundation/lazy/LazyListState;)Landroidx/compose/foundation/lazy/r;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->a:Landroidx/compose/foundation/lazy/r;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h()Landroidx/compose/runtime/saveable/d;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/lazy/LazyListState;->z:Landroidx/compose/runtime/saveable/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic i(Landroidx/compose/foundation/lazy/LazyListState;)Landroidx/compose/animation/core/i;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->x:Landroidx/compose/animation/core/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic j(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/ui/layout/h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->l:Landroidx/compose/ui/layout/h0;

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic l(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/m;ZZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/LazyListState;->k(Landroidx/compose/foundation/lazy/m;ZZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final A()Landroidx/compose/ui/layout/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->l:Landroidx/compose/ui/layout/h0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final B()Landroidx/compose/ui/layout/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->m:Landroidx/compose/ui/layout/i0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->x:Landroidx/compose/animation/core/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/animation/core/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final D()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    .line 2
    .line 3
    return v0
.end method

.method public final F(F)F
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    if-gez v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->d()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    :cond_0
    cmpl-float v1, p1, v0

    .line 13
    .line 14
    if-lez v1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->b()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    :cond_1
    return v0

    .line 23
    :cond_2
    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/high16 v2, 0x3f000000    # 0.5f

    .line 30
    .line 31
    cmpg-float v1, v1, v2

    .line 32
    .line 33
    if-gtz v1, :cond_8

    .line 34
    .line 35
    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    .line 36
    .line 37
    add-float/2addr v1, p1

    .line 38
    iput v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    .line 39
    .line 40
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    cmpl-float v1, v1, v2

    .line 45
    .line 46
    if-lez v1, :cond_6

    .line 47
    .line 48
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->f:Landroidx/compose/runtime/i1;

    .line 49
    .line 50
    invoke-interface {v1}, Landroidx/compose/runtime/i1;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Landroidx/compose/foundation/lazy/m;

    .line 55
    .line 56
    iget v3, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    .line 57
    .line 58
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    iget-object v5, p0, Landroidx/compose/foundation/lazy/LazyListState;->c:Landroidx/compose/foundation/lazy/m;

    .line 63
    .line 64
    iget-boolean v6, p0, Landroidx/compose/foundation/lazy/LazyListState;->b:Z

    .line 65
    .line 66
    const/4 v7, 0x1

    .line 67
    xor-int/2addr v6, v7

    .line 68
    invoke-virtual {v1, v4, v6}, Landroidx/compose/foundation/lazy/m;->r(IZ)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_3

    .line 73
    .line 74
    if-eqz v5, :cond_3

    .line 75
    .line 76
    invoke-virtual {v5, v4, v7}, Landroidx/compose/foundation/lazy/m;->r(IZ)Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    :cond_3
    if-eqz v6, :cond_4

    .line 81
    .line 82
    iget-boolean v4, p0, Landroidx/compose/foundation/lazy/LazyListState;->b:Z

    .line 83
    .line 84
    invoke-virtual {p0, v1, v4, v7}, Landroidx/compose/foundation/lazy/LazyListState;->k(Landroidx/compose/foundation/lazy/m;ZZ)V

    .line 85
    .line 86
    .line 87
    iget-object v4, p0, Landroidx/compose/foundation/lazy/LazyListState;->w:Landroidx/compose/runtime/i1;

    .line 88
    .line 89
    invoke-static {v4}, Landroidx/compose/foundation/lazy/layout/e0;->d(Landroidx/compose/runtime/i1;)V

    .line 90
    .line 91
    .line 92
    iget v4, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    .line 93
    .line 94
    sub-float/2addr v3, v4

    .line 95
    invoke-direct {p0, v3, v1}, Landroidx/compose/foundation/lazy/LazyListState;->E(FLandroidx/compose/foundation/lazy/l;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->l:Landroidx/compose/ui/layout/h0;

    .line 100
    .line 101
    if-eqz v1, :cond_5

    .line 102
    .line 103
    invoke-interface {v1}, Landroidx/compose/ui/layout/h0;->d()V

    .line 104
    .line 105
    .line 106
    :cond_5
    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    .line 107
    .line 108
    sub-float/2addr v3, v1

    .line 109
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->t()Landroidx/compose/foundation/lazy/l;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-direct {p0, v3, v1}, Landroidx/compose/foundation/lazy/LazyListState;->E(FLandroidx/compose/foundation/lazy/l;)V

    .line 114
    .line 115
    .line 116
    :cond_6
    :goto_0
    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    .line 117
    .line 118
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    cmpg-float v1, v1, v2

    .line 123
    .line 124
    if-gtz v1, :cond_7

    .line 125
    .line 126
    return p1

    .line 127
    :cond_7
    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    .line 128
    .line 129
    sub-float/2addr p1, v1

    .line 130
    iput v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    .line 131
    .line 132
    return p1

    .line 133
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v0, "entered drag with non-zero pending scroll: "

    .line 139
    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw v0
.end method

.method public final G(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v2, Landroidx/compose/foundation/lazy/LazyListState$scrollToItem$2;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v2, p0, p1, p2, v0}, Landroidx/compose/foundation/lazy/LazyListState$scrollToItem$2;-><init>(Landroidx/compose/foundation/lazy/LazyListState;IILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    move-object v0, p0

    .line 11
    move-object v3, p3

    .line 12
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/n;->c(Landroidx/compose/foundation/gestures/o;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-ne p1, p2, :cond_0

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p1
.end method

.method public final K(IIZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->d:Landroidx/compose/foundation/lazy/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/v;->a()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->d:Landroidx/compose/foundation/lazy/v;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/v;->c()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eq v0, p2, :cond_1

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->o:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->n()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->d:Landroidx/compose/foundation/lazy/v;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/lazy/v;->d(II)V

    .line 25
    .line 26
    .line 27
    if-eqz p3, :cond_2

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->l:Landroidx/compose/ui/layout/h0;

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    invoke-interface {p1}, Landroidx/compose/ui/layout/h0;->d()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->t:Landroidx/compose/runtime/i1;

    .line 38
    .line 39
    invoke-static {p1}, Landroidx/compose/foundation/lazy/layout/e0;->d(Landroidx/compose/runtime/i1;)V

    .line 40
    .line 41
    .line 42
    :cond_3
    :goto_0
    return-void
.end method

.method public final M(Landroidx/compose/foundation/lazy/k;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->d:Landroidx/compose/foundation/lazy/v;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/lazy/v;->j(Landroidx/compose/foundation/lazy/k;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->i:Landroidx/compose/foundation/gestures/o;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/foundation/gestures/o;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->v:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public c(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p3, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    iget-object p1, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$2:Ljava/lang/Object;

    .line 54
    .line 55
    move-object p2, p1

    .line 56
    check-cast p2, Lkotlin/jvm/functions/Function2;

    .line 57
    .line 58
    iget-object p1, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$1:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p1, Landroidx/compose/foundation/MutatePriority;

    .line 61
    .line 62
    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListState;

    .line 65
    .line 66
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object p3, p0, Landroidx/compose/foundation/lazy/LazyListState;->n:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 74
    .line 75
    iput-object p0, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$0:Ljava/lang/Object;

    .line 76
    .line 77
    iput-object p1, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$1:Ljava/lang/Object;

    .line 78
    .line 79
    iput-object p2, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$2:Ljava/lang/Object;

    .line 80
    .line 81
    iput v4, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->label:I

    .line 82
    .line 83
    invoke-virtual {p3, v0}, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    if-ne p3, v1, :cond_4

    .line 88
    .line 89
    return-object v1

    .line 90
    :cond_4
    move-object v2, p0

    .line 91
    :goto_1
    iget-object p3, v2, Landroidx/compose/foundation/lazy/LazyListState;->i:Landroidx/compose/foundation/gestures/o;

    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    iput-object v2, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$0:Ljava/lang/Object;

    .line 95
    .line 96
    iput-object v2, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$1:Ljava/lang/Object;

    .line 97
    .line 98
    iput-object v2, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$2:Ljava/lang/Object;

    .line 99
    .line 100
    iput v3, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->label:I

    .line 101
    .line 102
    invoke-interface {p3, p1, p2, v0}, Landroidx/compose/foundation/gestures/o;->c(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-ne p1, v1, :cond_5

    .line 107
    .line 108
    return-object v1

    .line 109
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 110
    .line 111
    return-object p1
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->u:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public e(F)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->i:Landroidx/compose/foundation/gestures/o;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/compose/foundation/gestures/o;->e(F)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final k(Landroidx/compose/foundation/lazy/m;ZZ)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->b:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->c:Landroidx/compose/foundation/lazy/m;

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->b:Z

    .line 14
    .line 15
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/m;->i()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-direct {p0, v1}, Landroidx/compose/foundation/lazy/LazyListState;->I(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/m;->j()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-direct {p0, v1}, Landroidx/compose/foundation/lazy/LazyListState;->J(Z)V

    .line 27
    .line 28
    .line 29
    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/m;->l()F

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    sub-float/2addr v1, v2

    .line 36
    iput v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->f:Landroidx/compose/runtime/i1;

    .line 39
    .line 40
    invoke-interface {v1, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    if-eqz p3, :cond_2

    .line 44
    .line 45
    iget-object p3, p0, Landroidx/compose/foundation/lazy/LazyListState;->d:Landroidx/compose/foundation/lazy/v;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/m;->p()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {p3, v1}, Landroidx/compose/foundation/lazy/v;->i(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-object p3, p0, Landroidx/compose/foundation/lazy/LazyListState;->d:Landroidx/compose/foundation/lazy/v;

    .line 56
    .line 57
    invoke-virtual {p3, p1}, Landroidx/compose/foundation/lazy/v;->h(Landroidx/compose/foundation/lazy/m;)V

    .line 58
    .line 59
    .line 60
    iget-boolean p3, p0, Landroidx/compose/foundation/lazy/LazyListState;->k:Z

    .line 61
    .line 62
    if-eqz p3, :cond_3

    .line 63
    .line 64
    iget-object p3, p0, Landroidx/compose/foundation/lazy/LazyListState;->a:Landroidx/compose/foundation/lazy/r;

    .line 65
    .line 66
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->r:Landroidx/compose/foundation/lazy/p;

    .line 67
    .line 68
    invoke-interface {p3, v1, p1}, Landroidx/compose/foundation/lazy/r;->d(Landroidx/compose/foundation/lazy/p;Landroidx/compose/foundation/lazy/l;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 72
    .line 73
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/m;->q()F

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/m;->n()Lo0/e;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/m;->m()Lkotlinx/coroutines/n0;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-direct {p0, p2, p3, p1}, Landroidx/compose/foundation/lazy/LazyListState;->L(FLo0/e;Lkotlinx/coroutines/n0;)V

    .line 86
    .line 87
    .line 88
    :cond_4
    iget p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->j:I

    .line 89
    .line 90
    add-int/2addr p1, v0

    .line 91
    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->j:I

    .line 92
    .line 93
    :goto_1
    return-void
.end method

.method public final m()Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->n:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Landroidx/compose/foundation/lazy/layout/e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->p:Landroidx/compose/foundation/lazy/layout/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->d:Landroidx/compose/foundation/lazy/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/v;->a()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final p()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->d:Landroidx/compose/foundation/lazy/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/v;->c()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final r()Lp/i;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->g:Lp/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->o:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t()Landroidx/compose/foundation/lazy/l;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->f:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/i1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/foundation/lazy/l;

    .line 8
    .line 9
    return-object v0
.end method

.method public final u()Landroidx/compose/runtime/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->t:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v()Lkotlin/ranges/IntRange;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->d:Landroidx/compose/foundation/lazy/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/v;->b()Landroidx/compose/foundation/lazy/layout/u;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lkotlin/ranges/IntRange;

    .line 12
    .line 13
    return-object v0
.end method

.method public final w()Landroidx/compose/foundation/lazy/layout/w;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->s:Landroidx/compose/foundation/lazy/layout/w;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x()Landroidx/compose/runtime/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->w:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y()Landroidx/compose/foundation/lazy/m;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->c:Landroidx/compose/foundation/lazy/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z()Landroidx/compose/foundation/lazy/layout/x;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->q:Landroidx/compose/foundation/lazy/layout/x;

    .line 2
    .line 3
    return-object v0
.end method
