.class public final Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$videoListener$1;
.super Loh/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private d:Z

.field final synthetic e:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$videoListener$1;->e:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;

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
    .locals 0

    .line 1
    invoke-super {p0, p1}, Loh/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$videoListener$1;->e:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;->M0(Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Loh/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$videoListener$1;->e:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v4, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$videoListener$1$onBiddingLoad$1;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$videoListener$1;->e:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v4, v0, p1, v2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$videoListener$1$onBiddingLoad$1;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

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
    .locals 1

    .line 1
    invoke-super {p0, p1}, Loh/a;->m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$videoListener$1;->d:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$videoListener$1;->e:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const-string v0, "ad_success"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->K(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$videoListener$1;->e:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    const-string v0, "ad_cancel"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->K(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$videoListener$1;->e:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->p()Landroidx/lifecycle/b0;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    const/4 v0, 0x5

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    return-void
.end method

.method public o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Loh/a;->o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$videoListener$1;->d:Z

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
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment$videoListener$1;->e:Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;->M0(Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVADFragment;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
