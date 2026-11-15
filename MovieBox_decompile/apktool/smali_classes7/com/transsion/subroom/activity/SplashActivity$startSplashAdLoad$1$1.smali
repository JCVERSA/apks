.class public final Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1$1;
.super Loh/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/subroom/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/transsion/subroom/activity/SplashActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1$1;->d:Lcom/transsion/subroom/activity/SplashActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Loh/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Loh/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1$1;->d:Lcom/transsion/subroom/activity/SplashActivity;

    .line 5
    .line 6
    invoke-static {p1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v3, Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1$1$onBiddingError$1;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1$1;->d:Lcom/transsion/subroom/activity/SplashActivity;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v3, p1, v1}, Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1$1$onBiddingError$1;-><init>(Lcom/transsion/subroom/activity/SplashActivity;Lkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x3

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Loh/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1$1;->d:Lcom/transsion/subroom/activity/SplashActivity;

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v4, Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1$1$onBiddingLoad$1;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1$1;->d:Lcom/transsion/subroom/activity/SplashActivity;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v4, v0, p1, v2}, Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1$1$onBiddingLoad$1;-><init>(Lcom/transsion/subroom/activity/SplashActivity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    const/4 v5, 0x3

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Loh/a;->m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/transsion/startup/pref/consume/c;->a:Lcom/transsion/startup/pref/consume/c;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/startup/pref/consume/c;->q()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Loh/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1$1;->d:Lcom/transsion/subroom/activity/SplashActivity;

    .line 5
    .line 6
    invoke-static {p1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v3, Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1$1$onBiddingWrapperAdShowError$1;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1$1;->d:Lcom/transsion/subroom/activity/SplashActivity;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v3, p1, v1}, Lcom/transsion/subroom/activity/SplashActivity$startSplashAdLoad$1$1$onBiddingWrapperAdShowError$1;-><init>(Lcom/transsion/subroom/activity/SplashActivity;Lkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x3

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 22
    .line 23
    .line 24
    return-void
.end method
