.class public final synthetic Lcom/transsnet/downloader/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function4;

.field public final synthetic b:Lcom/transsnet/downloader/DownloadManagerApi;

.field public final synthetic c:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function4;Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/d;->a:Lkotlin/jvm/functions/Function4;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsnet/downloader/d;->b:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsnet/downloader/d;->c:Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsnet/downloader/d;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/d;->a:Lkotlin/jvm/functions/Function4;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/d;->b:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsnet/downloader/d;->c:Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsnet/downloader/d;->d:Ljava/lang/String;

    .line 8
    .line 9
    check-cast p1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    move-object v5, p2

    .line 16
    check-cast v5, Ljava/lang/String;

    .line 17
    .line 18
    move-object v6, p3

    .line 19
    check-cast v6, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 20
    .line 21
    check-cast p4, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    invoke-static/range {v0 .. v7}, Lcom/transsnet/downloader/DownloadManagerApi;->k(Lkotlin/jvm/functions/Function4;Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method
