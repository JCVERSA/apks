.class public final synthetic Lcom/transsnet/downloader/popup/m;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Lcom/transsion/baselib/db/download/DownloadBean;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic e:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/popup/m;->a:Ljava/util/Map;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsnet/downloader/popup/m;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsnet/downloader/popup/m;->c:Lkotlin/jvm/internal/Ref$LongRef;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsnet/downloader/popup/m;->d:Lkotlin/jvm/internal/Ref$LongRef;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/transsnet/downloader/popup/m;->e:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/popup/m;->a:Ljava/util/Map;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/popup/m;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsnet/downloader/popup/m;->c:Lkotlin/jvm/internal/Ref$LongRef;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsnet/downloader/popup/m;->d:Lkotlin/jvm/internal/Ref$LongRef;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsnet/downloader/popup/m;->e:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    .line 10
    .line 11
    check-cast p1, Ljava/lang/Long;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v5

    .line 17
    check-cast p2, Ljava/lang/Long;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide v7

    .line 23
    invoke-static/range {v0 .. v8}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->h(Ljava/util/Map;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;JJ)Lkotlin/Unit;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method
