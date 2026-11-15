.class Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoSink$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->onEnabled(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;->this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroidx/media3/exoplayer/video/VideoSink;Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;->this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    iget-object p1, p2, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;->format:Landroidx/media3/common/Format;

    const/16 v0, 0x1b59

    invoke-static {p0, p2, p1, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->access$1400(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->access$1500(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Landroidx/media3/exoplayer/ExoPlaybackException;)V

    return-void
.end method

.method public onFirstFrameRendered(Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;->this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-static {p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->access$1200(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;->this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-static {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->access$1300(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)V

    :cond_0
    return-void
.end method

.method public onFrameDropped(Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;->this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-static {p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->access$1200(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;->this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(II)V

    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/exoplayer/video/VideoSink;Landroidx/media3/common/VideoSize;)V
    .locals 0

    return-void
.end method
