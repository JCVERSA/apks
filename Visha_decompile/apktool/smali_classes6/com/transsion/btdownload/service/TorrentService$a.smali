.class public Lcom/transsion/btdownload/service/TorrentService$a;
.super Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/btdownload/service/TorrentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/btdownload/service/TorrentService;


# direct methods
.method public constructor <init>(Lcom/transsion/btdownload/service/TorrentService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/btdownload/service/TorrentService$a;->a:Lcom/transsion/btdownload/service/TorrentService;

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileComplete(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lav3;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/transsion/btdownload/service/TorrentService$a$a;

    invoke-direct {v2, p0}, Lcom/transsion/btdownload/service/TorrentService$a$a;-><init>(Lcom/transsion/btdownload/service/TorrentService$a;)V

    invoke-static {v0, v1, p1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method public onMagnetLoaded(Ljava/lang/String;[B)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onMagnetLoaded(Ljava/lang/String;[B)V

    return-void
.end method

.method public onSessionStopped()V
    .locals 2

    const-string v0, "visha_TorrentService"

    const-string v1, "Session stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService$a;->a:Lcom/transsion/btdownload/service/TorrentService;

    invoke-static {p0}, Lcom/transsion/btdownload/service/TorrentService;->e(Lcom/transsion/btdownload/service/TorrentService;)V

    return-void
.end method

.method public onTorrentAdded(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onTorrentAdded(Ljava/lang/String;)V

    return-void
.end method

.method public onTorrentPaused(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onTorrentPaused(Ljava/lang/String;)V

    return-void
.end method

.method public onTorrentResumed(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onTorrentResumed(Ljava/lang/String;)V

    return-void
.end method
