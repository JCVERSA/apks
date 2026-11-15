.class final Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->a(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderReq;ZLcom/transsion/payment/lib/b;)V
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
    c = "com.transsion.payment.lib.strategy.PaynicornStrategy$requestPay$1"
    f = "PaynicornStrategy.kt"
    l = {
        0x5f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic $orderRequest:Lcom/transsion/payment/lib/bean/CreateOrderReq;

.field final synthetic $payCallback:Lcom/transsion/payment/lib/b;

.field label:I

.field final synthetic this$0:Lcom/transsion/payment/lib/strategy/PaynicornStrategy;


# direct methods
.method constructor <init>(Lcom/transsion/payment/lib/strategy/PaynicornStrategy;Lcom/transsion/payment/lib/bean/CreateOrderReq;Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/b;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/payment/lib/strategy/PaynicornStrategy;",
            "Lcom/transsion/payment/lib/bean/CreateOrderReq;",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Lcom/transsion/payment/lib/b;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->this$0:Lcom/transsion/payment/lib/strategy/PaynicornStrategy;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->$orderRequest:Lcom/transsion/payment/lib/bean/CreateOrderReq;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->$payCallback:Lcom/transsion/payment/lib/b;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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
    new-instance p1, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->this$0:Lcom/transsion/payment/lib/strategy/PaynicornStrategy;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->$orderRequest:Lcom/transsion/payment/lib/bean/CreateOrderReq;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->$payCallback:Lcom/transsion/payment/lib/b;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;-><init>(Lcom/transsion/payment/lib/strategy/PaynicornStrategy;Lcom/transsion/payment/lib/bean/CreateOrderReq;Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/b;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->label:I

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
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->this$0:Lcom/transsion/payment/lib/strategy/PaynicornStrategy;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->d(Lcom/transsion/payment/lib/strategy/PaynicornStrategy;)Lcom/transsion/payment/lib/PaymentService;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v1, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->$orderRequest:Lcom/transsion/payment/lib/bean/CreateOrderReq;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/transsion/payment/lib/bean/CreateOrderReq;->getProductId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v3, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->$orderRequest:Lcom/transsion/payment/lib/bean/CreateOrderReq;

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/transsion/payment/lib/bean/CreateOrderReq;->getCpFrontPage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget-object v4, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->$orderRequest:Lcom/transsion/payment/lib/bean/CreateOrderReq;

    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/CreateOrderReq;->getExtStrJson()Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    iput v2, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->label:I

    .line 52
    .line 53
    invoke-virtual {p1, v1, v3, v4, p0}, Lcom/transsion/payment/lib/PaymentService;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-ne p1, v0, :cond_2

    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_2
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    move-object v1, v0

    .line 71
    :goto_1
    const-string v2, "0"

    .line 72
    .line 73
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->this$0:Lcom/transsion/payment/lib/strategy/PaynicornStrategy;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    check-cast p1, Lcom/transsion/payment/lib/bean/CreateOrderRes;

    .line 97
    .line 98
    iget-object v2, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->$payCallback:Lcom/transsion/payment/lib/b;

    .line 99
    .line 100
    invoke-static {v0, v1, p1, v2}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->f(Lcom/transsion/payment/lib/strategy/PaynicornStrategy;Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lcom/transsion/payment/lib/b;)V

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_4
    iget-object v3, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;->$payCallback:Lcom/transsion/payment/lib/b;

    .line 105
    .line 106
    if-eqz p1, :cond_5

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    if-eqz v1, :cond_5

    .line 113
    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    move-object v4, v1

    .line 123
    goto :goto_2

    .line 124
    :cond_5
    move-object v4, v0

    .line 125
    :goto_2
    if-eqz p1, :cond_6

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    :cond_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    const/16 v8, 0x8

    .line 136
    .line 137
    const/4 v9, 0x0

    .line 138
    const/4 v6, 0x0

    .line 139
    const/4 v7, 0x0

    .line 140
    invoke-static/range {v3 .. v9}, Lcom/transsion/payment/lib/b$a;->a(Lcom/transsion/payment/lib/b;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 144
    .line 145
    return-object p1
.end method
