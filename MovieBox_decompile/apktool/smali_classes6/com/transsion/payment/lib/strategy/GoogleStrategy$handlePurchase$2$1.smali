.class final Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/payment/lib/strategy/GoogleStrategy;->B(Lcom/android/billingclient/api/Purchase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsion.payment.lib.strategy.GoogleStrategy$handlePurchase$2$1"
    f = "GoogleStrategy.kt"
    l = {
        0x121
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $gpOrderId:Ljava/lang/String;

.field final synthetic $orderId:Ljava/lang/String;

.field final synthetic $productId:Ljava/lang/String;

.field final synthetic $purchaseToken:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/payment/lib/strategy/GoogleStrategy;


# direct methods
.method constructor <init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/payment/lib/strategy/GoogleStrategy;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;->this$0:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;->$productId:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;->$purchaseToken:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;->$orderId:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;->$gpOrderId:Ljava/lang/String;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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
    new-instance v7, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;->this$0:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;->$productId:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;->$purchaseToken:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;->$orderId:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;->$gpOrderId:Ljava/lang/String;

    .line 12
    .line 13
    move-object v0, v7

    .line 14
    move-object v6, p1

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;-><init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;->label:I

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
    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;->this$0:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->m(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)Lcom/transsion/payment/lib/PaymentService;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-object v4, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;->$productId:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v5, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;->$purchaseToken:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v6, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;->$orderId:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v7, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;->$gpOrderId:Ljava/lang/String;

    .line 40
    .line 41
    iput v2, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;->label:I

    .line 42
    .line 43
    move-object v8, p0

    .line 44
    invoke-virtual/range {v3 .. v8}, Lcom/transsion/payment/lib/PaymentService;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-ne p1, v0, :cond_2

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_2
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    move-object v1, v0

    .line 62
    :goto_1
    const-string v2, "0"

    .line 63
    .line 64
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_9

    .line 69
    .line 70
    iget-object v1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;->this$0:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 71
    .line 72
    invoke-static {v1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->l(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)Lcom/transsion/payment/lib/b;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const/4 v2, 0x0

    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    invoke-interface {v1, v2}, Lcom/transsion/payment/lib/b;->b(Z)V

    .line 80
    .line 81
    .line 82
    :cond_4
    sget-object v1, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 83
    .line 84
    const-string v3, "Will callback success"

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v3, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;->this$0:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 90
    .line 91
    invoke-static {v3}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->l(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)Lcom/transsion/payment/lib/b;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    if-eqz v3, :cond_8

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    check-cast v4, Lcom/transsion/payment/lib/bean/CheckPaymentBean;

    .line 102
    .line 103
    if-eqz v4, :cond_5

    .line 104
    .line 105
    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/CheckPaymentBean;->getAddCoin()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    if-eqz v4, :cond_5

    .line 110
    .line 111
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    :cond_5
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Lcom/transsion/payment/lib/bean/CheckPaymentBean;

    .line 120
    .line 121
    if-eqz p1, :cond_6

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/transsion/payment/lib/bean/CheckPaymentBean;->getBalanceCoin()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    if-nez p1, :cond_7

    .line 128
    .line 129
    :cond_6
    const-string p1, ""

    .line 130
    .line 131
    :cond_7
    iget-object v4, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;->$orderId:Ljava/lang/String;

    .line 132
    .line 133
    invoke-interface {v3, v2, p1, v4}, Lcom/transsion/payment/lib/b;->c(ILjava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_8
    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;->this$0:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 137
    .line 138
    invoke-static {p1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->l(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)Lcom/transsion/payment/lib/b;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v3, "Has callback "

    .line 148
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {v1, p1}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;->this$0:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 163
    .line 164
    invoke-static {p1, v0}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->t(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/transsion/payment/lib/b;)V

    .line 165
    .line 166
    .line 167
    const-string p1, "handlePurchase \u53d1\u8d27\u6210\u529f"

    .line 168
    .line 169
    invoke-virtual {v1, p1}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 173
    .line 174
    return-object p1

    .line 175
    :cond_9
    new-instance v1, Ljava/lang/Exception;

    .line 176
    .line 177
    if-eqz p1, :cond_a

    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    :cond_a
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw v1
.end method
