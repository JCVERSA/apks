.class final Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/order/PayLoadingVM;->j(Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;)V
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
    c = "com.transsion.shorttv.order.PayLoadingVM$createPayOrderId$1"
    f = "PayLoadingVM.kt"
    l = {
        0x33
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $orderReq:Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/order/PayLoadingVM;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;Lcom/transsion/shorttv/order/PayLoadingVM;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;",
            "Lcom/transsion/shorttv/order/PayLoadingVM;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->$orderReq:Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->this$0:Lcom/transsion/shorttv/order/PayLoadingVM;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
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
    new-instance v0, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->$orderReq:Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->this$0:Lcom/transsion/shorttv/order/PayLoadingVM;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;-><init>(Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;Lcom/transsion/shorttv/order/PayLoadingVM;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->label:I

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
    iget-object v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lcom/transsion/shorttv/order/PayLoadingVM;

    .line 15
    .line 16
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->L$0:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Lkotlinx/coroutines/n0;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->$orderReq:Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->this$0:Lcom/transsion/shorttv/order/PayLoadingVM;

    .line 40
    .line 41
    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 42
    .line 43
    sget-object v3, Lcom/transsion/shorttv/order/g;->a:Lcom/transsion/shorttv/order/g;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    iput v2, p0, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->label:I

    .line 48
    .line 49
    invoke-virtual {v3, p1, p0}, Lcom/transsion/shorttv/order/g;->b(Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-ne p1, v0, :cond_2

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_2
    move-object v0, v1

    .line 57
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/transsion/shorttv/order/PayLoadingVM;->b(Lcom/transsion/shorttv/order/PayLoadingVM;)Landroidx/lifecycle/b0;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    goto :goto_2

    .line 77
    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 78
    .line 79
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    :goto_2
    iget-object v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;->this$0:Lcom/transsion/shorttv/order/PayLoadingVM;

    .line 88
    .line 89
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-nez p1, :cond_3

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_3
    instance-of v1, p1, Lretrofit2/HttpException;

    .line 97
    .line 98
    if-eqz v1, :cond_4

    .line 99
    .line 100
    sget-object v1, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;->Companion:Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean$a;

    .line 101
    .line 102
    check-cast p1, Lretrofit2/HttpException;

    .line 103
    .line 104
    invoke-virtual {v1, p1}, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean$a;->a(Lretrofit2/HttpException;)Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    goto :goto_3

    .line 109
    :cond_4
    new-instance v1, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const-string v2, ""

    .line 116
    .line 117
    if-nez p1, :cond_5

    .line 118
    .line 119
    move-object p1, v2

    .line 120
    :cond_5
    const-string v3, "-1"

    .line 121
    .line 122
    invoke-direct {v1, p1, v3, v2}, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    move-object p1, v1

    .line 126
    :goto_3
    invoke-static {v0}, Lcom/transsion/shorttv/order/PayLoadingVM;->f(Lcom/transsion/shorttv/order/PayLoadingVM;)Landroidx/lifecycle/b0;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 134
    .line 135
    return-object p1
.end method
