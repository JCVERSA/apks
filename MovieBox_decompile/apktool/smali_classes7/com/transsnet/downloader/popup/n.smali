.class public final synthetic Lcom/transsnet/downloader/popup/n;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic c:Lcom/transsnet/downloader/popup/PopupManager;

.field public final synthetic d:Lyw/b;

.field public final synthetic e:Lkotlin/jvm/functions/Function2;

.field public final synthetic f:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/transsnet/downloader/popup/PopupManager;Lyw/b;Lkotlin/jvm/functions/Function2;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/popup/n;->a:Lkotlin/jvm/internal/Ref$LongRef;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsnet/downloader/popup/n;->b:Lkotlin/jvm/internal/Ref$LongRef;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsnet/downloader/popup/n;->c:Lcom/transsnet/downloader/popup/PopupManager;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsnet/downloader/popup/n;->d:Lyw/b;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/transsnet/downloader/popup/n;->e:Lkotlin/jvm/functions/Function2;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/transsnet/downloader/popup/n;->f:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/transsnet/downloader/popup/n;->g:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/popup/n;->a:Lkotlin/jvm/internal/Ref$LongRef;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/popup/n;->b:Lkotlin/jvm/internal/Ref$LongRef;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsnet/downloader/popup/n;->c:Lcom/transsnet/downloader/popup/PopupManager;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsnet/downloader/popup/n;->d:Lyw/b;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsnet/downloader/popup/n;->e:Lkotlin/jvm/functions/Function2;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsnet/downloader/popup/n;->f:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    .line 12
    .line 13
    iget-boolean v6, p0, Lcom/transsnet/downloader/popup/n;->g:Z

    .line 14
    .line 15
    check-cast p1, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v7

    .line 21
    invoke-static/range {v0 .. v7}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->g(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lcom/transsnet/downloader/popup/PopupManager;Lyw/b;Lkotlin/jvm/functions/Function2;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZZ)Lkotlin/Unit;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method
