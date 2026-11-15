.class public final Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;
.super Lcom/tn/lib/dialog/BaseDialog;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0004\n\u0002\u0008\u0005*\u0002$(\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J!\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0003J\u0019\u0010\u0013\u001a\u00020\u00122\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0010R\u001b\u0010\u001b\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0014\u0010\'\u001a\u00020$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*\u00a8\u0006,"
    }
    d2 = {
        "Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;",
        "Lcom/tn/lib/dialog/BaseDialog;",
        "<init>",
        "()V",
        "",
        "h0",
        "g0",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Landroid/content/DialogInterface;",
        "dialog",
        "onCancel",
        "(Landroid/content/DialogInterface;)V",
        "onResume",
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "(Landroid/os/Bundle;)Landroid/app/Dialog;",
        "onDismiss",
        "Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;",
        "a",
        "Lkotlin/Lazy;",
        "f0",
        "()Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;",
        "shortTvPlayListViewModel",
        "Lcom/transsion/ad/bidding/video/BiddingVideoManager;",
        "b",
        "Lcom/transsion/ad/bidding/video/BiddingVideoManager;",
        "videoManager",
        "Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;",
        "c",
        "Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;",
        "interstitialManager",
        "com/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1",
        "d",
        "Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1;",
        "videoListener",
        "com/transsion/postdetail/shorttv/ShortTvWatchAdDialog$interstitialListener$1",
        "e",
        "Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$interstitialListener$1;",
        "interstitialListener",
        "PostDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final a:Lkotlin/Lazy;

.field private b:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

.field private c:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

.field private final d:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1;

.field private final e:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$interstitialListener$1;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget v0, Lcom/transsion/postdetail/R$layout;->dialog_short_tv_unlock_tips:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/tn/lib/dialog/BaseDialog;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$special$$inlined$activityViewModels$default$2;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->a:Lkotlin/Lazy;

    .line 27
    .line 28
    new-instance v0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1;-><init>(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->d:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1;

    .line 34
    .line 35
    new-instance v0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$interstitialListener$1;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$interstitialListener$1;-><init>(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->e:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$interstitialListener$1;

    .line 41
    .line 42
    return-void
.end method

.method public static synthetic Z(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->i0(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a0(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->j0(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b0(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->c:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c0(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;)Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->f0()Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d0(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->b:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e0(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->g0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final f0()Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->a:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final g0()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->c:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

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
    new-instance v0, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->c:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 14
    .line 15
    const-string v1, "ShortTvInterstitialScene"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->L0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->c:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->e:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$interstitialListener$1;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->K0(Loh/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    new-instance v5, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$loadInterstitialAd$1;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-direct {v5, p0, v0}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$loadInterstitialAd$1;-><init>(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;Lkotlin/coroutines/Continuation;)V

    .line 37
    .line 38
    .line 39
    const/4 v6, 0x3

    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private final h0()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->b:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

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
    new-instance v0, Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/ad/bidding/video/BiddingVideoManager;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->b:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 14
    .line 15
    const-string v1, "ShortTvVideoScene"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->L0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->b:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->d:Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->K0(Loh/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    new-instance v5, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$loadVideoAd$1;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-direct {v5, p0, v0}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$loadVideoAd$1;-><init>(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;Lkotlin/coroutines/Continuation;)V

    .line 37
    .line 38
    .line 39
    const/4 v6, 0x3

    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private static final i0(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->f0()Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->j()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final j0(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;Landroid/view/View;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const-wide/16 v1, 0x3e8

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object p1, Lzg/g;->a:Lzg/g;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "requireContext(...)"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lzg/g;->a(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    sget-object p0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 34
    .line 35
    sget p1, Lcom/transsion/postdetail/R$string;->player_no_network_tip2:I

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->f0()Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->h()Landroidx/lifecycle/b0;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 54
    .line 55
    if-nez p1, :cond_2

    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    sget-object v0, Lcom/transsion/postdetail/shorttv/k;->a:Lcom/transsion/postdetail/shorttv/k;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const/16 v6, 0x10

    .line 69
    .line 70
    const/4 v7, 0x0

    .line 71
    const-string v3, "dialog_minitv_unlock"

    .line 72
    .line 73
    const-string v4, "1"

    .line 74
    .line 75
    const/4 v5, 0x0

    .line 76
    invoke-static/range {v0 .. v7}, Lcom/transsion/postdetail/shorttv/k;->b(Lcom/transsion/postdetail/shorttv/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->h0()V

    .line 80
    .line 81
    .line 82
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->f0()Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->j()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 1
    new-instance p1, Lcom/google/android/material/bottomsheet/c;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lcom/transsion/postdetail/R$style;->BottomDialogTheme:I

    .line 8
    .line 9
    invoke-direct {p1, v0, v1}, Lcom/google/android/material/bottomsheet/c;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/c;->setCanceledOnTouchOutside(Z)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->b:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->U()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->c:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->U()V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/tn/lib/dialog/BaseDialog;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget v1, Lcom/google/android/material/R$id;->design_bottom_sheet:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const v1, 0x106000d

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "view"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    sget p2, Lcom/transsion/postdetail/R$id;->iv_close:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    new-instance v2, Lcom/transsion/postdetail/shorttv/l;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/transsion/postdetail/shorttv/l;-><init>(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    sget p2, Lcom/transsion/postdetail/R$id;->tv_episode:I

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Landroid/widget/TextView;

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;->f0()Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->h()Landroidx/lifecycle/b0;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 46
    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTotalEpisode()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move v3, v1

    .line 55
    :goto_0
    sget-object v4, Lcom/transsnet/downloader/util/a0;->a:Lcom/transsnet/downloader/util/a0;

    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/transsnet/downloader/util/a0;->e()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-nez v2, :cond_2

    .line 68
    .line 69
    :cond_1
    const-string v2, ""

    .line 70
    .line 71
    :cond_2
    invoke-virtual {v4, v2}, Lcom/transsnet/downloader/util/a0;->c(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    add-int/2addr v5, v2

    .line 76
    if-lt v5, v3, :cond_3

    .line 77
    .line 78
    sget v2, Lcom/transsion/postdetail/R$string;->short_tv_watch_ad_tips:I

    .line 79
    .line 80
    sget v3, Lcom/transsion/postdetail/R$string;->short_tv_all:I

    .line 81
    .line 82
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    new-array v0, v0, [Ljava/lang/Object;

    .line 87
    .line 88
    aput-object v3, v0, v1

    .line 89
    .line 90
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    goto :goto_1

    .line 95
    :cond_3
    sget v2, Lcom/transsion/postdetail/R$string;->short_tv_watch_ad_tips:I

    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/transsnet/downloader/util/a0;->e()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    new-array v0, v0, [Ljava/lang/Object;

    .line 106
    .line 107
    aput-object v3, v0, v1

    .line 108
    .line 109
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    sget p2, Lcom/transsion/postdetail/R$id;->tv_unlock:I

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    new-instance p2, Lcom/transsion/postdetail/shorttv/m;

    .line 123
    .line 124
    invoke-direct {p2, p0}, Lcom/transsion/postdetail/shorttv/m;-><init>(Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method
