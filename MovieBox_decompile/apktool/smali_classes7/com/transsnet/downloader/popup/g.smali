.class public final synthetic Lcom/transsnet/downloader/popup/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/popup/PopupManager;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

.field public final synthetic d:Z

.field public final synthetic e:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZLkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/popup/g;->a:Lcom/transsnet/downloader/popup/PopupManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsnet/downloader/popup/g;->b:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsnet/downloader/popup/g;->c:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/transsnet/downloader/popup/g;->d:Z

    .line 11
    .line 12
    iput-object p5, p0, Lcom/transsnet/downloader/popup/g;->e:Lkotlin/jvm/functions/Function2;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/popup/g;->a:Lcom/transsnet/downloader/popup/PopupManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/popup/g;->b:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsnet/downloader/popup/g;->c:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/transsnet/downloader/popup/g;->d:Z

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsnet/downloader/popup/g;->e:Lkotlin/jvm/functions/Function2;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    check-cast v5, Lyw/b;

    .line 13
    .line 14
    invoke-static/range {v0 .. v5}, Lcom/transsnet/downloader/popup/PopupManager;->j(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZLkotlin/jvm/functions/Function2;Lyw/b;)Lkotlin/Unit;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
