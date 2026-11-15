.class public final Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/tn/tranpay/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/payment/lib/PaymentClientHelper;->d(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lcom/transsion/payment/lib/b;Lcom/transsion/payment/lib/PaymentService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/payment/lib/b;

.field final synthetic b:Lcom/transsion/payment/lib/bean/CreateOrderRes;

.field final synthetic c:Lcom/transsion/payment/lib/PaymentService;


# direct methods
.method constructor <init>(Lcom/transsion/payment/lib/b;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lcom/transsion/payment/lib/PaymentService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->a:Lcom/transsion/payment/lib/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->b:Lcom/transsion/payment/lib/bean/CreateOrderRes;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->c:Lcom/transsion/payment/lib/PaymentService;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/tn/tranpay/b;Lcom/tn/tranpay/c;)V
    .locals 6

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "onPurchasesUpdated "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object v1, Lcom/tn/tranpay/a;->a:Lcom/tn/tranpay/a;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/tn/tranpay/b;->b()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/tn/tranpay/a;->a(I)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v2, 0x1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    if-nez p2, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    sget-object p1, Lcom/transsion/payment/lib/PaymentClientHelper;->a:Lcom/transsion/payment/lib/PaymentClientHelper;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/transsion/payment/lib/PaymentClientHelper;->a(Lcom/transsion/payment/lib/PaymentClientHelper;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance p2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p1, " --> realPay() --> paynicorn result --> \u8f6e\u8be2Paynicorn\u652f\u4ed8\u7ed3\u679c ...."

    .line 67
    .line 68
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v0, p1}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->a:Lcom/transsion/payment/lib/b;

    .line 79
    .line 80
    invoke-interface {p1, v2}, Lcom/transsion/payment/lib/b;->b(Z)V

    .line 81
    .line 82
    .line 83
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v3, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;

    .line 92
    .line 93
    iget-object p1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->a:Lcom/transsion/payment/lib/b;

    .line 94
    .line 95
    iget-object p2, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->b:Lcom/transsion/payment/lib/bean/CreateOrderRes;

    .line 96
    .line 97
    iget-object v1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->c:Lcom/transsion/payment/lib/PaymentService;

    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    invoke-direct {v3, p1, p2, v1, v2}, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1$onPurchasesUpdated$1;-><init>(Lcom/transsion/payment/lib/b;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lcom/transsion/payment/lib/PaymentService;Lkotlin/coroutines/Continuation;)V

    .line 101
    .line 102
    .line 103
    const/4 v4, 0x3

    .line 104
    const/4 v5, 0x0

    .line 105
    const/4 v1, 0x0

    .line 106
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_1
    :goto_0
    sget-object p2, Lcom/transsion/payment/lib/PaymentClientHelper;->a:Lcom/transsion/payment/lib/PaymentClientHelper;

    .line 111
    .line 112
    invoke-static {p2}, Lcom/transsion/payment/lib/PaymentClientHelper;->a(Lcom/transsion/payment/lib/PaymentClientHelper;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v1, " --> realPay() --> paynicorn result is cancel"

    .line 125
    .line 126
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object v1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->a:Lcom/transsion/payment/lib/b;

    .line 137
    .line 138
    const/4 v3, 0x0

    .line 139
    invoke-interface {v1, v3}, Lcom/transsion/payment/lib/b;->b(Z)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/tn/tranpay/b;->b()I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eq v1, v2, :cond_3

    .line 147
    .line 148
    const/4 p1, 0x4

    .line 149
    if-eq v1, p1, :cond_2

    .line 150
    .line 151
    iget-object p1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->a:Lcom/transsion/payment/lib/b;

    .line 152
    .line 153
    const/16 p2, 0x3ec

    .line 154
    .line 155
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    iget-object v0, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->b:Lcom/transsion/payment/lib/bean/CreateOrderRes;

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/transsion/payment/lib/bean/CreateOrderRes;->getTradingOrderId()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const-string v1, "observe() --> \u652f\u4ed8\u5931\u8d25"

    .line 166
    .line 167
    invoke-interface {p1, p2, v1, v3, v0}, Lcom/transsion/payment/lib/b;->a(Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_2
    invoke-static {p2}, Lcom/transsion/payment/lib/PaymentClientHelper;->a(Lcom/transsion/payment/lib/PaymentClientHelper;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    new-instance p2, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string p1, " --> processing--> paynicorn result --> \u8f6e\u8be2Paynicorn\u652f\u4ed8\u7ed3\u679c ...."

    .line 184
    .line 185
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {v0, p1}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->a:Lcom/transsion/payment/lib/b;

    .line 196
    .line 197
    const/16 p2, 0x3eb

    .line 198
    .line 199
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    iget-object v0, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->b:Lcom/transsion/payment/lib/bean/CreateOrderRes;

    .line 204
    .line 205
    invoke-virtual {v0}, Lcom/transsion/payment/lib/bean/CreateOrderRes;->getTradingOrderId()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    const-string v1, "orderCheck4Paynicorn() --> code = 400 -- \u652f\u4ed8\u672a\u5b8c\u6210"

    .line 210
    .line 211
    invoke-interface {p1, p2, v1, v3, v0}, Lcom/transsion/payment/lib/b;->a(Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_3
    iget-object p2, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->a:Lcom/transsion/payment/lib/b;

    .line 216
    .line 217
    const/16 v0, 0x3ea

    .line 218
    .line 219
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {p1}, Lcom/tn/tranpay/b;->a()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    iget-object v1, p0, Lcom/transsion/payment/lib/PaymentClientHelper$realPay$1;->b:Lcom/transsion/payment/lib/bean/CreateOrderRes;

    .line 228
    .line 229
    invoke-virtual {v1}, Lcom/transsion/payment/lib/bean/CreateOrderRes;->getTradingOrderId()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-interface {p2, v0, p1, v3, v1}, Lcom/transsion/payment/lib/b;->a(Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V

    .line 234
    .line 235
    .line 236
    :goto_1
    return-void
.end method
