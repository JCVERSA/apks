.class public final Lcom/transsion/payment/lib/PaymentService;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/payment/lib/g;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/payment/lib/g;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsion/payment/lib/PaymentService;->a:Lkotlin/Lazy;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic a()Lcom/transsion/payment/lib/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/payment/lib/PaymentService;->f()Lcom/transsion/payment/lib/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final b()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/payment/lib/PaymentService;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSimpleName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private final c()Lcom/transsion/payment/lib/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/payment/lib/PaymentService;->a:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/payment/lib/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final f()Lcom/transsion/payment/lib/a;
    .locals 2

    .line 1
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lcom/transsion/payment/lib/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/transsion/payment/lib/a;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public final d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p1, Lcom/transsion/payment/lib/PaymentService$getSkuList$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/transsion/payment/lib/PaymentService$getSkuList$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/payment/lib/PaymentService$getSkuList$1;->label:I

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
    iput v1, v0, Lcom/transsion/payment/lib/PaymentService$getSkuList$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/payment/lib/PaymentService$getSkuList$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/transsion/payment/lib/PaymentService$getSkuList$1;-><init>(Lcom/transsion/payment/lib/PaymentService;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/transsion/payment/lib/PaymentService$getSkuList$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/payment/lib/PaymentService$getSkuList$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 56
    .line 57
    invoke-direct {p0}, Lcom/transsion/payment/lib/PaymentService;->c()Lcom/transsion/payment/lib/a;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    sget-object v2, Lgg/a;->a:Lgg/a$a;

    .line 62
    .line 63
    invoke-virtual {v2}, Lgg/a$a;->a()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iput v3, v0, Lcom/transsion/payment/lib/PaymentService$getSkuList$1;->label:I

    .line 68
    .line 69
    invoke-interface {p1, v2, v0}, Lcom/transsion/payment/lib/a;->e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    if-ne p1, v1, :cond_3

    .line 74
    .line 75
    return-object v1

    .line 76
    :cond_3
    :goto_1
    return-object p1

    .line 77
    :goto_2
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
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz p1, :cond_5

    .line 92
    .line 93
    instance-of v0, p1, Lretrofit2/HttpException;

    .line 94
    .line 95
    const/4 v1, 0x0

    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    sget-object v0, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 99
    .line 100
    invoke-direct {p0}, Lcom/transsion/payment/lib/PaymentService;->b()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    move-object v3, p1

    .line 105
    check-cast v3, Lretrofit2/HttpException;

    .line 106
    .line 107
    invoke-virtual {v3}, Lretrofit2/HttpException;->code()I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    invoke-virtual {v3}, Lretrofit2/HttpException;->message()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v2, " --> getSkuList() --> code = "

    .line 124
    .line 125
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v2, " -- message = "

    .line 132
    .line 133
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v0, v2}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    new-instance v0, Lcom/tn/lib/net/bean/BaseDto;

    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {v3}, Lretrofit2/HttpException;->code()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    const-string v3, ""

    .line 165
    .line 166
    invoke-direct {v0, p1, v2, v1, v3}, Lcom/tn/lib/net/bean/BaseDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    return-object v0

    .line 170
    :cond_4
    sget-object v0, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 171
    .line 172
    invoke-direct {p0}, Lcom/transsion/payment/lib/PaymentService;->b()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v2, " --> getSkuList() --> error = "

    .line 189
    .line 190
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {v0, p1}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    return-object v1

    .line 204
    :cond_5
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 205
    .line 206
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 207
    .line 208
    .line 209
    throw p1
.end method

.method public final e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lcom/transsion/payment/lib/PaymentService$orderCheck4Paynicorn$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/transsion/payment/lib/PaymentService$orderCheck4Paynicorn$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/payment/lib/PaymentService$orderCheck4Paynicorn$1;->label:I

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
    iput v1, v0, Lcom/transsion/payment/lib/PaymentService$orderCheck4Paynicorn$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/payment/lib/PaymentService$orderCheck4Paynicorn$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/transsion/payment/lib/PaymentService$orderCheck4Paynicorn$1;-><init>(Lcom/transsion/payment/lib/PaymentService;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/transsion/payment/lib/PaymentService$orderCheck4Paynicorn$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/payment/lib/PaymentService$orderCheck4Paynicorn$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :try_start_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 56
    .line 57
    new-instance p2, Lcom/google/gson/JsonObject;

    .line 58
    .line 59
    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v2, "tradingOrderId"

    .line 63
    .line 64
    invoke-virtual {p2, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    const-string v2, "toString(...)"

    .line 74
    .line 75
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    sget-object v2, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 79
    .line 80
    const-string v4, "application/json"

    .line 81
    .line 82
    invoke-virtual {v2, v4}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {p1, p2, v2}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {p0}, Lcom/transsion/payment/lib/PaymentService;->c()Lcom/transsion/payment/lib/a;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    sget-object v2, Lgg/a;->a:Lgg/a$a;

    .line 95
    .line 96
    invoke-virtual {v2}, Lgg/a$a;->a()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    iput v3, v0, Lcom/transsion/payment/lib/PaymentService$orderCheck4Paynicorn$1;->label:I

    .line 101
    .line 102
    invoke-interface {p2, v2, p1, v0}, Lcom/transsion/payment/lib/a;->a(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    if-ne p2, v1, :cond_3

    .line 107
    .line 108
    return-object v1

    .line 109
    :cond_3
    :goto_1
    check-cast p2, Lcom/tn/lib/net/bean/BaseDto;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .line 111
    return-object p2

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
    if-eqz p1, :cond_b

    .line 127
    .line 128
    instance-of p2, p1, Lretrofit2/HttpException;

    .line 129
    .line 130
    const/4 v0, 0x0

    .line 131
    if-eqz p2, :cond_a

    .line 132
    .line 133
    sget-object p2, Lcom/transsion/payment/lib/bean/HttpErrorBodyBean;->Companion:Lcom/transsion/payment/lib/bean/HttpErrorBodyBean$a;

    .line 134
    .line 135
    check-cast p1, Lretrofit2/HttpException;

    .line 136
    .line 137
    invoke-virtual {p2, p1}, Lcom/transsion/payment/lib/bean/HttpErrorBodyBean$a;->a(Lretrofit2/HttpException;)Lcom/transsion/payment/lib/bean/HttpErrorBodyBean;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    new-instance p2, Lcom/tn/lib/net/bean/BaseDto;

    .line 142
    .line 143
    const-string v1, ""

    .line 144
    .line 145
    if-eqz p1, :cond_4

    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/transsion/payment/lib/bean/HttpErrorBodyBean;->getMessage()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    if-nez v2, :cond_5

    .line 152
    .line 153
    :cond_4
    move-object v2, v1

    .line 154
    :cond_5
    if-eqz p1, :cond_6

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/transsion/payment/lib/bean/HttpErrorBodyBean;->getCode()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    if-nez v3, :cond_7

    .line 161
    .line 162
    :cond_6
    move-object v3, v1

    .line 163
    :cond_7
    if-eqz p1, :cond_9

    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/transsion/payment/lib/bean/HttpErrorBodyBean;->getReason()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    if-nez p1, :cond_8

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_8
    move-object v1, p1

    .line 173
    :cond_9
    :goto_3
    invoke-direct {p2, v2, v3, v0, v1}, Lcom/tn/lib/net/bean/BaseDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    return-object p2

    .line 177
    :cond_a
    sget-object p2, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 178
    .line 179
    invoke-direct {p0}, Lcom/transsion/payment/lib/PaymentService;->b()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v1, " --> orderCheck4Paynicorn() --> it = "

    .line 192
    .line 193
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {p2, p1}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    return-object v0

    .line 207
    :cond_b
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 208
    .line 209
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 210
    .line 211
    .line 212
    throw p1
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p5, Lcom/transsion/payment/lib/PaymentService$paymentOrderCheck$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p5

    .line 6
    check-cast v0, Lcom/transsion/payment/lib/PaymentService$paymentOrderCheck$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/payment/lib/PaymentService$paymentOrderCheck$1;->label:I

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
    iput v1, v0, Lcom/transsion/payment/lib/PaymentService$paymentOrderCheck$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/payment/lib/PaymentService$paymentOrderCheck$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p5}, Lcom/transsion/payment/lib/PaymentService$paymentOrderCheck$1;-><init>(Lcom/transsion/payment/lib/PaymentService;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p5, v0, Lcom/transsion/payment/lib/PaymentService$paymentOrderCheck$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/payment/lib/PaymentService$paymentOrderCheck$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    :try_start_0
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :try_start_1
    sget-object p5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 56
    .line 57
    new-instance p5, Lcom/google/gson/JsonObject;

    .line 58
    .line 59
    invoke-direct {p5}, Lcom/google/gson/JsonObject;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v2, "skuId"

    .line 63
    .line 64
    invoke-virtual {p5, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string p1, "purchaseToken"

    .line 68
    .line 69
    invoke-virtual {p5, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string p1, "tradingOrderId"

    .line 73
    .line 74
    invoke-virtual {p5, p1, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string p1, "gpOrderId"

    .line 78
    .line 79
    invoke-virtual {p5, p1, p4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    sget-object p1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 83
    .line 84
    invoke-virtual {p5}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    const-string p3, "toString(...)"

    .line 89
    .line 90
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sget-object p3, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 94
    .line 95
    const-string p4, "application/json"

    .line 96
    .line 97
    invoke-virtual {p3, p4}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    invoke-virtual {p1, p2, p3}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-direct {p0}, Lcom/transsion/payment/lib/PaymentService;->c()Lcom/transsion/payment/lib/a;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    sget-object p3, Lgg/a;->a:Lgg/a$a;

    .line 110
    .line 111
    invoke-virtual {p3}, Lgg/a$a;->a()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p3

    .line 115
    iput v3, v0, Lcom/transsion/payment/lib/PaymentService$paymentOrderCheck$1;->label:I

    .line 116
    .line 117
    invoke-interface {p2, p3, p1, v0}, Lcom/transsion/payment/lib/a;->c(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p5

    .line 121
    if-ne p5, v1, :cond_3

    .line 122
    .line 123
    return-object v1

    .line 124
    :cond_3
    :goto_1
    check-cast p5, Lcom/tn/lib/net/bean/BaseDto;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    .line 126
    return-object p5

    .line 127
    :goto_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 128
    .line 129
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    if-eqz p1, :cond_5

    .line 142
    .line 143
    instance-of p2, p1, Lretrofit2/HttpException;

    .line 144
    .line 145
    const/4 p3, 0x0

    .line 146
    if-eqz p2, :cond_4

    .line 147
    .line 148
    sget-object p2, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 149
    .line 150
    invoke-direct {p0}, Lcom/transsion/payment/lib/PaymentService;->b()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p4

    .line 154
    move-object p5, p1

    .line 155
    check-cast p5, Lretrofit2/HttpException;

    .line 156
    .line 157
    invoke-virtual {p5}, Lretrofit2/HttpException;->code()I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    invoke-virtual {p5}, Lretrofit2/HttpException;->message()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string p4, " --> paymentOrderCheck() --> code = "

    .line 174
    .line 175
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string p4, " -- message = "

    .line 182
    .line 183
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p4

    .line 193
    invoke-virtual {p2, p4}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    new-instance p2, Lcom/tn/lib/net/bean/BaseDto;

    .line 197
    .line 198
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p5}, Lretrofit2/HttpException;->code()I

    .line 207
    .line 208
    .line 209
    move-result p4

    .line 210
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p4

    .line 214
    const-string p5, ""

    .line 215
    .line 216
    invoke-direct {p2, p1, p4, p3, p5}, Lcom/tn/lib/net/bean/BaseDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    return-object p2

    .line 220
    :cond_4
    sget-object p2, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 221
    .line 222
    invoke-direct {p0}, Lcom/transsion/payment/lib/PaymentService;->b()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p4

    .line 226
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    new-instance p5, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string p4, " --> paymentOrderCheck() --> error = "

    .line 239
    .line 240
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-virtual {p2, p1}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    return-object p3

    .line 254
    :cond_5
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 255
    .line 256
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 257
    .line 258
    .line 259
    throw p1
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p4, Lcom/transsion/payment/lib/PaymentService$paymentOrderCreate4Gp$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/transsion/payment/lib/PaymentService$paymentOrderCreate4Gp$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/payment/lib/PaymentService$paymentOrderCreate4Gp$1;->label:I

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
    iput v1, v0, Lcom/transsion/payment/lib/PaymentService$paymentOrderCreate4Gp$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/payment/lib/PaymentService$paymentOrderCreate4Gp$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/transsion/payment/lib/PaymentService$paymentOrderCreate4Gp$1;-><init>(Lcom/transsion/payment/lib/PaymentService;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/transsion/payment/lib/PaymentService$paymentOrderCreate4Gp$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/payment/lib/PaymentService$paymentOrderCreate4Gp$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :try_start_1
    sget-object p4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 56
    .line 57
    new-instance p4, Lcom/google/gson/JsonObject;

    .line 58
    .line 59
    invoke-direct {p4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v2, "skuId"

    .line 63
    .line 64
    invoke-virtual {p4, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string p1, "cpFrontPage"

    .line 68
    .line 69
    invoke-virtual {p4, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    const-string p1, "toString(...)"

    .line 73
    .line 74
    if-eqz p3, :cond_3

    .line 75
    .line 76
    :try_start_2
    new-instance p2, Lorg/json/JSONObject;

    .line 77
    .line 78
    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string p3, "ext"

    .line 89
    .line 90
    invoke-virtual {p4, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    sget-object p2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 94
    .line 95
    invoke-virtual {p4}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    sget-object p1, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 103
    .line 104
    const-string p4, "application/json"

    .line 105
    .line 106
    invoke-virtual {p1, p4}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p2, p3, p1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {p0}, Lcom/transsion/payment/lib/PaymentService;->c()Lcom/transsion/payment/lib/a;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    sget-object p3, Lgg/a;->a:Lgg/a$a;

    .line 119
    .line 120
    invoke-virtual {p3}, Lgg/a$a;->a()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    iput v3, v0, Lcom/transsion/payment/lib/PaymentService$paymentOrderCreate4Gp$1;->label:I

    .line 125
    .line 126
    invoke-interface {p2, p3, p1, v0}, Lcom/transsion/payment/lib/a;->b(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p4

    .line 130
    if-ne p4, v1, :cond_4

    .line 131
    .line 132
    return-object v1

    .line 133
    :cond_4
    :goto_1
    check-cast p4, Lcom/tn/lib/net/bean/BaseDto;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    .line 135
    return-object p4

    .line 136
    :goto_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 137
    .line 138
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    if-eqz p1, :cond_6

    .line 151
    .line 152
    instance-of p2, p1, Lretrofit2/HttpException;

    .line 153
    .line 154
    const/4 p3, 0x0

    .line 155
    if-eqz p2, :cond_5

    .line 156
    .line 157
    sget-object p2, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 158
    .line 159
    invoke-direct {p0}, Lcom/transsion/payment/lib/PaymentService;->b()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p4

    .line 163
    move-object v0, p1

    .line 164
    check-cast v0, Lretrofit2/HttpException;

    .line 165
    .line 166
    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    invoke-virtual {v0}, Lretrofit2/HttpException;->message()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string p4, " --> paymentOrderCreate4Gp() --> code = "

    .line 183
    .line 184
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string p4, " -- message = "

    .line 191
    .line 192
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p4

    .line 202
    invoke-virtual {p2, p4}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    new-instance p2, Lcom/tn/lib/net/bean/BaseDto;

    .line 206
    .line 207
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    .line 216
    .line 217
    .line 218
    move-result p4

    .line 219
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p4

    .line 223
    const-string v0, ""

    .line 224
    .line 225
    invoke-direct {p2, p1, p4, p3, v0}, Lcom/tn/lib/net/bean/BaseDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    return-object p2

    .line 229
    :cond_5
    sget-object p2, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 230
    .line 231
    invoke-direct {p0}, Lcom/transsion/payment/lib/PaymentService;->b()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p4

    .line 235
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string p4, " --> paymentOrderCreate4Gp() --> error = "

    .line 248
    .line 249
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-virtual {p2, p1}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    return-object p3

    .line 263
    :cond_6
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 264
    .line 265
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 266
    .line 267
    .line 268
    throw p1
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p4, Lcom/transsion/payment/lib/PaymentService$paymentOrderCreate4Paynicorn$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/transsion/payment/lib/PaymentService$paymentOrderCreate4Paynicorn$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/payment/lib/PaymentService$paymentOrderCreate4Paynicorn$1;->label:I

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
    iput v1, v0, Lcom/transsion/payment/lib/PaymentService$paymentOrderCreate4Paynicorn$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/payment/lib/PaymentService$paymentOrderCreate4Paynicorn$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/transsion/payment/lib/PaymentService$paymentOrderCreate4Paynicorn$1;-><init>(Lcom/transsion/payment/lib/PaymentService;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/transsion/payment/lib/PaymentService$paymentOrderCreate4Paynicorn$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/payment/lib/PaymentService$paymentOrderCreate4Paynicorn$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :try_start_1
    sget-object p4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 56
    .line 57
    new-instance p4, Lcom/google/gson/JsonObject;

    .line 58
    .line 59
    invoke-direct {p4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v2, "skuId"

    .line 63
    .line 64
    invoke-virtual {p4, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string p1, "cpFrontPage"

    .line 68
    .line 69
    invoke-virtual {p4, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    const-string p1, "toString(...)"

    .line 73
    .line 74
    if-eqz p3, :cond_3

    .line 75
    .line 76
    :try_start_2
    new-instance p2, Lorg/json/JSONObject;

    .line 77
    .line 78
    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string p3, "ext"

    .line 89
    .line 90
    invoke-virtual {p4, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    sget-object p2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 94
    .line 95
    invoke-virtual {p4}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    sget-object p1, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 103
    .line 104
    const-string p4, "application/json"

    .line 105
    .line 106
    invoke-virtual {p1, p4}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p2, p3, p1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {p0}, Lcom/transsion/payment/lib/PaymentService;->c()Lcom/transsion/payment/lib/a;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    sget-object p3, Lgg/a;->a:Lgg/a$a;

    .line 119
    .line 120
    invoke-virtual {p3}, Lgg/a$a;->a()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    iput v3, v0, Lcom/transsion/payment/lib/PaymentService$paymentOrderCreate4Paynicorn$1;->label:I

    .line 125
    .line 126
    invoke-interface {p2, p3, p1, v0}, Lcom/transsion/payment/lib/a;->d(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p4

    .line 130
    if-ne p4, v1, :cond_4

    .line 131
    .line 132
    return-object v1

    .line 133
    :cond_4
    :goto_1
    check-cast p4, Lcom/tn/lib/net/bean/BaseDto;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    .line 135
    return-object p4

    .line 136
    :goto_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 137
    .line 138
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    if-eqz p1, :cond_6

    .line 151
    .line 152
    instance-of p2, p1, Lretrofit2/HttpException;

    .line 153
    .line 154
    const/4 p3, 0x0

    .line 155
    if-eqz p2, :cond_5

    .line 156
    .line 157
    sget-object p2, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 158
    .line 159
    invoke-direct {p0}, Lcom/transsion/payment/lib/PaymentService;->b()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p4

    .line 163
    move-object v0, p1

    .line 164
    check-cast v0, Lretrofit2/HttpException;

    .line 165
    .line 166
    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    invoke-virtual {v0}, Lretrofit2/HttpException;->message()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string p4, " --> paymentOrderCreate4Paynicorn() --> code = "

    .line 183
    .line 184
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string p4, " -- message = "

    .line 191
    .line 192
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p4

    .line 202
    invoke-virtual {p2, p4}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    new-instance p2, Lcom/tn/lib/net/bean/BaseDto;

    .line 206
    .line 207
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    .line 216
    .line 217
    .line 218
    move-result p4

    .line 219
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p4

    .line 223
    const-string v0, ""

    .line 224
    .line 225
    invoke-direct {p2, p1, p4, p3, v0}, Lcom/tn/lib/net/bean/BaseDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    return-object p2

    .line 229
    :cond_5
    sget-object p2, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 230
    .line 231
    invoke-direct {p0}, Lcom/transsion/payment/lib/PaymentService;->b()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p4

    .line 235
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string p4, " --> paymentOrderCreate4Paynicorn() --> error = "

    .line 248
    .line 249
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-virtual {p2, p1}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    return-object p3

    .line 263
    :cond_6
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 264
    .line 265
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 266
    .line 267
    .line 268
    throw p1
.end method
