.class final Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;
.super Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/SequenceRenderersFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SequenceAudioRenderer"
.end annotation


# instance fields
.field private final audioSink:Landroidx/media3/transformer/AudioGraphInputAudioSink;

.field private pendingEditedMediaItem:Landroidx/media3/transformer/EditedMediaItem;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private pendingOffsetToCompositionTimeUs:J

.field private final playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

.field private final sequence:Landroidx/media3/transformer/EditedMediaItemSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/transformer/AudioGraphInputAudioSink;Landroidx/media3/transformer/PlaybackAudioGraphWrapper;)V
    .locals 6
    .param p2    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;->DEFAULT:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/audio/AudioSink;)V

    iput-object p4, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->sequence:Landroidx/media3/transformer/EditedMediaItemSequence;

    iput-object p5, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->audioSink:Landroidx/media3/transformer/AudioGraphInputAudioSink;

    iput-object p6, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    return-void
.end method

.method private onMediaItemChanged()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->pendingEditedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/EditedMediaItem;

    iget-object v1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->audioSink:Landroidx/media3/transformer/AudioGraphInputAudioSink;

    iget-wide v2, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->pendingOffsetToCompositionTimeUs:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object v4

    iget-object p0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->sequence:Landroidx/media3/transformer/EditedMediaItemSequence;

    invoke-static {v4, p0, v0}, Landroidx/media3/transformer/SequenceRenderersFactory;->access$200(Landroidx/media3/common/Timeline;Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/transformer/EditedMediaItem;)Z

    move-result p0

    invoke-virtual {v1, v0, v2, v3, p0}, Landroidx/media3/transformer/AudioGraphInputAudioSink;->onMediaItemChanged(Landroidx/media3/transformer/EditedMediaItem;JZ)V

    return-void
.end method


# virtual methods
.method public onPositionReset(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->onPositionReset(JZ)V

    invoke-direct {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->onMediaItemChanged()V

    return-void
.end method

.method public onProcessedStreamChange()V
    .locals 0

    invoke-super {p0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->onProcessedStreamChange()V

    invoke-direct {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->onMediaItemChanged()V

    return-void
.end method

.method public onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    iget-object v1, p6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->sequence:Landroidx/media3/transformer/EditedMediaItemSequence;

    invoke-static {v1, v0}, Landroidx/media3/transformer/SequenceRenderersFactory;->access$000(Landroidx/media3/transformer/EditedMediaItemSequence;I)Landroidx/media3/transformer/EditedMediaItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->pendingEditedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    iget-object v1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->sequence:Landroidx/media3/transformer/EditedMediaItemSequence;

    invoke-static {v1, v0, p4, p5}, Landroidx/media3/transformer/SequenceRenderersFactory;->access$100(Landroidx/media3/transformer/EditedMediaItemSequence;IJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->pendingOffsetToCompositionTimeUs:J

    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public render(JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->render(JJ)V

    :goto_0
    :try_start_0
    iget-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    invoke-virtual {p1}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->processData()Z

    move-result p1
    :try_end_0
    .catch Landroidx/media3/transformer/ExportException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    const/16 p3, 0x138a

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0
.end method
