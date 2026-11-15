.class final Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;
.super Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/SequenceRenderersFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SequenceVideoRenderer"
.end annotation


# instance fields
.field private final bufferingVideoSink:Landroidx/media3/transformer/BufferingVideoSink;

.field private currentEditedMediaItem:Landroidx/media3/transformer/EditedMediaItem;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private offsetToCompositionTimeUs:J

.field private pendingEffects:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private final requestToneMapping:Z

.field private final sequence:Landroidx/media3/transformer/EditedMediaItemSequence;

.field final synthetic this$0:Landroidx/media3/transformer/SequenceRenderersFactory;


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/SequenceRenderersFactory;Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/transformer/BufferingVideoSink;Z)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->this$0:Landroidx/media3/transformer/SequenceRenderersFactory;

    new-instance p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;-><init>(Landroid/content/Context;)V

    sget-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;->DEFAULT:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setMediaCodecSelector(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    invoke-static {p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;->getDefault(Landroid/content/Context;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setCodecAdapterFactory(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setAllowedJoiningTimeMs(J)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setEnableDecoderFallback(Z)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setEventHandler(Landroid/os/Handler;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setEventListener(Landroidx/media3/exoplayer/video/VideoRendererEventListener;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    const/16 p2, 0x32

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setMaxDroppedFramesToNotify(I)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    const/high16 p2, 0x41f00000    # 30.0f

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setAssumedMinimumCodecOperatingRate(F)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    invoke-virtual {p1, p6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setVideoSink(Landroidx/media3/exoplayer/video/VideoSink;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)V

    iput-object p5, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->sequence:Landroidx/media3/transformer/EditedMediaItemSequence;

    iput-object p6, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->bufferingVideoSink:Landroidx/media3/transformer/BufferingVideoSink;

    iput-boolean p7, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->requestToneMapping:Z

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->pendingEffects:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->experimentalEnableProcessedStreamChangedAtStart()V

    return-void
.end method

.method private activateBufferingVideoSink()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->bufferingVideoSink:Landroidx/media3/transformer/BufferingVideoSink;

    invoke-virtual {v0}, Landroidx/media3/transformer/BufferingVideoSink;->getVideoSink()Landroidx/media3/exoplayer/video/VideoSink;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->this$0:Landroidx/media3/transformer/SequenceRenderersFactory;

    invoke-static {v0}, Landroidx/media3/transformer/SequenceRenderersFactory;->access$400(Landroidx/media3/transformer/SequenceRenderersFactory;)Landroidx/media3/exoplayer/video/VideoSink;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/VideoSink;

    iget-object v1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->bufferingVideoSink:Landroidx/media3/transformer/BufferingVideoSink;

    invoke-virtual {v1, v0}, Landroidx/media3/transformer/BufferingVideoSink;->setVideoSink(Landroidx/media3/exoplayer/video/VideoSink;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodec()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->this$0:Landroidx/media3/transformer/SequenceRenderersFactory;

    invoke-static {v2}, Landroidx/media3/transformer/SequenceRenderersFactory;->access$300(Landroidx/media3/transformer/SequenceRenderersFactory;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodecInfo()Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->setOutputSurfaceV23(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Landroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method private deactivateBufferingVideoSink()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->this$0:Landroidx/media3/transformer/SequenceRenderersFactory;

    invoke-static {v0}, Landroidx/media3/transformer/SequenceRenderersFactory;->access$300(Landroidx/media3/transformer/SequenceRenderersFactory;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->bufferingVideoSink:Landroidx/media3/transformer/BufferingVideoSink;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/transformer/BufferingVideoSink;->setVideoSink(Landroidx/media3/exoplayer/video/VideoSink;)V

    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->bufferingVideoSink:Landroidx/media3/transformer/BufferingVideoSink;

    invoke-virtual {v0}, Landroidx/media3/transformer/BufferingVideoSink;->clearPendingOperations()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodec()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodecInfo()Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->bufferingVideoSink:Landroidx/media3/transformer/BufferingVideoSink;

    invoke-virtual {v1}, Landroidx/media3/transformer/BufferingVideoSink;->getInputSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->setOutputSurfaceV23(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Landroid/view/Surface;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    :goto_0
    return-void
.end method


# virtual methods
.method public changeVideoSinkInputStream(Landroidx/media3/exoplayer/video/VideoSink;ILandroidx/media3/common/Format;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->pendingEffects:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p1, p2, p3, p0}, Landroidx/media3/exoplayer/video/VideoSink;->onInputStreamChanged(ILandroidx/media3/common/Format;Ljava/util/List;)V

    return-void
.end method

.method public getBufferTimestampAdjustmentUs()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->offsetToCompositionTimeUs:J

    return-wide v0
.end method

.method public getMediaFormat(Landroidx/media3/common/Format;Ljava/lang/String;Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;FZI)Landroid/media/MediaFormat;
    .locals 0

    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getMediaFormat(Landroidx/media3/common/Format;Ljava/lang/String;Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;FZI)Landroid/media/MediaFormat;

    move-result-object p1

    iget-boolean p0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->requestToneMapping:Z

    if-eqz p0, :cond_0

    sget p0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 p2, 0x1f

    if-lt p0, p2, :cond_0

    const-string p0, "color-transfer-request"

    const/4 p2, 0x3

    invoke-virtual {p1, p0, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    return-object p1
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->handleMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public onDisabled()V
    .locals 0

    invoke-super {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->onDisabled()V

    invoke-direct {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->deactivateBufferingVideoSink()V

    return-void
.end method

.method public onEnabled(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->activateBufferingVideoSink()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->onEnabled(ZZ)V

    return-void
.end method

.method public onStarted()V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->activateBufferingVideoSink()V

    invoke-super {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->onStarted()V

    return-void
.end method

.method public onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 3
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

    iget-object v1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->sequence:Landroidx/media3/transformer/EditedMediaItemSequence;

    invoke-static {v1, v0}, Landroidx/media3/transformer/SequenceRenderersFactory;->access$000(Landroidx/media3/transformer/EditedMediaItemSequence;I)Landroidx/media3/transformer/EditedMediaItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->currentEditedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    iget-object v1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->sequence:Landroidx/media3/transformer/EditedMediaItemSequence;

    invoke-static {v1, v0, p4, p5}, Landroidx/media3/transformer/SequenceRenderersFactory;->access$100(Landroidx/media3/transformer/EditedMediaItemSequence;IJ)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->offsetToCompositionTimeUs:J

    iget-object v1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->sequence:Landroidx/media3/transformer/EditedMediaItemSequence;

    iget-object v1, v1, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/EditedMediaItem;

    iget-object v0, v0, Landroidx/media3/transformer/EditedMediaItem;->effects:Landroidx/media3/transformer/Effects;

    iget-object v0, v0, Landroidx/media3/transformer/Effects;->videoEffects:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->pendingEffects:Lcom/google/common/collect/ImmutableList;

    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public renderToEndOfStream()V
    .locals 3

    invoke-super {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderToEndOfStream()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->sequence:Landroidx/media3/transformer/EditedMediaItemSequence;

    iget-object v2, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->currentEditedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/transformer/EditedMediaItem;

    invoke-static {v0, v1, v2}, Landroidx/media3/transformer/SequenceRenderersFactory;->access$200(Landroidx/media3/common/Timeline;Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/transformer/EditedMediaItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->bufferingVideoSink:Landroidx/media3/transformer/BufferingVideoSink;

    invoke-virtual {p0}, Landroidx/media3/transformer/BufferingVideoSink;->signalEndOfInput()V

    :cond_0
    return-void
.end method

.method public shouldInitCodec(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->this$0:Landroidx/media3/transformer/SequenceRenderersFactory;

    invoke-static {v0}, Landroidx/media3/transformer/SequenceRenderersFactory;->access$300(Landroidx/media3/transformer/SequenceRenderersFactory;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->bufferingVideoSink:Landroidx/media3/transformer/BufferingVideoSink;

    invoke-virtual {v0}, Landroidx/media3/transformer/BufferingVideoSink;->getVideoSink()Landroidx/media3/exoplayer/video/VideoSink;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldInitCodec(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    move-result p0

    return p0
.end method
