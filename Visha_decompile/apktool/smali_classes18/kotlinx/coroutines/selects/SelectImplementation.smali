.class public Lkotlinx/coroutines/selects/SelectImplementation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/b;
.implements Lxa9;
.implements Ljgc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/selects/SelectImplementation$a;
    }
.end annotation


# static fields
.field public static final synthetic g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public final b:Lkotlin/coroutines/d;

.field public c:Ljava/util/List;

.field public d:Ljava/lang/Object;

.field public e:I

.field public f:Ljava/lang/Object;

.field private volatile synthetic state$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "state$volatile"

    const-class v2, Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/selects/SelectImplementation;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->b:Lkotlin/coroutines/d;

    invoke-static {}, Lya9;->g()Ly7a;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->state$volatile:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->c:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->e:I

    invoke-static {}, Lya9;->d()Ly7a;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->f:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic e(Lkotlinx/coroutines/selects/SelectImplementation;Lwh1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->n(Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lkotlinx/coroutines/selects/SelectImplementation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic g()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic h(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->v(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic m(Lkotlinx/coroutines/selects/SelectImplementation;Lwh1;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lkotlinx/coroutines/selects/SelectImplementation;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->k(Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->n(Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/selects/SelectImplementation;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final s()Z
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lkotlinx/coroutines/selects/SelectImplementation$a;

    return p0
.end method

.method public static synthetic u(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlinx/coroutines/selects/SelectImplementation$a;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/selects/SelectImplementation;->t(Lkotlinx/coroutines/selects/SelectImplementation$a;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: register"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lya9;->f()Ly7a;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lya9;->e()Ly7a;

    move-result-object v1

    invoke-static {p1, p0, v0, v1}, Lu3;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->c:Ljava/util/List;

    if-nez p1, :cond_2

    return-void

    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/selects/SelectImplementation$a;

    invoke-virtual {v0}, Lkotlinx/coroutines/selects/SelectImplementation$a;->b()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lya9;->d()Ly7a;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->f:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->c:Ljava/util/List;

    return-void
.end method

.method public b(Luc2;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->d:Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->f:Ljava/lang/Object;

    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/selects/SelectImplementation;->x(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getContext()Lkotlin/coroutines/d;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->b:Lkotlin/coroutines/d;

    return-object p0
.end method

.method public final i(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->c:Ljava/util/List;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/selects/SelectImplementation$a;

    iget-object v0, v0, Lkotlinx/coroutines/selects/SelectImplementation$a;->a:Ljava/lang/Object;

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot use select clauses on the same object: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public invokeOnCancellation(Loa9;I)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->d:Ljava/lang/Object;

    iput p2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->e:I

    return-void
.end method

.method public final j(Lkotlinx/coroutines/selects/SelectImplementation$a;)V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->c:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/selects/SelectImplementation$a;

    if-eq v1, p1, :cond_1

    invoke-virtual {v1}, Lkotlinx/coroutines/selects/SelectImplementation$a;->b()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    invoke-static {}, Lya9;->f()Ly7a;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lya9;->d()Ly7a;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->f:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->c:Ljava/util/List;

    return-void
.end method

.method public final k(Lwh1;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation.ClauseData<R of kotlinx.coroutines.selects.SelectImplementation>"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/selects/SelectImplementation$a;

    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->f:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->j(Lkotlinx/coroutines/selects/SelectImplementation$a;)V

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/selects/SelectImplementation$a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation$a;->c(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public l(Lwh1;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->m(Lkotlinx/coroutines/selects/SelectImplementation;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final n(Lwh1;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;

    iget v1, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;-><init>(Lkotlinx/coroutines/selects/SelectImplementation;Lwh1;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->result:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iput-object p0, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->y(Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    iput-object p1, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->k(Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p1
.end method

.method public final o(Ljava/lang/Object;)Lkotlinx/coroutines/selects/SelectImplementation$a;
    .locals 3

    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->c:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/selects/SelectImplementation$a;

    iget-object v2, v2, Lkotlinx/coroutines/selects/SelectImplementation$a;->a:Ljava/lang/Object;

    if-ne v2, p1, :cond_1

    move-object v0, v1

    :cond_2
    check-cast v0, Lkotlinx/coroutines/selects/SelectImplementation$a;

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clause with object "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public q(Lsa9;Le74;)V
    .locals 9

    new-instance v8, Lkotlinx/coroutines/selects/SelectImplementation$a;

    invoke-interface {p1}, Lwa9;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lwa9;->c()Lu74;

    move-result-object v3

    invoke-interface {p1}, Lwa9;->b()Lu74;

    move-result-object v4

    invoke-static {}, Lya9;->i()Ly7a;

    move-result-object v5

    invoke-interface {p1}, Lwa9;->a()Lu74;

    move-result-object v7

    move-object v0, v8

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/selects/SelectImplementation$a;-><init>(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;Lu74;Lu74;Ljava/lang/Object;Ljava/lang/Object;Lu74;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v8, v0, p1, p2}, Lkotlinx/coroutines/selects/SelectImplementation;->u(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlinx/coroutines/selects/SelectImplementation$a;ZILjava/lang/Object;)V

    return-void
.end method

.method public r(Lua9;Ls74;)V
    .locals 9

    new-instance v8, Lkotlinx/coroutines/selects/SelectImplementation$a;

    invoke-interface {p1}, Lwa9;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lwa9;->c()Lu74;

    move-result-object v3

    invoke-interface {p1}, Lwa9;->b()Lu74;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {p1}, Lwa9;->a()Lu74;

    move-result-object v7

    move-object v0, v8

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/selects/SelectImplementation$a;-><init>(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;Lu74;Lu74;Ljava/lang/Object;Ljava/lang/Object;Lu74;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v8, v0, p1, p2}, Lkotlinx/coroutines/selects/SelectImplementation;->u(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlinx/coroutines/selects/SelectImplementation$a;ZILjava/lang/Object;)V

    return-void
.end method

.method public final t(Lkotlinx/coroutines/selects/SelectImplementation$a;Z)V
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/selects/SelectImplementation$a;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p1, Lkotlinx/coroutines/selects/SelectImplementation$a;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->i(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/selects/SelectImplementation$a;->e(Lkotlinx/coroutines/selects/SelectImplementation;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    iget-object p2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->c:Ljava/util/List;

    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->d:Ljava/lang/Object;

    iput-object p2, p1, Lkotlinx/coroutines/selects/SelectImplementation$a;->g:Ljava/lang/Object;

    iget p2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->e:I

    iput p2, p1, Lkotlinx/coroutines/selects/SelectImplementation$a;->h:I

    const/4 p1, 0x0

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->d:Ljava/lang/Object;

    const/4 p1, -0x1

    iput p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->e:I

    goto :goto_0

    :cond_3
    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final v(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->o(Ljava/lang/Object;)Lkotlinx/coroutines/selects/SelectImplementation$a;

    move-result-object p1

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p1, Lkotlinx/coroutines/selects/SelectImplementation$a;->g:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p1, Lkotlinx/coroutines/selects/SelectImplementation$a;->h:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->t(Lkotlinx/coroutines/selects/SelectImplementation$a;Z)V

    return-void
.end method

.method public final w(Ljava/lang/Object;Ljava/lang/Object;)Lkotlinx/coroutines/selects/TrySelectDetailedResult;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/selects/SelectImplementation;->x(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Lya9;->b(I)Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    move-result-object p0

    return-object p0
.end method

.method public final x(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    :cond_0
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcr0;

    const/4 v2, 0x2

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->o(Ljava/lang/Object;)Lkotlinx/coroutines/selects/SelectImplementation$a;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p0, p2}, Lkotlinx/coroutines/selects/SelectImplementation$a;->a(Lxa9;Ljava/lang/Object;)Lu74;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    invoke-static {v4, p0, v0, v1}, Lu3;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcr0;

    iput-object p2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->f:Ljava/lang/Object;

    invoke-static {v0, v3}, Lya9;->h(Lcr0;Lu74;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-static {}, Lya9;->d()Ly7a;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->f:Ljava/lang/Object;

    return v2

    :cond_3
    invoke-static {}, Lya9;->f()Ly7a;

    move-result-object v1

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    instance-of v1, v0, Lkotlinx/coroutines/selects/SelectImplementation$a;

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {}, Lya9;->e()Ly7a;

    move-result-object v1

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    invoke-static {}, Lya9;->g()Ly7a;

    move-result-object v1

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-static {p1}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, p0, v0, v3}, Lu3;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_6
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_7

    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3, p1}, Li81;->K0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, p0, v0, v3}, Lu3;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_1
    const/4 p0, 0x3

    return p0
.end method

.method public final y(Lwh1;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->c(Lwh1;)Lwh1;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lwh1;I)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->g()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lya9;->g()Ly7a;

    move-result-object v3

    if-ne v2, v3, :cond_1

    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->g()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-static {v3, p0, v2, v0}, Lu3;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, p0}, Lfr0;->c(Lcr0;Lkotlinx/coroutines/b;)V

    goto :goto_1

    :cond_1
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_2

    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->g()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-static {}, Lya9;->g()Ly7a;

    move-result-object v4

    invoke-static {v3, p0, v2, v4}, Lu3;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v3}, Lkotlinx/coroutines/selects/SelectImplementation;->h(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    instance-of v1, v2, Lkotlinx/coroutines/selects/SelectImplementation$a;

    if-eqz v1, :cond_5

    sget-object v1, Lzfb;->a:Lzfb;

    check-cast v2, Lkotlinx/coroutines/selects/SelectImplementation$a;

    invoke-static {p0}, Lkotlinx/coroutines/selects/SelectImplementation;->f(Lkotlinx/coroutines/selects/SelectImplementation;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lkotlinx/coroutines/selects/SelectImplementation$a;->a(Lxa9;Ljava/lang/Object;)Lu74;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcr0;->resume(Ljava/lang/Object;Lu74;)V

    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_3

    invoke-static {p1}, Lpt1;->c(Lwh1;)V

    :cond_3
    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_4

    return-object p0

    :cond_4
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
