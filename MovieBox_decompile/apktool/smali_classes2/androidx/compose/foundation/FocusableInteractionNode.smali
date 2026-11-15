.class final Landroidx/compose/foundation/FocusableInteractionNode;
.super Landroidx/compose/ui/f$c;
.source "source.java"


# instance fields
.field private n:Lp/i;

.field private o:Lp/b;

.field private final p:Z


# direct methods
.method public constructor <init>(Lp/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/FocusableInteractionNode;->n:Lp/i;

    .line 5
    .line 6
    return-void
.end method

.method private final C1()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/FocusableInteractionNode;->n:Lp/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/foundation/FocusableInteractionNode;->o:Lp/b;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v2, Lp/c;

    .line 10
    .line 11
    invoke-direct {v2, v1}, Lp/c;-><init>(Lp/b;)V

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
    iput-object v0, p0, Landroidx/compose/foundation/FocusableInteractionNode;->o:Lp/b;

    .line 19
    .line 20
    return-void
.end method

.method private final D1(Lp/i;Lp/f;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->j1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->c1()Lkotlinx/coroutines/n0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lkotlinx/coroutines/n0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lkotlinx/coroutines/t1;->m1:Lkotlinx/coroutines/t1$b;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lkotlinx/coroutines/t1;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    new-instance v2, Landroidx/compose/foundation/FocusableInteractionNode$emitWithFallback$handler$1;

    .line 27
    .line 28
    invoke-direct {v2, p1, p2}, Landroidx/compose/foundation/FocusableInteractionNode$emitWithFallback$handler$1;-><init>(Lp/i;Lp/f;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v2}, Lkotlinx/coroutines/t1;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/a1;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-object v0, v1

    .line 37
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->c1()Lkotlinx/coroutines/n0;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-instance v5, Landroidx/compose/foundation/FocusableInteractionNode$emitWithFallback$1;

    .line 42
    .line 43
    invoke-direct {v5, p1, p2, v0, v1}, Landroidx/compose/foundation/FocusableInteractionNode$emitWithFallback$1;-><init>(Lp/i;Lp/f;Lkotlinx/coroutines/a1;Lkotlin/coroutines/Continuation;)V

    .line 44
    .line 45
    .line 46
    const/4 v6, 0x3

    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v3, 0x0

    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-interface {p1, p2}, Lp/i;->a(Lp/f;)Z

    .line 55
    .line 56
    .line 57
    :goto_1
    return-void
.end method


# virtual methods
.method public final E1(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/FocusableInteractionNode;->n:Lp/i;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Landroidx/compose/foundation/FocusableInteractionNode;->o:Lp/b;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    new-instance v2, Lp/c;

    .line 13
    .line 14
    invoke-direct {v2, p1}, Lp/c;-><init>(Lp/b;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0, v2}, Landroidx/compose/foundation/FocusableInteractionNode;->D1(Lp/i;Lp/f;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Landroidx/compose/foundation/FocusableInteractionNode;->o:Lp/b;

    .line 21
    .line 22
    :cond_0
    new-instance p1, Lp/b;

    .line 23
    .line 24
    invoke-direct {p1}, Lp/b;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0, p1}, Landroidx/compose/foundation/FocusableInteractionNode;->D1(Lp/i;Lp/f;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Landroidx/compose/foundation/FocusableInteractionNode;->o:Lp/b;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object p1, p0, Landroidx/compose/foundation/FocusableInteractionNode;->o:Lp/b;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    new-instance v2, Lp/c;

    .line 38
    .line 39
    invoke-direct {v2, p1}, Lp/c;-><init>(Lp/b;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v0, v2}, Landroidx/compose/foundation/FocusableInteractionNode;->D1(Lp/i;Lp/f;)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Landroidx/compose/foundation/FocusableInteractionNode;->o:Lp/b;

    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method public final F1(Lp/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/FocusableInteractionNode;->n:Lp/i;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/compose/foundation/FocusableInteractionNode;->C1()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Landroidx/compose/foundation/FocusableInteractionNode;->n:Lp/i;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public h1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/FocusableInteractionNode;->p:Z

    .line 2
    .line 3
    return v0
.end method
