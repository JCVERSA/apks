.class public final synthetic Lcom/transsnet/downloader/manager/o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/baselib/db/download/DownloadBean;

.field public final synthetic b:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/manager/DownloadManagerImpl;ILjava/util/List;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/manager/o;->a:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsnet/downloader/manager/o;->b:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    .line 7
    .line 8
    iput p3, p0, Lcom/transsnet/downloader/manager/o;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsnet/downloader/manager/o;->d:Ljava/util/List;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/transsnet/downloader/manager/o;->e:Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/transsnet/downloader/manager/o;->f:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/manager/o;->a:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/manager/o;->b:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    .line 4
    .line 5
    iget v2, p0, Lcom/transsnet/downloader/manager/o;->c:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsnet/downloader/manager/o;->d:Ljava/util/List;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsnet/downloader/manager/o;->e:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsnet/downloader/manager/o;->f:Ljava/lang/String;

    .line 12
    .line 13
    check-cast p1, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    invoke-static/range {v0 .. v6}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->N(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/manager/DownloadManagerImpl;ILjava/util/List;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Z)Lkotlin/Unit;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method
