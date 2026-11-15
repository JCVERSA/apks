.class final Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
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
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.payment.lib.PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1"
    f = "PaymentClientHelper.kt"
    l = {
        0x80
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $orderRequest:Lcom/transsion/payment/lib/bean/CreateOrderRes;

.field final synthetic $payCallback:Lcom/transsion/payment/lib/b;

.field final synthetic $paymentService:Lcom/transsion/payment/lib/PaymentService;

.field label:I


# direct methods
.method constructor <init>(Lcom/transsion/payment/lib/PaymentService;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lcom/transsion/payment/lib/b;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/payment/lib/PaymentService;",
            "Lcom/transsion/payment/lib/bean/CreateOrderRes;",
            "Lcom/transsion/payment/lib/b;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1;->$paymentService:Lcom/transsion/payment/lib/PaymentService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1;->$orderRequest:Lcom/transsion/payment/lib/bean/CreateOrderRes;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1;->$payCallback:Lcom/transsion/payment/lib/b;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1;->$paymentService:Lcom/transsion/payment/lib/PaymentService;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1;->$orderRequest:Lcom/transsion/payment/lib/bean/CreateOrderRes;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1;->$payCallback:Lcom/transsion/payment/lib/b;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1;-><init>(Lcom/transsion/payment/lib/PaymentService;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lcom/transsion/payment/lib/b;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1;->label:I

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
    iget-object p1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1;->$paymentService:Lcom/transsion/payment/lib/PaymentService;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1;->$orderRequest:Lcom/transsion/payment/lib/bean/CreateOrderRes;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/transsion/payment/lib/bean/CreateOrderRes;->getTradingOrderId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput v2, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1;->label:I

    .line 36
    .line 37
    invoke-virtual {p1, v1, p0}, Lcom/transsion/payment/lib/PaymentService;->e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-ne p1, v0, :cond_2

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    move-object v1, v0

    .line 55
    :goto_1
    const-string v2, "0"

    .line 56
    .line 57
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_7

    .line 62
    .line 63
    sget-object v0, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 64
    .line 65
    sget-object v1, Lcom/transsion/payment/lib/PaymentClientHelper;->a:Lcom/transsion/payment/lib/PaymentClientHelper;

    .line 66
    .line 67
    invoke-static {v1}, Lcom/transsion/payment/lib/PaymentClientHelper;->a(Lcom/transsion/payment/lib/PaymentClientHelper;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, " --> realPay() --> paynicorn \u53d1\u8d27\u6210\u529f"

    .line 80
    .line 81
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1;->$payCallback:Lcom/transsion/payment/lib/b;

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    invoke-interface {v0, v1}, Lcom/transsion/payment/lib/b;->b(Z)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1;->$payCallback:Lcom/transsion/payment/lib/b;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Lcom/transsion/payment/lib/bean/CheckPaymentBean;

    .line 104
    .line 105
    if-eqz v2, :cond_4

    .line 106
    .line 107
    invoke-virtual {v2}, Lcom/transsion/payment/lib/bean/CheckPaymentBean;->getAddCoin()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    if-eqz v2, :cond_4

    .line 112
    .line 113
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    :cond_4
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Lcom/transsion/payment/lib/bean/CheckPaymentBean;

    .line 122
    .line 123
    if-eqz p1, :cond_5

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/transsion/payment/lib/bean/CheckPaymentBean;->getBalanceCoin()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-nez p1, :cond_6

    .line 130
    .line 131
    :cond_5
    const-string p1, ""

    .line 132
    .line 133
    :cond_6
    iget-object v2, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1;->$orderRequest:Lcom/transsion/payment/lib/bean/CreateOrderRes;

    .line 134
    .line 135
    invoke-virtual {v2}, Lcom/transsion/payment/lib/bean/CreateOrderRes;->getTradingOrderId()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-interface {v0, v1, p1, v2}, Lcom/transsion/payment/lib/b;->c(ILjava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 143
    .line 144
    return-object p1

    .line 145
    :cond_7
    sget-object v1, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 146
    .line 147
    sget-object v2, Lcom/transsion/payment/lib/PaymentClientHelper;->a:Lcom/transsion/payment/lib/PaymentClientHelper;

    .line 148
    .line 149
    invoke-static {v2}, Lcom/transsion/payment/lib/PaymentClientHelper;->a(Lcom/transsion/payment/lib/PaymentClientHelper;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    if-eqz p1, :cond_8

    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    goto :goto_2

    .line 160
    :cond_8
    move-object v3, v0

    .line 161
    :goto_2
    if-eqz p1, :cond_9

    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    goto :goto_3

    .line 168
    :cond_9
    move-object v4, v0

    .line 169
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v2, " --> realPay() --> orderCheckResult?.code = "

    .line 178
    .line 179
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v2, " -- orderCheckResult?.msg = "

    .line 186
    .line 187
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v2, " -- \u63a5\u53e3\u8bf7\u6c42\u5931\u8d25"

    .line 194
    .line 195
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v1, v2}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    new-instance v1, Ljava/lang/Exception;

    .line 206
    .line 207
    if-eqz p1, :cond_a

    .line 208
    .line 209
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    :cond_a
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw v1
.end method
