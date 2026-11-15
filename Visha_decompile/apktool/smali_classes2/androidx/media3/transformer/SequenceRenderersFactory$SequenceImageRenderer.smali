.class final Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;
.super Landroidx/media3/exoplayer/image/ImageRenderer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/SequenceRenderersFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SequenceImageRenderer"
.end annotation


# instance fields
.field private currentEditedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

.field private inputStreamPending:Z

.field private mayRenderStartOfStream:Z

.field private offsetToCompositionTimeUs:J

.field private pendingExoPlaybackException:Landroidx/media3/exoplayer/ExoPlaybackException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final sequence:Landroidx/media3/transformer/EditedMediaItemSequence;

.field private streamStartPositionUs:J

.field private timestampIterator:Landroidx/media3/common/util/ConstantRateTimestampIterator;

.field private videoEffects:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private final videoSink:Landroidx/media3/exoplayer/video/VideoSink;


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/exoplayer/image/ImageDecoder$Factory;Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/image/ImageOutput;->NO_OP:Landroidx/media3/exoplayer/image/ImageOutput;

    invoke-direct {p0, p2, v0}, Landroidx/media3/exoplayer/image/ImageRenderer;-><init>(Landroidx/media3/exoplayer/image/ImageDecoder$Factory;Landroidx/media3/exoplayer/image/ImageOutput;)V

    iput-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->sequence:Landroidx/media3/transformer/EditedMediaItemSequence;

    iput-object p3, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoEffects:Lcom/google/common/collect/ImmutableList;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->streamStartPositionUs:J

    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->lambda$onEnabled$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method private createTimestampIterator(J)Landroidx/media3/common/util/ConstantRateTimestampIterator;
    .locals 10

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getStreamOffsetUs()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->offsetToCompositionTimeUs:J

    add-long/2addr v2, v0

    sub-long/2addr p1, v0

    add-long v5, v2, p1

    iget-object p0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->currentEditedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/transformer/EditedMediaItem;

    invoke-virtual {p0}, Landroidx/media3/transformer/EditedMediaItem;->getPresentationDurationUs()J

    move-result-wide p0

    add-long v7, v2, p0

    new-instance p0, Landroidx/media3/common/util/ConstantRateTimestampIterator;

    const/high16 v9, 0x41f00000    # 30.0f

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroidx/media3/common/util/ConstantRateTimestampIterator;-><init>(JJF)V

    return-object p0
.end method

.method private static synthetic lambda$onEnabled$0(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method


# virtual methods
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

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/Renderer$WakeupListener;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->setWakeupListener(Landroidx/media3/exoplayer/Renderer$WakeupListener;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/image/ImageRenderer;->handleMessage(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 1

    invoke-super {p0}, Landroidx/media3/exoplayer/image/ImageRenderer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->timestampIterator:Landroidx/media3/common/util/ConstantRateTimestampIterator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/util/ConstantRateTimestampIterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReady()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->mayRenderStartOfStream:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-super {p0}, Landroidx/media3/exoplayer/image/ImageRenderer;->isReady()Z

    move-result p0

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/video/VideoSink;->isReady(Z)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Landroidx/media3/exoplayer/image/ImageRenderer;->isReady()Z

    move-result p0

    return p0
.end method

.method public maybeInitializeProcessingPipeline()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/video/VideoSink;->initialize(Landroidx/media3/common/Format;)Z

    move-result p0
    :try_end_0
    .catch Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v1

    const/16 v2, 0x1b58

    invoke-virtual {p0, v1, v0, v2}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0
.end method

.method public onDisabled()V
    .locals 0

    invoke-super {p0}, Landroidx/media3/exoplayer/image/ImageRenderer;->onDisabled()V

    iget-object p0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {p0}, Landroidx/media3/exoplayer/video/VideoSink;->onRendererDisabled()V

    return-void
.end method

.method public onEnabled(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/image/ImageRenderer;->onEnabled(ZZ)V

    iput-boolean p2, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->mayRenderStartOfStream:Z

    iget-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/video/VideoSink;->onRendererEnabled(Z)V

    iget-object p0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    sget-object p1, Landroidx/media3/exoplayer/video/VideoSink$Listener;->NO_OP:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    new-instance p2, Landroidx/media3/transformer/h0;

    invoke-direct {p2}, Landroidx/media3/transformer/h0;-><init>()V

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/video/VideoSink;->setListener(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public onPositionReset(JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    if-nez p3, :cond_0

    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/video/VideoSink;->flush(Z)V

    invoke-direct {p0, p1, p2}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->createTimestampIterator(J)Landroidx/media3/common/util/ConstantRateTimestampIterator;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->timestampIterator:Landroidx/media3/common/util/ConstantRateTimestampIterator;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/exoplayer/image/ImageRenderer;->onPositionReset(JZ)V

    return-void
.end method

.method public onReset()V
    .locals 1

    invoke-super {p0}, Landroidx/media3/exoplayer/image/ImageRenderer;->onReset()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->pendingExoPlaybackException:Landroidx/media3/exoplayer/ExoPlaybackException;

    return-void
.end method

.method public onStarted()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    invoke-super {p0}, Landroidx/media3/exoplayer/BaseRenderer;->onStarted()V

    iget-object p0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {p0}, Landroidx/media3/exoplayer/video/VideoSink;->onRendererStarted()V

    return-void
.end method

.method public onStopped()V
    .locals 0

    invoke-super {p0}, Landroidx/media3/exoplayer/BaseRenderer;->onStopped()V

    iget-object p0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {p0}, Landroidx/media3/exoplayer/video/VideoSink;->onRendererStopped()V

    return-void
.end method

.method public onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 4
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

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-wide p2, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->streamStartPositionUs:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    iget-object v2, p6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->sequence:Landroidx/media3/transformer/EditedMediaItemSequence;

    iget-object v2, v2, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/transformer/EditedMediaItem;

    iput-object v2, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->currentEditedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    iget-object v2, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->sequence:Landroidx/media3/transformer/EditedMediaItemSequence;

    invoke-static {v2, v0, p4, p5}, Landroidx/media3/transformer/SequenceRenderersFactory;->access$100(Landroidx/media3/transformer/EditedMediaItemSequence;IJ)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->offsetToCompositionTimeUs:J

    invoke-direct {p0, p2, p3}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->createTimestampIterator(J)Landroidx/media3/common/util/ConstantRateTimestampIterator;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->timestampIterator:Landroidx/media3/common/util/ConstantRateTimestampIterator;

    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->currentEditedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    iget-object v0, v0, Landroidx/media3/transformer/EditedMediaItem;->effects:Landroidx/media3/transformer/Effects;

    iget-object v0, v0, Landroidx/media3/transformer/Effects;->videoEffects:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoEffects:Lcom/google/common/collect/ImmutableList;

    iput-boolean v1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->inputStreamPending:Z

    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/image/ImageRenderer;->onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public processOutputBuffer(JJLandroid/graphics/Bitmap;J)Z
    .locals 2

    iget-boolean p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->inputStreamPending:Z

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    iget-wide p6, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->streamStartPositionUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p6, v0

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    iget-wide p6, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->streamStartPositionUs:J

    iget-wide v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->offsetToCompositionTimeUs:J

    invoke-interface {p1, p6, p7, v0, v1}, Landroidx/media3/exoplayer/video/VideoSink;->setStreamTimestampInfo(JJ)V

    iget-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    new-instance p4, Landroidx/media3/common/Format$Builder;

    invoke-direct {p4}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string p6, "image/raw"

    invoke-virtual {p4, p6}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p4

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p6

    invoke-virtual {p4, p6}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object p4

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p6

    invoke-virtual {p4, p6}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object p4

    sget-object p6, Landroidx/media3/common/ColorInfo;->SRGB_BT709_FULL:Landroidx/media3/common/ColorInfo;

    invoke-virtual {p4, p6}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object p4

    const/high16 p6, 0x41f00000    # 30.0f

    invoke-virtual {p4, p6}, Landroidx/media3/common/Format$Builder;->setFrameRate(F)Landroidx/media3/common/Format$Builder;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p4

    iget-object p6, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoEffects:Lcom/google/common/collect/ImmutableList;

    const/4 p7, 0x2

    invoke-interface {p1, p7, p4, p6}, Landroidx/media3/exoplayer/video/VideoSink;->onInputStreamChanged(ILandroidx/media3/common/Format;Ljava/util/List;)V

    iput-boolean p3, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->inputStreamPending:Z

    :cond_1
    iget-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    iget-object p4, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->timestampIterator:Landroidx/media3/common/util/ConstantRateTimestampIterator;

    invoke-static {p4}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/media3/common/util/TimestampIterator;

    invoke-interface {p1, p5, p4}, Landroidx/media3/exoplayer/video/VideoSink;->handleInputBitmap(Landroid/graphics/Bitmap;Landroidx/media3/common/util/TimestampIterator;)Z

    move-result p1

    if-nez p1, :cond_2

    return p3

    :cond_2
    iget-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {p1}, Landroidx/media3/exoplayer/video/VideoSink;->signalEndOfCurrentInputStream()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object p1

    iget-object p3, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->sequence:Landroidx/media3/transformer/EditedMediaItemSequence;

    iget-object p4, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->currentEditedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    invoke-static {p4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/media3/transformer/EditedMediaItem;

    invoke-static {p1, p3, p4}, Landroidx/media3/transformer/SequenceRenderersFactory;->access$200(Landroidx/media3/common/Timeline;Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/transformer/EditedMediaItem;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {p0}, Landroidx/media3/exoplayer/video/VideoSink;->signalEndOfInput()V

    :cond_3
    return p2
.end method

.method public render(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->pendingExoPlaybackException:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/image/ImageRenderer;->render(JJ)V

    :try_start_0
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/VideoSink;->render(JJ)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p1, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;->format:Landroidx/media3/common/Format;

    const/16 p3, 0x1b59

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->pendingExoPlaybackException:Landroidx/media3/exoplayer/ExoPlaybackException;

    throw v0
.end method
