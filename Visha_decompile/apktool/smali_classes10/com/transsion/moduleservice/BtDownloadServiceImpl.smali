.class public Lcom/transsion/moduleservice/BtDownloadServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/moduleservice/IBtDownloadService;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/btdownload/btdownloadservice"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gotoTorrentDownloadActivity(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lpk0;->f()Lpk0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lpk0;->k(Landroid/content/Context;)V

    return-void
.end method

.method public hasTaskRunning()Z
    .locals 0

    invoke-static {}, Lpk0;->f()Lpk0;

    move-result-object p0

    invoke-virtual {p0}, Lpk0;->l()Z

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public sniffTorrent(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lpx5;->g(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
