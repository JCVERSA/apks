.class public abstract Lts0;
.super Lkotlinx/coroutines/a;
.source "SourceFile"

# interfaces
.implements Lps0;


# instance fields
.field public final b:Lps0;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/d;Lps0;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lkotlinx/coroutines/a;-><init>(Lkotlin/coroutines/d;ZZ)V

    iput-object p2, p0, Lts0;->b:Lps0;

    return-void
.end method


# virtual methods
.method public final V()Lps0;
    .locals 0

    return-object p0
.end method

.method public final W()Lps0;
    .locals 0

    iget-object p0, p0, Lts0;->b:Lps0;

    return-object p0
.end method

.method public a(Le74;)V
    .locals 0

    iget-object p0, p0, Lts0;->b:Lps0;

    invoke-interface {p0, p1}, Lbc9;->a(Le74;)V

    return-void
.end method

.method public c(Lwh1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lts0;->b:Lps0;

    invoke-interface {p0, p1}, Lqo8;->c(Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public synthetic cancel()V
    .locals 3

    .line 4
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->access$cancellationExceptionMessage(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/j;)V

    .line 5
    invoke-virtual {p0, v0}, Lts0;->cancelInternal(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2
    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->access$cancellationExceptionMessage(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/j;)V

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lts0;->cancelInternal(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic cancel(Ljava/lang/Throwable;)Z
    .locals 2

    .line 6
    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->access$cancellationExceptionMessage(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/j;)V

    .line 7
    invoke-virtual {p0, p1}, Lts0;->cancelInternal(Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public cancelInternal(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, v0}, Lkotlinx/coroutines/JobSupport;->toCancellationException$default(Lkotlinx/coroutines/JobSupport;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    iget-object v0, p0, Lts0;->b:Lps0;

    invoke-interface {v0, p1}, Lqo8;->cancel(Ljava/util/concurrent/CancellationException;)V

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->cancelCoroutine(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lts0;->b:Lps0;

    invoke-interface {p0, p1}, Lbc9;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public i()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lts0;->b:Lps0;

    invoke-interface {p0}, Lqo8;->i()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Lbu0;
    .locals 0

    iget-object p0, p0, Lts0;->b:Lps0;

    invoke-interface {p0}, Lqo8;->iterator()Lbu0;

    move-result-object p0

    return-object p0
.end method

.method public j()Z
    .locals 0

    iget-object p0, p0, Lts0;->b:Lps0;

    invoke-interface {p0}, Lbc9;->j()Z

    move-result p0

    return p0
.end method

.method public k(Lwh1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lts0;->b:Lps0;

    invoke-interface {p0, p1}, Lqo8;->k(Lwh1;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    return-object p0
.end method

.method public l(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lts0;->b:Lps0;

    invoke-interface {p0, p1, p2}, Lbc9;->l(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public m(Ljava/lang/Throwable;)Z
    .locals 0

    iget-object p0, p0, Lts0;->b:Lps0;

    invoke-interface {p0, p1}, Lbc9;->m(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method
