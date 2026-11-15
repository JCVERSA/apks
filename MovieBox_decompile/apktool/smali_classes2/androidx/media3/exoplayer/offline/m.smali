.class public final synthetic Landroidx/media3/exoplayer/offline/m;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/offline/DownloadService$b;

.field public final synthetic b:Landroidx/media3/exoplayer/offline/DownloadService;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/offline/DownloadService$b;Landroidx/media3/exoplayer/offline/DownloadService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/m;->a:Landroidx/media3/exoplayer/offline/DownloadService$b;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/offline/m;->b:Landroidx/media3/exoplayer/offline/DownloadService;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/m;->a:Landroidx/media3/exoplayer/offline/DownloadService$b;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/m;->b:Landroidx/media3/exoplayer/offline/DownloadService;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/offline/DownloadService$b;->h(Landroidx/media3/exoplayer/offline/DownloadService$b;Landroidx/media3/exoplayer/offline/DownloadService;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
