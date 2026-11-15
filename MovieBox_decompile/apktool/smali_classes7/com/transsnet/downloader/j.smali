.class public final synthetic Lcom/transsnet/downloader/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/DownloadManagerApi;

.field public final synthetic b:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/j;->a:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsnet/downloader/j;->b:Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsnet/downloader/j;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/j;->a:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/j;->b:Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsnet/downloader/j;->c:Ljava/lang/String;

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
    check-cast v5, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 18
    .line 19
    check-cast p4, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    invoke-static/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi;->m(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method
