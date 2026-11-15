.class public final Lcom/transsnet/downloader/fragment/DownloadPanelFragment$i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lyg/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadPanelFragment;->l1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadPanelFragment$i;->a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 0

    .line 1
    invoke-static {p0}, Lyg/m$a;->a(Lyg/m;)V

    return-void
.end method

.method public onConnected(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkCapabilities"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadPanelFragment$i;->a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    invoke-static {p1}, Lcom/transsnet/downloader/fragment/DownloadPanelFragment;->E0(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)V

    .line 3
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadPanelFragment$i;->a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    invoke-static {p1}, Lcom/transsnet/downloader/fragment/DownloadPanelFragment;->I0(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)V

    return-void
.end method

.method public onDisconnected()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadPanelFragment$i;->a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsnet/downloader/fragment/DownloadPanelFragment;->J0(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadPanelFragment$i;->a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsnet/downloader/fragment/DownloadPanelFragment;->D0(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
