.class final Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/bidding/base/AbsAdBidding;->q0(ZILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.ad.bidding.base.AbsAdBidding$innerLoadAd$2"
    f = "AbsAdBidding.kt"
    l = {
        0x2e4,
        0x319
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $fetchCount:I

.field final synthetic $onlyHi:Z

.field label:I

.field final synthetic this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;


# direct methods
.method constructor <init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;ZILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ad/bidding/base/AbsAdBidding;",
            "ZI",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->$onlyHi:Z

    .line 4
    .line 5
    iput p3, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->$fetchCount:I

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/transsion/ad/bidding/base/AbsAdBidding;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->d(Lcom/transsion/ad/bidding/base/AbsAdBidding;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final d(Lcom/transsion/ad/bidding/base/AbsAdBidding;)V
    .locals 7

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

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
    new-instance v4, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2$2$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p0, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2$2$1;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lkotlin/coroutines/Continuation;)V

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
    new-instance p1, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->$onlyHi:Z

    .line 6
    .line 7
    iget v2, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->$fetchCount:I

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;ZILkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 36
    .line 37
    iput v3, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->label:I

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->Y(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-ne p1, v0, :cond_3

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/16 v3, 0x44d

    .line 53
    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 57
    .line 58
    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 59
    .line 60
    const-string v1, "there are currently no plans available"

    .line 61
    .line 62
    invoke-direct {v0, v3, v1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 66
    .line 67
    .line 68
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 69
    .line 70
    return-object p1

    .line 71
    :cond_4
    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 72
    .line 73
    invoke-static {v1, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->O(Lcom/transsion/ad/bidding/base/AbsAdBidding;Ljava/util/List;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iget-object v4, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 78
    .line 79
    iget-boolean v5, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->$onlyHi:Z

    .line 80
    .line 81
    if-eqz v5, :cond_7

    .line 82
    .line 83
    check-cast p1, Ljava/lang/Iterable;

    .line 84
    .line 85
    new-instance v5, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_6

    .line 99
    .line 100
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    move-object v7, v6

    .line 105
    check-cast v7, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 106
    .line 107
    invoke-virtual {v7}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    sget-object v8, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_HI:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    .line 112
    .line 113
    invoke-virtual {v8}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->getValue()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-eqz v7, :cond_5

    .line 122
    .line 123
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_6
    move-object p1, v5

    .line 128
    :cond_7
    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->c(Ljava/lang/Object;)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {v4, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->P(Lcom/transsion/ad/bidding/base/AbsAdBidding;Ljava/util/List;)V

    .line 133
    .line 134
    .line 135
    iget-object v5, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 136
    .line 137
    invoke-virtual {v5}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iget-object v4, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 142
    .line 143
    invoke-virtual {v4}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->d0()Ljava/util/Map;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    iget-object v6, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 148
    .line 149
    invoke-static {v6}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->J(Lcom/transsion/ad/bidding/base/AbsAdBidding;)Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    if-eqz v6, :cond_8

    .line 154
    .line 155
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    goto :goto_2

    .line 164
    :cond_8
    const/4 v6, 0x0

    .line 165
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v8, "innerLoadAd() --> \u5f00\u59cb\u52a0\u8f7d\u5e7f\u544a --> sceneId = "

    .line 171
    .line 172
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string p1, " --> ctxMap = "

    .line 179
    .line 180
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string p1, " --> \u53ef\u7528\u5e7f\u544a\u8ba1\u5212 availablePlanList?.size = "

    .line 187
    .line 188
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string p1, " --> hasHiAdPlan = "

    .line 195
    .line 196
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    const/4 v10, 0x4

    .line 207
    const/4 v11, 0x0

    .line 208
    const/4 v6, 0x3

    .line 209
    const/4 v8, 0x0

    .line 210
    const/4 v9, 0x0

    .line 211
    invoke-static/range {v5 .. v11}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 215
    .line 216
    iget v4, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->$fetchCount:I

    .line 217
    .line 218
    invoke-static {p1, v4}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->Q(Lcom/transsion/ad/bidding/base/AbsAdBidding;I)V

    .line 219
    .line 220
    .line 221
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 222
    .line 223
    invoke-static {p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->M(Lcom/transsion/ad/bidding/base/AbsAdBidding;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    const/4 v4, 0x0

    .line 228
    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 229
    .line 230
    .line 231
    if-eqz v1, :cond_9

    .line 232
    .line 233
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 234
    .line 235
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-virtual {p1, v3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->u0(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    goto :goto_3

    .line 243
    :cond_9
    iget-boolean p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->$onlyHi:Z

    .line 244
    .line 245
    if-eqz p1, :cond_a

    .line 246
    .line 247
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 248
    .line 249
    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 250
    .line 251
    const-string v1, "onlyHi == true \uff0c\u4f46\u662f\u6ca1\u6709Hi\u5e7f\u544a\u8ba1\u5212\uff0c\u4e0d\u5c55\u793a\u5e7f\u544a"

    .line 252
    .line 253
    invoke-direct {v0, v3, v1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 257
    .line 258
    .line 259
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 260
    .line 261
    return-object p1

    .line 262
    :cond_a
    :goto_3
    if-eqz v1, :cond_b

    .line 263
    .line 264
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 265
    .line 266
    invoke-static {p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->N(Lcom/transsion/ad/bidding/base/AbsAdBidding;)Landroid/os/Handler;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 271
    .line 272
    new-instance v1, Lcom/transsion/ad/bidding/base/k;

    .line 273
    .line 274
    invoke-direct {v1, v0}, Lcom/transsion/ad/bidding/base/k;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;)V

    .line 275
    .line 276
    .line 277
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 278
    .line 279
    invoke-static {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->L(Lcom/transsion/ad/bidding/base/AbsAdBidding;)J

    .line 280
    .line 281
    .line 282
    move-result-wide v2

    .line 283
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    goto :goto_5

    .line 292
    :cond_b
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 293
    .line 294
    iput v2, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->label:I

    .line 295
    .line 296
    const-string v1, "\u4ec5\u6709\u5305\u65ad\uff0c\u76f4\u63a5\u5f00\u59cb\u7ade\u4ef7"

    .line 297
    .line 298
    invoke-static {p1, v1, p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->I(Lcom/transsion/ad/bidding/base/AbsAdBidding;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    if-ne p1, v0, :cond_c

    .line 303
    .line 304
    return-object v0

    .line 305
    :cond_c
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 306
    .line 307
    :goto_5
    return-object p1
.end method
