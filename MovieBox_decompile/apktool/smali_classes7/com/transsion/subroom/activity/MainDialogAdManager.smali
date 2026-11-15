.class public final Lcom/transsion/subroom/activity/MainDialogAdManager;
.super Loh/a;
.source "source.java"


# instance fields
.field private d:Lcom/transsion/subroom/activity/MainActivity;

.field private e:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final A()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->e:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->U()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->e:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic x(Lcom/transsion/subroom/activity/MainDialogAdManager;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->e:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic y(Lcom/transsion/subroom/activity/MainDialogAdManager;Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->e:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Loh/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/subroom/activity/MainDialogAdManager;->A()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Loh/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->e:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->d:Lcom/transsion/subroom/activity/MainActivity;

    .line 9
    .line 10
    const/4 v4, 0x4

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    move-object v2, p1

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->O0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Landroid/app/Activity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;ZILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Loh/a;->m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/subroom/activity/MainDialogAdManager;->A()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Loh/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/subroom/activity/MainDialogAdManager;->A()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final z(Lcom/transsion/subroom/activity/MainActivity;)V
    .locals 7

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lrh/c;->a:Lrh/c;

    .line 7
    .line 8
    invoke-virtual {v0}, Lrh/c;->a()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->e:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iput-object p1, p0, Lcom/transsion/subroom/activity/MainDialogAdManager;->d:Lcom/transsion/subroom/activity/MainActivity;

    .line 21
    .line 22
    invoke-static {p1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v4, Lcom/transsion/subroom/activity/MainDialogAdManager$loadAd$1;

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-direct {v4, p0, p1}, Lcom/transsion/subroom/activity/MainDialogAdManager$loadAd$1;-><init>(Lcom/transsion/subroom/activity/MainDialogAdManager;Lkotlin/coroutines/Continuation;)V

    .line 30
    .line 31
    .line 32
    const/4 v5, 0x3

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 37
    .line 38
    .line 39
    return-void
.end method
