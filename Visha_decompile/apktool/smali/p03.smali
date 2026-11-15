.class public final synthetic Lp03;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/offline/DownloadManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/offline/DownloadManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp03;->b:Landroidx/media3/exoplayer/offline/DownloadManager;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lp03;->b:Landroidx/media3/exoplayer/offline/DownloadManager;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->b(Landroidx/media3/exoplayer/offline/DownloadManager;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
