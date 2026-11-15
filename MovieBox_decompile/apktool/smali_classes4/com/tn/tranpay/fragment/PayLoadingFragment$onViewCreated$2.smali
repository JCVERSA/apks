.class final Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/fragment/PayLoadingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.tn.tranpay.fragment.PayLoadingFragment$onViewCreated$2"
    f = "PayLoadingFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;


# direct methods
.method constructor <init>(Lcom/tn/tranpay/fragment/PayLoadingFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tn/tranpay/fragment/PayLoadingFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;-><init>(Lcom/tn/tranpay/fragment/PayLoadingFragment;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->n()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->Y(Lcom/tn/tranpay/fragment/PayLoadingFragment;)Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->X(Lcom/tn/tranpay/fragment/PayLoadingFragment;)Lcom/tn/tranpay/BillingParams;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/tn/tranpay/BillingParams;->getTxnId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->P(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->Y(Lcom/tn/tranpay/fragment/PayLoadingFragment;)Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->X(Lcom/tn/tranpay/fragment/PayLoadingFragment;)Lcom/tn/tranpay/BillingParams;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->l(Lcom/tn/tranpay/BillingParams;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$2;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    .line 53
    .line 54
    const/4 v5, 0x4

    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v2, -0x2

    .line 57
    const-string v3, "No network connection"

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-static/range {v1 .. v6}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->e0(Lcom/tn/tranpay/fragment/PayLoadingFragment;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1
.end method
