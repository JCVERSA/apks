.class public final Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$showAd$1$1;
.super Loh/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$showAd$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$showAd$1$1;->d:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Loh/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Loh/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$showAd$1$1;->d:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$showAd$1$1;->d:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

    .line 13
    .line 14
    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v5, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$showAd$1$1$onBiddingLoad$1$1;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v5, v1, v0, p1, v3}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$showAd$1$1$onBiddingLoad$1$1;-><init>(Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

    .line 22
    .line 23
    .line 24
    const/4 v6, 0x3

    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
