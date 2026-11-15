.class public final Lcom/tn/tranpay/event/ObserveEventKt;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a7\u0010\u0006\u001a\u0004\u0018\u00010\u0005\"\u0006\u0008\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0014\u0008\u0008\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00030\u0002H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0008"
    }
    d2 = {
        "T",
        "Landroidx/lifecycle/u;",
        "Lkotlin/Function1;",
        "",
        "onReceived",
        "Lkotlinx/coroutines/t1;",
        "observeEvent",
        "(Landroidx/lifecycle/u;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;",
        "lib_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic observeEvent(Landroidx/lifecycle/u;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;
    .locals 8
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/u;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/t1;"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onReceived"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/tn/tranpay/event/a;->a:Lcom/tn/tranpay/event/a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/tn/tranpay/event/a;->c()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    sget-object p0, Llh/a;->a:Llh/a;

    .line 20
    .line 21
    const-string p1, "TranPay SDK not initialized, cannot observe event. Please call TranPay.configure() in Application.onCreate()"

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {p0, p1, v1, v0, v1}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_0
    sget-object v0, Lcom/tn/tranpay/event/AppScopeVMlProvider;->INSTANCE:Lcom/tn/tranpay/event/AppScopeVMlProvider;

    .line 30
    .line 31
    const-class v1, Lcom/tn/tranpay/event/FlowEventBus;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/tn/tranpay/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    move-object v1, v0

    .line 38
    check-cast v1, Lcom/tn/tranpay/event/FlowEventBus;

    .line 39
    .line 40
    const/4 v0, 0x4

    .line 41
    const-string v2, "T"

    .line 42
    .line 43
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->n(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-class v0, Ljava/lang/Object;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v0, "T::class.java.name"

    .line 53
    .line 54
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 58
    .line 59
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const/4 v6, 0x0

    .line 68
    move-object v2, p0

    .line 69
    move-object v7, p1

    .line 70
    invoke-virtual/range {v1 .. v7}, Lcom/tn/tranpay/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method
