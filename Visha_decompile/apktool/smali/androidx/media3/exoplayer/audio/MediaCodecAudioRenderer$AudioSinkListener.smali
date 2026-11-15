.class final Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/audio/AudioSink$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioSinkListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;-><init>(Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;)V

    return-void
.end method


# virtual methods
.method public onAudioCapabilitiesChanged()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    invoke-static {p0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->access$500(Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;)V

    return-void
.end method

.method public onAudioSinkError(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio sink error"

    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    invoke-static {p0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->access$200(Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;)Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->audioSinkError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onAudioTrackInitialized(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    invoke-static {p0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->access$200(Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;)Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->audioTrackInitialized(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    return-void
.end method

.method public onAudioTrackReleased(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    invoke-static {p0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->access$200(Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;)Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->audioTrackReleased(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    return-void
.end method

.method public onOffloadBufferEmptying()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    invoke-static {p0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->access$300(Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;)Landroidx/media3/exoplayer/Renderer$WakeupListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer$WakeupListener;->onWakeup()V

    :cond_0
    return-void
.end method

.method public onOffloadBufferFull()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    invoke-static {p0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->access$400(Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;)Landroidx/media3/exoplayer/Renderer$WakeupListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer$WakeupListener;->onSleep()V

    :cond_0
    return-void
.end method

.method public onPositionAdvancing(J)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    invoke-static {p0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->access$200(Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;)Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->positionAdvancing(J)V

    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->onPositionDiscontinuity()V

    return-void
.end method

.method public onSilenceSkipped()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->access$102(Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;Z)Z

    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    invoke-static {p0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->access$200(Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;)Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->skipSilenceEnabledChanged(Z)V

    return-void
.end method

.method public onUnderrun(IJJ)V
    .locals 6

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    invoke-static {p0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->access$200(Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;)Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->underrun(IJJ)V

    return-void
.end method
