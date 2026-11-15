.class final Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;->invoke(Lcom/tn/tranpay/bean/LoadConfigContent;)V
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
    c = "com.tn.tranpay.fragment.PayLoadingFragment$onViewCreated$1$1"
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
            "Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1$1;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

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
    new-instance p1, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1$1;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1$1;-><init>(Lcom/tn/tranpay/fragment/PayLoadingFragment;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1$1;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->getLogViewConfig()Lcom/tn/tranpay/report/c;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1, v0}, Lcom/tn/tranpay/report/c;->j(Z)V

    .line 22
    .line 23
    .line 24
    :goto_0
    sget-object p1, Lcom/tn/tranpay/report/h;->a:Lcom/tn/tranpay/report/h;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1$1;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->X(Lcom/tn/tranpay/fragment/PayLoadingFragment;)Lcom/tn/tranpay/BillingParams;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/tn/tranpay/BillingParams;->getOrderDesc()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    const-string v1, ""

    .line 39
    .line 40
    :cond_1
    iget-object v2, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1$1;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    .line 41
    .line 42
    invoke-static {v2}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->X(Lcom/tn/tranpay/fragment/PayLoadingFragment;)Lcom/tn/tranpay/BillingParams;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lcom/tn/tranpay/BillingParams;->getPayByLocalCurrency()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    iget-object v3, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1$1;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    .line 51
    .line 52
    invoke-static {v3}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->X(Lcom/tn/tranpay/fragment/PayLoadingFragment;)Lcom/tn/tranpay/BillingParams;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3}, Lcom/tn/tranpay/BillingParams;->getTxnId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tn/tranpay/report/h;->j(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1$1;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->b0(Lcom/tn/tranpay/fragment/PayLoadingFragment;)V

    .line 66
    .line 67
    .line 68
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 69
    .line 70
    return-object p1

    .line 71
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 74
    .line 75
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1
.end method
