.class public final synthetic Lcom/transsnet/downloader/manager/n;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

.field public final synthetic b:Lcom/transsion/baselib/db/download/DownloadBean;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/manager/DownloadManagerImpl;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/manager/n;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsnet/downloader/manager/n;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsnet/downloader/manager/n;->c:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsnet/downloader/manager/n;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/manager/n;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/manager/n;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsnet/downloader/manager/n;->c:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsnet/downloader/manager/n;->d:Ljava/lang/String;

    .line 8
    .line 9
    check-cast p1, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->P(Lcom/transsnet/downloader/manager/DownloadManagerImpl;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Z)Lkotlin/Unit;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
