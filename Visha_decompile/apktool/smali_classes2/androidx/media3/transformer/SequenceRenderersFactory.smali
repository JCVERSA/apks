.class final Landroidx/media3/transformer/SequenceRenderersFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/RenderersFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;,
        Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;,
        Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;
    }
.end annotation


# static fields
.field private static final DEFAULT_FRAME_RATE:I = 0x1e


# instance fields
.field private final context:Landroid/content/Context;

.field private final imageDecoderFactory:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final inputIndex:I

.field private final playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

.field private final requestToneMapping:Z

.field private final sequence:Landroidx/media3/transformer/EditedMediaItemSequence;

.field private final videoPrewarmingEnabled:Z

.field private final videoSink:Landroidx/media3/exoplayer/video/VideoSink;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/transformer/PlaybackAudioGraphWrapper;Landroidx/media3/exoplayer/video/VideoSink;Landroidx/media3/exoplayer/image/ImageDecoder$Factory;IZZ)V
    .locals 0
    .param p4    # Landroidx/media3/exoplayer/video/VideoSink;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/media3/exoplayer/image/ImageDecoder$Factory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->sequence:Landroidx/media3/transformer/EditedMediaItemSequence;

    iput-object p3, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    iput-object p4, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    iput-object p5, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->imageDecoderFactory:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    iput p6, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->inputIndex:I

    iput-boolean p7, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->requestToneMapping:Z

    iput-boolean p8, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->videoPrewarmingEnabled:Z

    return-void
.end method

.method public static synthetic access$000(Landroidx/media3/transformer/EditedMediaItemSequence;I)Landroidx/media3/transformer/EditedMediaItem;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/transformer/SequenceRenderersFactory;->getRepeatedEditedMediaItem(Landroidx/media3/transformer/EditedMediaItemSequence;I)Landroidx/media3/transformer/EditedMediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Landroidx/media3/transformer/EditedMediaItemSequence;IJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/transformer/SequenceRenderersFactory;->getOffsetToCompositionTimeUs(Landroidx/media3/transformer/EditedMediaItemSequence;IJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$200(Landroidx/media3/common/Timeline;Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/transformer/EditedMediaItem;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/transformer/SequenceRenderersFactory;->isLastInSequence(Landroidx/media3/common/Timeline;Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/transformer/EditedMediaItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Landroidx/media3/transformer/SequenceRenderersFactory;)Z
    .locals 0

    invoke-direct {p0}, Landroidx/media3/transformer/SequenceRenderersFactory;->isVideoPrewarmingEnabled()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Landroidx/media3/transformer/SequenceRenderersFactory;)Landroidx/media3/exoplayer/video/VideoSink;
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    return-object p0
.end method

.method public static create(Landroid/content/Context;Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/transformer/PlaybackAudioGraphWrapper;Landroidx/media3/exoplayer/video/VideoSink;Landroidx/media3/exoplayer/image/ImageDecoder$Factory;IZZ)Landroidx/media3/transformer/SequenceRenderersFactory;
    .locals 10

    new-instance v9, Landroidx/media3/transformer/SequenceRenderersFactory;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/media3/transformer/SequenceRenderersFactory;-><init>(Landroid/content/Context;Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/transformer/PlaybackAudioGraphWrapper;Landroidx/media3/exoplayer/video/VideoSink;Landroidx/media3/exoplayer/image/ImageDecoder$Factory;IZZ)V

    return-object v9
.end method

.method private static getOffsetToCompositionTimeUs(Landroidx/media3/transformer/EditedMediaItemSequence;IJ)J
    .locals 3

    neg-long p2, p2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/EditedMediaItem;

    iget-object v1, v1, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v1, v1, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v1, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    sub-long/2addr p2, v1

    :cond_0
    :goto_0
    if-ge v0, p1, :cond_1

    invoke-static {p0, v0}, Landroidx/media3/transformer/SequenceRenderersFactory;->getRepeatedEditedMediaItem(Landroidx/media3/transformer/EditedMediaItemSequence;I)Landroidx/media3/transformer/EditedMediaItem;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/transformer/EditedMediaItem;->getPresentationDurationUs()J

    move-result-wide v1

    add-long/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide p2
.end method

.method private static getRepeatedEditedMediaItem(Landroidx/media3/transformer/EditedMediaItemSequence;I)Landroidx/media3/transformer/EditedMediaItem;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->isLooping:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    rem-int/2addr p1, v0

    :cond_0
    iget-object p0, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/transformer/EditedMediaItem;

    return-object p0
.end method

.method private static isLastInSequence(Landroidx/media3/common/Timeline;Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/transformer/EditedMediaItem;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    invoke-static {p1, p0}, Landroidx/media3/transformer/SequenceRenderersFactory;->getRepeatedEditedMediaItem(Landroidx/media3/transformer/EditedMediaItemSequence;I)Landroidx/media3/transformer/EditedMediaItem;

    move-result-object p0

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isVideoPrewarmingEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
        api = 0x17
    .end annotation

    iget-boolean p0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->videoPrewarmingEnabled:Z

    if-eqz p0, :cond_0

    sget p0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public createRenderers(Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/text/TextOutput;Landroidx/media3/exoplayer/metadata/MetadataOutput;)[Landroidx/media3/exoplayer/Renderer;
    .locals 8

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    new-instance p5, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;

    iget-object v1, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->context:Landroid/content/Context;

    iget-object v4, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->sequence:Landroidx/media3/transformer/EditedMediaItemSequence;

    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    iget v2, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->inputIndex:I

    invoke-virtual {v0, v2}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->createInput(I)Landroidx/media3/transformer/AudioGraphInputAudioSink;

    move-result-object v5

    iget-object v6, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    move-object v0, p5

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/transformer/AudioGraphInputAudioSink;Landroidx/media3/transformer/PlaybackAudioGraphWrapper;)V

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p3, :cond_0

    new-instance p3, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;

    iget-object v2, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->context:Landroid/content/Context;

    iget-object v5, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->sequence:Landroidx/media3/transformer/EditedMediaItemSequence;

    new-instance v6, Landroidx/media3/transformer/BufferingVideoSink;

    invoke-direct {v6, v2}, Landroidx/media3/transformer/BufferingVideoSink;-><init>(Landroid/content/Context;)V

    iget-boolean v7, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->requestToneMapping:Z

    move-object v0, p3

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;-><init>(Landroidx/media3/transformer/SequenceRenderersFactory;Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/transformer/BufferingVideoSink;Z)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;

    iget-object p2, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->sequence:Landroidx/media3/transformer/EditedMediaItemSequence;

    iget-object p3, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->imageDecoderFactory:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    iget-object p0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-direct {p1, p2, p3, p0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;-><init>(Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/exoplayer/image/ImageDecoder$Factory;Landroidx/media3/exoplayer/video/VideoSink;)V

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Landroidx/media3/exoplayer/Renderer;

    invoke-interface {p4, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/media3/exoplayer/Renderer;

    return-object p0
.end method

.method public createSecondaryRenderer(Landroidx/media3/exoplayer/Renderer;Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/text/TextOutput;Landroidx/media3/exoplayer/metadata/MetadataOutput;)Landroidx/media3/exoplayer/Renderer;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Landroidx/media3/transformer/SequenceRenderersFactory;->isVideoPrewarmingEnabled()Z

    move-result p4

    if-eqz p4, :cond_0

    instance-of p1, p1, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;

    iget-object v2, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->context:Landroid/content/Context;

    iget-object v5, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->sequence:Landroidx/media3/transformer/EditedMediaItemSequence;

    new-instance v6, Landroidx/media3/transformer/BufferingVideoSink;

    invoke-direct {v6, v2}, Landroidx/media3/transformer/BufferingVideoSink;-><init>(Landroid/content/Context;)V

    iget-boolean v7, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->requestToneMapping:Z

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;-><init>(Landroidx/media3/transformer/SequenceRenderersFactory;Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/transformer/BufferingVideoSink;Z)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
