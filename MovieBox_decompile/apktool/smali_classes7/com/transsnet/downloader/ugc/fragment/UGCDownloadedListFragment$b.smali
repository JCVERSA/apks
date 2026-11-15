.class public final Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedListFragment$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsnet/downloader/adapter/u0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedListFragment;->S0(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedListFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedListFragment$b;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedListFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 1
    const/4 p1, 0x4

    .line 2
    if-ne p2, p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedListFragment$b;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedListFragment;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->x0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x1

    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p1, v1, p2, v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->N(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;ZILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public b(IIIZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/adapter/u0$b$a;->a(Lcom/transsnet/downloader/adapter/u0$b;IIIZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
