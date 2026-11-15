.class public abstract synthetic Lkotlinx/coroutines/flow/FlowKt__ShareKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lmw6;)Lgx9;
    .locals 2

    new-instance v0, Lio8;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio8;-><init>(Lgx9;Lkotlinx/coroutines/j;)V

    return-object v0
.end method

.method public static final b(Lnz3;I)Lug9;
    .locals 7

    sget-object v0, Lps0;->v1:Lps0$a;

    invoke-virtual {v0}, Lps0$a;->a()I

    move-result v0

    invoke-static {p1, v0}, Lwn8;->d(II)I

    move-result v0

    sub-int/2addr v0, p1

    instance-of v1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow;

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/flow/internal/ChannelFlow;

    invoke-virtual {v1}, Lkotlinx/coroutines/flow/internal/ChannelFlow;->j()Lnz3;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance p0, Lug9;

    iget v3, v1, Lkotlinx/coroutines/flow/internal/ChannelFlow;->c:I

    const/4 v4, -0x3

    if-eq v3, v4, :cond_0

    const/4 v4, -0x2

    if-eq v3, v4, :cond_0

    if-eqz v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    iget-object v4, v1, Lkotlinx/coroutines/flow/internal/ChannelFlow;->d:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v5, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_2

    if-nez v3, :cond_3

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_3
    :goto_0
    iget-object p1, v1, Lkotlinx/coroutines/flow/internal/ChannelFlow;->d:Lkotlinx/coroutines/channels/BufferOverflow;

    iget-object v1, v1, Lkotlinx/coroutines/flow/internal/ChannelFlow;->b:Lkotlin/coroutines/d;

    invoke-direct {p0, v2, v0, p1, v1}, Lug9;-><init>(Lnz3;ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/coroutines/d;)V

    return-object p0

    :cond_4
    new-instance p1, Lug9;

    sget-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-direct {p1, p0, v0, v1, v2}, Lug9;-><init>(Lnz3;ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public static final c(Lnk1;Lkotlin/coroutines/d;Lnz3;Lkw6;Lkotlinx/coroutines/flow/a;Ljava/lang/Object;)Lkotlinx/coroutines/j;
    .locals 8

    sget-object v0, Lkotlinx/coroutines/flow/a;->a:Lkotlinx/coroutines/flow/a$a;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/a$a;->a()Lkotlinx/coroutines/flow/a;

    move-result-object v0

    invoke-static {p4, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    :goto_0
    new-instance v7, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;-><init>(Lkotlinx/coroutines/flow/a;Lnz3;Lkw6;Ljava/lang/Object;Lwh1;)V

    invoke-static {p0, p1, v0, v7}, Lcl0;->c(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;)Lkotlinx/coroutines/j;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lnz3;Lnk1;Lkotlinx/coroutines/flow/a;Ljava/lang/Object;)Lgx9;
    .locals 7

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt__ShareKt;->b(Lnz3;I)Lug9;

    move-result-object p0

    invoke-static {p3}, Lhx9;->a(Ljava/lang/Object;)Lmw6;

    move-result-object v6

    iget-object v1, p0, Lug9;->d:Lkotlin/coroutines/d;

    iget-object v2, p0, Lug9;->a:Lnz3;

    move-object v0, p1

    move-object v3, v6

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/flow/FlowKt__ShareKt;->c(Lnk1;Lkotlin/coroutines/d;Lnz3;Lkw6;Lkotlinx/coroutines/flow/a;Ljava/lang/Object;)Lkotlinx/coroutines/j;

    move-result-object p0

    new-instance p1, Lio8;

    invoke-direct {p1, v6, p0}, Lio8;-><init>(Lgx9;Lkotlinx/coroutines/j;)V

    return-object p1
.end method
