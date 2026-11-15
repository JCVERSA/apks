.class final Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->z0()V
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
    c = "com.transsion.commercialization.task.wheel.TreasureWheelDialog$lotteryDraw$1"
    f = "TreasureWheelDialog.kt"
    l = {
        0xa6,
        0xa8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->this$0:Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;

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
    .locals 2
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
    new-instance v0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->this$0:Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;-><init>(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    const-string v0, "idempotentKey"

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    if-eq v2, v4, :cond_1

    .line 15
    .line 16
    if-ne v2, v3, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->L$1:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lcom/tn/lib/net/bean/BaseDto;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->L$0:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;

    .line 25
    .line 26
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto/16 :goto_4

    .line 33
    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->L$0:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;

    .line 45
    .line 46
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Lkotlinx/coroutines/n0;

    .line 57
    .line 58
    iget-object p1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->this$0:Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;

    .line 59
    .line 60
    :try_start_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 61
    .line 62
    sget-object v2, Lwj/h;->a:Lwj/h;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    new-instance v7, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v6, " --> lotteryDraw() --> \u8c03\u7528\u670d\u52a1\u7aef\u62bd\u5956\u63a5\u53e3"

    .line 77
    .line 78
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {v2, v6}, Lwj/h;->a(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance v2, Lcom/google/gson/JsonObject;

    .line 89
    .line 90
    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v6, "activityId"

    .line 94
    .line 95
    invoke-static {p1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->t0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;)Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    if-eqz v7, :cond_3

    .line 100
    .line 101
    invoke-virtual {v7}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;->getActivity()Lcom/transsion/bean/lottery/LotteryUserActivityInfoActivityBean;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    if-eqz v7, :cond_3

    .line 106
    .line 107
    invoke-virtual {v7}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoActivityBean;->getId()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    goto :goto_0

    .line 112
    :cond_3
    move-object v7, v5

    .line 113
    :goto_0
    invoke-virtual {v2, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v0, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    sget-object v0, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    const-string v6, "toString(...)"

    .line 126
    .line 127
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    sget-object v6, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 131
    .line 132
    const-string v7, "application/json"

    .line 133
    .line 134
    invoke-virtual {v6, v7}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-virtual {v0, v2, v6}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    invoke-static {p1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->s0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;)Lcom/transsion/commercialization/task/treasure/b;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    iput-object p1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->L$0:Ljava/lang/Object;

    .line 147
    .line 148
    iput v4, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->label:I

    .line 149
    .line 150
    const/4 v8, 0x0

    .line 151
    const/4 v11, 0x1

    .line 152
    const/4 v12, 0x0

    .line 153
    move-object v10, p0

    .line 154
    invoke-static/range {v7 .. v12}, Lcom/transsion/commercialization/task/treasure/b$a;->c(Lcom/transsion/commercialization/task/treasure/b;Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    if-ne v0, v1, :cond_4

    .line 159
    .line 160
    return-object v1

    .line 161
    :cond_4
    move-object v13, v0

    .line 162
    move-object v0, p1

    .line 163
    move-object p1, v13

    .line 164
    :goto_1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 165
    .line 166
    sget-object v2, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    check-cast v4, Lcom/transsion/bean/lottery/LotteryDrawResultEntity;

    .line 173
    .line 174
    if-eqz v4, :cond_5

    .line 175
    .line 176
    invoke-virtual {v4}, Lcom/transsion/bean/lottery/LotteryDrawResultEntity;->getResult()Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    if-eqz v4, :cond_5

    .line 181
    .line 182
    invoke-virtual {v4}, Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;->getPrice()Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceBean;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    if-eqz v4, :cond_5

    .line 187
    .line 188
    invoke-virtual {v4}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceBean;->getId()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    goto :goto_2

    .line 193
    :cond_5
    move-object v4, v5

    .line 194
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    const-string v7, "\u4e2d\u5956\u4e86 --> lotteryDraw = "

    .line 200
    .line 201
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    invoke-virtual {v2, v4}, Lcom/transsion/commercialization/pslink/a;->b(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iput-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->L$0:Ljava/lang/Object;

    .line 215
    .line 216
    iput-object p1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->L$1:Ljava/lang/Object;

    .line 217
    .line 218
    iput v3, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->label:I

    .line 219
    .line 220
    const-wide/16 v2, 0x3e8

    .line 221
    .line 222
    invoke-static {v2, v3, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    if-ne v2, v1, :cond_6

    .line 227
    .line 228
    return-object v1

    .line 229
    :cond_6
    move-object v1, v0

    .line 230
    move-object v0, p1

    .line 231
    :goto_3
    invoke-static {v1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->r0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;)Lsj/f;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    if-eqz p1, :cond_8

    .line 236
    .line 237
    iget-object p1, p1, Lsj/f;->c:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    .line 238
    .line 239
    if-eqz p1, :cond_8

    .line 240
    .line 241
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    check-cast v0, Lcom/transsion/bean/lottery/LotteryDrawResultEntity;

    .line 246
    .line 247
    if-eqz v0, :cond_7

    .line 248
    .line 249
    invoke-virtual {v0}, Lcom/transsion/bean/lottery/LotteryDrawResultEntity;->getResult()Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    :cond_7
    invoke-virtual {p1, v5}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->endIndicator(Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;)V

    .line 254
    .line 255
    .line 256
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 257
    .line 258
    :cond_8
    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    goto :goto_5

    .line 263
    :goto_4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 264
    .line 265
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    :goto_5
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$lotteryDraw$1;->this$0:Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;

    .line 274
    .line 275
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    if-nez p1, :cond_9

    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_9
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    if-eqz p1, :cond_a

    .line 287
    .line 288
    sget v1, Lcom/transsion/wrapperad/R$string;->treasure_something_went_wrong_please_retry:I

    .line 289
    .line 290
    invoke-static {p1, v1}, Landroidx/core/content/b;->getString(Landroid/content/Context;I)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    const/4 v1, 0x0

    .line 295
    new-array v1, v1, [Ljava/lang/Object;

    .line 296
    .line 297
    invoke-static {p1, v1}, Lcom/blankj/utilcode/util/ToastUtils;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    :cond_a
    invoke-static {v0}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->r0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;)Lsj/f;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    if-eqz p1, :cond_b

    .line 305
    .line 306
    iget-object p1, p1, Lsj/f;->c:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    .line 307
    .line 308
    if-eqz p1, :cond_b

    .line 309
    .line 310
    invoke-virtual {p1}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->resetIndicator()V

    .line 311
    .line 312
    .line 313
    :cond_b
    :goto_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 314
    .line 315
    return-object p1
.end method
