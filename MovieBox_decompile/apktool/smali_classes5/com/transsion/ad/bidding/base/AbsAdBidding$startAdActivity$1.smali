.class final Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/bidding/base/AbsAdBidding;->N0(Landroid/app/Activity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Z)V
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
    c = "com.transsion.ad.bidding.base.AbsAdBidding$startAdActivity$1"
    f = "AbsAdBidding.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $isShowMemberBtn:Z

.field final synthetic $maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;


# direct methods
.method constructor <init>(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Landroid/app/Activity;Lcom/transsion/ad/bidding/base/AbsAdBidding;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;",
            "Landroid/app/Activity;",
            "Lcom/transsion/ad/bidding/base/AbsAdBidding;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;->$activity:Landroid/app/Activity;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;->$isShowMemberBtn:Z

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
    new-instance v6, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;->$activity:Landroid/app/Activity;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;->$isShowMemberBtn:Z

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;-><init>(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Landroid/app/Activity;Lcom/transsion/ad/bidding/base/AbsAdBidding;ZLkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v6, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_6

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;->L$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lkotlinx/coroutines/n0;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getHiSavanaInterceptProvider()Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object p1, v0

    .line 26
    :goto_0
    if-nez p1, :cond_5

    .line 27
    .line 28
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_1
    if-eqz v0, :cond_3

    .line 37
    .line 38
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;->$activity:Landroid/app/Activity;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 41
    .line 42
    iget-boolean v1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;->$isShowMemberBtn:Z

    .line 43
    .line 44
    iget-object v2, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 45
    .line 46
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->e0()Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    invoke-virtual {v3, v0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->r(Loh/a;)Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->p()Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v3, v4}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->s(Ljava/lang/String;)Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-eqz v3, :cond_2

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->f0()Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v3, v4}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->q(Ljava/lang/Integer;)Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    if-eqz v3, :cond_2

    .line 85
    .line 86
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v3, v1}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->n(Ljava/lang/Boolean;)Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v1, p1, v0, v2}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->t(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    const-string p1, "gemini is empty"

    .line 105
    .line 106
    invoke-virtual {v2, p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->setErrorMsg(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 114
    .line 115
    if-eqz p1, :cond_4

    .line 116
    .line 117
    const-string v0, "maxEcpmObject?.plans is empty"

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->setErrorMsg(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_4
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 123
    .line 124
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_5
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->n(Loh/a;)Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;->$activity:Landroid/app/Activity;

    .line 136
    .line 137
    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->f0()Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    iget-object v2, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 144
    .line 145
    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->q(Landroid/app/Activity;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 153
    .line 154
    return-object p1

    .line 155
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 156
    .line 157
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 158
    .line 159
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p1
.end method
