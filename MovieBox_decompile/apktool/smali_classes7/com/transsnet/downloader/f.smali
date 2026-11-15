.class public final synthetic Lcom/transsnet/downloader/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/transsion/baselib/db/download/DownloadBean;

.field public final synthetic e:Lcom/transsnet/downloader/DownloadManagerApi;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/f;->a:Landroidx/fragment/app/FragmentActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsnet/downloader/f;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsnet/downloader/f;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsnet/downloader/f;->d:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/transsnet/downloader/f;->e:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/transsnet/downloader/f;->f:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/transsnet/downloader/f;->g:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/f;->a:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/f;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsnet/downloader/f;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsnet/downloader/f;->d:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsnet/downloader/f;->e:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsnet/downloader/f;->f:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/transsnet/downloader/f;->g:Ljava/lang/String;

    .line 14
    .line 15
    move-object v7, p1

    .line 16
    check-cast v7, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 17
    .line 18
    invoke-static/range {v0 .. v7}, Lcom/transsnet/downloader/DownloadManagerApi;->r(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)Lkotlin/Unit;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method
