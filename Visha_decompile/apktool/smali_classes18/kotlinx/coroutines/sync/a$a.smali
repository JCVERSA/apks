.class public final Lkotlinx/coroutines/sync/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcr0;
.implements Ljgc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/sync/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:Lkotlinx/coroutines/CancellableContinuationImpl;

.field public final c:Ljava/lang/Object;

.field public final synthetic d:Lkotlinx/coroutines/sync/a;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/a;Lkotlinx/coroutines/CancellableContinuationImpl;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/sync/a$a;->d:Lkotlinx/coroutines/sync/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/sync/a$a;->b:Lkotlinx/coroutines/CancellableContinuationImpl;

    iput-object p3, p0, Lkotlinx/coroutines/sync/a$a;->c:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lkotlinx/coroutines/sync/a;Lkotlinx/coroutines/sync/a$a;Ljava/lang/Throwable;Lzfb;Lkotlin/coroutines/d;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/sync/a$a;->g(Lkotlinx/coroutines/sync/a;Lkotlinx/coroutines/sync/a$a;Ljava/lang/Throwable;Lzfb;Lkotlin/coroutines/d;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lkotlinx/coroutines/sync/a;Lkotlinx/coroutines/sync/a$a;Ljava/lang/Throwable;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/sync/a$a;->d(Lkotlinx/coroutines/sync/a;Lkotlinx/coroutines/sync/a$a;Ljava/lang/Throwable;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lkotlinx/coroutines/sync/a;Lkotlinx/coroutines/sync/a$a;Ljava/lang/Throwable;)Lzfb;
    .locals 0

    iget-object p1, p1, Lkotlinx/coroutines/sync/a$a;->c:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/sync/a;->b(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final g(Lkotlinx/coroutines/sync/a;Lkotlinx/coroutines/sync/a$a;Ljava/lang/Throwable;Lzfb;Lkotlin/coroutines/d;)Lzfb;
    .locals 0

    invoke-static {}, Lkotlinx/coroutines/sync/a;->v()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p2

    iget-object p3, p1, Lkotlinx/coroutines/sync/a$a;->c:Ljava/lang/Object;

    invoke-virtual {p2, p0, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p1, Lkotlinx/coroutines/sync/a$a;->c:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/sync/a;->b(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method


# virtual methods
.method public c(Lzfb;Lu74;)V
    .locals 2

    invoke-static {}, Lkotlinx/coroutines/sync/a;->v()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p2

    iget-object v0, p0, Lkotlinx/coroutines/sync/a$a;->d:Lkotlinx/coroutines/sync/a;

    iget-object v1, p0, Lkotlinx/coroutines/sync/a$a;->c:Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lkotlinx/coroutines/sync/a$a;->b:Lkotlinx/coroutines/CancellableContinuationImpl;

    iget-object v0, p0, Lkotlinx/coroutines/sync/a$a;->d:Lkotlinx/coroutines/sync/a;

    new-instance v1, Lrw6;

    invoke-direct {v1, v0, p0}, Lrw6;-><init>(Lkotlinx/coroutines/sync/a;Lkotlinx/coroutines/sync/a$a;)V

    invoke-virtual {p2, p1, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resume(Ljava/lang/Object;Le74;)V

    return-void
.end method

.method public cancel(Ljava/lang/Throwable;)Z
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/sync/a$a;->b:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancel(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public completeResume(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/sync/a$a;->b:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->completeResume(Ljava/lang/Object;)V

    return-void
.end method

.method public e(Lkotlinx/coroutines/c;Lzfb;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/sync/a$a;->b:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeUndispatched(Lkotlinx/coroutines/c;Ljava/lang/Object;)V

    return-void
.end method

.method public f(Lzfb;Ljava/lang/Object;Lu74;)Ljava/lang/Object;
    .locals 2

    iget-object p3, p0, Lkotlinx/coroutines/sync/a$a;->d:Lkotlinx/coroutines/sync/a;

    iget-object v0, p0, Lkotlinx/coroutines/sync/a$a;->b:Lkotlinx/coroutines/CancellableContinuationImpl;

    new-instance v1, Lqw6;

    invoke-direct {v1, p3, p0}, Lqw6;-><init>(Lkotlinx/coroutines/sync/a;Lkotlinx/coroutines/sync/a$a;)V

    invoke-virtual {v0, p1, p2, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->tryResume(Ljava/lang/Object;Ljava/lang/Object;Lu74;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lkotlinx/coroutines/sync/a;->v()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p2

    iget-object p3, p0, Lkotlinx/coroutines/sync/a$a;->d:Lkotlinx/coroutines/sync/a;

    iget-object p0, p0, Lkotlinx/coroutines/sync/a$a;->c:Ljava/lang/Object;

    invoke-virtual {p2, p3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public getContext()Lkotlin/coroutines/d;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/sync/a$a;->b:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/d;

    move-result-object p0

    return-object p0
.end method

.method public invokeOnCancellation(Le74;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/sync/a$a;->b:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Le74;)V

    return-void
.end method

.method public invokeOnCancellation(Loa9;I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lkotlinx/coroutines/sync/a$a;->b:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Loa9;I)V

    return-void
.end method

.method public isActive()Z
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/sync/a$a;->b:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isActive()Z

    move-result p0

    return p0
.end method

.method public isCompleted()Z
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/sync/a$a;->b:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isCompleted()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic resume(Ljava/lang/Object;Lu74;)V
    .locals 0

    check-cast p1, Lzfb;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/sync/a$a;->c(Lzfb;Lu74;)V

    return-void
.end method

.method public bridge synthetic resumeUndispatched(Lkotlinx/coroutines/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lzfb;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/sync/a$a;->e(Lkotlinx/coroutines/c;Lzfb;)V

    return-void
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/sync/a$a;->b:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic tryResume(Ljava/lang/Object;Ljava/lang/Object;Lu74;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lzfb;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/sync/a$a;->f(Lzfb;Ljava/lang/Object;Lu74;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public tryResumeWithException(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/sync/a$a;->b:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->tryResumeWithException(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
