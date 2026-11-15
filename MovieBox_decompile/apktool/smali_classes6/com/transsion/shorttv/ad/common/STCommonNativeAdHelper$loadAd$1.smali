.class final Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->q(Lkotlin/jvm/functions/Function1;)V
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
    c = "com.transsion.shorttv.ad.common.STCommonNativeAdHelper$loadAd$1"
    f = "STCommonNativeAdHelper.kt"
    l = {
        0x86
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;->this$0:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;->$callback:Lkotlin/jvm/functions/Function1;

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
    new-instance p1, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;->this$0:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;->label:I

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
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto/16 :goto_1

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
    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;->this$0:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 34
    .line 35
    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 36
    .line 37
    const/4 v3, 0x3

    .line 38
    invoke-virtual {p1, v3}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->m(I)V

    .line 39
    .line 40
    .line 41
    sget-object v3, Lyq/a;->a:Lyq/a;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->o()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const-string v5, "trigger load ad"

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->p()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v3, v4, v5, v6}, Lyq/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sget-object v3, Lcom/transsion/shorttv/ad/AdLoadState;->LOADING:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 57
    .line 58
    invoke-static {p1, v3}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lcom/transsion/shorttv/ad/AdLoadState;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->g(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lkotlin/jvm/functions/Function1;)V

    .line 62
    .line 63
    .line 64
    new-instance v1, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 65
    .line 66
    invoke-direct {v1}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-static {p1, v1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->k(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->p()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v1, v3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->L0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 83
    .line 84
    .line 85
    :cond_2
    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const/4 v3, 0x0

    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    invoke-virtual {v1, v3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->J0(Ljava/util/Map;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    const-string v5, "getContext(...)"

    .line 106
    .line 107
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v4}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->I0(Landroid/content/Context;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 111
    .line 112
    .line 113
    :cond_4
    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    if-eqz v1, :cond_5

    .line 118
    .line 119
    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->c(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$nativeAdListener$1;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v1, v4}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->K0(Loh/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 124
    .line 125
    .line 126
    :cond_5
    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->d(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    if-eqz v1, :cond_7

    .line 131
    .line 132
    iput v2, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;->label:I

    .line 133
    .line 134
    const/4 v2, 0x0

    .line 135
    const/4 v3, 0x0

    .line 136
    const/4 v5, 0x3

    .line 137
    const/4 v6, 0x0

    .line 138
    move-object v4, p0

    .line 139
    invoke-static/range {v1 .. v6}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->t0(Lcom/transsion/ad/bidding/base/AbsAdBidding;IZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    if-ne p1, v0, :cond_6

    .line 144
    .line 145
    return-object v0

    .line 146
    :cond_6
    :goto_0
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 147
    .line 148
    :cond_7
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    goto :goto_2

    .line 153
    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 154
    .line 155
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    :goto_2
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper$loadAd$1;->this$0:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 164
    .line 165
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    if-eqz p1, :cond_8

    .line 170
    .line 171
    sget-object p1, Lcom/transsion/shorttv/ad/AdLoadState;->IDLE:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 172
    .line 173
    invoke-static {v0, p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->h(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;Lcom/transsion/shorttv/ad/AdLoadState;)V

    .line 174
    .line 175
    .line 176
    :cond_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 177
    .line 178
    return-object p1
.end method
