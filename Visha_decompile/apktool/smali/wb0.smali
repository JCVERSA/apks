.class public final synthetic Lwb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/source/preload/BasePreloadManager;

.field public final synthetic c:Landroidx/media3/exoplayer/source/MediaSource;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwb0;->b:Landroidx/media3/exoplayer/source/preload/BasePreloadManager;

    iput-object p2, p0, Lwb0;->c:Landroidx/media3/exoplayer/source/MediaSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lwb0;->b:Landroidx/media3/exoplayer/source/preload/BasePreloadManager;

    iget-object p0, p0, Lwb0;->c:Landroidx/media3/exoplayer/source/MediaSource;

    invoke-static {v0, p0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->b(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;Landroidx/media3/exoplayer/source/MediaSource;)V

    return-void
.end method
