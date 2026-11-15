.class final Lkotlinx/coroutines/flow/z0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/h1;
.implements Lkotlinx/coroutines/flow/a;
.implements Lkotlinx/coroutines/flow/internal/j;


# instance fields
.field private final synthetic a:Lkotlinx/coroutines/flow/h1;

.field private final b:Lkotlinx/coroutines/t1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/h1;Lkotlinx/coroutines/t1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/flow/z0;->a:Lkotlinx/coroutines/flow/h1;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/coroutines/flow/z0;->b:Lkotlinx/coroutines/t1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/flow/z0;->a:Lkotlinx/coroutines/flow/h1;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/flow/b1;->a(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public d(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/a;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/i1;->d(Lkotlinx/coroutines/flow/h1;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/flow/z0;->a:Lkotlinx/coroutines/flow/h1;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlinx/coroutines/flow/h1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
