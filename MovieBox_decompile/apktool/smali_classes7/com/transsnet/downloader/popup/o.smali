.class public final synthetic Lcom/transsnet/downloader/popup/o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

.field public final synthetic b:Lcom/transsnet/downloader/popup/PopupManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Lcom/transsnet/downloader/popup/PopupManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/popup/o;->a:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsnet/downloader/popup/o;->b:Lcom/transsnet/downloader/popup/PopupManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/popup/o;->a:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/popup/o;->b:Lcom/transsnet/downloader/popup/PopupManager;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Long;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    check-cast p2, Ljava/lang/Long;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    invoke-static/range {v0 .. v5}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->d(Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Lcom/transsnet/downloader/popup/PopupManager;JJ)Lkotlin/Unit;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
