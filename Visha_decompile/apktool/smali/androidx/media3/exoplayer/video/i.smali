.class public final synthetic Landroidx/media3/exoplayer/video/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;

.field public final synthetic c:Landroidx/media3/exoplayer/video/VideoSink$Listener;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;Landroidx/media3/exoplayer/video/VideoSink$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/i;->b:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/i;->c:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/i;->b:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/i;->c:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    invoke-static {v0, p0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->c(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;Landroidx/media3/exoplayer/video/VideoSink$Listener;)V

    return-void
.end method
