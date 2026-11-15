.class public final Lcom/transsnet/downloader/fragment/DownloadPanelFragment$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lbj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadPanelFragment;-><init>()V
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
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadPanelFragment$d;->a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 6

    .line 1
    iget-object p4, p0, Lcom/transsnet/downloader/fragment/DownloadPanelFragment$d;->a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    .line 2
    .line 3
    invoke-static {p4}, Lcom/transsnet/downloader/fragment/DownloadPanelFragment;->y0(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)Lcom/transsnet/downloader/adapter/v0;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    if-eqz p4, :cond_0

    .line 14
    .line 15
    invoke-static {p4, p1}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    check-cast p4, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 20
    .line 21
    :goto_0
    move-object v2, p4

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 p4, 0x0

    .line 24
    goto :goto_0

    .line 25
    :goto_1
    if-eqz v2, :cond_1

    .line 26
    .line 27
    iget-object p4, p0, Lcom/transsnet/downloader/fragment/DownloadPanelFragment$d;->a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    .line 28
    .line 29
    invoke-static {p4}, Lcom/transsnet/downloader/fragment/DownloadPanelFragment;->w0(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)Lex/a;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object p4, p0, Lcom/transsnet/downloader/fragment/DownloadPanelFragment$d;->a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    .line 34
    .line 35
    invoke-static {p4}, Lcom/transsnet/downloader/fragment/DownloadPanelFragment;->A0(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    move v3, p1

    .line 40
    move-wide v4, p2

    .line 41
    invoke-virtual/range {v0 .. v5}, Lex/a;->a(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;IJ)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method
