.class public final synthetic Lcom/transsnet/downloader/fragment/w2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/w2;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/w2;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;->p0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
