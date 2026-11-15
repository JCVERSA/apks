.class public final synthetic Lcom/transsnet/downloader/fragment/w6;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/dialog/DownloadMoreDialog;

.field public final synthetic b:Lcom/transsion/baselib/db/download/DownloadBean;

.field public final synthetic c:Lcom/transsnet/downloader/fragment/LocalFileListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/dialog/DownloadMoreDialog;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/fragment/LocalFileListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/w6;->a:Lcom/transsnet/downloader/dialog/DownloadMoreDialog;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsnet/downloader/fragment/w6;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsnet/downloader/fragment/w6;->c:Lcom/transsnet/downloader/fragment/LocalFileListFragment;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/w6;->a:Lcom/transsnet/downloader/dialog/DownloadMoreDialog;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/w6;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsnet/downloader/fragment/w6;->c:Lcom/transsnet/downloader/fragment/LocalFileListFragment;

    .line 6
    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    move-object v4, p2

    .line 14
    check-cast v4, Ljava/lang/String;

    .line 15
    .line 16
    move-object v5, p3

    .line 17
    check-cast v5, Ljava/lang/String;

    .line 18
    .line 19
    invoke-static/range {v0 .. v5}, Lcom/transsnet/downloader/fragment/LocalFileListFragment;->j1(Lcom/transsnet/downloader/dialog/DownloadMoreDialog;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/fragment/LocalFileListFragment;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method
