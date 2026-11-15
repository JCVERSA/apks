.class final Landroidx/media3/transformer/VideoFrameProcessingWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/GraphInput;


# instance fields
.field private final initialTimestampOffsetUs:J

.field private final mediaItemOffsetUs:Ljava/util/concurrent/atomic/AtomicLong;

.field private final postProcessingEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private final videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;


# direct methods
.method public constructor <init>(Landroidx/media3/common/VideoFrameProcessor;Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/VideoFrameProcessor;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/VideoFrameProcessingWrapper;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    iput-object p2, p0, Landroidx/media3/transformer/VideoFrameProcessingWrapper;->postProcessingEffects:Ljava/util/List;

    iput-wide p3, p0, Landroidx/media3/transformer/VideoFrameProcessingWrapper;->initialTimestampOffsetUs:J

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/VideoFrameProcessingWrapper;->mediaItemOffsetUs:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private static applyDecoderRotation(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;
    .locals 2

    iget v0, p0, Landroidx/media3/common/Format;->rotationDegrees:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/common/Format;->height:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget p0, p0, Landroidx/media3/common/Format;->width:I

    invoke-virtual {v0, p0}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/common/Format$Builder;->setRotationDegrees(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0
.end method

.method private static getInputTypeForMimeType(Ljava/lang/String;)I
    .locals 3

    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const-string/jumbo v0, "video/raw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MIME type not supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isMediaItemForSurfaceAssetLoader(Landroidx/media3/transformer/EditedMediaItem;)Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object p0, p0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const-string/jumbo v0, "transformer_surface_asset"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getInputSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/VideoFrameProcessingWrapper;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    invoke-interface {p0}, Landroidx/media3/common/VideoFrameProcessor;->getInputSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getPendingVideoFrameCount()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/VideoFrameProcessingWrapper;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    invoke-interface {p0}, Landroidx/media3/common/VideoFrameProcessor;->getPendingInputFrameCount()I

    move-result p0

    return p0
.end method

.method public onMediaItemChanged(Landroidx/media3/transformer/EditedMediaItem;JLandroidx/media3/common/Format;Z)V
    .locals 6
    .param p4    # Landroidx/media3/common/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/media3/transformer/EditedMediaItem;->isGap()Z

    move-result p5

    xor-int/lit8 p5, p5, 0x1

    invoke-static {p5}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    invoke-static {p1}, Landroidx/media3/transformer/VideoFrameProcessingWrapper;->isMediaItemForSurfaceAssetLoader(Landroidx/media3/transformer/EditedMediaItem;)Z

    move-result p5

    invoke-virtual {p1, p2, p3}, Landroidx/media3/transformer/EditedMediaItem;->getDurationAfterEffectsApplied(J)J

    move-result-wide p2

    if-eqz p4, :cond_1

    invoke-static {p4}, Landroidx/media3/transformer/VideoFrameProcessingWrapper;->applyDecoderRotation(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    move-result-object v2

    new-instance p4, Lcom/google/common/collect/ImmutableList$a;

    invoke-direct {p4}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    iget-object p1, p1, Landroidx/media3/transformer/EditedMediaItem;->effects:Landroidx/media3/transformer/Effects;

    iget-object p1, p1, Landroidx/media3/transformer/Effects;->videoEffects:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p4, p1}, Lcom/google/common/collect/ImmutableList$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$a;

    move-result-object p1

    iget-object p4, p0, Landroidx/media3/transformer/VideoFrameProcessingWrapper;->postProcessingEffects:Ljava/util/List;

    invoke-virtual {p1, p4}, Lcom/google/common/collect/ImmutableList$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iget-object v0, p0, Landroidx/media3/transformer/VideoFrameProcessingWrapper;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    if-eqz p5, :cond_0

    const/4 p1, 0x4

    :goto_0
    move v1, p1

    goto :goto_1

    :cond_0
    iget-object p1, v2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/transformer/VideoFrameProcessingWrapper;->getInputTypeForMimeType(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :goto_1
    iget-wide p4, p0, Landroidx/media3/transformer/VideoFrameProcessingWrapper;->initialTimestampOffsetUs:J

    iget-object p1, p0, Landroidx/media3/transformer/VideoFrameProcessingWrapper;->mediaItemOffsetUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    add-long/2addr v4, p4

    invoke-interface/range {v0 .. v5}, Landroidx/media3/common/VideoFrameProcessor;->registerInputStream(ILandroidx/media3/common/Format;Ljava/util/List;J)V

    :cond_1
    iget-object p0, p0, Landroidx/media3/transformer/VideoFrameProcessingWrapper;->mediaItemOffsetUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method

.method public queueInputBitmap(Landroid/graphics/Bitmap;Landroidx/media3/common/util/TimestampIterator;)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/VideoFrameProcessingWrapper;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    invoke-interface {p0, p1, p2}, Landroidx/media3/common/VideoFrameProcessor;->queueInputBitmap(Landroid/graphics/Bitmap;Landroidx/media3/common/util/TimestampIterator;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public queueInputTexture(IJ)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/VideoFrameProcessingWrapper;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/common/VideoFrameProcessor;->queueInputTexture(IJ)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public registerVideoFrame(J)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/VideoFrameProcessingWrapper;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    invoke-interface {p0}, Landroidx/media3/common/VideoFrameProcessor;->registerInputFrame()Z

    move-result p0

    return p0
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/VideoFrameProcessingWrapper;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    invoke-interface {p0}, Landroidx/media3/common/VideoFrameProcessor;->release()V

    return-void
.end method

.method public setOnInputFrameProcessedListener(Landroidx/media3/common/OnInputFrameProcessedListener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/VideoFrameProcessingWrapper;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    invoke-interface {p0, p1}, Landroidx/media3/common/VideoFrameProcessor;->setOnInputFrameProcessedListener(Landroidx/media3/common/OnInputFrameProcessedListener;)V

    return-void
.end method

.method public setOnInputSurfaceReadyListener(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/VideoFrameProcessingWrapper;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    invoke-interface {p0, p1}, Landroidx/media3/common/VideoFrameProcessor;->setOnInputSurfaceReadyListener(Ljava/lang/Runnable;)V

    return-void
.end method

.method public signalEndOfVideoInput()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/VideoFrameProcessingWrapper;->videoFrameProcessor:Landroidx/media3/common/VideoFrameProcessor;

    invoke-interface {p0}, Landroidx/media3/common/VideoFrameProcessor;->signalEndOfInput()V

    return-void
.end method
