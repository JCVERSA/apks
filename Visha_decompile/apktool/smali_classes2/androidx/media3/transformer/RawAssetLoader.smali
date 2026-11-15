.class public final Landroidx/media3/transformer/RawAssetLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/AssetLoader;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field private final assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

.field private final audioFormat:Landroidx/media3/common/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private audioSampleConsumer:Landroidx/media3/transformer/SampleConsumer;

.field private final editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

.field private final frameProcessedListener:Landroidx/media3/common/OnInputFrameProcessedListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isAudioEndOfStreamSignaled:Z

.field private isAudioTrackAdded:Z

.field private volatile isStarted:Z

.field private isVideoEndOfStreamSignaled:Z

.field private isVideoTrackAdded:Z

.field private volatile lastQueuedAudioPresentationTimeUs:J

.field private volatile lastQueuedVideoPresentationTimeUs:J

.field private progressState:I

.field private final videoFormat:Landroidx/media3/common/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private videoSampleConsumer:Landroidx/media3/transformer/SampleConsumer;


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/common/Format;Landroidx/media3/common/Format;Landroidx/media3/common/OnInputFrameProcessedListener;)V
    .locals 4
    .param p3    # Landroidx/media3/common/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/media3/common/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/media3/common/OnInputFrameProcessedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    if-eqz p4, :cond_3

    iget v2, p4, Landroidx/media3/common/Format;->height:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget v2, p4, Landroidx/media3/common/Format;->width:I

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-object p1, p0, Landroidx/media3/transformer/RawAssetLoader;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    iput-object p2, p0, Landroidx/media3/transformer/RawAssetLoader;->assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    iput-object p3, p0, Landroidx/media3/transformer/RawAssetLoader;->audioFormat:Landroidx/media3/common/Format;

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object p1

    iget-object p2, p4, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {p2}, Landroidx/media3/transformer/TransformerUtil;->getValidColor(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/ColorInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string/jumbo p2, "video/raw"

    invoke-virtual {p1, p2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    iput-object p1, p0, Landroidx/media3/transformer/RawAssetLoader;->videoFormat:Landroidx/media3/common/Format;

    iput-object p5, p0, Landroidx/media3/transformer/RawAssetLoader;->frameProcessedListener:Landroidx/media3/common/OnInputFrameProcessedListener;

    iput v1, p0, Landroidx/media3/transformer/RawAssetLoader;->progressState:I

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Landroidx/media3/transformer/RawAssetLoader;->lastQueuedAudioPresentationTimeUs:J

    iput-wide p1, p0, Landroidx/media3/transformer/RawAssetLoader;->lastQueuedVideoPresentationTimeUs:J

    return-void
.end method


# virtual methods
.method public getDecoderNames()Lcom/google/common/collect/ImmutableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method public getProgress(Landroidx/media3/transformer/ProgressHolder;)I
    .locals 4

    iget v0, p0, Landroidx/media3/transformer/RawAssetLoader;->progressState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Landroidx/media3/transformer/RawAssetLoader;->lastQueuedAudioPresentationTimeUs:J

    iget-wide v2, p0, Landroidx/media3/transformer/RawAssetLoader;->lastQueuedVideoPresentationTimeUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    long-to-float v0, v0

    iget-object v1, p0, Landroidx/media3/transformer/RawAssetLoader;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    iget-wide v1, v1, Landroidx/media3/transformer/EditedMediaItem;->durationUs:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroidx/media3/transformer/ProgressHolder;->progress:I

    :cond_1
    iget p0, p0, Landroidx/media3/transformer/RawAssetLoader;->progressState:I

    return p0
.end method

.method public queueAudioData(Ljava/nio/ByteBuffer;JZ)Z
    .locals 5

    iget-boolean v0, p0, Landroidx/media3/transformer/RawAssetLoader;->isAudioEndOfStreamSignaled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-boolean v0, p0, Landroidx/media3/transformer/RawAssetLoader;->isStarted:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/transformer/RawAssetLoader;->isAudioTrackAdded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/transformer/RawAssetLoader;->assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    iget-object v3, p0, Landroidx/media3/transformer/RawAssetLoader;->audioFormat:Landroidx/media3/common/Format;

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/Format;

    const/4 v4, 0x2

    invoke-interface {v0, v3, v4}, Landroidx/media3/transformer/AssetLoader$Listener;->onTrackAdded(Landroidx/media3/common/Format;I)Z

    iput-boolean v1, p0, Landroidx/media3/transformer/RawAssetLoader;->isAudioTrackAdded:Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media3/transformer/RawAssetLoader;->audioSampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media3/transformer/RawAssetLoader;->assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    iget-object v3, p0, Landroidx/media3/transformer/RawAssetLoader;->audioFormat:Landroidx/media3/common/Format;

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/Format;

    invoke-interface {v0, v3}, Landroidx/media3/transformer/AssetLoader$Listener;->onOutputFormat(Landroidx/media3/common/Format;)Landroidx/media3/transformer/SampleConsumer;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iput-object v0, p0, Landroidx/media3/transformer/RawAssetLoader;->audioSampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    :cond_3
    iget-object v0, p0, Landroidx/media3/transformer/RawAssetLoader;->audioSampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    invoke-interface {v0}, Landroidx/media3/transformer/SampleConsumer;->getInputBuffer()Landroidx/media3/decoder/DecoderInputBuffer;

    move-result-object v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/media3/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    iget-object v3, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-eqz p4, :cond_5

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroidx/media3/decoder/Buffer;->addFlag(I)V

    :cond_5
    iget-object p1, p0, Landroidx/media3/transformer/RawAssetLoader;->audioSampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    invoke-interface {p1}, Landroidx/media3/transformer/SampleConsumer;->queueInputBuffer()Z

    move-result p1

    if-eqz p1, :cond_6

    iput-wide p2, p0, Landroidx/media3/transformer/RawAssetLoader;->lastQueuedAudioPresentationTimeUs:J

    iput-boolean p4, p0, Landroidx/media3/transformer/RawAssetLoader;->isAudioEndOfStreamSignaled:Z
    :try_end_0
    .catch Landroidx/media3/transformer/ExportException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :goto_1
    iget-object p0, p0, Landroidx/media3/transformer/RawAssetLoader;->assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    const/16 p2, 0x3e8

    invoke-static {p1, p2}, Landroidx/media3/transformer/ExportException;->createForAssetLoader(Ljava/lang/Throwable;I)Landroidx/media3/transformer/ExportException;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/media3/transformer/AssetLoader$Listener;->onError(Landroidx/media3/transformer/ExportException;)V

    goto :goto_3

    :goto_2
    iget-object p0, p0, Landroidx/media3/transformer/RawAssetLoader;->assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/transformer/AssetLoader$Listener;->onError(Landroidx/media3/transformer/ExportException;)V

    :cond_6
    :goto_3
    return v2
.end method

.method public queueInputTexture(IJ)Z
    .locals 5

    iget-boolean v0, p0, Landroidx/media3/transformer/RawAssetLoader;->isVideoEndOfStreamSignaled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v2, p0, Landroidx/media3/transformer/RawAssetLoader;->isVideoTrackAdded:Z

    const/4 v3, 0x2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroidx/media3/transformer/RawAssetLoader;->isStarted:Z

    if-nez v2, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Landroidx/media3/transformer/RawAssetLoader;->assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    iget-object v4, p0, Landroidx/media3/transformer/RawAssetLoader;->videoFormat:Landroidx/media3/common/Format;

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/Format;

    invoke-interface {v2, v4, v3}, Landroidx/media3/transformer/AssetLoader$Listener;->onTrackAdded(Landroidx/media3/common/Format;I)Z

    iput-boolean v1, p0, Landroidx/media3/transformer/RawAssetLoader;->isVideoTrackAdded:Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v2, p0, Landroidx/media3/transformer/RawAssetLoader;->videoSampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    if-nez v2, :cond_3

    iget-object v2, p0, Landroidx/media3/transformer/RawAssetLoader;->assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    iget-object v4, p0, Landroidx/media3/transformer/RawAssetLoader;->videoFormat:Landroidx/media3/common/Format;

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/Format;

    invoke-interface {v2, v4}, Landroidx/media3/transformer/AssetLoader$Listener;->onOutputFormat(Landroidx/media3/common/Format;)Landroidx/media3/transformer/SampleConsumer;

    move-result-object v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    iput-object v2, p0, Landroidx/media3/transformer/RawAssetLoader;->videoSampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    iget-object v4, p0, Landroidx/media3/transformer/RawAssetLoader;->frameProcessedListener:Landroidx/media3/common/OnInputFrameProcessedListener;

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/OnInputFrameProcessedListener;

    invoke-interface {v2, v4}, Landroidx/media3/transformer/SampleConsumer;->setOnInputFrameProcessedListener(Landroidx/media3/common/OnInputFrameProcessedListener;)V

    :cond_3
    iget-object v2, p0, Landroidx/media3/transformer/RawAssetLoader;->videoSampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/transformer/SampleConsumer;->queueInputTexture(IJ)I

    move-result p1

    if-ne p1, v3, :cond_4

    return v0

    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    iput-boolean v1, p0, Landroidx/media3/transformer/RawAssetLoader;->isVideoEndOfStreamSignaled:Z

    :cond_5
    iput-wide p2, p0, Landroidx/media3/transformer/RawAssetLoader;->lastQueuedVideoPresentationTimeUs:J
    :try_end_0
    .catch Landroidx/media3/transformer/ExportException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :goto_1
    iget-object p0, p0, Landroidx/media3/transformer/RawAssetLoader;->assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    const/16 p2, 0x3e8

    invoke-static {p1, p2}, Landroidx/media3/transformer/ExportException;->createForAssetLoader(Ljava/lang/Throwable;I)Landroidx/media3/transformer/ExportException;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/media3/transformer/AssetLoader$Listener;->onError(Landroidx/media3/transformer/ExportException;)V

    goto :goto_3

    :goto_2
    iget-object p0, p0, Landroidx/media3/transformer/RawAssetLoader;->assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/transformer/AssetLoader$Listener;->onError(Landroidx/media3/transformer/ExportException;)V

    :goto_3
    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/transformer/RawAssetLoader;->progressState:I

    return-void
.end method

.method public signalEndOfVideoInput()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/transformer/RawAssetLoader;->isVideoEndOfStreamSignaled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/transformer/RawAssetLoader;->isVideoEndOfStreamSignaled:Z

    iget-object v0, p0, Landroidx/media3/transformer/RawAssetLoader;->videoSampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/SampleConsumer;

    invoke-interface {v0}, Landroidx/media3/transformer/SampleConsumer;->signalEndOfVideoInput()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Landroidx/media3/transformer/RawAssetLoader;->assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroidx/media3/transformer/ExportException;->createForAssetLoader(Ljava/lang/Throwable;I)Landroidx/media3/transformer/ExportException;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/media3/transformer/AssetLoader$Listener;->onError(Landroidx/media3/transformer/ExportException;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/transformer/RawAssetLoader;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    iget-wide v0, v0, Landroidx/media3/transformer/EditedMediaItem;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    const/4 v3, 0x2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput v2, p0, Landroidx/media3/transformer/RawAssetLoader;->progressState:I

    iget-object v2, p0, Landroidx/media3/transformer/RawAssetLoader;->assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    invoke-interface {v2, v0, v1}, Landroidx/media3/transformer/AssetLoader$Listener;->onDurationUs(J)V

    iget-object v0, p0, Landroidx/media3/transformer/RawAssetLoader;->audioFormat:Landroidx/media3/common/Format;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/transformer/RawAssetLoader;->videoFormat:Landroidx/media3/common/Format;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    iget-object v0, p0, Landroidx/media3/transformer/RawAssetLoader;->assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    invoke-interface {v0, v3}, Landroidx/media3/transformer/AssetLoader$Listener;->onTrackCount(I)V

    iput-boolean v1, p0, Landroidx/media3/transformer/RawAssetLoader;->isStarted:Z

    return-void
.end method
