.class public final Lxs0;
.super Lkotlinx/coroutines/flow/internal/ChannelFlowOperator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnz3;Lkotlin/coroutines/d;ILkotlinx/coroutines/channels/BufferOverflow;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/flow/internal/ChannelFlowOperator;-><init>(Lnz3;Lkotlin/coroutines/d;ILkotlinx/coroutines/channels/BufferOverflow;)V

    return-void
.end method

.method public synthetic constructor <init>(Lnz3;Lkotlin/coroutines/d;ILkotlinx/coroutines/channels/BufferOverflow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 1
    sget-object p2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, -0x3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 2
    sget-object p4, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 3
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lxs0;-><init>(Lnz3;Lkotlin/coroutines/d;ILkotlinx/coroutines/channels/BufferOverflow;)V

    return-void
.end method


# virtual methods
.method public i(Lkotlin/coroutines/d;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/internal/ChannelFlow;
    .locals 1

    new-instance v0, Lxs0;

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/ChannelFlowOperator;->e:Lnz3;

    invoke-direct {v0, p0, p1, p2, p3}, Lxs0;-><init>(Lnz3;Lkotlin/coroutines/d;ILkotlinx/coroutines/channels/BufferOverflow;)V

    return-object v0
.end method

.method public j()Lnz3;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/ChannelFlowOperator;->e:Lnz3;

    return-object p0
.end method

.method public q(Loz3;Lwh1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/ChannelFlowOperator;->e:Lnz3;

    invoke-interface {p0, p1, p2}, Lnz3;->collect(Loz3;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
