.class final Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->l(Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsion.ad.bidding.base.AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2"
    f = "AbsBiddingInterceptHiSavanaAdManager.kt"
    l = {
        0xdc
    }
    m = "invokeSuspend"
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

.field final synthetic this$0:Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;Lkotlin/coroutines/Continuation;)V
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
            "Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->$sceneId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->$ctxMap:Ljava/util/Map;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;

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
    new-instance p1, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->$sceneId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->$ctxMap:Ljava/util/Map;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->label:I

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
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->$sceneId:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->$ctxMap:Ljava/util/Map;

    .line 32
    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    sget-object v3, Lcom/transsion/ad/strategy/c;->a:Lcom/transsion/ad/strategy/c;

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-virtual {v3, v4}, Lcom/transsion/ad/strategy/c;->a(Ljava/lang/String;)Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    :cond_2
    const/4 v4, 0x0

    .line 43
    new-array v5, v4, [Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    .line 44
    .line 45
    iput v2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->label:I

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    const/4 v7, 0x4

    .line 49
    const/4 v8, 0x0

    .line 50
    move-object v2, p1

    .line 51
    move-object v6, p0

    .line 52
    invoke-static/range {v1 .. v8}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->e(Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-ne p1, v0, :cond_3

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->getClassTag()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->$sceneId:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v3, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->$ctxMap:Ljava/util/Map;

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, " --> sceneId = "

    .line 84
    .line 85
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v1, " preload --> ctxMap: "

    .line 92
    .line 93
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v1, ", \u53ef\u7528\u5e7f\u544a\u8ba1\u5212\uff1a"

    .line 100
    .line 101
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    const/4 v5, 0x5

    .line 112
    const/4 v6, 0x0

    .line 113
    const/4 v1, 0x0

    .line 114
    const/4 v3, 0x0

    .line 115
    const/4 v4, 0x0

    .line 116
    invoke-static/range {v0 .. v6}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_4

    .line 124
    .line 125
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 126
    .line 127
    return-object p1

    .line 128
    :cond_4
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;

    .line 129
    .line 130
    invoke-static {v0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->a(Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;Ljava/util/List;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_5

    .line 135
    .line 136
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->h()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v1, "preLoadAd() --> hiId = "

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    iget-object v2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;

    .line 160
    .line 161
    const/4 v7, 0x4

    .line 162
    const/4 v8, 0x0

    .line 163
    const/4 v3, 0x3

    .line 164
    const/4 v5, 0x0

    .line 165
    const/4 v6, 0x0

    .line 166
    invoke-static/range {v2 .. v8}, Lxh/b$a;->c(Lxh/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;

    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d()Lfe/b;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    if-eqz p1, :cond_5

    .line 176
    .line 177
    invoke-virtual {p1}, Lfe/b;->preload()V

    .line 178
    .line 179
    .line 180
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 181
    .line 182
    return-object p1
.end method
