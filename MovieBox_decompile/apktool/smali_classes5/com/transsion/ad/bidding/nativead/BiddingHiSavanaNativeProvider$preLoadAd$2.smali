.class final Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->s(Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsion.ad.bidding.nativead.BiddingHiSavanaNativeProvider$preLoadAd$2"
    f = "BiddingHiSavanaNativeProvider.kt"
    l = {
        0xeb
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

.field final synthetic $sceneId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->$sceneId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->$ctxMap:Ljava/util/Map;

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
    new-instance p1, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->$sceneId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->$ctxMap:Ljava/util/Map;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;-><init>(Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v3, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

    .line 29
    .line 30
    iget-object v5, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->$sceneId:Ljava/lang/String;

    .line 31
    .line 32
    sget-object p1, Lcom/transsion/ad/strategy/c;->a:Lcom/transsion/ad/strategy/c;

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Lcom/transsion/ad/strategy/c;->a(Ljava/lang/String;)Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    const/4 p1, 0x0

    .line 39
    new-array v8, p1, [Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    .line 40
    .line 41
    iput v3, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->label:I

    .line 42
    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v10, 0x4

    .line 45
    const/4 v11, 0x0

    .line 46
    move-object v9, p0

    .line 47
    invoke-static/range {v4 .. v11}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->e(Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-ne p1, v0, :cond_2

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 55
    .line 56
    sget-object v4, Lxh/a;->a:Lxh/a;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->c(Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->c(Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->$sceneId:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v6, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->$ctxMap:Ljava/util/Map;

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    move-object v11, p1

    .line 79
    check-cast v11, Ljava/lang/Iterable;

    .line 80
    .line 81
    new-instance v8, Ljava/util/ArrayList;

    .line 82
    .line 83
    const/16 v9, 0xa

    .line 84
    .line 85
    invoke-static {v11, v9}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v10

    .line 100
    if-eqz v10, :cond_3

    .line 101
    .line 102
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    check-cast v10, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 107
    .line 108
    invoke-virtual {v10}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    invoke-interface {v8, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v0, " --> sceneId = "

    .line 125
    .line 126
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v0, " preload --> ctxMap: "

    .line 133
    .line 134
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v0, ", \u53ef\u7528\u5e7f\u544a\u8ba1\u5212\uff1a"

    .line 141
    .line 142
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v0, " --> "

    .line 149
    .line 150
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    const/4 v9, 0x4

    .line 161
    const/4 v10, 0x0

    .line 162
    const/4 v7, 0x0

    .line 163
    const/4 v8, 0x0

    .line 164
    invoke-static/range {v4 .. v10}, Lxh/a;->m(Lxh/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_4

    .line 172
    .line 173
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 174
    .line 175
    return-object p1

    .line 176
    :cond_4
    instance-of p1, v11, Ljava/util/Collection;

    .line 177
    .line 178
    if-eqz p1, :cond_5

    .line 179
    .line 180
    move-object p1, v11

    .line 181
    check-cast p1, Ljava/util/Collection;

    .line 182
    .line 183
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    if-eqz p1, :cond_5

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_5
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_7

    .line 199
    .line 200
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 205
    .line 206
    sget-object v1, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    .line 207
    .line 208
    invoke-virtual {v1, v0}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->d(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_6

    .line 213
    .line 214
    sget-object v4, Lxh/a;->a:Lxh/a;

    .line 215
    .line 216
    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;

    .line 217
    .line 218
    invoke-static {p1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->c(Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;

    .line 223
    .line 224
    invoke-static {v0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->e(Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string p1, " --> preLoadAd() --> "

    .line 237
    .line 238
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    const/4 v9, 0x4

    .line 249
    const/4 v10, 0x0

    .line 250
    const-string v5, "ad_n"

    .line 251
    .line 252
    const/4 v7, 0x0

    .line 253
    const/4 v8, 0x0

    .line 254
    invoke-static/range {v4 .. v10}, Lxh/a;->m(Lxh/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;

    .line 258
    .line 259
    invoke-static {p1, v2, v3, v2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->p(Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;Ljava/lang/String;ILjava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 263
    .line 264
    return-object p1

    .line 265
    :cond_7
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 266
    .line 267
    return-object p1
.end method
