.class public final synthetic Lcom/transsnet/downloader/fragment/r0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/r0;->a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/r0;->a:Lcom/transsnet/downloader/fragment/DownloadPanelFragment;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    move-object v2, p2

    .line 10
    check-cast v2, Landroid/view/View;

    .line 11
    .line 12
    move-object v3, p3

    .line 13
    check-cast v3, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 14
    .line 15
    check-cast p4, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    move-object v5, p5

    .line 22
    check-cast v5, Lcom/transsnet/downloader/adapter/u0$b;

    .line 23
    .line 24
    invoke-static/range {v0 .. v5}, Lcom/transsnet/downloader/fragment/DownloadPanelFragment;->l0(Lcom/transsnet/downloader/fragment/DownloadPanelFragment;ILandroid/view/View;Lcom/transsion/baselib/db/download/DownloadBean;ILcom/transsnet/downloader/adapter/u0$b;)Lkotlin/Unit;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method
