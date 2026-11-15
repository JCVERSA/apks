.class final Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->q(Ljava/lang/String;ILjava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsion.ad.bidding.nativead.BiddingHiSspNativeProvider$preLoadAd$2"
    f = "BiddingHiSspNativeProvider.kt"
    l = {
        0x105
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

.field final synthetic $reqCount:I

.field final synthetic $sceneId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;Ljava/util/Map;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->$sceneId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->$ctxMap:Ljava/util/Map;

    .line 6
    .line 7
    iput p4, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->$reqCount:I

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
    .locals 6
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
    new-instance p1, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->$sceneId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->$ctxMap:Ljava/util/Map;

    .line 8
    .line 9
    iget v4, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->$reqCount:I

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;-><init>(Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;Ljava/util/Map;ILkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->label:I

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
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->$sceneId:Ljava/lang/String;

    .line 30
    .line 31
    sget-object v3, Lcom/transsion/ad/strategy/c;->a:Lcom/transsion/ad/strategy/c;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-virtual {v3, v4}, Lcom/transsion/ad/strategy/c;->a(Ljava/lang/String;)Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const/4 v4, 0x0

    .line 39
    new-array v5, v4, [Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    .line 40
    .line 41
    iput v2, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->label:I

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    const/4 v7, 0x4

    .line 45
    const/4 v8, 0x0

    .line 46
    move-object v2, p1

    .line 47
    move-object v6, p0

    .line 48
    invoke-static/range {v1 .. v8}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->e(Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-ne p1, v0, :cond_2

    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 56
    .line 57
    sget-object v0, Lxh/a;->a:Lxh/a;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    .line 60
    .line 61
    invoke-static {v1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->d(Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    .line 66
    .line 67
    invoke-static {v2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->d(Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-object v3, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->$sceneId:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v4, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->$ctxMap:Ljava/util/Map;

    .line 74
    .line 75
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    move-object v7, p1

    .line 80
    check-cast v7, Ljava/lang/Iterable;

    .line 81
    .line 82
    new-instance v6, Ljava/util/ArrayList;

    .line 83
    .line 84
    const/16 v8, 0xa

    .line 85
    .line 86
    invoke-static {v7, v8}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    if-eqz v9, :cond_3

    .line 102
    .line 103
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    check-cast v9, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 108
    .line 109
    invoke-virtual {v9}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    invoke-interface {v6, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v2, " --> sceneId = "

    .line 126
    .line 127
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v2, " preload --> ctxMap: "

    .line 134
    .line 135
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v2, ", \u53ef\u7528\u5e7f\u544a\u8ba1\u5212\uff1a"

    .line 142
    .line 143
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v2, " --> "

    .line 150
    .line 151
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    const/4 v5, 0x4

    .line 162
    const/4 v6, 0x0

    .line 163
    const/4 v3, 0x0

    .line 164
    const/4 v4, 0x0

    .line 165
    invoke-static/range {v0 .. v6}, Lxh/a;->m(Lxh/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_4

    .line 173
    .line 174
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 175
    .line 176
    return-object p1

    .line 177
    :cond_4
    instance-of p1, v7, Ljava/util/Collection;

    .line 178
    .line 179
    if-eqz p1, :cond_5

    .line 180
    .line 181
    move-object p1, v7

    .line 182
    check-cast p1, Ljava/util/Collection;

    .line 183
    .line 184
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    if-eqz p1, :cond_5

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_5
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_8

    .line 200
    .line 201
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 206
    .line 207
    sget-object v1, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    .line 208
    .line 209
    invoke-virtual {v1, v0}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->d(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_6

    .line 214
    .line 215
    iget p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->$reqCount:I

    .line 216
    .line 217
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    .line 218
    .line 219
    invoke-static {v0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->c(Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;)I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-le p1, v0, :cond_7

    .line 224
    .line 225
    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    .line 226
    .line 227
    iget v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->$reqCount:I

    .line 228
    .line 229
    invoke-static {p1, v0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->g(Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;I)V

    .line 230
    .line 231
    .line 232
    :cond_7
    sget-object v1, Lxh/a;->a:Lxh/a;

    .line 233
    .line 234
    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    .line 235
    .line 236
    invoke-static {p1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->d(Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    iget v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->$reqCount:I

    .line 241
    .line 242
    iget-object v2, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    .line 243
    .line 244
    invoke-static {v2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->f(Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string p1, " --> preLoadAd("

    .line 257
    .line 258
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string p1, ") --> "

    .line 265
    .line 266
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    const/4 v6, 0x4

    .line 277
    const/4 v7, 0x0

    .line 278
    const-string v2, "ad_n"

    .line 279
    .line 280
    const/4 v4, 0x0

    .line 281
    const/4 v5, 0x0

    .line 282
    invoke-static/range {v1 .. v7}, Lxh/a;->m(Lxh/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    .line 286
    .line 287
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->n()V

    .line 288
    .line 289
    .line 290
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 291
    .line 292
    return-object p1

    .line 293
    :cond_8
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 294
    .line 295
    return-object p1
.end method
