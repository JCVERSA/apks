.class public final Lkotlinx/coroutines/channels/BufferedChannel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbu0;
.implements Ljgc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/BufferedChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lkotlinx/coroutines/CancellableContinuationImpl;

.field public final synthetic d:Lkotlinx/coroutines/channels/BufferedChannel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/BufferedChannel;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel$a;->d:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->m()Ly7a;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel$a;->b:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic b(Lkotlinx/coroutines/channels/BufferedChannel$a;)V
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel$a;->g()V

    return-void
.end method

.method public static final synthetic c(Lkotlinx/coroutines/channels/BufferedChannel$a;Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel$a;->c:Lkotlinx/coroutines/CancellableContinuationImpl;

    return-void
.end method

.method public static final synthetic d(Lkotlinx/coroutines/channels/BufferedChannel$a;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel$a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lwh1;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$a;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->m()Ly7a;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$a;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->z()Ly7a;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$a;->d:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->s()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu0;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/BufferedChannel;->t0()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel$a;->f()Z

    move-result v2

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->t()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v9

    sget v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    int-to-long v4, v3

    div-long v4, v9, v4

    int-to-long v6, v3

    rem-long v6, v9, v6

    long-to-int v11, v6

    iget-wide v6, v1, Loa9;->d:J

    cmp-long v3, v6, v4

    if-eqz v3, :cond_4

    invoke-static {v0, v4, v5, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->p(Lkotlinx/coroutines/channels/BufferedChannel;JLeu0;)Leu0;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, v3

    :cond_4
    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, v1

    move v5, v11

    move-wide v6, v9

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/channels/BufferedChannel;->F(Lkotlinx/coroutines/channels/BufferedChannel;Leu0;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->r()Ly7a;

    move-result-object v4

    if-eq v3, v4, :cond_7

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->h()Ly7a;

    move-result-object v4

    if-ne v3, v4, :cond_5

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/BufferedChannel;->l0()J

    move-result-wide v3

    cmp-long v3, v9, v3

    if-gez v3, :cond_1

    invoke-virtual {v1}, Lje1;->c()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->s()Ly7a;

    move-result-object v0

    if-ne v3, v0, :cond_6

    move-object v4, p0

    move-object v5, v1

    move v6, v11

    move-wide v7, v9

    move-object v9, p1

    invoke-virtual/range {v4 .. v9}, Lkotlinx/coroutines/channels/BufferedChannel$a;->e(Leu0;IJLwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {v1}, Lje1;->c()V

    iput-object v3, p0, Lkotlinx/coroutines/channels/BufferedChannel$a;->b:Ljava/lang/Object;

    :goto_1
    invoke-static {v2}, Lmk0;->a(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unreachable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Leu0;IJLwh1;)Ljava/lang/Object;
    .locals 10

    iget-object v6, p0, Lkotlinx/coroutines/channels/BufferedChannel$a;->d:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p5}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->c(Lwh1;)Lwh1;

    move-result-object v0

    invoke-static {v0}, Lfr0;->b(Lwh1;)Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object v7

    :try_start_0
    invoke-static {p0, v7}, Lkotlinx/coroutines/channels/BufferedChannel$a;->c(Lkotlinx/coroutines/channels/BufferedChannel$a;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/channels/BufferedChannel;->F(Lkotlinx/coroutines/channels/BufferedChannel;Leu0;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->r()Ly7a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {v6, p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->C(Lkotlinx/coroutines/channels/BufferedChannel;Ljgc;Leu0;I)V

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->h()Ly7a;

    move-result-object p2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v0, p2, :cond_a

    invoke-virtual {v6}, Lkotlinx/coroutines/channels/BufferedChannel;->l0()J

    move-result-wide v0

    cmp-long p2, p3, v0

    if-gez p2, :cond_1

    invoke-virtual {p1}, Lje1;->c()V

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->s()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leu0;

    :cond_2
    :goto_0
    invoke-virtual {v6}, Lkotlinx/coroutines/channels/BufferedChannel;->t0()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p0}, Lkotlinx/coroutines/channels/BufferedChannel$a;->b(Lkotlinx/coroutines/channels/BufferedChannel$a;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->t()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide p2

    sget p4, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    int-to-long v0, p4

    div-long v0, p2, v0

    int-to-long v2, p4

    rem-long v2, p2, v2

    long-to-int p4, v2

    iget-wide v2, p1, Loa9;->d:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_5

    invoke-static {v6, v0, v1, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->p(Lkotlinx/coroutines/channels/BufferedChannel;JLeu0;)Leu0;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move-object p1, v0

    :cond_5
    move-object v0, v6

    move-object v1, p1

    move v2, p4

    move-wide v3, p2

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/channels/BufferedChannel;->F(Lkotlinx/coroutines/channels/BufferedChannel;Leu0;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->r()Ly7a;

    move-result-object v1

    if-ne v0, v1, :cond_6

    invoke-static {v6, p0, p1, p4}, Lkotlinx/coroutines/channels/BufferedChannel;->C(Lkotlinx/coroutines/channels/BufferedChannel;Ljgc;Leu0;I)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->h()Ly7a;

    move-result-object p4

    if-ne v0, p4, :cond_7

    invoke-virtual {v6}, Lkotlinx/coroutines/channels/BufferedChannel;->l0()J

    move-result-wide v0

    cmp-long p2, p2, v0

    if-gez p2, :cond_2

    invoke-virtual {p1}, Lje1;->c()V

    goto :goto_0

    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->s()Ly7a;

    move-result-object p2

    if-eq v0, p2, :cond_9

    invoke-virtual {p1}, Lje1;->c()V

    invoke-static {p0, v0}, Lkotlinx/coroutines/channels/BufferedChannel$a;->d(Lkotlinx/coroutines/channels/BufferedChannel$a;Ljava/lang/Object;)V

    invoke-static {p0, v9}, Lkotlinx/coroutines/channels/BufferedChannel$a;->c(Lkotlinx/coroutines/channels/BufferedChannel$a;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    invoke-static {v8}, Lmk0;->a(Z)Ljava/lang/Boolean;

    move-result-object p0

    iget-object p1, v6, Lkotlinx/coroutines/channels/BufferedChannel;->c:Le74;

    if-eqz p1, :cond_8

    invoke-static {v6, p1, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->h(Lkotlinx/coroutines/channels/BufferedChannel;Le74;Ljava/lang/Object;)Lu74;

    move-result-object v9

    :cond_8
    :goto_1
    invoke-virtual {v7, p0, v9}, Lkotlinx/coroutines/CancellableContinuationImpl;->resume(Ljava/lang/Object;Lu74;)V

    goto :goto_2

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {p1}, Lje1;->c()V

    invoke-static {p0, v0}, Lkotlinx/coroutines/channels/BufferedChannel$a;->d(Lkotlinx/coroutines/channels/BufferedChannel$a;Ljava/lang/Object;)V

    invoke-static {p0, v9}, Lkotlinx/coroutines/channels/BufferedChannel$a;->c(Lkotlinx/coroutines/channels/BufferedChannel$a;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    invoke-static {v8}, Lmk0;->a(Z)Ljava/lang/Boolean;

    move-result-object p0

    iget-object p1, v6, Lkotlinx/coroutines/channels/BufferedChannel;->c:Le74;

    if-eqz p1, :cond_8

    invoke-static {v6, p1, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->h(Lkotlinx/coroutines/channels/BufferedChannel;Le74;Ljava/lang/Object;)Lu74;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_2
    invoke-virtual {v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_b

    invoke-static {p5}, Lpt1;->c(Lwh1;)V

    :cond_b
    return-object p0

    :goto_3
    invoke-virtual {v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation$kotlinx_coroutines_core()V

    throw p0
.end method

.method public final f()Z
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->z()Ly7a;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$a;->b:Ljava/lang/Object;

    iget-object p0, p0, Lkotlinx/coroutines/channels/BufferedChannel$a;->d:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->b0()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lxv9;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$a;->c:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lkotlinx/coroutines/channels/BufferedChannel$a;->c:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->z()Ly7a;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/channels/BufferedChannel$a;->b:Ljava/lang/Object;

    iget-object p0, p0, Lkotlinx/coroutines/channels/BufferedChannel$a;->d:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->b0()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final h(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$a;->c:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lkotlinx/coroutines/channels/BufferedChannel$a;->c:Lkotlinx/coroutines/CancellableContinuationImpl;

    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel$a;->b:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lkotlinx/coroutines/channels/BufferedChannel$a;->d:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v3, p0, Lkotlinx/coroutines/channels/BufferedChannel;->c:Le74;

    if-eqz v3, :cond_0

    invoke-static {p0, v3, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->h(Lkotlinx/coroutines/channels/BufferedChannel;Le74;Ljava/lang/Object;)Lu74;

    move-result-object v1

    :cond_0
    invoke-static {v0, v2, v1}, Lkotlinx/coroutines/channels/BufferedChannelKt;->u(Lcr0;Ljava/lang/Object;Lu74;)Z

    move-result p0

    return p0
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$a;->c:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lkotlinx/coroutines/channels/BufferedChannel$a;->c:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->z()Ly7a;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/channels/BufferedChannel$a;->b:Ljava/lang/Object;

    iget-object p0, p0, Lkotlinx/coroutines/channels/BufferedChannel$a;->d:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->b0()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public invokeOnCancellation(Loa9;I)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/BufferedChannel$a;->c:Lkotlinx/coroutines/CancellableContinuationImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Loa9;I)V

    :cond_0
    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$a;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->m()Ly7a;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->m()Ly7a;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/channels/BufferedChannel$a;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->z()Ly7a;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lkotlinx/coroutines/channels/BufferedChannel$a;->d:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->r(Lkotlinx/coroutines/channels/BufferedChannel;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lxv9;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "`hasNext()` has not been invoked"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
