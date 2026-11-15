.class final Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->b1(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
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
    c = "com.transsion.postdetail.ad.BaseVideoAdHelper$loadLandPauseAd$1"
    f = "BaseVideoAdHelper.kt"
    l = {
        0x116
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
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

.field final synthetic $ctx:Landroid/content/Context;

.field final synthetic $onFail:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sceneId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/transsion/postdetail/ad/BaseVideoAdHelper;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;->$ctx:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;->$sceneId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;->$callback:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;->$onFail:Lkotlin/jvm/functions/Function0;

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
    new-instance p1, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;->$ctx:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;->$sceneId:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;->$callback:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;->$onFail:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;-><init>(Landroid/content/Context;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;->label:I

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
    goto/16 :goto_1

    .line 16
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
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;->$ctx:Landroid/content/Context;

    .line 29
    .line 30
    instance-of v1, p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move-object p1, v3

    .line 39
    :goto_0
    if-eqz p1, :cond_a

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_3

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_3

    .line 52
    .line 53
    move-object v3, p1

    .line 54
    :cond_3
    if-nez v3, :cond_4

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 58
    .line 59
    new-instance v1, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 60
    .line 61
    invoke-direct {v1}, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->y1(Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->v0()Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_5

    .line 74
    .line 75
    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;->$sceneId:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->L0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 78
    .line 79
    .line 80
    :cond_5
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->v0()Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_6

    .line 87
    .line 88
    sget-object v1, Lcom/transsion/ad/strategy/c;->a:Lcom/transsion/ad/strategy/c;

    .line 89
    .line 90
    iget-object v4, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 91
    .line 92
    invoke-virtual {v4}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->j0()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v1, v4}, Lcom/transsion/ad/strategy/c;->a(Ljava/lang/String;)Ljava/util/Map;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {p1, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->J0(Ljava/util/Map;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 101
    .line 102
    .line 103
    :cond_6
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->v0()Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-eqz p1, :cond_7

    .line 110
    .line 111
    invoke-virtual {p1, v3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->I0(Landroid/content/Context;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 112
    .line 113
    .line 114
    :cond_7
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->v0()Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_8

    .line 121
    .line 122
    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 123
    .line 124
    iget-object v3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;->$sceneId:Ljava/lang/String;

    .line 125
    .line 126
    iget-object v4, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;->$callback:Lkotlin/jvm/functions/Function0;

    .line 127
    .line 128
    iget-object v5, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;->$onFail:Lkotlin/jvm/functions/Function0;

    .line 129
    .line 130
    invoke-static {v1, v3, v4, v5}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->G(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {p1, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->K0(Loh/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 135
    .line 136
    .line 137
    :cond_8
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->v0()Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    if-eqz v3, :cond_9

    .line 144
    .line 145
    iput v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;->label:I

    .line 146
    .line 147
    const/4 v4, 0x0

    .line 148
    const/4 v5, 0x0

    .line 149
    const/4 v7, 0x3

    .line 150
    const/4 v8, 0x0

    .line 151
    move-object v6, p0

    .line 152
    invoke-static/range {v3 .. v8}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->t0(Lcom/transsion/ad/bidding/base/AbsAdBidding;IZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-ne p1, v0, :cond_9

    .line 157
    .line 158
    return-object v0

    .line 159
    :cond_9
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 160
    .line 161
    return-object p1

    .line 162
    :cond_a
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 163
    .line 164
    return-object p1
.end method
