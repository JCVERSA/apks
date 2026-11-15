.class final Lcom/transsion/rewardscenter/model/RewardsCenterModel$fetchRewardsCenterData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/rewardscenter/model/RewardsCenterModel;->i(Lkotlin/jvm/functions/Function0;)V
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
    c = "com.transsion.rewardscenter.model.RewardsCenterModel$fetchRewardsCenterData$1"
    f = "RewardsCenterModel.kt"
    l = {
        0x5d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/rewardscenter/model/RewardsCenterModel;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/transsion/rewardscenter/model/RewardsCenterModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/transsion/rewardscenter/model/RewardsCenterModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/rewardscenter/model/RewardsCenterModel$fetchRewardsCenterData$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$fetchRewardsCenterData$1;->$callback:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$fetchRewardsCenterData$1;->this$0:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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
    new-instance v0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$fetchRewardsCenterData$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$fetchRewardsCenterData$1;->$callback:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$fetchRewardsCenterData$1;->this$0:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$fetchRewardsCenterData$1;-><init>(Lkotlin/jvm/functions/Function0;Lcom/transsion/rewardscenter/model/RewardsCenterModel;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$fetchRewardsCenterData$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$fetchRewardsCenterData$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$fetchRewardsCenterData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/rewardscenter/model/RewardsCenterModel$fetchRewardsCenterData$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$fetchRewardsCenterData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v2, v1, Lcom/transsion/rewardscenter/model/RewardsCenterModel$fetchRewardsCenterData$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    move-object/from16 v2, p1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, v1, Lcom/transsion/rewardscenter/model/RewardsCenterModel$fetchRewardsCenterData$1;->L$0:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v2, Lkotlinx/coroutines/n0;

    .line 36
    .line 37
    iget-object v2, v1, Lcom/transsion/rewardscenter/model/RewardsCenterModel$fetchRewardsCenterData$1;->this$0:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    .line 38
    .line 39
    :try_start_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 40
    .line 41
    invoke-static {v2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->d(Lcom/transsion/rewardscenter/model/RewardsCenterModel;)Lxo/a;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iput v3, v1, Lcom/transsion/rewardscenter/model/RewardsCenterModel$fetchRewardsCenterData$1;->label:I

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-static {v2, v4, v1, v3, v4}, Lxo/a$a;->d(Lxo/a;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-ne v2, v0, :cond_2

    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_2
    :goto_0
    check-cast v2, Lcom/tn/lib/net/bean/BaseDto;

    .line 56
    .line 57
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    goto :goto_2

    .line 62
    :goto_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 63
    .line 64
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :goto_2
    iget-object v2, v1, Lcom/transsion/rewardscenter/model/RewardsCenterModel$fetchRewardsCenterData$1;->this$0:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    .line 73
    .line 74
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    move-object v3, v0

    .line 81
    check-cast v3, Lcom/tn/lib/net/bean/BaseDto;

    .line 82
    .line 83
    invoke-static {v3}, Lcom/transsion/rewardscenter/utils/n;->a(Lcom/tn/lib/net/bean/BaseDto;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_3

    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Lcom/transsion/rewardscenterapi/RewardsCenterData;

    .line 94
    .line 95
    if-eqz v3, :cond_4

    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->p()Landroidx/lifecycle/b0;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/RewardsCenterData;->getLottery()Lcom/transsion/rewardscenterapi/Lottery;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v4, v5}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->x()Landroidx/lifecycle/b0;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/RewardsCenterData;->getUser()Lcom/transsion/rewardscenterapi/User;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-virtual {v4, v5}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->r()Landroidx/lifecycle/b0;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/RewardsCenterData;->getRedeem()Lcom/transsion/rewardscenterapi/Redeem;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-virtual {v4, v5}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->v()Landroidx/lifecycle/b0;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/RewardsCenterData;->getTask()Lcom/transsion/rewardscenterapi/Task;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v4, v5}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->t()Landroidx/lifecycle/b0;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v3}, Lcom/transsion/rewardscenterapi/RewardsCenterData;->getRule()Lcom/transsion/rewardscenterapi/Rule;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v2, v4}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 153
    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v4, "fetchRewardsCenterData onSuccess: "

    .line 160
    .line 161
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    const/4 v9, 0x4

    .line 172
    const/4 v10, 0x0

    .line 173
    const-string v6, "RewardsCenter"

    .line 174
    .line 175
    const/4 v8, 0x0

    .line 176
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_3
    sget-object v11, Lwf/a;->a:Lwf/a$a;

    .line 181
    .line 182
    invoke-virtual {v3}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v3}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    const-string v5, "fetchRewardsCenterData onFailure: "

    .line 196
    .line 197
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v2, ", "

    .line 204
    .line 205
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v13

    .line 215
    const/4 v15, 0x4

    .line 216
    const/16 v16, 0x0

    .line 217
    .line 218
    const-string v12, "RewardsCenter"

    .line 219
    .line 220
    const/4 v14, 0x0

    .line 221
    invoke-static/range {v11 .. v16}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    :cond_4
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    if-eqz v0, :cond_5

    .line 229
    .line 230
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    const-string v4, "fetchRewardsCenterData error: "

    .line 242
    .line 243
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    const/4 v6, 0x4

    .line 254
    const/4 v7, 0x0

    .line 255
    const-string v3, "RewardsCenter"

    .line 256
    .line 257
    const/4 v5, 0x0

    .line 258
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    :cond_5
    iget-object v0, v1, Lcom/transsion/rewardscenter/model/RewardsCenterModel$fetchRewardsCenterData$1;->$callback:Lkotlin/jvm/functions/Function0;

    .line 262
    .line 263
    if-eqz v0, :cond_6

    .line 264
    .line 265
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    :cond_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 269
    .line 270
    return-object v0
.end method
