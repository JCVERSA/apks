.class public final Lcom/transsnet/downloader/fragment/DownloadPanelFragment$initData$1$a;
.super Loh/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadPanelFragment$initData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadPanelFragment$initData$1$a;->d:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

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
    .locals 6

    .line 1
    invoke-super {p0, p1}, Loh/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->m:Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->V()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadPanelFragment$initData$1$a;->d:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/transsnet/downloader/fragment/DownloadPanelFragment;->X0()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x2

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-static/range {v0 .. v5}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->I(Lcom/transsnet/downloader/viewmodel/DownloadListManager;ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
