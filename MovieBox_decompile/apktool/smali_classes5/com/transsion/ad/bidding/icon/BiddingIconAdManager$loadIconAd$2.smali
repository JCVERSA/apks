.class final Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->R(Ljava/lang/String;ZILoh/a;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsion.ad.bidding.icon.BiddingIconAdManager$loadIconAd$2"
    f = "BiddingIconAdManager.kt"
    l = {
        0x162,
        0x174
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $ctxMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $isFilteringInstalled:Z

.field final synthetic $listener:Loh/a;

.field final synthetic $sceneId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Loh/a;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;",
            "Loh/a;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$sceneId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$ctxMap:Ljava/util/Map;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->this$0:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$listener:Loh/a;

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$isFilteringInstalled:Z

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
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
    new-instance p1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$sceneId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$ctxMap:Ljava/util/Map;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->this$0:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$listener:Loh/a;

    .line 10
    .line 11
    iget-boolean v5, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$isFilteringInstalled:Z

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Loh/a;ZLkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->label:I

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
    goto/16 :goto_2

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
    sget-object p1, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

    .line 36
    .line 37
    iget-object v4, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$sceneId:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$ctxMap:Ljava/util/Map;

    .line 40
    .line 41
    if-nez v1, :cond_3

    .line 42
    .line 43
    sget-object v1, Lcom/transsion/ad/strategy/c;->a:Lcom/transsion/ad/strategy/c;

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    invoke-virtual {v1, v5}, Lcom/transsion/ad/strategy/c;->a(Ljava/lang/String;)Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :cond_3
    move-object v5, v1

    .line 51
    const/4 v1, 0x0

    .line 52
    new-array v7, v1, [Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    .line 53
    .line 54
    iput v3, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->label:I

    .line 55
    .line 56
    const/4 v6, 0x0

    .line 57
    const/4 v9, 0x4

    .line 58
    const/4 v10, 0x0

    .line 59
    move-object v3, p1

    .line 60
    move-object v8, p0

    .line 61
    invoke-static/range {v3 .. v10}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->e(Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-ne p1, v0, :cond_4

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_4
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 69
    .line 70
    sget-object v3, Lxh/a;->a:Lxh/a;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->this$0:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    .line 73
    .line 74
    invoke-static {v1}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->B(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iget-object v4, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->this$0:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    .line 79
    .line 80
    invoke-virtual {v4}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    iget-object v5, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$ctxMap:Ljava/util/Map;

    .line 85
    .line 86
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    move-object v7, p1

    .line 91
    check-cast v7, Ljava/lang/Iterable;

    .line 92
    .line 93
    new-instance v8, Ljava/util/ArrayList;

    .line 94
    .line 95
    const/16 v9, 0xa

    .line 96
    .line 97
    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    if-eqz v9, :cond_5

    .line 113
    .line 114
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    check-cast v9, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 119
    .line 120
    invoke-virtual {v9}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, " --> sceneId = "

    .line 137
    .line 138
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v4, " --> ctxMap: "

    .line 145
    .line 146
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v4, ", \u53ef\u7528\u5e7f\u544a\u8ba1\u5212\uff1a"

    .line 153
    .line 154
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v4, " --> "

    .line 161
    .line 162
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    const/4 v7, 0x2

    .line 173
    const/4 v8, 0x0

    .line 174
    const/4 v5, 0x0

    .line 175
    const/4 v6, 0x0

    .line 176
    invoke-static/range {v3 .. v8}, Lxh/a;->g(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-eqz v3, :cond_6

    .line 184
    .line 185
    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->this$0:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    .line 186
    .line 187
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$listener:Loh/a;

    .line 188
    .line 189
    invoke-static {p1}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->B(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    iget-object v3, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$sceneId:Ljava/lang/String;

    .line 194
    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v1, " --> there are currently no plans available"

    .line 210
    .line 211
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-static {p1, v0, v1}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->D(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Loh/a;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 222
    .line 223
    return-object p1

    .line 224
    :cond_6
    iget-object v1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->this$0:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    .line 225
    .line 226
    iget-object v3, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$sceneId:Ljava/lang/String;

    .line 227
    .line 228
    iget-boolean v4, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$isFilteringInstalled:Z

    .line 229
    .line 230
    iput v2, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->label:I

    .line 231
    .line 232
    invoke-static {v1, v3, v4, p1, p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->C(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Ljava/lang/String;ZLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    if-ne p1, v0, :cond_7

    .line 237
    .line 238
    return-object v0

    .line 239
    :cond_7
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 240
    .line 241
    return-object p1
.end method
