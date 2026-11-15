.class final Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->a(Lcom/tn/tranpay/b;Lcom/tn/tranpay/c;)V
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.payment.lib.PaymentClientHelper$realPay$1$onPurchasesUpdated$1"
    f = "PaymentClientHelper.kt"
    l = {
        0x7e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $orderRequest:Lcom/transsion/payment/lib/bean/CreateOrderRes;

.field final synthetic $payCallback:Lcom/transsion/payment/lib/b;

.field final synthetic $paymentService:Lcom/transsion/payment/lib/PaymentService;

.field label:I


# direct methods
.method constructor <init>(Lcom/transsion/payment/lib/b;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lcom/transsion/payment/lib/PaymentService;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/payment/lib/b;",
            "Lcom/transsion/payment/lib/bean/CreateOrderRes;",
            "Lcom/transsion/payment/lib/PaymentService;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->$payCallback:Lcom/transsion/payment/lib/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->$orderRequest:Lcom/transsion/payment/lib/bean/CreateOrderRes;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->$paymentService:Lcom/transsion/payment/lib/PaymentService;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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
    new-instance p1, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->$payCallback:Lcom/transsion/payment/lib/b;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->$orderRequest:Lcom/transsion/payment/lib/bean/CreateOrderRes;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->$paymentService:Lcom/transsion/payment/lib/PaymentService;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;-><init>(Lcom/transsion/payment/lib/b;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lcom/transsion/payment/lib/PaymentService;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :catch_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :try_start_1
    sget-object v1, Lcom/transsion/payment/lib/PayUtils;->a:Lcom/transsion/payment/lib/PayUtils;

    .line 30
    .line 31
    new-instance v5, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1;

    .line 32
    .line 33
    iget-object p1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->$paymentService:Lcom/transsion/payment/lib/PaymentService;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->$orderRequest:Lcom/transsion/payment/lib/bean/CreateOrderRes;

    .line 36
    .line 37
    iget-object v4, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->$payCallback:Lcom/transsion/payment/lib/b;

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    invoke-direct {v5, p1, v3, v4, v6}, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1;-><init>(Lcom/transsion/payment/lib/PaymentService;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lcom/transsion/payment/lib/b;Lkotlin/coroutines/Continuation;)V

    .line 41
    .line 42
    .line 43
    iput v2, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->label:I

    .line 44
    .line 45
    const-wide/16 v2, 0x0

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    const/4 v7, 0x3

    .line 49
    const/4 v8, 0x0

    .line 50
    move-object v6, p0

    .line 51
    invoke-static/range {v1 .. v8}, Lcom/transsion/payment/lib/PayUtils;->b(Lcom/transsion/payment/lib/PayUtils;JILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    if-ne p1, v0, :cond_2

    .line 56
    .line 57
    return-object v0

    .line 58
    :goto_0
    sget-object v0, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 59
    .line 60
    sget-object v1, Lcom/transsion/payment/lib/PaymentClientHelper;->a:Lcom/transsion/payment/lib/PaymentClientHelper;

    .line 61
    .line 62
    invoke-static {v1}, Lcom/transsion/payment/lib/PaymentClientHelper;->a(Lcom/transsion/payment/lib/PaymentClientHelper;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, " --> realPay() --> handlePurchase \u53d1\u8d27\u8fdb\u884c\u4e2ding --> e = "

    .line 79
    .line 80
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->$payCallback:Lcom/transsion/payment/lib/b;

    .line 94
    .line 95
    const/4 v1, 0x0

    .line 96
    invoke-interface {v0, v1}, Lcom/transsion/payment/lib/b;->b(Z)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->$payCallback:Lcom/transsion/payment/lib/b;

    .line 100
    .line 101
    const/16 v2, -0x1e

    .line 102
    .line 103
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iget-object v3, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->$orderRequest:Lcom/transsion/payment/lib/bean/CreateOrderRes;

    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/transsion/payment/lib/bean/CreateOrderRes;->getTradingOrderId()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-interface {v0, v2, p1, v1, v3}, Lcom/transsion/payment/lib/b;->a(Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_2
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 121
    .line 122
    return-object p1
.end method
