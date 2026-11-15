.class public abstract Landroidx/core/os/r;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Lkotlin/coroutines/Continuation;)Landroid/os/OutcomeReceiver;
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/os/ContinuationOutcomeReceiver;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/core/os/ContinuationOutcomeReceiver;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroidx/core/os/q;->a(Ljava/lang/Object;)Landroid/os/OutcomeReceiver;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
