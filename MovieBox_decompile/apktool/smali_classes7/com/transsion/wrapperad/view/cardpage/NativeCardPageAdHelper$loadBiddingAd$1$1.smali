.class final Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->B()V
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
    c = "com.transsion.wrapperad.view.cardpage.NativeCardPageAdHelper$loadBiddingAd$1$1"
    f = "NativeCardPageAdHelper.kt"
    l = {
        0x55
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $it:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

.field label:I

.field final synthetic this$0:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;


# direct methods
.method constructor <init>(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;",
            "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;->this$0:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;->$it:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

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
    new-instance p1, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;->this$0:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;->$it:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;-><init>(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;->label:I

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
    goto/16 :goto_0

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
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;->this$0:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 29
    .line 30
    new-instance v1, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 31
    .line 32
    invoke-direct {v1}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;->this$0:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->l(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;->this$0:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->m(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p1, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->L0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;->this$0:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->l(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;->this$0:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 64
    .line 65
    invoke-static {v1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Ljava/util/Map;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p1, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->J0(Ljava/util/Map;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 70
    .line 71
    .line 72
    :cond_3
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;->this$0:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->l(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;->$it:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 81
    .line 82
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const-string v3, "getContext(...)"

    .line 87
    .line 88
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->I0(Landroid/content/Context;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 92
    .line 93
    .line 94
    :cond_4
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;->this$0:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 95
    .line 96
    invoke-static {p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->l(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-eqz p1, :cond_5

    .line 101
    .line 102
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;->this$0:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 103
    .line 104
    invoke-static {v1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->k(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$c;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {p1, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->K0(Loh/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 109
    .line 110
    .line 111
    :cond_5
    sget-object p1, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    .line 112
    .line 113
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;->this$0:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 114
    .line 115
    invoke-static {v1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->m(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {p1, v1}, Lcom/transsion/ad/scene/a;->g(Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    invoke-static {p1, v2}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    const/4 v1, 0x3

    .line 128
    invoke-static {p1, v1}, Lkotlin/ranges/RangesKt;->h(II)I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;->this$0:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 133
    .line 134
    invoke-static {p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->l(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    if-eqz v3, :cond_6

    .line 139
    .line 140
    iput v2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;->label:I

    .line 141
    .line 142
    const/4 v5, 0x0

    .line 143
    const/4 v7, 0x2

    .line 144
    const/4 v8, 0x0

    .line 145
    move-object v6, p0

    .line 146
    invoke-static/range {v3 .. v8}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->t0(Lcom/transsion/ad/bidding/base/AbsAdBidding;IZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    if-ne p1, v0, :cond_6

    .line 151
    .line 152
    return-object v0

    .line 153
    :cond_6
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 154
    .line 155
    return-object p1
.end method
