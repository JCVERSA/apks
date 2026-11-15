.class final Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$showInterstitialAd$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->N3()V
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
    c = "com.transsion.postdetail.layer.local.LocalVideoMiddleLayer$showInterstitialAd$1"
    f = "LocalVideoMiddleLayer.kt"
    l = {
        0x30a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$showInterstitialAd$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$showInterstitialAd$1;->this$0:Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;

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
    new-instance p1, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$showInterstitialAd$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$showInterstitialAd$1;->this$0:Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$showInterstitialAd$1;-><init>(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$showInterstitialAd$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$showInterstitialAd$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$showInterstitialAd$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$showInterstitialAd$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$showInterstitialAd$1;->label:I

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
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$showInterstitialAd$1;->this$0:Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->v3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->U()V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$showInterstitialAd$1;->this$0:Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;

    .line 40
    .line 41
    new-instance v1, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 42
    .line 43
    invoke-direct {v1}, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v1}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->w3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$showInterstitialAd$1;->this$0:Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->v3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    const-string v1, "LocalVideoBackInterstitialV2Scene"

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->L0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 60
    .line 61
    .line 62
    :cond_3
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$showInterstitialAd$1;->this$0:Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->v3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$showInterstitialAd$1;->this$0:Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;

    .line 71
    .line 72
    invoke-static {v1}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->u3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$b;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {p1, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->K0(Loh/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 77
    .line 78
    .line 79
    :cond_4
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$showInterstitialAd$1;->this$0:Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->v3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-eqz p1, :cond_6

    .line 86
    .line 87
    sget-object v1, Lcom/transsion/ad/strategy/c;->a:Lcom/transsion/ad/strategy/c;

    .line 88
    .line 89
    iget-object v3, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$showInterstitialAd$1;->this$0:Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;

    .line 90
    .line 91
    invoke-virtual {v3}, Lcom/transsion/postdetail/layer/local/a0;->S0()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    if-eqz v3, :cond_5

    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getGenre()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    goto :goto_0

    .line 102
    :cond_5
    const/4 v3, 0x0

    .line 103
    :goto_0
    invoke-virtual {v1, v3}, Lcom/transsion/ad/strategy/c;->a(Ljava/lang/String;)Ljava/util/Map;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {p1, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->J0(Ljava/util/Map;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 108
    .line 109
    .line 110
    :cond_6
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$showInterstitialAd$1;->this$0:Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;

    .line 111
    .line 112
    invoke-static {p1}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->v3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    if-eqz v3, :cond_7

    .line 117
    .line 118
    iput v2, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$showInterstitialAd$1;->label:I

    .line 119
    .line 120
    const/4 v4, 0x0

    .line 121
    const/4 v5, 0x0

    .line 122
    const/4 v7, 0x3

    .line 123
    const/4 v8, 0x0

    .line 124
    move-object v6, p0

    .line 125
    invoke-static/range {v3 .. v8}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->t0(Lcom/transsion/ad/bidding/base/AbsAdBidding;IZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-ne p1, v0, :cond_7

    .line 130
    .line 131
    return-object v0

    .line 132
    :cond_7
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 133
    .line 134
    return-object p1
.end method
