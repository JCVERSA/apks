.class final Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$interstitialListener$1$onBiddingLoad$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$interstitialListener$1$onBiddingLoad$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsnet.downloader.fragment.DownloadReDetectorShortTVADFragment$interstitialListener$1$onBiddingLoad$1$1"
    f = "DownloadReDetectorShortTVADFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;",
            "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$interstitialListener$1$onBiddingLoad$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$interstitialListener$1$onBiddingLoad$1$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$interstitialListener$1$onBiddingLoad$1$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

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
    new-instance p1, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$interstitialListener$1$onBiddingLoad$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$interstitialListener$1$onBiddingLoad$1$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$interstitialListener$1$onBiddingLoad$1$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$interstitialListener$1$onBiddingLoad$1$1;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$interstitialListener$1$onBiddingLoad$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$interstitialListener$1$onBiddingLoad$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$interstitialListener$1$onBiddingLoad$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$interstitialListener$1$onBiddingLoad$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$interstitialListener$1$onBiddingLoad$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$interstitialListener$1$onBiddingLoad$1$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;->K0(Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$interstitialListener$1$onBiddingLoad$1$1;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$interstitialListener$1$onBiddingLoad$1$1;->$maxEcpmObject:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 26
    .line 27
    const/4 v4, 0x4

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-static/range {v0 .. v5}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->O0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Landroid/app/Activity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method
