.class public final Lcom/transsion/shorttv/order/d;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/shorttv/order/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/shorttv/order/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/shorttv/order/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/shorttv/order/d;->a:Lcom/transsion/shorttv/order/d;

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

.method public static final synthetic a(Lcom/transsion/shorttv/order/d;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/order/d;->b()Ljava/lang/String;

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
    const-class v0, Lcom/transsion/shorttv/order/d;

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
.method public final c(Landroid/content/Context;Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 20

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
    const/4 v3, 0x0

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;->getPrePayInfo()Lcom/transsion/shorttv/order/bean/PrePayInfoBean;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v4, v3

    .line 26
    :goto_0
    if-eqz v4, :cond_2

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/transsion/shorttv/order/bean/PrePayInfoBean;->getPrice()Ljava/lang/Double;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    if-eqz v5, :cond_2

    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/lang/Double;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    if-nez v5, :cond_1

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    :goto_1
    move-object v8, v5

    .line 42
    goto :goto_3

    .line 43
    :cond_2
    :goto_2
    const-string v5, "0"

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :goto_3
    const-string v5, ""

    .line 47
    .line 48
    if-eqz v4, :cond_4

    .line 49
    .line 50
    invoke-virtual {v4}, Lcom/transsion/shorttv/order/bean/PrePayInfoBean;->getOrderId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    if-nez v6, :cond_3

    .line 55
    .line 56
    goto :goto_4

    .line 57
    :cond_3
    move-object v9, v6

    .line 58
    goto :goto_5

    .line 59
    :cond_4
    :goto_4
    move-object v9, v5

    .line 60
    :goto_5
    if-eqz v4, :cond_6

    .line 61
    .line 62
    invoke-virtual {v4}, Lcom/transsion/shorttv/order/bean/PrePayInfoBean;->getDescription()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    if-nez v6, :cond_5

    .line 67
    .line 68
    goto :goto_6

    .line 69
    :cond_5
    move-object v10, v6

    .line 70
    goto :goto_7

    .line 71
    :cond_6
    :goto_6
    move-object v10, v5

    .line 72
    :goto_7
    if-eqz p2, :cond_8

    .line 73
    .line 74
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;->getTxnId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    if-nez v6, :cond_7

    .line 79
    .line 80
    goto :goto_8

    .line 81
    :cond_7
    move-object v7, v6

    .line 82
    goto :goto_9

    .line 83
    :cond_8
    :goto_8
    move-object v7, v5

    .line 84
    :goto_9
    if-eqz v4, :cond_9

    .line 85
    .line 86
    invoke-virtual {v4}, Lcom/transsion/shorttv/order/bean/PrePayInfoBean;->getCurrency()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    move-object v11, v5

    .line 91
    goto :goto_a

    .line 92
    :cond_9
    move-object v11, v3

    .line 93
    :goto_a
    if-eqz v4, :cond_a

    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/transsion/shorttv/order/bean/PrePayInfoBean;->getReferenceNo()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    move-object v12, v5

    .line 100
    goto :goto_b

    .line 101
    :cond_a
    move-object v12, v3

    .line 102
    :goto_b
    if-eqz v4, :cond_b

    .line 103
    .line 104
    invoke-virtual {v4}, Lcom/transsion/shorttv/order/bean/PrePayInfoBean;->getMemo()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    :cond_b
    move-object v13, v3

    .line 109
    if-eqz v4, :cond_c

    .line 110
    .line 111
    invoke-virtual {v4}, Lcom/transsion/shorttv/order/bean/PrePayInfoBean;->getPayByLocalCurrency()Ljava/lang/Boolean;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    if-eqz v3, :cond_c

    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    :goto_c
    move/from16 v17, v3

    .line 122
    .line 123
    goto :goto_d

    .line 124
    :cond_c
    const/4 v3, 0x0

    .line 125
    goto :goto_c

    .line 126
    :goto_d
    new-instance v3, Lcom/tn/tranpay/BillingParams;

    .line 127
    .line 128
    const/16 v18, 0x180

    .line 129
    .line 130
    const/16 v19, 0x0

    .line 131
    .line 132
    const/4 v14, 0x0

    .line 133
    const/4 v15, 0x0

    .line 134
    const/16 v16, 0x0

    .line 135
    .line 136
    move-object v6, v3

    .line 137
    invoke-direct/range {v6 .. v19}, Lcom/tn/tranpay/BillingParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 138
    .line 139
    .line 140
    if-eqz v0, :cond_d

    .line 141
    .line 142
    sget-object v4, Lcom/tn/tranpay/TranPayClient;->a:Lcom/tn/tranpay/TranPayClient;

    .line 143
    .line 144
    new-instance v5, Lcom/transsion/shorttv/order/d$a;

    .line 145
    .line 146
    invoke-direct {v5, v1, v2}, Lcom/transsion/shorttv/order/d$a;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, v0, v3, v5}, Lcom/tn/tranpay/TranPayClient;->b(Landroid/content/Context;Lcom/tn/tranpay/BillingParams;Lcom/tn/tranpay/d;)V

    .line 150
    .line 151
    .line 152
    :cond_d
    return-void
.end method

.method public final d(Landroid/content/Context;Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;Lcom/transsion/shorttv/order/b;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/shorttv/order/c;->a:Lcom/transsion/shorttv/order/c;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/shorttv/order/d;->b()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " -->  --> purchase() --> \u5f00\u59cb\u8d2d\u4e70\u6d41\u7a0b"

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/order/c;->a(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Lcom/transsion/shorttv/order/PurchaseDialog;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/transsion/shorttv/order/PurchaseDialog;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p2}, Lcom/transsion/shorttv/order/PurchaseDialog;->F0(Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;)Lcom/transsion/shorttv/order/PurchaseDialog;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p2, p3}, Lcom/transsion/shorttv/order/BasePayLoadingDialog;->p0(Lcom/transsion/shorttv/order/b;)Lcom/transsion/shorttv/order/BasePayLoadingDialog;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const-string p3, "PurchaseDialog"

    .line 46
    .line 47
    invoke-virtual {p2, p1, p3}, Lcom/transsion/shorttv/order/BasePayLoadingDialog;->i0(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 52
    .line 53
    const-string p1, "-1"

    .line 54
    .line 55
    const-string p2, "context == null || orderReq == null"

    .line 56
    .line 57
    invoke-interface {p3, p1, p2}, Lcom/transsion/shorttv/order/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void
.end method
