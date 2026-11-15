.class final Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->H0()V
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
    c = "com.transsion.payment.lib.dialog.PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1"
    f = "PaynicornDuringThePaymentDialog.kt"
    l = {
        0xb3
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;


# direct methods
.method constructor <init>(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;->this$0:Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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
    new-instance p1, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;->this$0:Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;-><init>(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;->L$0:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;

    .line 18
    .line 19
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto/16 :goto_8

    .line 25
    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;->this$0:Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;

    .line 38
    .line 39
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->x0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;)Lcom/transsion/payment/lib/PaymentService;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {p1}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->w0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;)Lcom/transsion/payment/lib/bean/CreateOrderRes;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    if-eqz v6, :cond_2

    .line 50
    .line 51
    invoke-virtual {v6}, Lcom/transsion/payment/lib/bean/CreateOrderRes;->getTradingOrderId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move-object v6, v5

    .line 57
    :goto_0
    iput-object p1, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;->L$0:Ljava/lang/Object;

    .line 58
    .line 59
    iput v2, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;->label:I

    .line 60
    .line 61
    invoke-virtual {v1, v6, p0}, Lcom/transsion/payment/lib/PaymentService;->e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-ne v1, v0, :cond_3

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_3
    move-object v0, p1

    .line 69
    move-object p1, v1

    .line 70
    :goto_1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 71
    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    move-object v1, v5

    .line 80
    :goto_2
    if-eqz v1, :cond_d

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    const/16 v6, 0x30

    .line 87
    .line 88
    if-eq v2, v6, :cond_b

    .line 89
    .line 90
    const v6, 0xc934

    .line 91
    .line 92
    .line 93
    if-eq v2, v6, :cond_7

    .line 94
    .line 95
    const v6, 0xccf5

    .line 96
    .line 97
    .line 98
    if-eq v2, v6, :cond_5

    .line 99
    .line 100
    goto/16 :goto_3

    .line 101
    .line 102
    :cond_5
    const-string v2, "500"

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_6

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_6
    const-string p1, "orderCheck4Paynicorn() --> 500 --> \u670d\u52a1\u5668\u5185\u90e8\u9519\u8bef"

    .line 112
    .line 113
    const/16 v1, 0x3ed

    .line 114
    .line 115
    invoke-static {v0, v1, p1}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->z0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;ILjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_7

    .line 119
    .line 120
    :cond_7
    const-string v2, "400"

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-nez v1, :cond_8

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_8
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getReason()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const-string v2, "PAY_PROCESSING"

    .line 134
    .line 135
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_9

    .line 140
    .line 141
    const-string p1, "orderCheck4Paynicorn() --> code = 400 -- \u652f\u4ed8\u672a\u5b8c\u6210"

    .line 142
    .line 143
    const/16 v1, 0x3eb

    .line 144
    .line 145
    invoke-static {v0, p1, v1}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->C0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;Ljava/lang/String;I)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_7

    .line 149
    .line 150
    :cond_9
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getReason()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    const-string v2, "PAY_FAILED"

    .line 155
    .line 156
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_a

    .line 161
    .line 162
    const-string p1, "orderCheck4Paynicorn() --> 400 --> \u652f\u4ed8\u5931\u8d25: \u5c31\u662f\u4ed8\u94b1\u4e86\uff0c\u4f46\u662f\u7b2c\u4e09\u65b9\u6e20\u9053\u6ca1\u6709\u6210\u529f"

    .line 163
    .line 164
    const/16 v1, 0x3ec

    .line 165
    .line 166
    invoke-static {v0, v1, p1}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->z0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;ILjava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto :goto_7

    .line 170
    :cond_a
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getReason()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v2, "orderCheck4Paynicorn() --> code = 400 -- reason = "

    .line 180
    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-static {v0, p1, v4, v3, v5}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->Q0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;Ljava/lang/String;IILjava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    goto :goto_7

    .line 195
    :cond_b
    const-string v2, "0"

    .line 196
    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-nez v1, :cond_c

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_c
    invoke-static {v0, p1}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->A0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;Lcom/tn/lib/net/bean/BaseDto;)V

    .line 205
    .line 206
    .line 207
    goto :goto_7

    .line 208
    :cond_d
    :goto_3
    if-eqz p1, :cond_e

    .line 209
    .line 210
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    goto :goto_4

    .line 215
    :cond_e
    move-object v1, v5

    .line 216
    :goto_4
    if-eqz p1, :cond_f

    .line 217
    .line 218
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    goto :goto_5

    .line 223
    :cond_f
    move-object v2, v5

    .line 224
    :goto_5
    if-eqz p1, :cond_10

    .line 225
    .line 226
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getReason()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    goto :goto_6

    .line 231
    :cond_10
    move-object p1, v5

    .line 232
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    const-string v7, "orderCheck4Paynicorn() --> code = "

    .line 238
    .line 239
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v1, " -- msg = "

    .line 246
    .line 247
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v1, " -- reason = "

    .line 254
    .line 255
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-static {v0, p1, v4, v3, v5}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->Q0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;Ljava/lang/String;IILjava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    :goto_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 269
    .line 270
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    goto :goto_9

    .line 275
    :goto_8
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 276
    .line 277
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    :goto_9
    iget-object v0, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;->this$0:Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;

    .line 286
    .line 287
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    if-nez p1, :cond_11

    .line 292
    .line 293
    goto :goto_a

    .line 294
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .line 298
    .line 299
    const-string v2, "orderCheck4Paynicorn() --> getOrElse() --> it = "

    .line 300
    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    invoke-static {v0, p1, v4, v3, v5}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->Q0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;Ljava/lang/String;IILjava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    :goto_a
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 315
    .line 316
    return-object p1
.end method
