.class public final Lix9;
.super Lz3;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lz3;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lix9;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static final synthetic c(Lix9;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lix9;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, p1}, Lix9;->d(Lkotlinx/coroutines/flow/StateFlowImpl;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)[Lwh1;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, p1}, Lix9;->f(Lkotlinx/coroutines/flow/StateFlowImpl;)[Lwh1;

    move-result-object p0

    return-object p0
.end method

.method public d(Lkotlinx/coroutines/flow/StateFlowImpl;)Z
    .locals 0

    iget-object p1, p0, Lix9;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lke1;->a(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lix9;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lhx9;->b()Ly7a;

    move-result-object p1

    invoke-static {p0, p1}, Lke1;->b(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final e(Lwh1;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->c(Lwh1;)Lwh1;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lwh1;I)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    invoke-static {p0}, Lix9;->c(Lix9;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-static {}, Lhx9;->b()Ly7a;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lwk5;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_1

    invoke-static {p1}, Lpt1;->c(Lwh1;)V

    :cond_1
    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public f(Lkotlinx/coroutines/flow/StateFlowImpl;)[Lwh1;
    .locals 0

    iget-object p0, p0, Lix9;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lke1;->b(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V

    sget-object p0, Ly3;->a:[Lwh1;

    return-object p0
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lix9;->a:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_0
    invoke-static {v0}, Lke1;->a(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lhx9;->c()Ly7a;

    move-result-object v2

    if-ne v1, v2, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lhx9;->b()Ly7a;

    move-result-object v2

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lix9;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lhx9;->c()Ly7a;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lwk5;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_3
    iget-object v2, p0, Lix9;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lhx9;->b()Ly7a;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lwk5;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuationImpl;

    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final h()Z
    .locals 1

    iget-object p0, p0, Lix9;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lhx9;->b()Ly7a;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {}, Lhx9;->c()Ly7a;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
