.class final Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/order/PayLoadingVM;->i(Ljava/lang/String;Ljava/lang/String;Z)V
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
    c = "com.transsion.shorttv.order.PayLoadingVM$checkPayOrderId$1"
    f = "PayLoadingVM.kt"
    l = {
        0x47
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isDebug:Z

.field final synthetic $projectName:Ljava/lang/String;

.field final synthetic $tradingOrderId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/order/PayLoadingVM;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/shorttv/order/PayLoadingVM;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/transsion/shorttv/order/PayLoadingVM;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->$tradingOrderId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->$projectName:Ljava/lang/String;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->$isDebug:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->this$0:Lcom/transsion/shorttv/order/PayLoadingVM;

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
    .locals 7
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
    new-instance v6, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->$tradingOrderId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->$projectName:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->$isDebug:Z

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->this$0:Lcom/transsion/shorttv/order/PayLoadingVM;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/shorttv/order/PayLoadingVM;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v6, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const-string v3, ""

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->Z$0:Z

    .line 15
    .line 16
    iget-object v1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->L$2:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lcom/transsion/shorttv/order/PayLoadingVM;

    .line 19
    .line 20
    iget-object v4, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->L$1:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v4, Ljava/lang/String;

    .line 23
    .line 24
    iget-object v5, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->L$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v5, Ljava/lang/String;

    .line 27
    .line 28
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    move v9, v0

    .line 32
    move-object v8, v4

    .line 33
    move-object v7, v5

    .line 34
    :goto_0
    move-object v4, v1

    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto/16 :goto_12

    .line 38
    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p1, Lkotlinx/coroutines/n0;

    .line 53
    .line 54
    iget-object v5, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->$tradingOrderId:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v4, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->$projectName:Ljava/lang/String;

    .line 57
    .line 58
    iget-boolean p1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->$isDebug:Z

    .line 59
    .line 60
    iget-object v1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->this$0:Lcom/transsion/shorttv/order/PayLoadingVM;

    .line 61
    .line 62
    :try_start_1
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 63
    .line 64
    sget-object v6, Lcom/transsion/shorttv/order/g;->a:Lcom/transsion/shorttv/order/g;

    .line 65
    .line 66
    iput-object v5, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->L$0:Ljava/lang/Object;

    .line 67
    .line 68
    iput-object v4, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->L$1:Ljava/lang/Object;

    .line 69
    .line 70
    iput-object v1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->L$2:Ljava/lang/Object;

    .line 71
    .line 72
    iput-boolean p1, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->Z$0:Z

    .line 73
    .line 74
    iput v2, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->label:I

    .line 75
    .line 76
    invoke-virtual {v6, v5, v4, p1, p0}, Lcom/transsion/shorttv/order/g;->c(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    if-ne v6, v0, :cond_2

    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_2
    move v9, p1

    .line 84
    move-object v8, v4

    .line 85
    move-object v7, v5

    .line 86
    move-object p1, v6

    .line 87
    goto :goto_0

    .line 88
    :goto_1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;

    .line 95
    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->getOrderStatus()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    invoke-static {v0}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    goto :goto_2

    .line 109
    :cond_3
    const/4 v0, 0x0

    .line 110
    :goto_2
    if-nez v0, :cond_4

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_11

    .line 118
    .line 119
    :goto_3
    if-nez v0, :cond_5

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eq v1, v2, :cond_11

    .line 127
    .line 128
    :goto_4
    if-nez v0, :cond_6

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    const/4 v2, 0x4

    .line 136
    if-ne v1, v2, :cond_7

    .line 137
    .line 138
    goto/16 :goto_c

    .line 139
    .line 140
    :cond_7
    :goto_5
    if-nez v0, :cond_8

    .line 141
    .line 142
    goto :goto_6

    .line 143
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    const/4 v2, 0x2

    .line 148
    if-ne v1, v2, :cond_9

    .line 149
    .line 150
    invoke-static {v4}, Lcom/transsion/shorttv/order/PayLoadingVM;->d(Lcom/transsion/shorttv/order/PayLoadingVM;)Landroidx/lifecycle/b0;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_11

    .line 162
    .line 163
    :cond_9
    :goto_6
    if-nez v0, :cond_a

    .line 164
    .line 165
    goto :goto_7

    .line 166
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    const/4 v2, 0x3

    .line 171
    if-eq v1, v2, :cond_c

    .line 172
    .line 173
    :goto_7
    if-nez v0, :cond_b

    .line 174
    .line 175
    goto/16 :goto_11

    .line 176
    .line 177
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    const/4 v1, 0x5

    .line 182
    if-ne v0, v1, :cond_16

    .line 183
    .line 184
    :cond_c
    invoke-static {v4}, Lcom/transsion/shorttv/order/PayLoadingVM;->f(Lcom/transsion/shorttv/order/PayLoadingVM;)Landroidx/lifecycle/b0;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    check-cast v1, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;

    .line 193
    .line 194
    if-eqz v1, :cond_e

    .line 195
    .line 196
    invoke-virtual {v1}, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->getOrderStatus()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    if-nez v1, :cond_d

    .line 201
    .line 202
    goto :goto_8

    .line 203
    :cond_d
    move-object v6, v1

    .line 204
    goto :goto_9

    .line 205
    :cond_e
    :goto_8
    move-object v6, v3

    .line 206
    :goto_9
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    check-cast p1, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;

    .line 211
    .line 212
    if-eqz p1, :cond_10

    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->getDescription()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    if-nez p1, :cond_f

    .line 219
    .line 220
    goto :goto_a

    .line 221
    :cond_f
    move-object v5, p1

    .line 222
    goto :goto_b

    .line 223
    :cond_10
    :goto_a
    move-object v5, v3

    .line 224
    :goto_b
    new-instance p1, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;

    .line 225
    .line 226
    const/4 v8, 0x4

    .line 227
    const/4 v9, 0x0

    .line 228
    const/4 v7, 0x0

    .line 229
    move-object v4, p1

    .line 230
    invoke-direct/range {v4 .. v9}, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    goto :goto_11

    .line 237
    :cond_11
    :goto_c
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    check-cast v0, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;

    .line 242
    .line 243
    if-eqz v0, :cond_13

    .line 244
    .line 245
    invoke-virtual {v0}, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->getOrderStatus()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    if-nez v0, :cond_12

    .line 250
    .line 251
    goto :goto_d

    .line 252
    :cond_12
    move-object v5, v0

    .line 253
    goto :goto_e

    .line 254
    :cond_13
    :goto_d
    move-object v5, v3

    .line 255
    :goto_e
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    check-cast p1, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;

    .line 260
    .line 261
    if-eqz p1, :cond_15

    .line 262
    .line 263
    invoke-virtual {p1}, Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;->getDescription()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    if-nez p1, :cond_14

    .line 268
    .line 269
    goto :goto_f

    .line 270
    :cond_14
    move-object v6, p1

    .line 271
    goto :goto_10

    .line 272
    :cond_15
    :goto_f
    move-object v6, v3

    .line 273
    :goto_10
    invoke-static/range {v4 .. v9}, Lcom/transsion/shorttv/order/PayLoadingVM;->g(Lcom/transsion/shorttv/order/PayLoadingVM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 274
    .line 275
    .line 276
    :cond_16
    :goto_11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 277
    .line 278
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    goto :goto_13

    .line 283
    :goto_12
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 284
    .line 285
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    :goto_13
    iget-object v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;->this$0:Lcom/transsion/shorttv/order/PayLoadingVM;

    .line 294
    .line 295
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    if-nez p1, :cond_17

    .line 300
    .line 301
    goto :goto_15

    .line 302
    :cond_17
    instance-of v1, p1, Lretrofit2/HttpException;

    .line 303
    .line 304
    if-eqz v1, :cond_18

    .line 305
    .line 306
    sget-object v1, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;->Companion:Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean$a;

    .line 307
    .line 308
    check-cast p1, Lretrofit2/HttpException;

    .line 309
    .line 310
    invoke-virtual {v1, p1}, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean$a;->a(Lretrofit2/HttpException;)Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    goto :goto_14

    .line 315
    :cond_18
    new-instance v1, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;

    .line 316
    .line 317
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    if-nez p1, :cond_19

    .line 322
    .line 323
    move-object p1, v3

    .line 324
    :cond_19
    const-string v2, "-1"

    .line 325
    .line 326
    invoke-direct {v1, p1, v2, v3}, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    move-object p1, v1

    .line 330
    :goto_14
    invoke-static {v0}, Lcom/transsion/shorttv/order/PayLoadingVM;->f(Lcom/transsion/shorttv/order/PayLoadingVM;)Landroidx/lifecycle/b0;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    :goto_15
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 338
    .line 339
    return-object p1
.end method
