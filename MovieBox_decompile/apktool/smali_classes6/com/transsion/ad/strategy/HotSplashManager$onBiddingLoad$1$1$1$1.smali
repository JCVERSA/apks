.class final Lcom/transsion/ad/strategy/HotSplashManager$onBiddingLoad$1$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/strategy/HotSplashManager$onBiddingLoad$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsion.ad.strategy.HotSplashManager$onBiddingLoad$1$1$1$1"
    f = "HotSplashManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

.field final synthetic $topAct:Landroid/app/Activity;

.field label:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/strategy/HotSplashManager$onBiddingLoad$1$1$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/strategy/HotSplashManager$onBiddingLoad$1$1$1$1;->$topAct:Landroid/app/Activity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ad/strategy/HotSplashManager$onBiddingLoad$1$1$1$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

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
    new-instance p1, Lcom/transsion/ad/strategy/HotSplashManager$onBiddingLoad$1$1$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/ad/strategy/HotSplashManager$onBiddingLoad$1$1$1$1;->$topAct:Landroid/app/Activity;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/ad/strategy/HotSplashManager$onBiddingLoad$1$1$1$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/ad/strategy/HotSplashManager$onBiddingLoad$1$1$1$1;-><init>(Landroid/app/Activity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/strategy/HotSplashManager$onBiddingLoad$1$1$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/strategy/HotSplashManager$onBiddingLoad$1$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/strategy/HotSplashManager$onBiddingLoad$1$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/strategy/HotSplashManager$onBiddingLoad$1$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/transsion/ad/strategy/HotSplashManager$onBiddingLoad$1$1$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    .line 12
    .line 13
    sget-object v0, Lrh/d;->a:Lrh/d;

    .line 14
    .line 15
    invoke-virtual {v0}, Lrh/d;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Lcom/transsion/ad/scene/a;->k(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-static {}, Lcom/transsion/ad/strategy/HotSplashManager;->z()Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/transsion/ad/strategy/HotSplashManager$onBiddingLoad$1$1$1$1;->$topAct:Landroid/app/Activity;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/transsion/ad/strategy/HotSplashManager$onBiddingLoad$1$1$1$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->N0(Landroid/app/Activity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Z)V

    .line 34
    .line 35
    .line 36
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method
