.class public final Lpz3;
.super Lx29;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lkotlin/coroutines/d;Lwh1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lx29;-><init>(Lkotlin/coroutines/d;Lwh1;)V

    return-void
.end method


# virtual methods
.method public childCancelled(Ljava/lang/Throwable;)Z
    .locals 1

    instance-of v0, p1, Lkotlinx/coroutines/flow/internal/ChildCancelledException;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->cancelImpl$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
