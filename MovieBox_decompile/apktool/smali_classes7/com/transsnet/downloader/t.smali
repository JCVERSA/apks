.class public final synthetic Lcom/transsnet/downloader/t;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/DownloadManagerApi;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/t;->a:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsnet/downloader/t;->b:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsnet/downloader/t;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/t;->a:Lcom/transsnet/downloader/DownloadManagerApi;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/t;->b:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsnet/downloader/t;->c:Ljava/lang/String;

    .line 6
    .line 7
    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;->a(Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)Lkotlin/Unit;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
