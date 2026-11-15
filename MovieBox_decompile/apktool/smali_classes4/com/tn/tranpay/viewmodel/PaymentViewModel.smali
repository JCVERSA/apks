.class public final Lcom/tn/tranpay/viewmodel/PaymentViewModel;
.super Landroidx/lifecycle/t0;
.source "source.java"


# instance fields
.field private final a:Lkotlin/Lazy;

.field private b:Lkotlinx/coroutines/t1;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Lcom/tn/tranpay/d;

.field private final l:Lcom/google/gson/Gson;

.field private final m:Landroidx/lifecycle/b0;

.field private final n:Landroidx/lifecycle/b0;

.field private final o:Landroidx/lifecycle/b0;

.field private final p:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$iPaymentApi$2;->INSTANCE:Lcom/tn/tranpay/viewmodel/PaymentViewModel$iPaymentApi$2;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->a:Lkotlin/Lazy;

    .line 11
    .line 12
    new-instance v0, Lcom/google/gson/Gson;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->l:Lcom/google/gson/Gson;

    .line 18
    .line 19
    new-instance v0, Landroidx/lifecycle/b0;

    .line 20
    .line 21
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->m:Landroidx/lifecycle/b0;

    .line 25
    .line 26
    new-instance v0, Landroidx/lifecycle/b0;

    .line 27
    .line 28
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->n:Landroidx/lifecycle/b0;

    .line 32
    .line 33
    new-instance v0, Landroidx/lifecycle/b0;

    .line 34
    .line 35
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->o:Landroidx/lifecycle/b0;

    .line 39
    .line 40
    new-instance v0, Landroidx/lifecycle/b0;

    .line 41
    .line 42
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->p:Landroidx/lifecycle/b0;

    .line 46
    .line 47
    return-void
.end method

.method private final B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p4, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCancelPay$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCancelPay$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCancelPay$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCancelPay$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCancelPay$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCancelPay$1;-><init>(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCancelPay$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCancelPay$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :try_start_1
    sget-object p4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 57
    .line 58
    new-instance p4, Lorg/json/JSONObject;

    .line 59
    .line 60
    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v2, "txnId"

    .line 64
    .line 65
    invoke-virtual {p4, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    const-string p1, "bindToken"

    .line 69
    .line 70
    invoke-virtual {p4, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    .line 72
    .line 73
    const-string p1, "reason"

    .line 74
    .line 75
    invoke-virtual {p4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    sget-object p1, Lcom/tn/tranpay/helper/c;->a:Lcom/tn/tranpay/helper/c$a;

    .line 79
    .line 80
    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    const-string p3, "json.toString()"

    .line 85
    .line 86
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Lcom/tn/tranpay/helper/c$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    invoke-direct {p0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->v()Lcom/tn/tranpay/network/b;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    iput v3, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCancelPay$1;->label:I

    .line 100
    .line 101
    invoke-interface {p2, p1, v0}, Lcom/tn/tranpay/network/b;->d(Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p4

    .line 105
    if-ne p4, v1, :cond_3

    .line 106
    .line 107
    return-object v1

    .line 108
    :cond_3
    :goto_1
    check-cast p4, Lcom/tn/tranpay/bean/QueryOrderResultContent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .line 110
    move-object v4, p4

    .line 111
    :cond_4
    return-object v4

    .line 112
    :goto_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 113
    .line 114
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-eqz p1, :cond_5

    .line 127
    .line 128
    sget-object p2, Llh/a;->a:Llh/a;

    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    new-instance p3, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string p4, "CancelOrder error is "

    .line 140
    .line 141
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    const/4 p3, 0x2

    .line 152
    invoke-static {p2, p1, v4, p3, v4}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    return-object v4

    .line 156
    :cond_5
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 157
    .line 158
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 159
    .line 160
    .line 161
    throw p1
.end method

.method private final C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p5, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p5

    .line 6
    check-cast v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p5}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;-><init>(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p5, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x0

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v3, :cond_2

    .line 39
    .line 40
    if-ne v2, v4, :cond_1

    .line 41
    .line 42
    :try_start_0
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto/16 :goto_4

    .line 49
    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    iget-object p1, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$4:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p1, Lorg/json/JSONObject;

    .line 61
    .line 62
    iget-object p2, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$3:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p2, Lorg/json/JSONObject;

    .line 65
    .line 66
    iget-object p3, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$2:Ljava/lang/Object;

    .line 67
    .line 68
    move-object p4, p3

    .line 69
    check-cast p4, Ljava/lang/String;

    .line 70
    .line 71
    iget-object p3, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$1:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p3, Ljava/lang/String;

    .line 74
    .line 75
    iget-object v2, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$0:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v2, Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    .line 78
    .line 79
    :try_start_1
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :try_start_2
    sget-object p5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 87
    .line 88
    new-instance p5, Lorg/json/JSONObject;

    .line 89
    .line 90
    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v2, "txnId"

    .line 94
    .line 95
    invoke-virtual {p5, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    const-string p1, "payMethod"

    .line 99
    .line 100
    invoke-virtual {p5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    .line 102
    .line 103
    new-instance p1, Lorg/json/JSONObject;

    .line 104
    .line 105
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 106
    .line 107
    .line 108
    if-eqz p3, :cond_8

    .line 109
    .line 110
    sget-object p2, Lcom/tn/tranpay/TranPayConfiguration;->a:Lcom/tn/tranpay/TranPayConfiguration;

    .line 111
    .line 112
    iput-object p0, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$0:Ljava/lang/Object;

    .line 113
    .line 114
    iput-object p3, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$1:Ljava/lang/Object;

    .line 115
    .line 116
    iput-object p4, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$2:Ljava/lang/Object;

    .line 117
    .line 118
    iput-object p5, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$3:Ljava/lang/Object;

    .line 119
    .line 120
    iput-object p1, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$4:Ljava/lang/Object;

    .line 121
    .line 122
    iput v3, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->label:I

    .line 123
    .line 124
    invoke-virtual {p2, v0}, Lcom/tn/tranpay/TranPayConfiguration;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    if-ne p2, v1, :cond_4

    .line 129
    .line 130
    return-object v1

    .line 131
    :cond_4
    move-object v2, p0

    .line 132
    move-object v7, p5

    .line 133
    move-object p5, p2

    .line 134
    move-object p2, v7

    .line 135
    :goto_1
    check-cast p5, Lcom/tn/tranpay/bean/CurrencyInfoBean;

    .line 136
    .line 137
    iget-object v3, v2, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->m:Landroidx/lifecycle/b0;

    .line 138
    .line 139
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    check-cast v3, Lcom/tn/tranpay/bean/LoadConfigContent;

    .line 144
    .line 145
    if-eqz v3, :cond_5

    .line 146
    .line 147
    invoke-virtual {v3}, Lcom/tn/tranpay/bean/LoadConfigContent;->getAreaCode()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    if-nez v3, :cond_7

    .line 152
    .line 153
    :cond_5
    if-eqz p5, :cond_6

    .line 154
    .line 155
    invoke-virtual {p5}, Lcom/tn/tranpay/bean/CurrencyInfoBean;->getMobileCode()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    if-nez v3, :cond_7

    .line 160
    .line 161
    :cond_6
    const-string v3, ""

    .line 162
    .line 163
    :cond_7
    const-string p5, "Phone"

    .line 164
    .line 165
    new-instance v6, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p3

    .line 180
    invoke-virtual {p1, p5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    .line 182
    .line 183
    move-object p5, p2

    .line 184
    goto :goto_2

    .line 185
    :cond_8
    move-object v2, p0

    .line 186
    :goto_2
    if-eqz p4, :cond_9

    .line 187
    .line 188
    const-string p2, "CNIC"

    .line 189
    .line 190
    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    .line 192
    .line 193
    :cond_9
    const-string p2, "payInput"

    .line 194
    .line 195
    invoke-virtual {p5, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    .line 197
    .line 198
    const-string p1, "pfId"

    .line 199
    .line 200
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    invoke-virtual {p5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    .line 210
    .line 211
    const-string p1, "gaid"

    .line 212
    .line 213
    sget-object p2, Lcom/tn/tranpay/device/TNDeviceHelper;->a:Lcom/tn/tranpay/device/TNDeviceHelper;

    .line 214
    .line 215
    invoke-virtual {p2}, Lcom/tn/tranpay/device/TNDeviceHelper;->d()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    invoke-virtual {p5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    .line 221
    .line 222
    sget-object p1, Lcom/tn/tranpay/helper/c;->a:Lcom/tn/tranpay/helper/c$a;

    .line 223
    .line 224
    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    const-string p3, "json.toString()"

    .line 229
    .line 230
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, p2}, Lcom/tn/tranpay/helper/c$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    if-eqz p1, :cond_b

    .line 238
    .line 239
    invoke-direct {v2}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->v()Lcom/tn/tranpay/network/b;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    iput-object v5, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$0:Ljava/lang/Object;

    .line 244
    .line 245
    iput-object v5, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$1:Ljava/lang/Object;

    .line 246
    .line 247
    iput-object v5, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$2:Ljava/lang/Object;

    .line 248
    .line 249
    iput-object v5, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$3:Ljava/lang/Object;

    .line 250
    .line 251
    iput-object v5, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->L$4:Ljava/lang/Object;

    .line 252
    .line 253
    iput v4, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleCashierPay$1;->label:I

    .line 254
    .line 255
    invoke-interface {p2, p1, v0}, Lcom/tn/tranpay/network/b;->c(Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object p5

    .line 259
    if-ne p5, v1, :cond_a

    .line 260
    .line 261
    return-object v1

    .line 262
    :cond_a
    :goto_3
    check-cast p5, Lcom/tn/tranpay/bean/CreateOrderResultContent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    .line 264
    move-object v5, p5

    .line 265
    :cond_b
    return-object v5

    .line 266
    :goto_4
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 267
    .line 268
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    if-eqz p1, :cond_c

    .line 281
    .line 282
    sget-object p2, Llh/a;->a:Llh/a;

    .line 283
    .line 284
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    new-instance p3, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    .line 293
    const-string p4, "CashierPay error is "

    .line 294
    .line 295
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    invoke-static {p2, p1, v5, v4, v5}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    return-object v5

    .line 309
    :cond_c
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 310
    .line 311
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 312
    .line 313
    .line 314
    throw p1
.end method

.method private final D(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleQuery$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleQuery$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleQuery$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleQuery$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleQuery$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleQuery$1;-><init>(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleQuery$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleQuery$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :try_start_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 57
    .line 58
    new-instance p2, Lorg/json/JSONObject;

    .line 59
    .line 60
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v2, "txnId"

    .line 64
    .line 65
    invoke-virtual {p2, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    sget-object p1, Lcom/tn/tranpay/helper/c;->a:Lcom/tn/tranpay/helper/c$a;

    .line 69
    .line 70
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    const-string v2, "json.toString()"

    .line 75
    .line 76
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lcom/tn/tranpay/helper/c$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    invoke-direct {p0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->v()Lcom/tn/tranpay/network/b;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    iput v3, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$handleQuery$1;->label:I

    .line 90
    .line 91
    invoke-interface {p2, p1, v0}, Lcom/tn/tranpay/network/b;->a(Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    if-ne p2, v1, :cond_3

    .line 96
    .line 97
    return-object v1

    .line 98
    :cond_3
    :goto_1
    check-cast p2, Lcom/tn/tranpay/bean/QueryOrderResultContent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .line 100
    move-object v4, p2

    .line 101
    :cond_4
    return-object v4

    .line 102
    :goto_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 103
    .line 104
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-eqz p1, :cond_5

    .line 117
    .line 118
    sget-object p2, Llh/a;->a:Llh/a;

    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v1, "Query error is "

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    const/4 v0, 0x2

    .line 142
    invoke-static {p2, p1, v4, v0, v4}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    return-object v4

    .line 146
    :cond_5
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 147
    .line 148
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 149
    .line 150
    .line 151
    throw p1
.end method

.method private final E(Lcom/tn/tranpay/BillingParams;)V
    .locals 7

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v4, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfig$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p0, p1, v0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfig$1;-><init>(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Lcom/tn/tranpay/BillingParams;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final F(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p3, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfigBean$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfigBean$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfigBean$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfigBean$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfigBean$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfigBean$1;-><init>(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfigBean$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfigBean$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    if-ne v2, v4, :cond_1

    .line 39
    .line 40
    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :try_start_1
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 60
    .line 61
    new-instance p3, Lorg/json/JSONObject;

    .line 62
    .line 63
    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v2, "txnId"

    .line 67
    .line 68
    invoke-virtual {p3, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    const-string p1, "language"

    .line 72
    .line 73
    if-eqz p2, :cond_3

    .line 74
    .line 75
    :try_start_2
    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    :try_start_3
    sget-object p2, Lcom/tn/tranpay/TranPay;->a:Lcom/tn/tranpay/TranPay;

    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/tn/tranpay/TranPay;->d()Landroid/app/Application;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-direct {p0, p2}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->r(Landroid/content/Context;)Ljava/util/Locale;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catch_0
    move-exception p2

    .line 102
    :try_start_4
    sget-object v2, Llh/a;->a:Llh/a;

    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    new-instance v6, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v7, "Failed to get locale language: "

    .line 114
    .line 115
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-static {v2, p2, v5, v3, v5}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    const-string p2, "en"

    .line 129
    .line 130
    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    .line 132
    .line 133
    :goto_1
    const-string p1, "timestamp"

    .line 134
    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 136
    .line 137
    .line 138
    move-result-wide v6

    .line 139
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    .line 145
    .line 146
    sget-object p1, Lcom/tn/tranpay/helper/c;->a:Lcom/tn/tranpay/helper/c$a;

    .line 147
    .line 148
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    const-string p3, "json.toString()"

    .line 153
    .line 154
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, p2}, Lcom/tn/tranpay/helper/c$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    if-eqz p1, :cond_5

    .line 162
    .line 163
    invoke-direct {p0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->v()Lcom/tn/tranpay/network/b;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    iput v4, v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$loadConfigBean$1;->label:I

    .line 168
    .line 169
    invoke-interface {p2, p1, v0}, Lcom/tn/tranpay/network/b;->b(Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p3

    .line 173
    if-ne p3, v1, :cond_4

    .line 174
    .line 175
    return-object v1

    .line 176
    :cond_4
    :goto_2
    check-cast p3, Lcom/tn/tranpay/bean/LoadConfigContent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 177
    .line 178
    move-object v5, p3

    .line 179
    :cond_5
    return-object v5

    .line 180
    :goto_3
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 181
    .line 182
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    if-eqz p1, :cond_6

    .line 195
    .line 196
    sget-object p2, Llh/a;->a:Llh/a;

    .line 197
    .line 198
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    new-instance p3, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    const-string v0, "LoadConfigFailed error is "

    .line 208
    .line 209
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-static {p2, p1, v5, v3, v5}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    return-object v5

    .line 223
    :cond_6
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 224
    .line 225
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 226
    .line 227
    .line 228
    throw p1
.end method

.method public static synthetic H(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;JJILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x2

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const-wide/16 p2, 0x1388

    .line 6
    .line 7
    :cond_0
    move-wide v2, p2

    .line 8
    and-int/lit8 p2, p6, 0x4

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    const-wide/32 p4, 0x927c0

    .line 13
    .line 14
    .line 15
    :cond_1
    move-wide v4, p4

    .line 16
    move-object v0, p0

    .line 17
    move-object v1, p1

    .line 18
    invoke-virtual/range {v0 .. v5}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->G(Ljava/lang/String;JJ)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private final I(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v4, Lcom/tn/tranpay/viewmodel/PaymentViewModel$queryOnce$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p0, p1, v0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$queryOnce$1;-><init>(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static final synthetic b(Lcom/tn/tranpay/viewmodel/PaymentViewModel;)Lcom/google/gson/Gson;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->l:Lcom/google/gson/Gson;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->D(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->F(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic k(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    move-object p2, v0

    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x4

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    move-object p3, v0

    .line 12
    :cond_1
    and-int/lit8 p5, p5, 0x8

    .line 13
    .line 14
    if-eqz p5, :cond_2

    .line 15
    .line 16
    const/4 p4, 0x0

    .line 17
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private final r(Landroid/content/Context;)Ljava/util/Locale;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v1, 0x18

    .line 12
    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Landroidx/appcompat/app/h;->a(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-static {p1, v0}, Ln0/d;->a(Landroid/os/LocaleList;I)Ljava/util/Locale;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "{\n            configuration.locales[0]\n        }"

    .line 25
    .line 26
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 31
    .line 32
    const-string v0, "{\n            configuration.locale\n        }"

    .line 33
    .line 34
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-object p1
.end method

.method private final v()Lcom/tn/tranpay/network/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->a:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-iPaymentApi>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lcom/tn/tranpay/network/b;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G(Ljava/lang/String;JJ)V
    .locals 10

    .line 1
    const-string v0, "txnId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;

    .line 15
    .line 16
    const/4 v9, 0x0

    .line 17
    move-object v2, v0

    .line 18
    move-wide v3, p2

    .line 19
    move-wide v5, p4

    .line 20
    move-object v7, p0

    .line 21
    move-object v8, p1

    .line 22
    invoke-direct/range {v2 .. v9}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$query$1;-><init>(JJLcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x3

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    move-object v4, v0

    .line 30
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->b:Lkotlinx/coroutines/t1;

    .line 35
    .line 36
    return-void
.end method

.method public final J()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->b:Lkotlinx/coroutines/t1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->c:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->I(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final K(Lcom/tn/tranpay/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->k:Lcom/tn/tranpay/d;

    .line 2
    .line 3
    return-void
.end method

.method public final L(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method public final M(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->i:Z

    .line 2
    .line 3
    return-void
.end method

.method public final N(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final O(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final P(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "txnId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "reason"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cancelPay$1;

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    move-object v2, v0

    .line 23
    move-object v3, p0

    .line 24
    move-object v4, p1

    .line 25
    move-object v5, p2

    .line 26
    move-object v6, p3

    .line 27
    invoke-direct/range {v2 .. v7}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cancelPay$1;-><init>(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 28
    .line 29
    .line 30
    const/4 v5, 0x3

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v3, 0x0

    .line 34
    move-object v4, v0

    .line 35
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->b:Lkotlinx/coroutines/t1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    const-string v0, "payMethod"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->e:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->f:Ljava/lang/String;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->g:Z

    .line 11
    .line 12
    iget-object p4, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->p:Landroidx/lifecycle/b0;

    .line 13
    .line 14
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p4, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    invoke-static {p4}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance p4, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    move-object v1, p4

    .line 31
    move-object v2, p0

    .line 32
    move-object v3, p1

    .line 33
    move-object v4, p2

    .line 34
    move-object v5, p3

    .line 35
    invoke-direct/range {v1 .. v6}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$cashierPay$1;-><init>(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 36
    .line 37
    .line 38
    const/4 v4, 0x3

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v1, 0x0

    .line 41
    const/4 v2, 0x0

    .line 42
    move-object v3, p4

    .line 43
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final l(Lcom/tn/tranpay/BillingParams;)V
    .locals 1

    .line 1
    const-string v0, "params"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->E(Lcom/tn/tranpay/BillingParams;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->m:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/tn/tranpay/bean/LoadConfigContent;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/tn/tranpay/bean/LoadConfigContent;->getAreaCode()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    :cond_0
    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->a:Lcom/tn/tranpay/TranPayConfiguration;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/tn/tranpay/TranPayConfiguration;->n()Lcom/tn/tranpay/bean/CurrencyInfoBean;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/tn/tranpay/bean/CurrencyInfoBean;->getMobileCode()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    :cond_1
    const-string v0, ""

    .line 32
    .line 33
    :cond_2
    return-object v0
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public final o()Lcom/tn/tranpay/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->k:Lcom/tn/tranpay/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->m:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->n:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public final u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public final w()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->p:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->o:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method
