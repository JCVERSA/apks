.class public final Lcom/tn/tranpay/TranPayConfiguration;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/tn/tranpay/TranPayConfiguration;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Z

.field private static g:Z

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Z

.field private static n:Lcom/tn/tranpay/bean/CurrencyInfoBean;

.field private static final o:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tn/tranpay/TranPayConfiguration;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tn/tranpay/TranPayConfiguration;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tn/tranpay/TranPayConfiguration;->a:Lcom/tn/tranpay/TranPayConfiguration;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    sput-object v0, Lcom/tn/tranpay/TranPayConfiguration;->c:Ljava/lang/String;

    .line 11
    .line 12
    sput-object v0, Lcom/tn/tranpay/TranPayConfiguration;->d:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    sput-boolean v0, Lcom/tn/tranpay/TranPayConfiguration;->g:Z

    .line 16
    .line 17
    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration$iPaymentApi$2;->INSTANCE:Lcom/tn/tranpay/TranPayConfiguration$iPaymentApi$2;

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/tn/tranpay/TranPayConfiguration;->o:Lkotlin/Lazy;

    .line 24
    .line 25
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final E()V
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
    new-instance v4, Lcom/tn/tranpay/TranPayConfiguration$updateCurrencyInfo$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, v0}, Lcom/tn/tranpay/TranPayConfiguration$updateCurrencyInfo$1;-><init>(Lkotlin/coroutines/Continuation;)V

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

.method public static final synthetic a(Lcom/tn/tranpay/TranPayConfiguration;Lcom/tn/tranpay/bean/CurrencyInfoBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tn/tranpay/TranPayConfiguration;->d(Lcom/tn/tranpay/bean/CurrencyInfoBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lcom/tn/tranpay/TranPayConfiguration;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tn/tranpay/TranPayConfiguration;->e(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lcom/tn/tranpay/TranPayConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tn/tranpay/TranPayConfiguration;->o(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final d(Lcom/tn/tranpay/bean/CurrencyInfoBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p2, Lcom/tn/tranpay/TranPayConfiguration$cacheCurrencyInfo$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/tn/tranpay/TranPayConfiguration$cacheCurrencyInfo$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/tn/tranpay/TranPayConfiguration$cacheCurrencyInfo$1;->label:I

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
    iput v1, v0, Lcom/tn/tranpay/TranPayConfiguration$cacheCurrencyInfo$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/tn/tranpay/TranPayConfiguration$cacheCurrencyInfo$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/tn/tranpay/TranPayConfiguration$cacheCurrencyInfo$1;-><init>(Lcom/tn/tranpay/TranPayConfiguration;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/tn/tranpay/TranPayConfiguration$cacheCurrencyInfo$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/tn/tranpay/TranPayConfiguration$cacheCurrencyInfo$1;->label:I

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
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
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
    sget-object p2, Lcom/tn/tranpay/TranPayConfiguration;->e:Ljava/lang/String;

    .line 56
    .line 57
    if-eqz p2, :cond_4

    .line 58
    .line 59
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-nez p2, :cond_3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    sget-object p2, Lcom/tn/tranpay/helper/PaymentMMKV;->a:Lcom/tn/tranpay/helper/PaymentMMKV;

    .line 67
    .line 68
    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->e:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, v0, p1}, Lcom/tn/tranpay/helper/PaymentMMKV;->b(Ljava/lang/String;Lcom/tn/tranpay/bean/CurrencyInfoBean;)V

    .line 74
    .line 75
    .line 76
    sget-object p1, Llh/a;->a:Llh/a;

    .line 77
    .line 78
    sget-object p2, Lcom/tn/tranpay/TranPayConfiguration;->e:Ljava/lang/String;

    .line 79
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v1, "\u6309region\u7f13\u5b58\u8d27\u5e01\u4fe1\u606f: region="

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-static {p1, p2, v5, v3, v5}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_4
    :goto_1
    sget-object p2, Lcom/tn/tranpay/helper/PaymentMMKV;->a:Lcom/tn/tranpay/helper/PaymentMMKV;

    .line 102
    .line 103
    iput v4, v0, Lcom/tn/tranpay/TranPayConfiguration$cacheCurrencyInfo$1;->label:I

    .line 104
    .line 105
    invoke-virtual {p2, p1, v0}, Lcom/tn/tranpay/helper/PaymentMMKV;->a(Lcom/tn/tranpay/bean/CurrencyInfoBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-ne p1, v1, :cond_5

    .line 110
    .line 111
    return-object v1

    .line 112
    :cond_5
    :goto_2
    sget-object p1, Llh/a;->a:Llh/a;

    .line 113
    .line 114
    const-string p2, "\u6309IP+\u65e5\u671f\u7f13\u5b58\u8d27\u5e01\u4fe1\u606f"

    .line 115
    .line 116
    invoke-static {p1, p2, v5, v3, v5}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 120
    .line 121
    return-object p1
.end method

.method private final e(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lcom/tn/tranpay/TranPayConfiguration$fetchAndUpdateCurrencyInfo$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/tn/tranpay/TranPayConfiguration$fetchAndUpdateCurrencyInfo$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/tn/tranpay/TranPayConfiguration$fetchAndUpdateCurrencyInfo$1;->label:I

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
    iput v1, v0, Lcom/tn/tranpay/TranPayConfiguration$fetchAndUpdateCurrencyInfo$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/tn/tranpay/TranPayConfiguration$fetchAndUpdateCurrencyInfo$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/tn/tranpay/TranPayConfiguration$fetchAndUpdateCurrencyInfo$1;-><init>(Lcom/tn/tranpay/TranPayConfiguration;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/tn/tranpay/TranPayConfiguration$fetchAndUpdateCurrencyInfo$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/tn/tranpay/TranPayConfiguration$fetchAndUpdateCurrencyInfo$1;->label:I

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
    iget-boolean p1, v0, Lcom/tn/tranpay/TranPayConfiguration$fetchAndUpdateCurrencyInfo$1;->Z$0:Z

    .line 39
    .line 40
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

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
    iput-boolean p1, v0, Lcom/tn/tranpay/TranPayConfiguration$fetchAndUpdateCurrencyInfo$1;->Z$0:Z

    .line 56
    .line 57
    iput v3, v0, Lcom/tn/tranpay/TranPayConfiguration$fetchAndUpdateCurrencyInfo$1;->label:I

    .line 58
    .line 59
    invoke-direct {p0, v0}, Lcom/tn/tranpay/TranPayConfiguration;->o(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    if-ne p2, v1, :cond_3

    .line 64
    .line 65
    return-object v1

    .line 66
    :cond_3
    :goto_1
    check-cast p2, Lcom/tn/tranpay/network/BaseDto;

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    if-eqz p2, :cond_4

    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/tn/tranpay/network/BaseDto;->getData()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lcom/tn/tranpay/bean/CurrencyInfoBean;

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    move-object v1, v0

    .line 79
    :goto_2
    const/4 v2, 0x2

    .line 80
    if-eqz v1, :cond_8

    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/tn/tranpay/network/BaseDto;->getData()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    check-cast p2, Lcom/tn/tranpay/bean/CurrencyInfoBean;

    .line 87
    .line 88
    sput-object p2, Lcom/tn/tranpay/TranPayConfiguration;->n:Lcom/tn/tranpay/bean/CurrencyInfoBean;

    .line 89
    .line 90
    if-eqz p1, :cond_5

    .line 91
    .line 92
    sget-object p1, Lcom/tn/tranpay/report/h;->a:Lcom/tn/tranpay/report/h;

    .line 93
    .line 94
    invoke-virtual {p1, v3}, Lcom/tn/tranpay/report/h;->c(Z)V

    .line 95
    .line 96
    .line 97
    :cond_5
    sget-object p1, Llh/a;->a:Llh/a;

    .line 98
    .line 99
    sget-object p2, Lcom/tn/tranpay/TranPayConfiguration;->n:Lcom/tn/tranpay/bean/CurrencyInfoBean;

    .line 100
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v3, "Currency info updated successfully: "

    .line 107
    .line 108
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-static {p1, p2, v0, v2, v0}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    sget-object p1, Lcom/tn/tranpay/TranPayConfiguration;->n:Lcom/tn/tranpay/bean/CurrencyInfoBean;

    .line 122
    .line 123
    if-eqz p1, :cond_6

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/tn/tranpay/bean/CurrencyInfoBean;->getCountryCode()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    goto :goto_3

    .line 130
    :cond_6
    move-object p1, v0

    .line 131
    :goto_3
    sput-object p1, Lcom/tn/tranpay/TranPayConfiguration;->j:Ljava/lang/String;

    .line 132
    .line 133
    sget-object p1, Lcom/tn/tranpay/TranPayConfiguration;->n:Lcom/tn/tranpay/bean/CurrencyInfoBean;

    .line 134
    .line 135
    if-eqz p1, :cond_7

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/tn/tranpay/bean/CurrencyInfoBean;->getCurrency()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    :cond_7
    sput-object v0, Lcom/tn/tranpay/TranPayConfiguration;->k:Ljava/lang/String;

    .line 142
    .line 143
    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->n:Lcom/tn/tranpay/bean/CurrencyInfoBean;

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_8
    if-eqz p1, :cond_9

    .line 147
    .line 148
    sget-object p1, Lcom/tn/tranpay/report/h;->a:Lcom/tn/tranpay/report/h;

    .line 149
    .line 150
    const/4 p2, 0x0

    .line 151
    invoke-virtual {p1, p2}, Lcom/tn/tranpay/report/h;->c(Z)V

    .line 152
    .line 153
    .line 154
    :cond_9
    sget-object p1, Llh/a;->a:Llh/a;

    .line 155
    .line 156
    const-string p2, "Failed to update currency info"

    .line 157
    .line 158
    invoke-static {p1, p2, v0, v2, v0}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :goto_4
    return-object v0
.end method

.method private final i(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->e:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object p1, Lcom/tn/tranpay/helper/PaymentMMKV;->a:Lcom/tn/tranpay/helper/PaymentMMKV;

    .line 13
    .line 14
    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->e:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/tn/tranpay/helper/PaymentMMKV;->g(Ljava/lang/String;)Lcom/tn/tranpay/bean/CurrencyInfoBean;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/tn/tranpay/helper/PaymentMMKV;->a:Lcom/tn/tranpay/helper/PaymentMMKV;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/tn/tranpay/helper/PaymentMMKV;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method private final o(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p1, Lcom/tn/tranpay/TranPayConfiguration$getCurrencyInfoBean$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/tn/tranpay/TranPayConfiguration$getCurrencyInfoBean$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/tn/tranpay/TranPayConfiguration$getCurrencyInfoBean$1;->label:I

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
    iput v1, v0, Lcom/tn/tranpay/TranPayConfiguration$getCurrencyInfoBean$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/tn/tranpay/TranPayConfiguration$getCurrencyInfoBean$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/tn/tranpay/TranPayConfiguration$getCurrencyInfoBean$1;-><init>(Lcom/tn/tranpay/TranPayConfiguration;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/tn/tranpay/TranPayConfiguration$getCurrencyInfoBean$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/tn/tranpay/TranPayConfiguration$getCurrencyInfoBean$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x1

    .line 35
    const/4 v5, 0x2

    .line 36
    const/4 v6, 0x0

    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    if-eq v2, v4, :cond_3

    .line 40
    .line 41
    if-eq v2, v5, :cond_2

    .line 42
    .line 43
    if-ne v2, v3, :cond_1

    .line 44
    .line 45
    iget-object v0, v0, Lcom/tn/tranpay/TranPayConfiguration$getCurrencyInfoBean$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lcom/tn/tranpay/network/BaseDto;

    .line 48
    .line 49
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    goto/16 :goto_3

    .line 53
    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_2
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    sget-object p1, Lcom/tn/tranpay/helper/PaymentMMKV;->a:Lcom/tn/tranpay/helper/PaymentMMKV;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/tn/tranpay/helper/PaymentMMKV;->c()V

    .line 79
    .line 80
    .line 81
    iput v4, v0, Lcom/tn/tranpay/TranPayConfiguration$getCurrencyInfoBean$1;->label:I

    .line 82
    .line 83
    invoke-direct {p0, v0}, Lcom/tn/tranpay/TranPayConfiguration;->i(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-ne p1, v1, :cond_5

    .line 88
    .line 89
    return-object v1

    .line 90
    :cond_5
    :goto_1
    check-cast p1, Lcom/tn/tranpay/bean/CurrencyInfoBean;

    .line 91
    .line 92
    if-eqz p1, :cond_6

    .line 93
    .line 94
    sget-object v0, Llh/a;->a:Llh/a;

    .line 95
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v2, "\u4f7f\u7528\u7f13\u5b58\u7684\u8d27\u5e01\u4fe1\u606f: "

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v0, v1, v6, v5, v6}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    new-instance v0, Lcom/tn/tranpay/network/BaseDto;

    .line 117
    .line 118
    const/16 v1, 0xc8

    .line 119
    .line 120
    invoke-direct {v0, v1, p1}, Lcom/tn/tranpay/network/BaseDto;-><init>(ILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    return-object v0

    .line 124
    :cond_6
    :try_start_2
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 125
    .line 126
    sget-object p1, Lcom/tn/tranpay/TranPayConfiguration;->a:Lcom/tn/tranpay/TranPayConfiguration;

    .line 127
    .line 128
    invoke-direct {p1}, Lcom/tn/tranpay/TranPayConfiguration;->r()Lcom/tn/tranpay/network/b;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    sget-object v2, Lcom/tn/tranpay/TranPayConfiguration;->e:Ljava/lang/String;

    .line 133
    .line 134
    iput v5, v0, Lcom/tn/tranpay/TranPayConfiguration$getCurrencyInfoBean$1;->label:I

    .line 135
    .line 136
    invoke-interface {p1, v2, v0}, Lcom/tn/tranpay/network/b;->e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-ne p1, v1, :cond_7

    .line 141
    .line 142
    return-object v1

    .line 143
    :cond_7
    :goto_2
    check-cast p1, Lcom/tn/tranpay/network/BaseDto;

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/tn/tranpay/network/BaseDto;->getData()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    check-cast v2, Lcom/tn/tranpay/bean/CurrencyInfoBean;

    .line 150
    .line 151
    if-eqz v2, :cond_9

    .line 152
    .line 153
    sget-object v4, Lcom/tn/tranpay/TranPayConfiguration;->a:Lcom/tn/tranpay/TranPayConfiguration;

    .line 154
    .line 155
    iput-object p1, v0, Lcom/tn/tranpay/TranPayConfiguration$getCurrencyInfoBean$1;->L$0:Ljava/lang/Object;

    .line 156
    .line 157
    iput v3, v0, Lcom/tn/tranpay/TranPayConfiguration$getCurrencyInfoBean$1;->label:I

    .line 158
    .line 159
    invoke-direct {v4, v2, v0}, Lcom/tn/tranpay/TranPayConfiguration;->d(Lcom/tn/tranpay/bean/CurrencyInfoBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    if-ne v0, v1, :cond_8

    .line 164
    .line 165
    return-object v1

    .line 166
    :cond_8
    move-object v0, p1

    .line 167
    :goto_3
    move-object p1, v0

    .line 168
    :cond_9
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    goto :goto_5

    .line 173
    :goto_4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 174
    .line 175
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    :goto_5
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    if-nez v0, :cond_a

    .line 188
    .line 189
    move-object v6, p1

    .line 190
    goto :goto_6

    .line 191
    :cond_a
    sget-object p1, Llh/a;->a:Llh/a;

    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v4, "\u83b7\u53d6\u8d27\u5e01\u4fe1\u606f\u5931\u8d25 ["

    .line 211
    .line 212
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v1, "]: "

    .line 219
    .line 220
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-static {p1, v1, v6, v5, v6}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    sget-boolean p1, Lcom/tn/tranpay/TranPayConfiguration;->f:Z

    .line 234
    .line 235
    if-eqz p1, :cond_b

    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 238
    .line 239
    .line 240
    :cond_b
    :goto_6
    return-object v6
.end method

.method private final r()Lcom/tn/tranpay/network/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->o:Lkotlin/Lazy;

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
.method public final A(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/tn/tranpay/TranPayConfiguration;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public final B(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/tn/tranpay/TranPayConfiguration;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final C()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tn/tranpay/TranPayConfiguration;->E()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final D(Lcom/tn/tranpay/BillingParams;)V
    .locals 1

    .line 1
    const-string v0, "params"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/tn/tranpay/BillingParams;->getOrderId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/tn/tranpay/TranPayConfiguration;->h:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/tn/tranpay/BillingParams;->getCurrency()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/tn/tranpay/TranPayConfiguration;->k:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/tn/tranpay/BillingParams;->getAmount()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/tn/tranpay/TranPayConfiguration;->l:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/tn/tranpay/BillingParams;->getTxnId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    sput-object p1, Lcom/tn/tranpay/TranPayConfiguration;->i:Ljava/lang/String;

    .line 29
    .line 30
    return-void
.end method

.method public final f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->n:Lcom/tn/tranpay/bean/CurrencyInfoBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0, p1}, Lcom/tn/tranpay/TranPayConfiguration;->e(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :cond_0
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Lcom/tn/tranpay/bean/CurrencyInfoBean;
    .locals 1

    .line 1
    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->n:Lcom/tn/tranpay/bean/CurrencyInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tn/tranpay/TranPayConfiguration;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public final q()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tn/tranpay/TranPayConfiguration;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final u()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tn/tranpay/TranPayConfiguration;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public final v(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/tn/tranpay/TranPayConfiguration;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/tn/tranpay/TranPayConfiguration;->d:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/tn/tranpay/TranPayConfiguration;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final y(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/tn/tranpay/TranPayConfiguration;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public final z(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/tn/tranpay/TranPayConfiguration;->m:Z

    .line 2
    .line 3
    return-void
.end method
