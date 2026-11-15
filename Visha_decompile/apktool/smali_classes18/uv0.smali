.class public final Luv0;
.super Lo95;
.source "SourceFile"


# instance fields
.field public final f:Lkotlinx/coroutines/CancellableContinuationImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 0

    invoke-direct {p0}, Lo95;-><init>()V

    iput-object p1, p0, Luv0;->f:Lkotlinx/coroutines/CancellableContinuationImpl;

    return-void
.end method


# virtual methods
.method public u()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Luv0;->f:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {p0}, Lo95;->t()Lkotlinx/coroutines/JobSupport;

    move-result-object p0

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContinuationCancellationCause(Lkotlinx/coroutines/j;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->parentCancelled$kotlinx_coroutines_core(Ljava/lang/Throwable;)V

    return-void
.end method
