.class public abstract Landroidx/compose/foundation/gestures/DragGestureNode;
.super Landroidx/compose/ui/node/i;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/node/e1;
.implements Landroidx/compose/ui/node/d;


# instance fields
.field private p:Landroidx/compose/foundation/gestures/Orientation;

.field private q:Lkotlin/jvm/functions/Function1;

.field private r:Z

.field private s:Lp/i;

.field private final t:Lkotlin/jvm/functions/Function1;

.field private u:Lkotlinx/coroutines/channels/d;

.field private v:Lp/a$b;

.field private w:Z

.field private x:Landroidx/compose/ui/input/pointer/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;ZLp/i;Landroidx/compose/foundation/gestures/Orientation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/node/i;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->p:Landroidx/compose/foundation/gestures/Orientation;

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->q:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    iput-boolean p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->r:Z

    .line 9
    .line 10
    iput-object p3, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->s:Lp/i;

    .line 11
    .line 12
    new-instance p1, Landroidx/compose/foundation/gestures/DragGestureNode$_canDrag$1;

    .line 13
    .line 14
    invoke-direct {p1, p0}, Landroidx/compose/foundation/gestures/DragGestureNode$_canDrag$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->t:Lkotlin/jvm/functions/Function1;

    .line 18
    .line 19
    return-void
.end method

.method public static final synthetic I1(Landroidx/compose/foundation/gestures/DragGestureNode;)Lkotlinx/coroutines/channels/d;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->u:Lkotlinx/coroutines/channels/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic J1(Landroidx/compose/foundation/gestures/DragGestureNode;)Landroidx/compose/foundation/gestures/Orientation;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->p:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic K1(Landroidx/compose/foundation/gestures/DragGestureNode;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->w:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic L1(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/foundation/gestures/DragGestureNode;->X1(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic M1(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/foundation/gestures/e$c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureNode;->Y1(Landroidx/compose/foundation/gestures/e$c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic N1(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/foundation/gestures/e$d;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureNode;->Z1(Landroidx/compose/foundation/gestures/e$d;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic O1(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlinx/coroutines/channels/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->u:Lkotlinx/coroutines/channels/d;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic P1(Landroidx/compose/foundation/gestures/DragGestureNode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->b2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final U1()Landroidx/compose/ui/input/pointer/n0;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/gestures/DragGestureNode$initializePointerInputNode$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/ui/input/pointer/l0;->a(Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/input/pointer/n0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private final X1(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

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
    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object v0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->v:Lp/a$b;

    .line 58
    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->s:Lp/i;

    .line 62
    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    new-instance v4, Lp/a$a;

    .line 66
    .line 67
    invoke-direct {v4, p1}, Lp/a$a;-><init>(Lp/a$b;)V

    .line 68
    .line 69
    .line 70
    iput-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->L$0:Ljava/lang/Object;

    .line 71
    .line 72
    iput v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

    .line 73
    .line 74
    invoke-interface {v2, v4, v0}, Lp/i;->c(Lp/f;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-ne p1, v1, :cond_3

    .line 79
    .line 80
    return-object v1

    .line 81
    :cond_3
    move-object v0, p0

    .line 82
    :goto_1
    const/4 p1, 0x0

    .line 83
    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->v:Lp/a$b;

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    move-object v0, p0

    .line 87
    :goto_2
    sget-object p1, Lo0/z;->b:Lo0/z$a;

    .line 88
    .line 89
    invoke-virtual {p1}, Lo0/z$a;->a()J

    .line 90
    .line 91
    .line 92
    move-result-wide v1

    .line 93
    invoke-virtual {v0, v1, v2}, Landroidx/compose/foundation/gestures/DragGestureNode;->W1(J)V

    .line 94
    .line 95
    .line 96
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 97
    .line 98
    return-object p1
.end method

.method private final Y1(Landroidx/compose/foundation/gestures/e$c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p2, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

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
    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

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
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$2:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Lp/a$b;

    .line 44
    .line 45
    iget-object v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$1:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Landroidx/compose/foundation/gestures/e$c;

    .line 48
    .line 49
    iget-object v0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$0:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode;

    .line 52
    .line 53
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_2
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$1:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p1, Landroidx/compose/foundation/gestures/e$c;

    .line 68
    .line 69
    iget-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$0:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v2, Landroidx/compose/foundation/gestures/DragGestureNode;

    .line 72
    .line 73
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->v:Lp/a$b;

    .line 81
    .line 82
    if-eqz p2, :cond_4

    .line 83
    .line 84
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->s:Lp/i;

    .line 85
    .line 86
    if-eqz v2, :cond_4

    .line 87
    .line 88
    new-instance v5, Lp/a$a;

    .line 89
    .line 90
    invoke-direct {v5, p2}, Lp/a$a;-><init>(Lp/a$b;)V

    .line 91
    .line 92
    .line 93
    iput-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$0:Ljava/lang/Object;

    .line 94
    .line 95
    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$1:Ljava/lang/Object;

    .line 96
    .line 97
    iput v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    .line 98
    .line 99
    invoke-interface {v2, v5, v0}, Lp/i;->c(Lp/f;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    if-ne p2, v1, :cond_4

    .line 104
    .line 105
    return-object v1

    .line 106
    :cond_4
    move-object v2, p0

    .line 107
    :goto_1
    new-instance p2, Lp/a$b;

    .line 108
    .line 109
    invoke-direct {p2}, Lp/a$b;-><init>()V

    .line 110
    .line 111
    .line 112
    iget-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureNode;->s:Lp/i;

    .line 113
    .line 114
    if-eqz v4, :cond_6

    .line 115
    .line 116
    iput-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$0:Ljava/lang/Object;

    .line 117
    .line 118
    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$1:Ljava/lang/Object;

    .line 119
    .line 120
    iput-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$2:Ljava/lang/Object;

    .line 121
    .line 122
    iput v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    .line 123
    .line 124
    invoke-interface {v4, p2, v0}, Lp/i;->c(Lp/f;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    if-ne v0, v1, :cond_5

    .line 129
    .line 130
    return-object v1

    .line 131
    :cond_5
    move-object v1, p1

    .line 132
    move-object p1, p2

    .line 133
    move-object v0, v2

    .line 134
    :goto_2
    move-object p2, p1

    .line 135
    move-object v2, v0

    .line 136
    move-object p1, v1

    .line 137
    :cond_6
    iput-object p2, v2, Landroidx/compose/foundation/gestures/DragGestureNode;->v:Lp/a$b;

    .line 138
    .line 139
    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/e$c;->a()J

    .line 140
    .line 141
    .line 142
    move-result-wide p1

    .line 143
    invoke-virtual {v2, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureNode;->V1(J)V

    .line 144
    .line 145
    .line 146
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 147
    .line 148
    return-object p1
.end method

.method private final Z1(Landroidx/compose/foundation/gestures/e$d;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

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
    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->L$1:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Landroidx/compose/foundation/gestures/e$d;

    .line 41
    .line 42
    iget-object v0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->L$0:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode;

    .line 45
    .line 46
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->v:Lp/a$b;

    .line 62
    .line 63
    if-eqz p2, :cond_4

    .line 64
    .line 65
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->s:Lp/i;

    .line 66
    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    new-instance v4, Lp/a$c;

    .line 70
    .line 71
    invoke-direct {v4, p2}, Lp/a$c;-><init>(Lp/a$b;)V

    .line 72
    .line 73
    .line 74
    iput-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->L$0:Ljava/lang/Object;

    .line 75
    .line 76
    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->L$1:Ljava/lang/Object;

    .line 77
    .line 78
    iput v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

    .line 79
    .line 80
    invoke-interface {v2, v4, v0}, Lp/i;->c(Lp/f;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    if-ne p2, v1, :cond_3

    .line 85
    .line 86
    return-object v1

    .line 87
    :cond_3
    move-object v0, p0

    .line 88
    :goto_1
    const/4 p2, 0x0

    .line 89
    iput-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->v:Lp/a$b;

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    move-object v0, p0

    .line 93
    :goto_2
    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/e$d;->a()J

    .line 94
    .line 95
    .line 96
    move-result-wide p1

    .line 97
    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureNode;->W1(J)V

    .line 98
    .line 99
    .line 100
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 101
    .line 102
    return-object p1
.end method

.method private final b2()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->w:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->c1()Lkotlinx/coroutines/n0;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    new-instance v4, Landroidx/compose/foundation/gestures/DragGestureNode$startListeningForEvents$1;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {v4, p0, v0}, Landroidx/compose/foundation/gestures/DragGestureNode$startListeningForEvents$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x3

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public M(Landroidx/compose/ui/input/pointer/o;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->x:Landroidx/compose/ui/input/pointer/n0;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->U1()Landroidx/compose/ui/input/pointer/n0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/i;->C1(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/compose/ui/input/pointer/n0;

    .line 18
    .line 19
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->x:Landroidx/compose/ui/input/pointer/n0;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->x:Landroidx/compose/ui/input/pointer/n0;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/compose/ui/node/e1;->M(Landroidx/compose/ui/input/pointer/o;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
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

.method public final Q1()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->v:Lp/a$b;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->s:Lp/i;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v2, Lp/a$a;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Lp/a$a;-><init>(Lp/a$b;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v2}, Lp/i;->a(Lp/f;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->v:Lp/a$b;

    .line 19
    .line 20
    :cond_1
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

.method public abstract R1(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.method protected final S1()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->q:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final T1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->r:Z

    .line 2
    .line 3
    return v0
.end method

.method public abstract V1(J)V
.end method

.method public abstract W1(J)V
.end method

.method public abstract a2()Z
.end method

.method public final c2(Lkotlin/jvm/functions/Function1;ZLp/i;Landroidx/compose/foundation/gestures/Orientation;Z)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->q:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->r:Z

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, p2, :cond_2

    .line 7
    .line 8
    iput-boolean p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->r:Z

    .line 9
    .line 10
    if-nez p2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->Q1()V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->x:Landroidx/compose/ui/input/pointer/n0;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/i;->F1(Landroidx/compose/ui/node/f;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->x:Landroidx/compose/ui/input/pointer/n0;

    .line 24
    .line 25
    :cond_1
    move p5, v0

    .line 26
    :cond_2
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->s:Lp/i;

    .line 27
    .line 28
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->Q1()V

    .line 35
    .line 36
    .line 37
    iput-object p3, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->s:Lp/i;

    .line 38
    .line 39
    :cond_3
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->p:Landroidx/compose/foundation/gestures/Orientation;

    .line 40
    .line 41
    if-eq p1, p4, :cond_4

    .line 42
    .line 43
    iput-object p4, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->p:Landroidx/compose/foundation/gestures/Orientation;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    move v0, p5

    .line 47
    :goto_0
    if-eqz v0, :cond_5

    .line 48
    .line 49
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->x:Landroidx/compose/ui/input/pointer/n0;

    .line 50
    .line 51
    if-eqz p1, :cond_5

    .line 52
    .line 53
    invoke-interface {p1}, Landroidx/compose/ui/input/pointer/n0;->j0()V

    .line 54
    .line 55
    .line 56
    :cond_5
    return-void
.end method

.method public n1()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->w:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->Q1()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public t0()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->x:Landroidx/compose/ui/input/pointer/n0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/ui/node/e1;->t0()V

    .line 6
    .line 7
    .line 8
    :cond_0
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
