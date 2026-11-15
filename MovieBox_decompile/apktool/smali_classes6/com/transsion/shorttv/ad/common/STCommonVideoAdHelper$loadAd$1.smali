.class final Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$loadAd$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->t(Lkotlin/jvm/functions/Function3;)V
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
    c = "com.transsion.shorttv.ad.common.STCommonVideoAdHelper$loadAd$1"
    f = "STCommonVideoAdHelper.kt"
    l = {
        0x72
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $loadCallback:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$loadAd$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$loadAd$1;->this$0:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$loadAd$1;->$loadCallback:Lkotlin/jvm/functions/Function3;

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
    new-instance p1, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$loadAd$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$loadAd$1;->this$0:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$loadAd$1;->$loadCallback:Lkotlin/jvm/functions/Function3;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$loadAd$1;-><init>(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$loadAd$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$loadAd$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$loadAd$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$loadAd$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$loadAd$1;->label:I

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
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$loadAd$1;->this$0:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$loadAd$1;->$loadCallback:Lkotlin/jvm/functions/Function3;

    .line 32
    .line 33
    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 34
    .line 35
    const/4 v3, 0x3

    .line 36
    invoke-virtual {p1, v3}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->p(I)V

    .line 37
    .line 38
    .line 39
    sget-object v3, Lyq/a;->a:Lyq/a;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->r()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const-string v5, "trigger load ad"

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->s()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v3, v4, v5, v6}, Lyq/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget-object v3, Lcom/transsion/shorttv/ad/AdLoadState;->LOADING:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 55
    .line 56
    invoke-static {p1, v3}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->k(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lcom/transsion/shorttv/ad/AdLoadState;)V

    .line 57
    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-static {p1, v3}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->m(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Z)V

    .line 61
    .line 62
    .line 63
    invoke-static {p1, v1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->j(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lkotlin/jvm/functions/Function3;)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 67
    .line 68
    invoke-direct {v1}, Lcom/transsion/ad/bidding/video/BiddingVideoManager;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-static {p1, v1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->o(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lcom/transsion/ad/bidding/video/BiddingVideoManager;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->g(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-eqz v1, :cond_2

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->s()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v1, v3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->L0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->g(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_3

    .line 92
    .line 93
    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->f(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$videoListener$1;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v1, v3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->K0(Loh/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 98
    .line 99
    .line 100
    :cond_3
    invoke-static {p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->g(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    if-eqz v1, :cond_5

    .line 105
    .line 106
    iput v2, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$loadAd$1;->label:I

    .line 107
    .line 108
    const/4 v2, 0x0

    .line 109
    const/4 v3, 0x0

    .line 110
    const/4 v5, 0x3

    .line 111
    const/4 v6, 0x0

    .line 112
    move-object v4, p0

    .line 113
    invoke-static/range {v1 .. v6}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->t0(Lcom/transsion/ad/bidding/base/AbsAdBidding;IZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-ne p1, v0, :cond_4

    .line 118
    .line 119
    return-object v0

    .line 120
    :cond_4
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_5
    const/4 p1, 0x0

    .line 124
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    goto :goto_3

    .line 129
    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 130
    .line 131
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    :goto_3
    iget-object v0, p0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper$loadAd$1;->this$0:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    .line 140
    .line 141
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    if-eqz p1, :cond_6

    .line 146
    .line 147
    sget-object p1, Lcom/transsion/shorttv/ad/AdLoadState;->IDLE:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 148
    .line 149
    invoke-static {v0, p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->k(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;Lcom/transsion/shorttv/ad/AdLoadState;)V

    .line 150
    .line 151
    .line 152
    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 153
    .line 154
    return-object p1
.end method
