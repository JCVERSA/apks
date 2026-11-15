.class final Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;->v0()V
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
    c = "com.transsion.commercialization.task.treasure.CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1"
    f = "CheckLotteryLoadingDialog.kt"
    l = {
        0x45
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;->this$0:Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;

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
    new-instance p1, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;->this$0:Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;-><init>(Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;->label:I

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
    iget-object v0, p0, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;

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
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;->this$0:Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;

    .line 35
    .line 36
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;->r0(Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;)Lcom/transsion/commercialization/task/treasure/b;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {p1}, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;->q0(Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-static {p1}, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;->s0(Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    iput-object p1, p0, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    iput v2, p0, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;->label:I

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    const/4 v8, 0x1

    .line 56
    const/4 v9, 0x0

    .line 57
    move-object v7, p0

    .line 58
    invoke-static/range {v3 .. v9}, Lcom/transsion/commercialization/task/treasure/b$a;->a(Lcom/transsion/commercialization/task/treasure/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-ne v1, v0, :cond_2

    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_2
    move-object v0, p1

    .line 66
    move-object p1, v1

    .line 67
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;->getUserLottery()Lcom/transsion/bean/lottery/LotteryUserActivityInfoUserLotteryBean;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoUserLotteryBean;->getTodayRemain()Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    if-eqz v1, :cond_3

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    const/4 v1, 0x0

    .line 95
    :goto_1
    if-lt v1, v2, :cond_4

    .line 96
    .line 97
    new-instance v1, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;

    .line 98
    .line 99
    invoke-direct {v1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, p1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->D0(Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;)Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    const-string v3, "WheelViewDialog"

    .line 111
    .line 112
    invoke-virtual {p1, v1, v3}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_4
    sget-object p1, Lwj/h;->a:Lwj/h;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v1, " --> getLotteryUserActivityInfo() --> \u5f53\u524d\u6ca1\u6709\u62bd\u5956\u6b21\u6570\u4e86"

    .line 131
    .line 132
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {p1, v1}, Lwj/h;->b(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v0}, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;->t0(Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;)Ljava/lang/Boolean;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-eqz p1, :cond_5

    .line 155
    .line 156
    sget p1, Lcom/transsion/commercialization/R$string;->daily_spin_limit_reached:I

    .line 157
    .line 158
    invoke-static {p1}, Lcom/blankj/utilcode/util/ToastUtils;->r(I)V

    .line 159
    .line 160
    .line 161
    :cond_5
    :goto_2
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 162
    .line 163
    .line 164
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 165
    .line 166
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    goto :goto_4

    .line 171
    :goto_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 172
    .line 173
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    :goto_4
    iget-object v0, p0, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1;->this$0:Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;

    .line 182
    .line 183
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    if-nez p1, :cond_6

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_6
    sget-object v1, Lwj/h;->a:Lwj/h;

    .line 191
    .line 192
    invoke-virtual {v0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v3, " --> getLotteryUserActivityInfo() ---> getOrElse() --> it = "

    .line 205
    .line 206
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-virtual {v1, v3}, Lwj/h;->b(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-static {v0}, Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;->t0(Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;)Ljava/lang/Boolean;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    if-eqz v1, :cond_9

    .line 232
    .line 233
    instance-of v1, p1, Lretrofit2/HttpException;

    .line 234
    .line 235
    if-eqz v1, :cond_9

    .line 236
    .line 237
    sget-object v1, Lcom/transsion/payment/lib/bean/HttpErrorBodyBean;->Companion:Lcom/transsion/payment/lib/bean/HttpErrorBodyBean$a;

    .line 238
    .line 239
    check-cast p1, Lretrofit2/HttpException;

    .line 240
    .line 241
    invoke-virtual {v1, p1}, Lcom/transsion/payment/lib/bean/HttpErrorBodyBean$a;->a(Lretrofit2/HttpException;)Lcom/transsion/payment/lib/bean/HttpErrorBodyBean;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    if-eqz p1, :cond_7

    .line 246
    .line 247
    invoke-virtual {p1}, Lcom/transsion/payment/lib/bean/HttpErrorBodyBean;->getMessage()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    if-nez p1, :cond_8

    .line 252
    .line 253
    :cond_7
    const-string p1, ""

    .line 254
    .line 255
    :cond_8
    invoke-static {p1}, Lcom/transsion/core/utils/ToastUtil;->f(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    :cond_9
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 259
    .line 260
    .line 261
    :goto_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 262
    .line 263
    return-object p1
.end method
