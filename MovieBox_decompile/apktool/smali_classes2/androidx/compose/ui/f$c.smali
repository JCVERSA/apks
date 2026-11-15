.class public abstract Landroidx/compose/ui/f$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/node/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field private a:Landroidx/compose/ui/f$c;

.field private b:Lkotlinx/coroutines/n0;

.field private c:I

.field private d:I

.field private e:Landroidx/compose/ui/f$c;

.field private f:Landroidx/compose/ui/f$c;

.field private g:Landroidx/compose/ui/node/ObserverNodeOwnerScope;

.field private h:Landroidx/compose/ui/node/NodeCoordinator;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Landroidx/compose/ui/f$c;->a:Landroidx/compose/ui/f$c;

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Landroidx/compose/ui/f$c;->d:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final A1(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/g;->n(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/y0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/ui/node/y0;->registerOnEndApplyChangesListener(Lkotlin/jvm/functions/Function0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public B1(Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/f$c;->h:Landroidx/compose/ui/node/NodeCoordinator;

    .line 2
    .line 3
    return-void
.end method

.method public final Z0()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/f$c;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final a1()Landroidx/compose/ui/f$c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/f$c;->f:Landroidx/compose/ui/f$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b1()Landroidx/compose/ui/node/NodeCoordinator;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/f$c;->h:Landroidx/compose/ui/node/NodeCoordinator;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c1()Lkotlinx/coroutines/n0;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/f$c;->b:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Landroidx/compose/ui/node/g;->n(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/y0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Landroidx/compose/ui/node/y0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p0}, Landroidx/compose/ui/node/g;->n(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/y0;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Landroidx/compose/ui/node/y0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-object v2, Lkotlinx/coroutines/t1;->m1:Lkotlinx/coroutines/t1$b;

    .line 22
    .line 23
    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lkotlinx/coroutines/t1;

    .line 28
    .line 29
    invoke-static {v1}, Lkotlinx/coroutines/v1;->a(Lkotlinx/coroutines/t1;)Lkotlinx/coroutines/z;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Landroidx/compose/ui/f$c;->b:Lkotlinx/coroutines/n0;

    .line 42
    .line 43
    :cond_0
    return-object v0
.end method

.method public final d1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/f$c;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public final e1()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/f$c;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final f1()Landroidx/compose/ui/node/ObserverNodeOwnerScope;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/f$c;->g:Landroidx/compose/ui/node/ObserverNodeOwnerScope;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g1()Landroidx/compose/ui/f$c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/f$c;->e:Landroidx/compose/ui/f$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNode()Landroidx/compose/ui/f$c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/f$c;->a:Landroidx/compose/ui/f$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public h1()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final i1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/f$c;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public final j1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/f$c;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public k1()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/f$c;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "node attached multiple times"

    .line 6
    .line 7
    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/f$c;->h:Landroidx/compose/ui/node/NodeCoordinator;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-nez v0, :cond_2

    .line 19
    .line 20
    const-string v0, "attach invoked on a node without a coordinator"

    .line 21
    .line 22
    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iput-boolean v1, p0, Landroidx/compose/ui/f$c;->m:Z

    .line 26
    .line 27
    iput-boolean v1, p0, Landroidx/compose/ui/f$c;->k:Z

    .line 28
    .line 29
    return-void
.end method

.method public l1()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/f$c;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Cannot detach a node that is not attached"

    .line 6
    .line 7
    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/ui/f$c;->k:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-string v0, "Must run runAttachLifecycle() before markAsDetached()"

    .line 15
    .line 16
    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-boolean v0, p0, Landroidx/compose/ui/f$c;->l:Z

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    const-string v0, "Must run runDetachLifecycle() before markAsDetached()"

    .line 24
    .line 25
    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Landroidx/compose/ui/f$c;->m:Z

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/compose/ui/f$c;->b:Lkotlinx/coroutines/n0;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    new-instance v1, Landroidx/compose/ui/ModifierNodeDetachedCancellationException;

    .line 36
    .line 37
    invoke-direct {v1}, Landroidx/compose/ui/ModifierNodeDetachedCancellationException;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlinx/coroutines/o0;->c(Lkotlinx/coroutines/n0;Ljava/util/concurrent/CancellationException;)V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Landroidx/compose/ui/f$c;->b:Lkotlinx/coroutines/n0;

    .line 45
    .line 46
    :cond_3
    return-void
.end method

.method public m1()V
    .locals 0

    .line 1
    return-void
.end method

.method public n1()V
    .locals 0

    .line 1
    return-void
.end method

.method public o1()V
    .locals 0

    .line 1
    return-void
.end method

.method public p1()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/f$c;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "reset() called on an unattached node"

    .line 6
    .line 7
    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->o1()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public q1()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/f$c;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Must run markAsAttached() prior to runAttachLifecycle"

    .line 6
    .line 7
    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/ui/f$c;->k:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const-string v0, "Must run runAttachLifecycle() only once after markAsAttached()"

    .line 15
    .line 16
    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Landroidx/compose/ui/f$c;->k:Z

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->m1()V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Landroidx/compose/ui/f$c;->l:Z

    .line 27
    .line 28
    return-void
.end method

.method public r1()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/f$c;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "node detached multiple times"

    .line 6
    .line 7
    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/f$c;->h:Landroidx/compose/ui/node/NodeCoordinator;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move v0, v1

    .line 18
    :goto_0
    if-nez v0, :cond_2

    .line 19
    .line 20
    const-string v0, "detach invoked on a node without a coordinator"

    .line 21
    .line 22
    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-boolean v0, p0, Landroidx/compose/ui/f$c;->l:Z

    .line 26
    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    const-string v0, "Must run runDetachLifecycle() once after runAttachLifecycle() and before markAsDetached()"

    .line 30
    .line 31
    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_3
    iput-boolean v1, p0, Landroidx/compose/ui/f$c;->l:Z

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->n1()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final s1(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/f$c;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public t1(Landroidx/compose/ui/f$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/f$c;->a:Landroidx/compose/ui/f$c;

    .line 2
    .line 3
    return-void
.end method

.method public final u1(Landroidx/compose/ui/f$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/f$c;->f:Landroidx/compose/ui/f$c;

    .line 2
    .line 3
    return-void
.end method

.method public final v1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/f$c;->i:Z

    .line 2
    .line 3
    return-void
.end method

.method public final w1(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/f$c;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public final x1(Landroidx/compose/ui/node/ObserverNodeOwnerScope;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/f$c;->g:Landroidx/compose/ui/node/ObserverNodeOwnerScope;

    .line 2
    .line 3
    return-void
.end method

.method public final y1(Landroidx/compose/ui/f$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/f$c;->e:Landroidx/compose/ui/f$c;

    .line 2
    .line 3
    return-void
.end method

.method public final z1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/f$c;->j:Z

    .line 2
    .line 3
    return-void
.end method
