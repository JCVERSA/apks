.class public final Landroidx/compose/foundation/FocusableNode;
.super Landroidx/compose/ui/node/i;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/focus/c;
.implements Landroidx/compose/ui/node/i1;
.implements Landroidx/compose/ui/node/p;
.implements Landroidx/compose/ui/focus/q;


# instance fields
.field private final p:Z

.field private q:Landroidx/compose/ui/focus/r;

.field private final r:Landroidx/compose/foundation/FocusableInteractionNode;

.field private final s:Landroidx/compose/foundation/FocusablePinnableContainerNode;

.field private final t:Landroidx/compose/foundation/s;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lp/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/node/i;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/foundation/FocusableInteractionNode;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroidx/compose/foundation/FocusableInteractionNode;-><init>(Lp/i;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/i;->C1(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/f;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroidx/compose/foundation/FocusableInteractionNode;

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/compose/foundation/FocusableNode;->r:Landroidx/compose/foundation/FocusableInteractionNode;

    .line 16
    .line 17
    new-instance p1, Landroidx/compose/foundation/FocusablePinnableContainerNode;

    .line 18
    .line 19
    invoke-direct {p1}, Landroidx/compose/foundation/FocusablePinnableContainerNode;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/i;->C1(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/f;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroidx/compose/foundation/FocusablePinnableContainerNode;

    .line 27
    .line 28
    iput-object p1, p0, Landroidx/compose/foundation/FocusableNode;->s:Landroidx/compose/foundation/FocusablePinnableContainerNode;

    .line 29
    .line 30
    new-instance p1, Landroidx/compose/foundation/s;

    .line 31
    .line 32
    invoke-direct {p1}, Landroidx/compose/foundation/s;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/i;->C1(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/f;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Landroidx/compose/foundation/s;

    .line 40
    .line 41
    iput-object p1, p0, Landroidx/compose/foundation/FocusableNode;->t:Landroidx/compose/foundation/s;

    .line 42
    .line 43
    invoke-static {}, Landroidx/compose/ui/focus/t;->a()Landroidx/compose/ui/focus/s;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/i;->C1(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/f;

    .line 48
    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final I1(Lp/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode;->r:Landroidx/compose/foundation/FocusableInteractionNode;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/FocusableInteractionNode;->F1(Lp/i;)V

    .line 4
    .line 5
    .line 6
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

.method public Q0(Landroidx/compose/ui/semantics/n;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode;->q:Landroidx/compose/ui/focus/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/compose/ui/focus/r;->isFocused()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    move v1, v2

    .line 14
    :cond_0
    invoke-static {p1, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->w(Landroidx/compose/ui/semantics/n;Z)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Landroidx/compose/foundation/FocusableNode$applySemantics$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Landroidx/compose/foundation/FocusableNode$applySemantics$1;-><init>(Landroidx/compose/foundation/FocusableNode;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-static {p1, v1, v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->o(Landroidx/compose/ui/semantics/n;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public R0(Landroidx/compose/ui/focus/r;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode;->q:Landroidx/compose/ui/focus/r;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    invoke-interface {p1}, Landroidx/compose/ui/focus/r;->isFocused()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->c1()Lkotlinx/coroutines/n0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v4, Landroidx/compose/foundation/FocusableNode$onFocusEvent$1;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-direct {v4, p0, v2}, Landroidx/compose/foundation/FocusableNode$onFocusEvent$1;-><init>(Landroidx/compose/foundation/FocusableNode;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x3

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->j1()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-static {p0}, Landroidx/compose/ui/node/j1;->b(Landroidx/compose/ui/node/i1;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/FocusableNode;->r:Landroidx/compose/foundation/FocusableInteractionNode;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Landroidx/compose/foundation/FocusableInteractionNode;->E1(Z)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Landroidx/compose/foundation/FocusableNode;->t:Landroidx/compose/foundation/s;

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroidx/compose/foundation/s;->E1(Z)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Landroidx/compose/foundation/FocusableNode;->s:Landroidx/compose/foundation/FocusablePinnableContainerNode;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Landroidx/compose/foundation/FocusablePinnableContainerNode;->D1(Z)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Landroidx/compose/foundation/FocusableNode;->q:Landroidx/compose/ui/focus/r;

    .line 56
    .line 57
    :cond_2
    return-void
.end method

.method public synthetic V0()Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/h1;->b(Landroidx/compose/ui/node/i1;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public h1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/FocusableNode;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public v(Landroidx/compose/ui/layout/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode;->t:Landroidx/compose/foundation/s;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/s;->v(Landroidx/compose/ui/layout/l;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
