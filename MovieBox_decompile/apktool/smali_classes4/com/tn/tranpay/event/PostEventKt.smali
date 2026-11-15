.class public final Lcom/tn/tranpay/event/PostEventKt;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u001a*\u0010\u0005\u001a\u00020\u0004\"\u0006\u0008\u0000\u0010\u0000\u0018\u00012\u0006\u0010\u0001\u001a\u00028\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002H\u0087\u0008\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "T",
        "event",
        "",
        "timeMillis",
        "",
        "postEvent",
        "(Ljava/lang/Object;J)V",
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
.method public static final synthetic postEvent(Ljava/lang/Object;J)V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/tn/tranpay/event/a;->a:Lcom/tn/tranpay/event/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tn/tranpay/event/a;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Llh/a;->a:Llh/a;

    .line 10
    .line 11
    const-string p1, "TranPay SDK not initialized, cannot post event. Please call TranPay.configure() in Application.onCreate()"

    .line 12
    .line 13
    const/4 p2, 0x2

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {p0, p1, v0, p2, v0}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    sget-object v0, Lcom/tn/tranpay/event/AppScopeVMlProvider;->INSTANCE:Lcom/tn/tranpay/event/AppScopeVMlProvider;

    .line 20
    .line 21
    const-class v1, Lcom/tn/tranpay/event/FlowEventBus;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/tn/tranpay/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/tn/tranpay/event/FlowEventBus;

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    const-string v2, "T"

    .line 31
    .line 32
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->n(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-class v1, Ljava/lang/Object;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "T::class.java.name"

    .line 42
    .line 43
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/tn/tranpay/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
