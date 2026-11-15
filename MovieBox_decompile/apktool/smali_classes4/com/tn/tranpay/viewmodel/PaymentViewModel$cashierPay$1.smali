.class final Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/viewmodel/PaymentViewModel;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
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
    c = "com.tn.tranpay.viewmodel.PaymentViewModel$cashierPay$1"
    f = "PaymentViewModel.kt"
    l = {
        0xbc
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $cnic:Ljava/lang/String;

.field final synthetic $payMethod:Ljava/lang/String;

.field final synthetic $phone:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;


# direct methods
.method constructor <init>(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tn/tranpay/viewmodel/PaymentViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;->this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;->$payMethod:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;->$phone:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;->$cnic:Ljava/lang/String;

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
    new-instance p1, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;->this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;->$payMethod:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;->$phone:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;->$cnic:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;-><init>(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;->label:I

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
    iget-object v1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;->this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->A()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;->$payMethod:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v4, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;->$phone:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v5, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;->$cnic:Ljava/lang/String;

    .line 41
    .line 42
    iput v2, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;->label:I

    .line 43
    .line 44
    move-object v2, p1

    .line 45
    move-object v6, p0

    .line 46
    invoke-static/range {v1 .. v6}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->d(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-ne p1, v0, :cond_2

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_2
    :goto_0
    check-cast p1, Lcom/tn/tranpay/bean/CreateOrderResultContent;

    .line 54
    .line 55
    sget-object v0, Llh/a;->a:Llh/a;

    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v2, "CreateOrder result = "

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const/4 v2, 0x0

    .line 75
    const/4 v3, 0x2

    .line 76
    invoke-static {v0, v1, v2, v3, v2}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    iget-object v1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;->this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 82
    .line 83
    iget-object v4, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;->$payMethod:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v1, v4}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->O(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/tn/tranpay/bean/CreateOrderResultContent;->getTxnId()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {p1}, Lcom/tn/tranpay/bean/CreateOrderResultContent;->getStatus()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {p1}, Lcom/tn/tranpay/network/BaseContent;->getMessage()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v7, "CreateOrder.content = "

    .line 106
    .line 107
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", "

    .line 114
    .line 115
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-static {v0, v1, v2, v3, v2}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;->this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->s()Landroidx/lifecycle/b0;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_3
    iget-object p1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;->this$0:Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->s()Landroidx/lifecycle/b0;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1, v2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 154
    .line 155
    return-object p1
.end method
