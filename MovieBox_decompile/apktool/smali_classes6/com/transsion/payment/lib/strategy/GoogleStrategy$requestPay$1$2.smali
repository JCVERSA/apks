.class final Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/payment/lib/strategy/GoogleStrategy;->a(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderReq;ZLcom/transsion/payment/lib/b;)V
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
    c = "com.transsion.payment.lib.strategy.GoogleStrategy$requestPay$1$2"
    f = "GoogleStrategy.kt"
    l = {
        0x5f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic $createOrderReq:Lcom/transsion/payment/lib/bean/CreateOrderReq;

.field final synthetic $payCallback:Lcom/transsion/payment/lib/b;

.field final synthetic $subscriptOrder:Z

.field label:I

.field final synthetic this$0:Lcom/transsion/payment/lib/strategy/GoogleStrategy;


# direct methods
.method constructor <init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/transsion/payment/lib/bean/CreateOrderReq;Landroidx/appcompat/app/AppCompatActivity;ZLcom/transsion/payment/lib/b;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/payment/lib/strategy/GoogleStrategy;",
            "Lcom/transsion/payment/lib/bean/CreateOrderReq;",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Z",
            "Lcom/transsion/payment/lib/b;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;->this$0:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;->$createOrderReq:Lcom/transsion/payment/lib/bean/CreateOrderReq;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;->$subscriptOrder:Z

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;->$payCallback:Lcom/transsion/payment/lib/b;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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
    new-instance p1, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;->this$0:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;->$createOrderReq:Lcom/transsion/payment/lib/bean/CreateOrderReq;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;->$subscriptOrder:Z

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;->$payCallback:Lcom/transsion/payment/lib/b;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;-><init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/transsion/payment/lib/bean/CreateOrderReq;Landroidx/appcompat/app/AppCompatActivity;ZLcom/transsion/payment/lib/b;Lkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;->label:I

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
    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;->this$0:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->m(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)Lcom/transsion/payment/lib/PaymentService;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;->$createOrderReq:Lcom/transsion/payment/lib/bean/CreateOrderReq;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/transsion/payment/lib/bean/CreateOrderReq;->getProductId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v3, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;->$createOrderReq:Lcom/transsion/payment/lib/bean/CreateOrderReq;

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/transsion/payment/lib/bean/CreateOrderReq;->getCpFrontPage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget-object v4, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;->$createOrderReq:Lcom/transsion/payment/lib/bean/CreateOrderReq;

    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/CreateOrderReq;->getExtStrJson()Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    iput v2, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;->label:I

    .line 52
    .line 53
    invoke-virtual {p1, v1, v3, v4, p0}, Lcom/transsion/payment/lib/PaymentService;->h(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    if-eqz v1, :cond_7

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lcom/transsion/payment/lib/bean/CreateOrderRes;

    .line 84
    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/transsion/payment/lib/bean/CreateOrderRes;->getTradingOrderId()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    goto :goto_2

    .line 92
    :cond_4
    move-object v1, v0

    .line 93
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_7

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Lcom/transsion/payment/lib/bean/CreateOrderRes;

    .line 104
    .line 105
    if-eqz p1, :cond_6

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/transsion/payment/lib/bean/CreateOrderRes;->getTradingOrderId()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-nez p1, :cond_5

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_5
    :goto_3
    move-object v3, p1

    .line 115
    goto :goto_5

    .line 116
    :cond_6
    :goto_4
    const-string p1, ""

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :goto_5
    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;->this$0:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 120
    .line 121
    iget-object v1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 122
    .line 123
    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;->$createOrderReq:Lcom/transsion/payment/lib/bean/CreateOrderReq;

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/transsion/payment/lib/bean/CreateOrderReq;->getProductId()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    iget-boolean v4, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;->$subscriptOrder:Z

    .line 130
    .line 131
    iget-object v5, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;->$payCallback:Lcom/transsion/payment/lib/b;

    .line 132
    .line 133
    invoke-static/range {v0 .. v5}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->q(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/payment/lib/b;)V

    .line 134
    .line 135
    .line 136
    goto :goto_7

    .line 137
    :cond_7
    iget-object v6, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;->$payCallback:Lcom/transsion/payment/lib/b;

    .line 138
    .line 139
    if-eqz p1, :cond_8

    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    if-eqz v1, :cond_8

    .line 146
    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    move-object v7, v1

    .line 156
    goto :goto_6

    .line 157
    :cond_8
    move-object v7, v0

    .line 158
    :goto_6
    if-eqz p1, :cond_9

    .line 159
    .line 160
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    :cond_9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    const/16 v11, 0x8

    .line 169
    .line 170
    const/4 v12, 0x0

    .line 171
    const/4 v9, 0x0

    .line 172
    const/4 v10, 0x0

    .line 173
    invoke-static/range {v6 .. v12}, Lcom/transsion/payment/lib/b$a;->a(Lcom/transsion/payment/lib/b;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    :goto_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 177
    .line 178
    return-object p1
.end method
