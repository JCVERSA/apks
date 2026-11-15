.class public abstract Landroidx/compose/foundation/AbstractClickableNode;
.super Landroidx/compose/ui/node/i;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/node/e1;
.implements Ld0/e;
.implements Landroidx/compose/ui/focus/c;
.implements Landroidx/compose/ui/node/i1;
.implements Landroidx/compose/ui/node/m1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/AbstractClickableNode$a;
    }
.end annotation


# static fields
.field public static final H:Landroidx/compose/foundation/AbstractClickableNode$a;

.field public static final I:I


# instance fields
.field private A:Lp/k$b;

.field private B:Lp/d;

.field private final C:Ljava/util/Map;

.field private D:J

.field private E:Lp/i;

.field private F:Z

.field private final G:Ljava/lang/Object;

.field private p:Lp/i;

.field private q:Landroidx/compose/foundation/b0;

.field private r:Ljava/lang/String;

.field private s:Landroidx/compose/ui/semantics/f;

.field private t:Z

.field private u:Lkotlin/jvm/functions/Function0;

.field private final v:Z

.field private final w:Landroidx/compose/foundation/q;

.field private final x:Landroidx/compose/foundation/FocusableNode;

.field private y:Landroidx/compose/ui/input/pointer/n0;

.field private z:Landroidx/compose/ui/node/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/foundation/AbstractClickableNode$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/foundation/AbstractClickableNode$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/foundation/AbstractClickableNode;->H:Landroidx/compose/foundation/AbstractClickableNode$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Landroidx/compose/foundation/AbstractClickableNode;->I:I

    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>(Lp/i;Landroidx/compose/foundation/b0;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/compose/ui/node/i;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    .line 4
    iput-object p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->q:Landroidx/compose/foundation/b0;

    .line 5
    iput-object p4, p0, Landroidx/compose/foundation/AbstractClickableNode;->r:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Landroidx/compose/foundation/AbstractClickableNode;->s:Landroidx/compose/ui/semantics/f;

    .line 7
    iput-boolean p3, p0, Landroidx/compose/foundation/AbstractClickableNode;->t:Z

    .line 8
    iput-object p6, p0, Landroidx/compose/foundation/AbstractClickableNode;->u:Lkotlin/jvm/functions/Function0;

    .line 9
    new-instance p1, Landroidx/compose/foundation/q;

    invoke-direct {p1}, Landroidx/compose/foundation/q;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->w:Landroidx/compose/foundation/q;

    .line 10
    new-instance p1, Landroidx/compose/foundation/FocusableNode;

    iget-object p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    invoke-direct {p1, p2}, Landroidx/compose/foundation/FocusableNode;-><init>(Lp/i;)V

    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->x:Landroidx/compose/foundation/FocusableNode;

    .line 11
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->C:Ljava/util/Map;

    .line 12
    sget-object p1, Ly/g;->b:Ly/g$a;

    invoke-virtual {p1}, Ly/g$a;->c()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->D:J

    .line 13
    iget-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->E:Lp/i;

    .line 14
    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->Z1()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->F:Z

    .line 15
    sget-object p1, Landroidx/compose/foundation/AbstractClickableNode;->H:Landroidx/compose/foundation/AbstractClickableNode$a;

    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->G:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lp/i;Landroidx/compose/foundation/b0;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Landroidx/compose/foundation/AbstractClickableNode;-><init>(Lp/i;Landroidx/compose/foundation/b0;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic I1(Landroidx/compose/foundation/AbstractClickableNode;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->Q1()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic J1(Landroidx/compose/foundation/AbstractClickableNode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->S1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic K1(Landroidx/compose/foundation/AbstractClickableNode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->T1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic L1(Landroidx/compose/foundation/AbstractClickableNode;)Lp/i;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic M1(Landroidx/compose/foundation/AbstractClickableNode;)Lp/k$b;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/AbstractClickableNode;->A:Lp/k$b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic N1(Landroidx/compose/foundation/AbstractClickableNode;Lp/k$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->A:Lp/k$b;

    .line 2
    .line 3
    return-void
.end method

.method private final Q1()Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/ClickableKt;->e(Landroidx/compose/ui/node/m1;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/compose/foundation/f;->c(Landroidx/compose/ui/node/f;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method private final S1()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->B:Lp/d;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lp/d;

    .line 6
    .line 7
    invoke-direct {v0}, Lp/d;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->c1()Lkotlinx/coroutines/n0;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v5, Landroidx/compose/foundation/AbstractClickableNode$emitHoverEnter$1$1;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v5, v1, v0, v3}, Landroidx/compose/foundation/AbstractClickableNode$emitHoverEnter$1$1;-><init>(Lp/i;Lp/d;Lkotlin/coroutines/Continuation;)V

    .line 22
    .line 23
    .line 24
    const/4 v6, 0x3

    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 28
    .line 29
    .line 30
    :cond_0
    iput-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->B:Lp/d;

    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method private final T1()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->B:Lp/d;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v1, Lp/e;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lp/e;-><init>(Lp/d;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->c1()Lkotlinx/coroutines/n0;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    new-instance v6, Landroidx/compose/foundation/AbstractClickableNode$emitHoverExit$1$1$1;

    .line 20
    .line 21
    invoke-direct {v6, v0, v1, v2}, Landroidx/compose/foundation/AbstractClickableNode$emitHoverExit$1$1$1;-><init>(Lp/i;Lp/e;Lkotlin/coroutines/Continuation;)V

    .line 22
    .line 23
    .line 24
    const/4 v7, 0x3

    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 29
    .line 30
    .line 31
    :cond_0
    iput-object v2, p0, Landroidx/compose/foundation/AbstractClickableNode;->B:Lp/d;

    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method private final X1()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->z:Landroidx/compose/ui/node/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->q:Landroidx/compose/foundation/b0;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    invoke-static {}, Lp/h;->a()Lp/i;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    .line 19
    .line 20
    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->x:Landroidx/compose/foundation/FocusableNode;

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroidx/compose/foundation/FocusableNode;->I1(Lp/i;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    .line 28
    .line 29
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Landroidx/compose/foundation/b0;->b(Lp/g;)Landroidx/compose/ui/node/f;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/i;->C1(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/f;

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->z:Landroidx/compose/ui/node/f;

    .line 40
    .line 41
    :cond_2
    return-void
.end method

.method private final Z1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->E:Lp/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->q:Landroidx/compose/foundation/b0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method


# virtual methods
.method public D()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->G:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final M(Landroidx/compose/ui/input/pointer/o;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 10

    .line 1
    invoke-static {p3, p4}, Lo0/u;->b(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lo0/p;->h(J)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    int-to-float v2, v2

    .line 10
    invoke-static {v0, v1}, Lo0/p;->i(J)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    int-to-float v0, v0

    .line 15
    invoke-static {v2, v0}, Ly/h;->a(FF)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->D:J

    .line 20
    .line 21
    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->X1()V

    .line 22
    .line 23
    .line 24
    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->t:Z

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 30
    .line 31
    if-ne p2, v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/o;->e()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    sget-object v2, Landroidx/compose/ui/input/pointer/q;->a:Landroidx/compose/ui/input/pointer/q$a;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/q$a;->a()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-static {v0, v3}, Landroidx/compose/ui/input/pointer/q;->i(II)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->c1()Lkotlinx/coroutines/n0;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    new-instance v7, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$1;

    .line 54
    .line 55
    invoke-direct {v7, p0, v1}, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$1;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Lkotlin/coroutines/Continuation;)V

    .line 56
    .line 57
    .line 58
    const/4 v8, 0x3

    .line 59
    const/4 v9, 0x0

    .line 60
    const/4 v5, 0x0

    .line 61
    const/4 v6, 0x0

    .line 62
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/q$a;->b()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-static {v0, v2}, Landroidx/compose/ui/input/pointer/q;->i(II)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->c1()Lkotlinx/coroutines/n0;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    new-instance v5, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$2;

    .line 81
    .line 82
    invoke-direct {v5, p0, v1}, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$2;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Lkotlin/coroutines/Continuation;)V

    .line 83
    .line 84
    .line 85
    const/4 v6, 0x3

    .line 86
    const/4 v7, 0x0

    .line 87
    const/4 v3, 0x0

    .line 88
    const/4 v4, 0x0

    .line 89
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 90
    .line 91
    .line 92
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->y:Landroidx/compose/ui/input/pointer/n0;

    .line 93
    .line 94
    if-nez v0, :cond_2

    .line 95
    .line 96
    new-instance v0, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$3;

    .line 97
    .line 98
    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$3;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Lkotlin/coroutines/Continuation;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v0}, Landroidx/compose/ui/input/pointer/l0;->a(Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/input/pointer/n0;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/i;->C1(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/f;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Landroidx/compose/ui/input/pointer/n0;

    .line 110
    .line 111
    iput-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->y:Landroidx/compose/ui/input/pointer/n0;

    .line 112
    .line 113
    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->y:Landroidx/compose/ui/input/pointer/n0;

    .line 114
    .line 115
    if-eqz v0, :cond_3

    .line 116
    .line 117
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/compose/ui/node/e1;->M(Landroidx/compose/ui/input/pointer/o;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 118
    .line 119
    .line 120
    :cond_3
    return-void
.end method

.method public synthetic O()Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/h1;->a(Landroidx/compose/ui/node/i1;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public synthetic O0()Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/d1;->d(Landroidx/compose/ui/node/e1;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public O1(Landroidx/compose/ui/semantics/n;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract P1(Landroidx/compose/ui/input/pointer/e0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public final Q0(Landroidx/compose/ui/semantics/n;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->s:Landroidx/compose/ui/semantics/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/f;->n()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->B(Landroidx/compose/ui/semantics/n;I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->r:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v1, Landroidx/compose/foundation/AbstractClickableNode$applySemantics$1;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Landroidx/compose/foundation/AbstractClickableNode$applySemantics$1;-><init>(Landroidx/compose/foundation/AbstractClickableNode;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->l(Landroidx/compose/ui/semantics/n;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->t:Z

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->x:Landroidx/compose/foundation/FocusableNode;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/FocusableNode;->Q0(Landroidx/compose/ui/semantics/n;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {p1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->f(Landroidx/compose/ui/semantics/n;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/AbstractClickableNode;->O1(Landroidx/compose/ui/semantics/n;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public synthetic R()Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/d1;->a(Landroidx/compose/ui/node/e1;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final R0(Landroidx/compose/ui/focus/r;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Landroidx/compose/ui/focus/r;->isFocused()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->X1()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->t:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->x:Landroidx/compose/foundation/FocusableNode;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/FocusableNode;->R0(Landroidx/compose/ui/focus/r;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method protected final R1()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->A:Lp/k$b;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v2, Lp/k$a;

    .line 10
    .line 11
    invoke-direct {v2, v1}, Lp/k$a;-><init>(Lp/k$b;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v2}, Lp/i;->a(Lp/f;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->B:Lp/d;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    new-instance v2, Lp/e;

    .line 22
    .line 23
    invoke-direct {v2, v1}, Lp/e;-><init>(Lp/d;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v2}, Lp/i;->a(Lp/f;)Z

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->C:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/Iterable;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lp/k$b;

    .line 52
    .line 53
    new-instance v3, Lp/k$a;

    .line 54
    .line 55
    invoke-direct {v3, v2}, Lp/k$a;-><init>(Lp/k$b;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v3}, Lp/i;->a(Lp/f;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->A:Lp/k$b;

    .line 64
    .line 65
    iput-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->B:Lp/d;

    .line 66
    .line 67
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->C:Ljava/util/Map;

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public synthetic S0()V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/d1;->c(Landroidx/compose/ui/node/e1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected final U1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->t:Z

    .line 2
    .line 3
    return v0
.end method

.method public final V0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method protected final V1()Lkotlin/jvm/functions/Function0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->u:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final W1(Landroidx/compose/foundation/gestures/i;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v4, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    .line 2
    .line 3
    if-eqz v4, :cond_0

    .line 4
    .line 5
    new-instance v7, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    move-object v0, v7

    .line 9
    move-object v1, p1

    .line 10
    move-wide v2, p2

    .line 11
    move-object v5, p0

    .line 12
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;-><init>(Landroidx/compose/foundation/gestures/i;JLp/i;Landroidx/compose/foundation/AbstractClickableNode;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7, p4}, Lkotlinx/coroutines/o0;->e(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-ne p1, p2, :cond_0

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p1
.end method

.method protected final Y1()Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->y:Landroidx/compose/ui/input/pointer/n0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/n0;->j0()V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return-object v0
.end method

.method protected final a2(Lp/i;Landroidx/compose/foundation/b0;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->E:Lp/i;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->R1()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->E:Lp/i;

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    .line 16
    .line 17
    move p1, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->q:Landroidx/compose/foundation/b0;

    .line 21
    .line 22
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iput-object p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->q:Landroidx/compose/foundation/b0;

    .line 29
    .line 30
    move p1, v1

    .line 31
    :cond_1
    iget-boolean p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->t:Z

    .line 32
    .line 33
    if-eq p2, p3, :cond_3

    .line 34
    .line 35
    if-eqz p3, :cond_2

    .line 36
    .line 37
    iget-object p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->w:Landroidx/compose/foundation/q;

    .line 38
    .line 39
    invoke-virtual {p0, p2}, Landroidx/compose/ui/node/i;->C1(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/f;

    .line 40
    .line 41
    .line 42
    iget-object p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->x:Landroidx/compose/foundation/FocusableNode;

    .line 43
    .line 44
    invoke-virtual {p0, p2}, Landroidx/compose/ui/node/i;->C1(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/f;

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    iget-object p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->w:Landroidx/compose/foundation/q;

    .line 49
    .line 50
    invoke-virtual {p0, p2}, Landroidx/compose/ui/node/i;->F1(Landroidx/compose/ui/node/f;)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->x:Landroidx/compose/foundation/FocusableNode;

    .line 54
    .line 55
    invoke-virtual {p0, p2}, Landroidx/compose/ui/node/i;->F1(Landroidx/compose/ui/node/f;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->R1()V

    .line 59
    .line 60
    .line 61
    :goto_1
    invoke-static {p0}, Landroidx/compose/ui/node/j1;->b(Landroidx/compose/ui/node/i1;)V

    .line 62
    .line 63
    .line 64
    iput-boolean p3, p0, Landroidx/compose/foundation/AbstractClickableNode;->t:Z

    .line 65
    .line 66
    :cond_3
    iget-object p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->r:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-nez p2, :cond_4

    .line 73
    .line 74
    iput-object p4, p0, Landroidx/compose/foundation/AbstractClickableNode;->r:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {p0}, Landroidx/compose/ui/node/j1;->b(Landroidx/compose/ui/node/i1;)V

    .line 77
    .line 78
    .line 79
    :cond_4
    iget-object p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->s:Landroidx/compose/ui/semantics/f;

    .line 80
    .line 81
    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    if-nez p2, :cond_5

    .line 86
    .line 87
    iput-object p5, p0, Landroidx/compose/foundation/AbstractClickableNode;->s:Landroidx/compose/ui/semantics/f;

    .line 88
    .line 89
    invoke-static {p0}, Landroidx/compose/ui/node/j1;->b(Landroidx/compose/ui/node/i1;)V

    .line 90
    .line 91
    .line 92
    :cond_5
    iput-object p6, p0, Landroidx/compose/foundation/AbstractClickableNode;->u:Lkotlin/jvm/functions/Function0;

    .line 93
    .line 94
    iget-boolean p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->F:Z

    .line 95
    .line 96
    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->Z1()Z

    .line 97
    .line 98
    .line 99
    move-result p3

    .line 100
    if-eq p2, p3, :cond_6

    .line 101
    .line 102
    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->Z1()Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    iput-boolean p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->F:Z

    .line 107
    .line 108
    if-nez p2, :cond_6

    .line 109
    .line 110
    iget-object p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->z:Landroidx/compose/ui/node/f;

    .line 111
    .line 112
    if-nez p2, :cond_6

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_6
    move v1, p1

    .line 116
    :goto_2
    if-eqz v1, :cond_9

    .line 117
    .line 118
    iget-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->z:Landroidx/compose/ui/node/f;

    .line 119
    .line 120
    if-nez p1, :cond_7

    .line 121
    .line 122
    iget-boolean p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->F:Z

    .line 123
    .line 124
    if-nez p2, :cond_9

    .line 125
    .line 126
    :cond_7
    if-eqz p1, :cond_8

    .line 127
    .line 128
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/i;->F1(Landroidx/compose/ui/node/f;)V

    .line 129
    .line 130
    .line 131
    :cond_8
    const/4 p1, 0x0

    .line 132
    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->z:Landroidx/compose/ui/node/f;

    .line 133
    .line 134
    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->X1()V

    .line 135
    .line 136
    .line 137
    :cond_9
    iget-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->x:Landroidx/compose/foundation/FocusableNode;

    .line 138
    .line 139
    iget-object p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    .line 140
    .line 141
    invoke-virtual {p1, p2}, Landroidx/compose/foundation/FocusableNode;->I1(Lp/i;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public final h1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->v:Z

    .line 2
    .line 3
    return v0
.end method

.method public final l0(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final m1()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->F:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->X1()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->t:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->w:Landroidx/compose/foundation/q;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/i;->C1(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/f;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->x:Landroidx/compose/foundation/FocusableNode;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/i;->C1(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/f;

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public final n1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->R1()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->E:Lp/i;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->z:Landroidx/compose/ui/node/f;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/i;->F1(Landroidx/compose/ui/node/f;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iput-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->z:Landroidx/compose/ui/node/f;

    .line 19
    .line 20
    return-void
.end method

.method public final s0(Landroid/view/KeyEvent;)Z
    .locals 10

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->X1()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->t:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {p1}, Landroidx/compose/foundation/f;->f(Landroid/view/KeyEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->C:Ljava/util/Map;

    .line 18
    .line 19
    invoke-static {p1}, Ld0/d;->a(Landroid/view/KeyEvent;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    invoke-static {v4, v5}, Ld0/a;->m(J)Ld0/a;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    new-instance v0, Lp/k$b;

    .line 34
    .line 35
    iget-wide v4, p0, Landroidx/compose/foundation/AbstractClickableNode;->D:J

    .line 36
    .line 37
    invoke-direct {v0, v4, v5, v3}, Lp/k$b;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->C:Ljava/util/Map;

    .line 41
    .line 42
    invoke-static {p1}, Ld0/d;->a(Landroid/view/KeyEvent;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    invoke-static {v4, v5}, Ld0/a;->m(J)Ld0/a;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    .line 54
    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->c1()Lkotlinx/coroutines/n0;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    new-instance v7, Landroidx/compose/foundation/AbstractClickableNode$onKeyEvent$1;

    .line 62
    .line 63
    invoke-direct {v7, p0, v0, v3}, Landroidx/compose/foundation/AbstractClickableNode$onKeyEvent$1;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Lp/k$b;Lkotlin/coroutines/Continuation;)V

    .line 64
    .line 65
    .line 66
    const/4 v8, 0x3

    .line 67
    const/4 v9, 0x0

    .line 68
    const/4 v5, 0x0

    .line 69
    const/4 v6, 0x0

    .line 70
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 71
    .line 72
    .line 73
    :cond_0
    :goto_0
    move v1, v2

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->t:Z

    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    invoke-static {p1}, Landroidx/compose/foundation/f;->b(Landroid/view/KeyEvent;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->C:Ljava/util/Map;

    .line 86
    .line 87
    invoke-static {p1}, Ld0/d;->a(Landroid/view/KeyEvent;)J

    .line 88
    .line 89
    .line 90
    move-result-wide v4

    .line 91
    invoke-static {v4, v5}, Ld0/a;->m(J)Ld0/a;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Lp/k$b;

    .line 100
    .line 101
    if-eqz p1, :cond_2

    .line 102
    .line 103
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    .line 104
    .line 105
    if-eqz v0, :cond_2

    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->c1()Lkotlinx/coroutines/n0;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    new-instance v7, Landroidx/compose/foundation/AbstractClickableNode$onKeyEvent$2$1;

    .line 112
    .line 113
    invoke-direct {v7, p0, p1, v3}, Landroidx/compose/foundation/AbstractClickableNode$onKeyEvent$2$1;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Lp/k$b;Lkotlin/coroutines/Continuation;)V

    .line 114
    .line 115
    .line 116
    const/4 v8, 0x3

    .line 117
    const/4 v9, 0x0

    .line 118
    const/4 v5, 0x0

    .line 119
    const/4 v6, 0x0

    .line 120
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 121
    .line 122
    .line 123
    :cond_2
    iget-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->u:Lkotlin/jvm/functions/Function0;

    .line 124
    .line 125
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_3
    :goto_1
    return v1
.end method

.method public final t0()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->B:Lp/d;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v2, Lp/e;

    .line 10
    .line 11
    invoke-direct {v2, v1}, Lp/e;-><init>(Lp/d;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v2}, Lp/i;->a(Lp/f;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->B:Lp/d;

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->y:Landroidx/compose/ui/input/pointer/n0;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Landroidx/compose/ui/node/e1;->t0()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public synthetic y0()V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/d1;->b(Landroidx/compose/ui/node/e1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
