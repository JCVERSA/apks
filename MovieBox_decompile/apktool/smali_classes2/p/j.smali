.class final Lp/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lp/i;


# instance fields
.field private final a:Lkotlinx/coroutines/flow/w0;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/16 v4, 0x10

    .line 10
    .line 11
    invoke-static {v3, v4, v0, v1, v2}, Lkotlinx/coroutines/flow/c1;->b(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/w0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lp/j;->a:Lkotlinx/coroutines/flow/w0;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public a(Lp/f;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp/j;->d()Lkotlinx/coroutines/flow/w0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/w0;->b(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public bridge synthetic b()Lkotlinx/coroutines/flow/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp/j;->d()Lkotlinx/coroutines/flow/w0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public c(Lp/f;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp/j;->d()Lkotlinx/coroutines/flow/w0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/flow/w0;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-ne p1, p2, :cond_0

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p1
.end method

.method public d()Lkotlinx/coroutines/flow/w0;
    .locals 1

    .line 1
    iget-object v0, p0, Lp/j;->a:Lkotlinx/coroutines/flow/w0;

    .line 2
    .line 3
    return-object v0
.end method
