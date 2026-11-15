.class public final Lcom/transsion/payment/lib/PaymentClientHelper;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/payment/lib/PaymentClientHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/payment/lib/PaymentClientHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/payment/lib/PaymentClientHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/payment/lib/PaymentClientHelper;->a:Lcom/transsion/payment/lib/PaymentClientHelper;

    .line 7
    .line 8
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

.method public static final synthetic a(Lcom/transsion/payment/lib/PaymentClientHelper;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/payment/lib/PaymentClientHelper;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final b()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/payment/lib/PaymentClientHelper;

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


# virtual methods
.method public final c()V
    .locals 14

    .line 1
    sget-object v0, Lmg/a;->a:Lmg/a$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lmg/a$a;->c()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "toUpperCase(...)"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v3, "custom_local_iso"

    .line 13
    .line 14
    const-string v4, ""

    .line 15
    .line 16
    invoke-virtual {v0, v3, v4}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v0, v1

    .line 33
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    sget-object v0, Ltg/b;->a:Ltg/b;

    .line 40
    .line 41
    invoke-virtual {v0}, Ltg/b;->g()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    move-object v10, v1

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move-object v10, v0

    .line 59
    :goto_1
    sget-object v0, Ljg/b;->a:Ljg/b$a;

    .line 60
    .line 61
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v2, "getApp(...)"

    .line 66
    .line 67
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljg/b$a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-nez v0, :cond_3

    .line 75
    .line 76
    const-string v0, "gp"

    .line 77
    .line 78
    :cond_3
    move-object v6, v0

    .line 79
    sget-object v0, Lcom/tn/tranpay/TranPay;->a:Lcom/tn/tranpay/TranPay;

    .line 80
    .line 81
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    sget-object v1, Lcom/transsion/payment/lib/c;->a:Lcom/transsion/payment/lib/c;

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/transsion/payment/lib/c;->b()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    sget-object v7, Lcom/tn/tranpay/logger/LogLevel;->DEBUG:Lcom/tn/tranpay/logger/LogLevel;

    .line 95
    .line 96
    const/16 v12, 0x140

    .line 97
    .line 98
    const/4 v13, 0x0

    .line 99
    const-string v4, "3100484"

    .line 100
    .line 101
    const/4 v8, 0x0

    .line 102
    const/4 v9, 0x0

    .line 103
    const/4 v11, 0x0

    .line 104
    move-object v2, v0

    .line 105
    invoke-static/range {v2 .. v13}, Lcom/tn/tranpay/TranPay;->c(Lcom/tn/tranpay/TranPay;Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tn/tranpay/logger/LogLevel;ZZLjava/lang/String;Lcom/tn/tranpay/e;ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    new-instance v1, Lcom/transsion/payment/lib/PayLoggerPlugin;

    .line 109
    .line 110
    invoke-direct {v1}, Lcom/transsion/payment/lib/PayLoggerPlugin;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lcom/tn/tranpay/TranPay;->a(Lcom/tn/tranpay/logger/LoggerPlugin;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final d(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lcom/transsion/payment/lib/b;Lcom/transsion/payment/lib/PaymentService;)V
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    const-string v4, "activity"

    .line 10
    .line 11
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v4, "orderRequest"

    .line 15
    .line 16
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v4, "payCallback"

    .line 20
    .line 21
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v4, "paymentService"

    .line 25
    .line 26
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v4, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 30
    .line 31
    invoke-direct/range {p0 .. p0}, Lcom/transsion/payment/lib/PaymentClientHelper;->b()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    new-instance v6, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v5, " --> requestPay() --> \u8bf7\u6c42\u5230\u6570\u636e --> realPay() --> \u6253\u5f00\u7aef\u5185WebView --> \u5c55\u793a\u6536\u94f6\u53f0"

    .line 44
    .line 45
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v4, v5}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/payment/lib/bean/CreateOrderRes;->getPrePayInfo()Lcom/transsion/payment/lib/bean/PrePayInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    if-eqz v4, :cond_0

    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getOrderId()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/4 v5, 0x0

    .line 67
    :goto_0
    if-eqz v5, :cond_7

    .line 68
    .line 69
    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getDescription()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    if-nez v5, :cond_1

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_1
    const/4 v5, 0x0

    .line 77
    invoke-interface {v2, v5}, Lcom/transsion/payment/lib/b;->b(Z)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getPrice()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    if-nez v6, :cond_2

    .line 85
    .line 86
    const-string v6, "0"

    .line 87
    .line 88
    :cond_2
    move-object v9, v6

    .line 89
    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getOrderId()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    const-string v7, ""

    .line 94
    .line 95
    if-nez v6, :cond_3

    .line 96
    .line 97
    move-object v10, v7

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    move-object v10, v6

    .line 100
    :goto_1
    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getDescription()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    if-nez v6, :cond_4

    .line 105
    .line 106
    move-object v11, v7

    .line 107
    goto :goto_2

    .line 108
    :cond_4
    move-object v11, v6

    .line 109
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/payment/lib/bean/CreateOrderRes;->getTxnId()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getCurrency()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v12

    .line 117
    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getReferenceNo()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    if-nez v6, :cond_5

    .line 122
    .line 123
    move-object v13, v7

    .line 124
    goto :goto_3

    .line 125
    :cond_5
    move-object v13, v6

    .line 126
    :goto_3
    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getMemo()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v14

    .line 130
    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getPayByLocalCurrency()Ljava/lang/Boolean;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    if-eqz v4, :cond_6

    .line 135
    .line 136
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    :cond_6
    move/from16 v18, v5

    .line 141
    .line 142
    new-instance v4, Lcom/tn/tranpay/BillingParams;

    .line 143
    .line 144
    const/16 v19, 0x180

    .line 145
    .line 146
    const/16 v20, 0x0

    .line 147
    .line 148
    const/4 v15, 0x0

    .line 149
    const/16 v16, 0x0

    .line 150
    .line 151
    const/16 v17, 0x0

    .line 152
    .line 153
    move-object v7, v4

    .line 154
    invoke-direct/range {v7 .. v20}, Lcom/tn/tranpay/BillingParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 155
    .line 156
    .line 157
    sget-object v5, Lcom/tn/tranpay/TranPayClient;->a:Lcom/tn/tranpay/TranPayClient;

    .line 158
    .line 159
    new-instance v6, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;

    .line 160
    .line 161
    invoke-direct {v6, v2, v1, v3}, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;-><init>(Lcom/transsion/payment/lib/b;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lcom/transsion/payment/lib/PaymentService;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5, v0, v4, v6}, Lcom/tn/tranpay/TranPayClient;->c(Landroidx/appcompat/app/AppCompatActivity;Lcom/tn/tranpay/BillingParams;Lcom/tn/tranpay/d;)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :cond_7
    :goto_4
    const/16 v0, 0x3e9

    .line 169
    .line 170
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    const/16 v5, 0x8

    .line 175
    .line 176
    const/4 v6, 0x0

    .line 177
    const-string v3, "\u8ba2\u5355\u4fe1\u606f\u5f02\u5e38"

    .line 178
    .line 179
    const/4 v4, 0x0

    .line 180
    const/4 v7, 0x0

    .line 181
    move-object/from16 v0, p3

    .line 182
    .line 183
    move-object v2, v3

    .line 184
    move v3, v4

    .line 185
    move-object v4, v7

    .line 186
    invoke-static/range {v0 .. v6}, Lcom/transsion/payment/lib/b$a;->a(Lcom/transsion/payment/lib/b;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    return-void
.end method

.method public final e(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    const-string v3, "payFail"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "orderCheck4Paynicorn"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v3, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 18
    .line 19
    invoke-direct/range {p0 .. p0}, Lcom/transsion/payment/lib/PaymentClientHelper;->b()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v4, " --> requestPay() --> \u8bf7\u6c42\u5230\u6570\u636e --> realPay() --> \u6253\u5f00\u7aef\u5185WebView --> \u5c55\u793a\u6536\u94f6\u53f0"

    .line 32
    .line 33
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v3, v4}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    if-eqz p2, :cond_0

    .line 45
    .line 46
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/payment/lib/bean/CreateOrderRes;->getPrePayInfo()Lcom/transsion/payment/lib/bean/PrePayInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move-object v4, v3

    .line 52
    :goto_0
    if-eqz v4, :cond_1

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getOrderId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    :cond_1
    if-eqz v3, :cond_8

    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getDescription()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-nez v3, :cond_2

    .line 65
    .line 66
    goto :goto_5

    .line 67
    :cond_2
    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getPrice()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    if-nez v3, :cond_3

    .line 72
    .line 73
    const-string v3, "0"

    .line 74
    .line 75
    :cond_3
    move-object v7, v3

    .line 76
    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getOrderId()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    const-string v5, ""

    .line 81
    .line 82
    if-nez v3, :cond_4

    .line 83
    .line 84
    move-object v8, v5

    .line 85
    goto :goto_1

    .line 86
    :cond_4
    move-object v8, v3

    .line 87
    :goto_1
    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getDescription()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    if-nez v3, :cond_5

    .line 92
    .line 93
    move-object v9, v5

    .line 94
    goto :goto_2

    .line 95
    :cond_5
    move-object v9, v3

    .line 96
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/payment/lib/bean/CreateOrderRes;->getTxnId()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getCurrency()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getReferenceNo()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getMemo()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v12

    .line 112
    invoke-virtual {v4}, Lcom/transsion/payment/lib/bean/PrePayInfo;->getPayByLocalCurrency()Ljava/lang/Boolean;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    if-eqz v3, :cond_6

    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    :goto_3
    move/from16 v16, v3

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_6
    const/4 v3, 0x0

    .line 126
    goto :goto_3

    .line 127
    :goto_4
    new-instance v3, Lcom/tn/tranpay/BillingParams;

    .line 128
    .line 129
    const/16 v17, 0x180

    .line 130
    .line 131
    const/16 v18, 0x0

    .line 132
    .line 133
    const/4 v13, 0x0

    .line 134
    const/4 v14, 0x0

    .line 135
    const/4 v15, 0x0

    .line 136
    move-object v5, v3

    .line 137
    invoke-direct/range {v5 .. v18}, Lcom/tn/tranpay/BillingParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 138
    .line 139
    .line 140
    if-eqz v0, :cond_7

    .line 141
    .line 142
    sget-object v4, Lcom/tn/tranpay/TranPayClient;->a:Lcom/tn/tranpay/TranPayClient;

    .line 143
    .line 144
    new-instance v5, Lcom/transsion/payment/lib/PaymentClientHelper$a;

    .line 145
    .line 146
    invoke-direct {v5, v1, v2}, Lcom/transsion/payment/lib/PaymentClientHelper$a;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, v0, v3, v5}, Lcom/tn/tranpay/TranPayClient;->c(Landroidx/appcompat/app/AppCompatActivity;Lcom/tn/tranpay/BillingParams;Lcom/tn/tranpay/d;)V

    .line 150
    .line 151
    .line 152
    :cond_7
    return-void

    .line 153
    :cond_8
    :goto_5
    const/16 v0, 0x3e9

    .line 154
    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    const-string v2, "realPay() --> \u6253\u5f00\u7aef\u5185WebView --> \u5c55\u793a\u6536\u94f6\u53f0 -- > activity == null"

    .line 160
    .line 161
    invoke-interface {v1, v0, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    return-void
.end method
