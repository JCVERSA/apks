.class final Lkotlinx/coroutines/channels/q;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/s2;


# instance fields
.field public final a:Lkotlinx/coroutines/CancellableContinuationImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/channels/q;->a:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public invokeOnCancellation(Lkotlinx/coroutines/internal/w;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/q;->a:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlinx/coroutines/internal/w;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
