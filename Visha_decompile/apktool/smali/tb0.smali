.class public final synthetic Ltb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/source/MediaSource;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltb0;->a:Landroidx/media3/exoplayer/source/MediaSource;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ltb0;->a:Landroidx/media3/exoplayer/source/MediaSource;

    check-cast p1, Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->e(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;)V

    return-void
.end method
