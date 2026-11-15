.class public final Landroidx/media3/transformer/CompositionPlayer;
.super Landroidx/media3/common/SimpleBasePlayer;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/CompositionPlayerInternal$Listener;
.implements Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/CompositionPlayer$Builder;,
        Landroidx/media3/transformer/CompositionPlayer$CompositionFrameTimingEvaluator;,
        Landroidx/media3/transformer/CompositionPlayer$CompositionTrackSelector;,
        Landroidx/media3/transformer/CompositionPlayer$PlayerListener;
    }
.end annotation


# static fields
.field private static final AVAILABLE_COMMANDS:Landroidx/media3/common/Player$Commands;

.field private static final SUPPORTED_LISTENER_EVENTS:[I

.field private static final TAG:Ljava/lang/String; = "CompositionPlayer"


# instance fields
.field private final applicationHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private bufferedPositionSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

.field private final clock:Landroidx/media3/common/util/Clock;

.field private composition:Landroidx/media3/transformer/Composition;

.field private compositionDurationUs:J

.field private final compositionInternalListenerHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private compositionPlayerInternal:Landroidx/media3/transformer/CompositionPlayerInternal;

.field private final context:Landroid/content/Context;

.field private displaySurface:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final finalAudioSink:Landroidx/media3/exoplayer/audio/AudioSink;

.field private final imageDecoderFactory:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

.field private isSeeking:Z

.field private final mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

.field private playWhenReady:Z

.field private playWhenReadyChangeReason:I

.field private playbackException:Landroidx/media3/common/PlaybackException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private playbackState:I

.field private playbackThread:Landroid/os/HandlerThread;

.field private playbackVideoGraphWrapper:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

.field private final players:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/ExoPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private playlist:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/SimpleBasePlayer$MediaItemData;",
            ">;"
        }
    .end annotation
.end field

.field private positionSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

.field private final previewingVideoGraphFactory:Landroidx/media3/common/PreviewingVideoGraph$Factory;

.field private renderedFirstFrame:Z

.field private repeatMode:I

.field private repeatingCompositionSeekInProgress:Z

.field private surfaceHolder:Landroid/view/SurfaceHolder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private totalBufferedDurationSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

.field private videoOutput:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private videoOutputSize:Landroidx/media3/common/util/Size;

.field private final videoPrewarmingEnabled:Z

.field private final videoTracksSelected:Landroid/util/SparseBooleanArray;

.field private volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/16 v4, 0xb

    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-virtual {v0, v5}, Landroidx/media3/common/Player$Commands$Builder;->addAll([I)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Player$Commands$Builder;->build()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    sput-object v0, Landroidx/media3/transformer/CompositionPlayer;->AVAILABLE_COMMANDS:Landroidx/media3/common/Player$Commands;

    const/16 v0, 0xa

    filled-new-array {v3, v2, v0, v4, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/media3/transformer/CompositionPlayer;->SUPPORTED_LISTENER_EVENTS:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x5
        0x8
        0x4
        0xb
        0xc
        0x10
        0x11
        0xf
        0x1b
        0x16
        0x18
        0x20
    .end array-data
.end method

.method private constructor <init>(Landroidx/media3/transformer/CompositionPlayer$Builder;)V
    .locals 3

    .line 2
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$100(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$200(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroidx/media3/common/util/Clock;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/media3/common/SimpleBasePlayer;-><init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;)V

    .line 3
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$300(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->context:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$200(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroidx/media3/common/util/Clock;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->clock:Landroidx/media3/common/util/Clock;

    .line 5
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$100(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->applicationHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 6
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$400(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroidx/media3/exoplayer/audio/AudioSink;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/audio/AudioSink;

    iput-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->finalAudioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 7
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$500(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 8
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$600(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->imageDecoderFactory:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    .line 9
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$700(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroidx/media3/common/PreviewingVideoGraph$Factory;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/PreviewingVideoGraph$Factory;

    iput-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->previewingVideoGraphFactory:Landroidx/media3/common/PreviewingVideoGraph$Factory;

    .line 10
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$800(Landroidx/media3/transformer/CompositionPlayer$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/media3/transformer/CompositionPlayer;->videoPrewarmingEnabled:Z

    .line 11
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer$Builder;->access$100(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroid/os/Looper;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionInternalListenerHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 12
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->videoTracksSelected:Landroid/util/SparseBooleanArray;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    iput-wide v0, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionDurationUs:J

    const/4 p1, 0x1

    .line 15
    iput p1, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackState:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 16
    iput p1, p0, Landroidx/media3/transformer/CompositionPlayer;->volume:F

    .line 17
    new-instance p1, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    new-instance v0, Lqd1;

    invoke-direct {v0, p0}, Lqd1;-><init>(Landroidx/media3/transformer/CompositionPlayer;)V

    invoke-direct {p1, v0}, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;-><init>(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)V

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->positionSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    .line 18
    new-instance p1, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    new-instance v0, Lrd1;

    invoke-direct {v0, p0}, Lrd1;-><init>(Landroidx/media3/transformer/CompositionPlayer;)V

    invoke-direct {p1, v0}, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;-><init>(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)V

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->bufferedPositionSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    .line 19
    new-instance p1, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    new-instance v0, Lsd1;

    invoke-direct {v0, p0}, Lsd1;-><init>(Landroidx/media3/transformer/CompositionPlayer;)V

    invoke-direct {p1, v0}, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;-><init>(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)V

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->totalBufferedDurationSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/transformer/CompositionPlayer$Builder;Landroidx/media3/transformer/CompositionPlayer$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/transformer/CompositionPlayer;-><init>(Landroidx/media3/transformer/CompositionPlayer$Builder;)V

    return-void
.end method

.method public static synthetic access$1000()[I
    .locals 1

    sget-object v0, Landroidx/media3/transformer/CompositionPlayer;->SUPPORTED_LISTENER_EVENTS:[I

    return-object v0
.end method

.method public static synthetic access$1100(Landroidx/media3/transformer/CompositionPlayer;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->invalidateState()V

    return-void
.end method

.method public static synthetic access$1200(Landroidx/media3/transformer/CompositionPlayer;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->updatePlaybackState()V

    return-void
.end method

.method public static synthetic access$1302(Landroidx/media3/transformer/CompositionPlayer;I)I
    .locals 0

    iput p1, p0, Landroidx/media3/transformer/CompositionPlayer;->playWhenReadyChangeReason:I

    return p1
.end method

.method public static synthetic access$1400(Landroidx/media3/transformer/CompositionPlayer;)I
    .locals 0

    iget p0, p0, Landroidx/media3/transformer/CompositionPlayer;->repeatMode:I

    return p0
.end method

.method public static synthetic access$1500(Landroidx/media3/transformer/CompositionPlayer;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->repeatCompositionPlayback()V

    return-void
.end method

.method public static synthetic access$1600(Landroidx/media3/transformer/CompositionPlayer;Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/transformer/CompositionPlayer;->maybeUpdatePlaybackError(Ljava/lang/String;Ljava/lang/Exception;I)V

    return-void
.end method

.method public static synthetic access$1700(Landroidx/media3/transformer/CompositionPlayer;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/transformer/CompositionPlayer;->onVideoTrackSelection(ZI)V

    return-void
.end method

.method private clearVideoSurfaceInternal()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->displaySurface:Landroid/view/Surface;

    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionPlayerInternal:Landroidx/media3/transformer/CompositionPlayerInternal;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/transformer/CompositionPlayerInternal;->clearOutputSurface()V

    :cond_0
    return-void
.end method

.method private static clipToDuration(Landroidx/media3/transformer/EditedMediaItem;J)Landroidx/media3/transformer/EditedMediaItem;
    .locals 5

    iget-object v0, p0, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    invoke-virtual {p0}, Landroidx/media3/transformer/EditedMediaItem;->buildUpon()Landroidx/media3/transformer/EditedMediaItem$Builder;

    move-result-object v1

    iget-object p0, p0, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-virtual {p0}, Landroidx/media3/common/MediaItem;->buildUpon()Landroidx/media3/common/MediaItem$Builder;

    move-result-object p0

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$ClippingConfiguration;->buildUpon()Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    move-result-object v2

    iget-wide v3, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    add-long/2addr v3, p1

    invoke-virtual {v2, v3, v4}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->setEndPositionUs(J)Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->build()Landroidx/media3/common/MediaItem$ClippingConfiguration;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/common/MediaItem$Builder;->setClippingConfiguration(Landroidx/media3/common/MediaItem$ClippingConfiguration;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/media3/transformer/EditedMediaItem$Builder;->setMediaItem(Landroidx/media3/common/MediaItem;)Landroidx/media3/transformer/EditedMediaItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/transformer/EditedMediaItem$Builder;->build()Landroidx/media3/transformer/EditedMediaItem;

    move-result-object p0

    return-object p0
.end method

.method private static createMediaSourceWithSilence(Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/transformer/EditedMediaItem;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 5

    const/4 v0, 0x2

    iget-object v1, p1, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-interface {p0, v1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p0

    iget-boolean v1, p1, Landroidx/media3/transformer/EditedMediaItem;->removeAudio:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/source/FilteringMediaSource;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroidx/media3/exoplayer/source/FilteringMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;Ljava/util/Set;)V

    move-object p0, v1

    :cond_0
    new-instance v1, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;

    new-instance v2, Landroidx/media3/exoplayer/source/SilenceMediaSource;

    iget-wide v3, p1, Landroidx/media3/transformer/EditedMediaItem;->durationUs:J

    invoke-direct {v2, v3, v4}, Landroidx/media3/exoplayer/source/SilenceMediaSource;-><init>(J)V

    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;-><init>(Landroidx/media3/exoplayer/source/MediaSource;)V

    iget-object v2, p1, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v2, v2, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v2, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->setStartPositionUs(J)Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;

    move-result-object v1

    iget-object p1, p1, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object p1, p1, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v2, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->setEndPositionUs(J)Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->build()Landroidx/media3/exoplayer/source/ClippingMediaSource;

    move-result-object p1

    new-instance v1, Landroidx/media3/exoplayer/source/MergingMediaSource;

    new-array v0, v0, [Landroidx/media3/exoplayer/source/MediaSource;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/source/MergingMediaSource;-><init>([Landroidx/media3/exoplayer/source/MediaSource;)V

    return-object v1
.end method

.method private createPlaylist()Lcom/google/common/collect/ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/SimpleBasePlayer$MediaItemData;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionDurationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    const-string v1, "CompositionTimeline"

    invoke-direct {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;-><init>(Ljava/lang/Object;)V

    sget-object v1, Landroidx/media3/common/MediaItem;->EMPTY:Landroidx/media3/common/MediaItem;

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setMediaItem(Landroidx/media3/common/MediaItem;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionDurationUs:J

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setDurationUs(J)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static deactivateSpeedAdjustingVideoEffects(Landroidx/media3/transformer/Composition;)Landroidx/media3/transformer/Composition;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ldgb;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/transformer/EditedMediaItemSequence;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v2, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->iterator()Ldgb;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/transformer/EditedMediaItem;

    iget-object v6, v5, Landroidx/media3/transformer/EditedMediaItem;->effects:Landroidx/media3/transformer/Effects;

    iget-object v6, v6, Landroidx/media3/transformer/Effects;->videoEffects:Lcom/google/common/collect/ImmutableList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList;->iterator()Ldgb;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/common/Effect;

    instance-of v9, v8, Landroidx/media3/effect/TimestampAdjustment;

    if-eqz v9, :cond_0

    new-instance v9, Landroidx/media3/transformer/InactiveTimestampAdjustment;

    check-cast v8, Landroidx/media3/effect/TimestampAdjustment;

    iget-object v8, v8, Landroidx/media3/effect/TimestampAdjustment;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    invoke-direct {v9, v8}, Landroidx/media3/transformer/InactiveTimestampAdjustment;-><init>(Landroidx/media3/common/audio/SpeedProvider;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Landroidx/media3/transformer/EditedMediaItem;->buildUpon()Landroidx/media3/transformer/EditedMediaItem$Builder;

    move-result-object v6

    new-instance v8, Landroidx/media3/transformer/Effects;

    iget-object v5, v5, Landroidx/media3/transformer/EditedMediaItem;->effects:Landroidx/media3/transformer/Effects;

    iget-object v5, v5, Landroidx/media3/transformer/Effects;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v8, v5, v7}, Landroidx/media3/transformer/Effects;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v6, v8}, Landroidx/media3/transformer/EditedMediaItem$Builder;->setEffects(Landroidx/media3/transformer/Effects;)Landroidx/media3/transformer/EditedMediaItem$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/transformer/EditedMediaItem$Builder;->build()Landroidx/media3/transformer/EditedMediaItem;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v4, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    invoke-direct {v4, v3}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;-><init>(Ljava/util/List;)V

    iget-boolean v2, v2, Landroidx/media3/transformer/EditedMediaItemSequence;->isLooping:Z

    invoke-virtual {v4, v2}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->setIsLooping(Z)Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->build()Landroidx/media3/transformer/EditedMediaItemSequence;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/media3/transformer/Composition;->buildUpon()Landroidx/media3/transformer/Composition$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/media3/transformer/Composition$Builder;->setSequences(Ljava/util/List;)Landroidx/media3/transformer/Composition$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/transformer/Composition$Builder;->build()Landroidx/media3/transformer/Composition;

    move-result-object p0

    return-object p0
.end method

.method private getBufferedPositionMs()J
    .locals 9

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    const-wide/32 v3, 0x7fffffff

    const/4 v0, 0x0

    move-wide v5, v3

    :goto_0
    iget-object v7, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    iget-object v7, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v7}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    :cond_1
    iget-object v7, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v7}, Landroidx/media3/common/Player;->getBufferedPosition()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    cmp-long p0, v5, v3

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move-wide v1, v5

    :goto_1
    return-wide v1
.end method

.method private static getCompositionDurationUs(Landroidx/media3/transformer/Composition;)J
    .locals 5

    iget-object v0, p0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    const-wide/32 v0, -0x80000000

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/transformer/EditedMediaItemSequence;

    invoke-static {v3}, Landroidx/media3/transformer/CompositionPlayer;->getSequenceDurationUs(Landroidx/media3/transformer/EditedMediaItemSequence;)J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private getContentPositionMs()J
    .locals 5

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v3}, Landroidx/media3/common/Player;->getContentPosition()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method private getRenderedFirstFrameAndReset()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/transformer/CompositionPlayer;->renderedFirstFrame:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media3/transformer/CompositionPlayer;->renderedFirstFrame:Z

    return v0
.end method

.method private static getSequenceDurationUs(Landroidx/media3/transformer/EditedMediaItemSequence;)J
    .locals 8

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v4, v0

    move v3, v2

    :goto_0
    iget-object v6, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    iget-object v6, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/transformer/EditedMediaItem;

    invoke-virtual {v6}, Landroidx/media3/transformer/EditedMediaItem;->getPresentationDurationUs()J

    move-result-wide v6

    add-long/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    cmp-long p0, v4, v0

    if-lez p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    return-wide v4
.end method

.method private getTotalBufferedDurationMs()J
    .locals 9

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    const-wide/32 v3, 0x7fffffff

    const/4 v0, 0x0

    move-wide v5, v3

    :goto_0
    iget-object v7, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    iget-object v7, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v7}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    :cond_1
    iget-object v7, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v7}, Landroidx/media3/common/Player;->getTotalBufferedDuration()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    cmp-long p0, v5, v3

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move-wide v1, v5

    :goto_1
    return-wide v1
.end method

.method private synthetic lambda$onError$1(Landroidx/media3/common/VideoFrameProcessingException;)V
    .locals 2

    const-string v0, "Error processing video frames"

    const/16 v1, 0x1b59

    invoke-direct {p0, v0, p1, v1}, Landroidx/media3/transformer/CompositionPlayer;->maybeUpdatePlaybackError(Ljava/lang/String;Ljava/lang/Exception;I)V

    return-void
.end method

.method private synthetic lambda$onFirstFrameRendered$0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/transformer/CompositionPlayer;->renderedFirstFrame:Z

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->invalidateState()V

    return-void
.end method

.method public static synthetic m0(Landroidx/media3/transformer/CompositionPlayer;Landroidx/media3/common/VideoFrameProcessingException;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/transformer/CompositionPlayer;->lambda$onError$1(Landroidx/media3/common/VideoFrameProcessingException;)V

    return-void
.end method

.method private maybeSetOutputSurfaceInfo(II)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->displaySurface:Landroid/view/Surface;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionPlayerInternal:Landroidx/media3/transformer/CompositionPlayerInternal;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/media3/common/util/Size;

    invoke-direct {v1, p1, p2}, Landroidx/media3/common/util/Size;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroidx/media3/transformer/CompositionPlayerInternal;->setOutputSurfaceInfo(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private maybeUpdatePlaybackError(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackException:Landroidx/media3/common/PlaybackException;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/media3/common/PlaybackException;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media3/common/PlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackException:Landroidx/media3/common/PlaybackException;

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p2}, Landroidx/media3/common/Player;->stop()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->updatePlaybackState()V

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->invalidateState()V

    goto :goto_1

    :cond_1
    const-string p0, "CompositionPlayer"

    invoke-static {p0, p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static synthetic n0(Landroidx/media3/transformer/CompositionPlayer;)J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->getContentPositionMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic o0(Landroidx/media3/transformer/CompositionPlayer;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->lambda$onFirstFrameRendered$0()V

    return-void
.end method

.method private onVideoTrackSelection(ZI)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->videoTracksSelected:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->videoTracksSelected:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    iget-object p2, p0, Landroidx/media3/transformer/CompositionPlayer;->composition:Landroidx/media3/transformer/Composition;

    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/transformer/Composition;

    iget-object p2, p2, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->videoTracksSelected:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->videoTracksSelected:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackVideoGraphWrapper:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->setTotalVideoInputCount(I)V

    :cond_2
    return-void
.end method

.method public static synthetic p0(Landroidx/media3/transformer/CompositionPlayer;)J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->getTotalBufferedDurationMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic q0(Landroidx/media3/transformer/CompositionPlayer;)J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->getBufferedPositionMs()J

    move-result-wide v0

    return-wide v0
.end method

.method private removeSurfaceCallbacks()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    :cond_0
    return-void
.end method

.method private repeatCompositionPlayback()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/transformer/CompositionPlayer;->repeatingCompositionSeekInProgress:Z

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->seekToDefaultPosition()V

    return-void
.end method

.method private resetLivePositionSuppliers()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->positionSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->getContentPositionMs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;->disconnect(J)V

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->bufferedPositionSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->getBufferedPositionMs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;->disconnect(J)V

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->totalBufferedDurationSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->getTotalBufferedDurationMs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;->disconnect(J)V

    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    new-instance v1, Lqd1;

    invoke-direct {v1, p0}, Lqd1;-><init>(Landroidx/media3/transformer/CompositionPlayer;)V

    invoke-direct {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;-><init>(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->positionSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    new-instance v1, Lrd1;

    invoke-direct {v1, p0}, Lrd1;-><init>(Landroidx/media3/transformer/CompositionPlayer;)V

    invoke-direct {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;-><init>(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->bufferedPositionSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    new-instance v1, Lsd1;

    invoke-direct {v1, p0}, Lsd1;-><init>(Landroidx/media3/transformer/CompositionPlayer;)V

    invoke-direct {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;-><init>(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->totalBufferedDurationSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    return-void
.end method

.method private setCompositionInternal(Landroidx/media3/transformer/Composition;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Landroidx/media3/transformer/CompositionPlayer;->getCompositionDurationUs(Landroidx/media3/transformer/Composition;)J

    move-result-wide v1

    iput-wide v1, v7, Landroidx/media3/transformer/CompositionPlayer;->compositionDurationUs:J

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CompositionPlaybackThread"

    const/16 v3, -0x10

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, v7, Landroidx/media3/transformer/CompositionPlayer;->playbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v3, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    new-instance v1, Landroidx/media3/transformer/DefaultAudioMixer$Factory;

    invoke-direct {v1}, Landroidx/media3/transformer/DefaultAudioMixer$Factory;-><init>()V

    iget-object v2, v0, Landroidx/media3/transformer/Composition;->effects:Landroidx/media3/transformer/Effects;

    iget-object v2, v2, Landroidx/media3/transformer/Effects;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    iget-object v4, v7, Landroidx/media3/transformer/CompositionPlayer;->finalAudioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-direct {v3, v1, v2, v4}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;-><init>(Landroidx/media3/transformer/AudioMixer$Factory;Lcom/google/common/collect/ImmutableList;Landroidx/media3/exoplayer/audio/AudioSink;)V

    new-instance v1, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    iget-object v2, v7, Landroidx/media3/transformer/CompositionPlayer;->context:Landroid/content/Context;

    new-instance v4, Landroidx/media3/transformer/CompositionPlayer$CompositionFrameTimingEvaluator;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroidx/media3/transformer/CompositionPlayer$CompositionFrameTimingEvaluator;-><init>(Landroidx/media3/transformer/CompositionPlayer$1;)V

    const-wide/16 v5, 0x0

    invoke-direct {v1, v2, v4, v5, v6}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;J)V

    new-instance v2, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    iget-object v4, v7, Landroidx/media3/transformer/CompositionPlayer;->context:Landroid/content/Context;

    invoke-direct {v2, v4, v1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;)V

    iget-object v1, v7, Landroidx/media3/transformer/CompositionPlayer;->previewingVideoGraphFactory:Landroidx/media3/common/PreviewingVideoGraph$Factory;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/PreviewingVideoGraph$Factory;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->setPreviewingVideoGraphFactory(Landroidx/media3/common/PreviewingVideoGraph$Factory;)Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/transformer/Composition;->videoCompositorSettings:Landroidx/media3/common/VideoCompositorSettings;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->setCompositorSettings(Landroidx/media3/common/VideoCompositorSettings;)Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/transformer/Composition;->effects:Landroidx/media3/transformer/Effects;

    iget-object v2, v2, Landroidx/media3/transformer/Effects;->videoEffects:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->setCompositionEffects(Ljava/util/List;)Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    move-result-object v1

    iget-object v2, v7, Landroidx/media3/transformer/CompositionPlayer;->clock:Landroidx/media3/common/util/Clock;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->setClock(Landroidx/media3/common/util/Clock;)Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    move-result-object v1

    iget v2, v0, Landroidx/media3/transformer/Composition;->hdrMode:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v4, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->setRequestOpenGlToneMapping(Z)Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->build()Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    move-result-object v1

    iput-object v1, v7, Landroidx/media3/transformer/CompositionPlayer;->playbackVideoGraphWrapper:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-virtual {v1, v7}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->addListener(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;)V

    iget-object v1, v0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/EditedMediaItemSequence;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/EditedMediaItemSequence;

    invoke-static {v1}, Landroidx/media3/transformer/CompositionPlayer;->getSequenceDurationUs(Landroidx/media3/transformer/EditedMediaItemSequence;)J

    move-result-wide v1

    move v4, v5

    :goto_1
    iget-object v8, v0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    if-ge v4, v8, :cond_6

    iget-object v8, v0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, Landroidx/media3/transformer/EditedMediaItemSequence;

    iget-object v8, v7, Landroidx/media3/transformer/CompositionPlayer;->context:Landroid/content/Context;

    iget-object v9, v7, Landroidx/media3/transformer/CompositionPlayer;->playbackVideoGraphWrapper:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-virtual {v9, v4}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->getSink(I)Landroidx/media3/exoplayer/video/VideoSink;

    move-result-object v11

    iget-object v12, v7, Landroidx/media3/transformer/CompositionPlayer;->imageDecoderFactory:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    iget v9, v0, Landroidx/media3/transformer/Composition;->hdrMode:I

    if-ne v9, v6, :cond_1

    move v14, v6

    goto :goto_2

    :cond_1
    move v14, v5

    :goto_2
    iget-boolean v13, v7, Landroidx/media3/transformer/CompositionPlayer;->videoPrewarmingEnabled:Z

    move-object v9, v15

    move-object v10, v3

    move/from16 v16, v13

    move v13, v4

    move-object v5, v15

    move/from16 v15, v16

    invoke-static/range {v8 .. v15}, Landroidx/media3/transformer/SequenceRenderersFactory;->create(Landroid/content/Context;Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/transformer/PlaybackAudioGraphWrapper;Landroidx/media3/exoplayer/video/VideoSink;Landroidx/media3/exoplayer/image/ImageDecoder$Factory;IZZ)Landroidx/media3/transformer/SequenceRenderersFactory;

    move-result-object v8

    new-instance v9, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    iget-object v10, v7, Landroidx/media3/transformer/CompositionPlayer;->context:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/SimpleBasePlayer;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setLooper(Landroid/os/Looper;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v9

    iget-object v10, v7, Landroidx/media3/transformer/CompositionPlayer;->playbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setPlaybackLooper(Landroid/os/Looper;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setRenderersFactory(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setHandleAudioBecomingNoisy(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v8

    iget-object v9, v7, Landroidx/media3/transformer/CompositionPlayer;->clock:Landroidx/media3/common/util/Clock;

    invoke-virtual {v8, v9}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setClock(Landroidx/media3/common/util/Clock;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->experimentalSetDynamicSchedulingEnabled(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v8

    const/4 v9, 0x0

    :goto_3
    iget-object v10, v5, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v10}, Ljava/util/AbstractCollection;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    iget-object v10, v5, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/transformer/EditedMediaItem;

    iget-boolean v10, v10, Landroidx/media3/transformer/EditedMediaItem;->removeVideo:Z

    if-eqz v10, :cond_2

    move v9, v6

    goto :goto_4

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_4
    new-instance v10, Landroidx/media3/transformer/CompositionPlayer$CompositionTrackSelector;

    iget-object v11, v7, Landroidx/media3/transformer/CompositionPlayer;->context:Landroid/content/Context;

    invoke-direct {v10, v7, v11, v4, v9}, Landroidx/media3/transformer/CompositionPlayer$CompositionTrackSelector;-><init>(Landroidx/media3/transformer/CompositionPlayer;Landroid/content/Context;IZ)V

    invoke-virtual {v8, v10}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setTrackSelector(Landroidx/media3/exoplayer/trackselection/TrackSelector;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    invoke-virtual {v8}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->build()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v8

    new-instance v9, Landroidx/media3/transformer/CompositionPlayer$PlayerListener;

    invoke-direct {v9, v7, v4}, Landroidx/media3/transformer/CompositionPlayer$PlayerListener;-><init>(Landroidx/media3/transformer/CompositionPlayer;I)V

    invoke-interface {v8, v9}, Landroidx/media3/common/Player;->addListener(Landroidx/media3/common/Player$Listener;)V

    new-instance v9, Landroidx/media3/exoplayer/util/EventLogger;

    invoke-direct {v9}, Landroidx/media3/exoplayer/util/EventLogger;-><init>()V

    invoke-interface {v8, v9}, Landroidx/media3/exoplayer/ExoPlayer;->addAnalyticsListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    invoke-interface {v8, v6}, Landroidx/media3/exoplayer/ExoPlayer;->setPauseAtEndOfMediaItems(Z)V

    if-nez v4, :cond_4

    invoke-direct {v7, v8, v5}, Landroidx/media3/transformer/CompositionPlayer;->setPrimaryPlayerSequence(Landroidx/media3/exoplayer/ExoPlayer;Landroidx/media3/transformer/EditedMediaItemSequence;)V

    goto :goto_5

    :cond_4
    invoke-direct {v7, v8, v5, v1, v2}, Landroidx/media3/transformer/CompositionPlayer;->setSecondaryPlayerSequence(Landroidx/media3/exoplayer/ExoPlayer;Landroidx/media3/transformer/EditedMediaItemSequence;J)V

    :goto_5
    iget-object v5, v7, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/SimpleBasePlayer;->invalidateState()V

    invoke-direct/range {p0 .. p0}, Landroidx/media3/transformer/CompositionPlayer;->createPlaylist()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    iput-object v5, v7, Landroidx/media3/transformer/CompositionPlayer;->playlist:Lcom/google/common/collect/ImmutableList;

    :cond_5
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_6
    new-instance v8, Landroidx/media3/transformer/CompositionPlayerInternal;

    iget-object v0, v7, Landroidx/media3/transformer/CompositionPlayer;->playbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, v7, Landroidx/media3/transformer/CompositionPlayer;->clock:Landroidx/media3/common/util/Clock;

    iget-object v4, v7, Landroidx/media3/transformer/CompositionPlayer;->playbackVideoGraphWrapper:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget-object v6, v7, Landroidx/media3/transformer/CompositionPlayer;->compositionInternalListenerHandler:Landroidx/media3/common/util/HandlerWrapper;

    move-object v0, v8

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v6}, Landroidx/media3/transformer/CompositionPlayerInternal;-><init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/transformer/PlaybackAudioGraphWrapper;Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;Landroidx/media3/transformer/CompositionPlayerInternal$Listener;Landroidx/media3/common/util/HandlerWrapper;)V

    iput-object v8, v7, Landroidx/media3/transformer/CompositionPlayer;->compositionPlayerInternal:Landroidx/media3/transformer/CompositionPlayerInternal;

    return-void
.end method

.method private setPrimaryPlayerSequence(Landroidx/media3/exoplayer/ExoPlayer;Landroidx/media3/transformer/EditedMediaItemSequence;)V
    .locals 8

    new-instance v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p2, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p2, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/transformer/EditedMediaItem;

    iget-wide v4, v3, Landroidx/media3/transformer/EditedMediaItem;->durationUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    invoke-virtual {v3}, Landroidx/media3/transformer/EditedMediaItem;->getPresentationDurationUs()J

    move-result-wide v4

    iget-object v6, p0, Landroidx/media3/transformer/CompositionPlayer;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    invoke-static {v6, v3}, Landroidx/media3/transformer/CompositionPlayer;->createMediaSourceWithSilence(Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/transformer/EditedMediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v6

    iget-object v3, v3, Landroidx/media3/transformer/EditedMediaItem;->effects:Landroidx/media3/transformer/Effects;

    iget-object v3, v3, Landroidx/media3/transformer/Effects;->videoEffects:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0, v6, v3, v4, v5}, Landroidx/media3/transformer/CompositionPlayer;->wrapWithVideoEffectsBasedMediaSources(Landroidx/media3/exoplayer/source/MediaSource;Lcom/google/common/collect/ImmutableList;J)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v3

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;->add(Landroidx/media3/exoplayer/source/MediaSource;J)Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;->build()Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;

    move-result-object p0

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/ExoPlayer;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V

    return-void
.end method

.method private setSecondaryPlayerSequence(Landroidx/media3/exoplayer/ExoPlayer;Landroidx/media3/transformer/EditedMediaItemSequence;J)V
    .locals 10

    new-instance v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;-><init>()V

    iget-boolean v1, p2, Landroidx/media3/transformer/EditedMediaItemSequence;->isLooping:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    :goto_0
    iget-object p3, p2, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    if-ge v2, p3, :cond_0

    iget-object p3, p2, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/transformer/EditedMediaItem;

    iget-object p4, p0, Landroidx/media3/transformer/CompositionPlayer;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    invoke-static {p4, p3}, Landroidx/media3/transformer/CompositionPlayer;->createMediaSourceWithSilence(Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/transformer/EditedMediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p4

    invoke-virtual {p3}, Landroidx/media3/transformer/EditedMediaItem;->getPresentationDurationUs()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v3

    invoke-virtual {v0, p4, v3, v4}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;->add(Landroidx/media3/exoplayer/source/MediaSource;J)Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;->build()Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;

    move-result-object p0

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/ExoPlayer;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V

    return-void

    :cond_1
    const-wide/16 v3, 0x0

    :goto_1
    cmp-long v1, v3, p3

    if-gez v1, :cond_3

    iget-object v1, p2, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/EditedMediaItem;

    invoke-virtual {v1}, Landroidx/media3/transformer/EditedMediaItem;->getPresentationDurationUs()J

    move-result-wide v5

    add-long v7, v3, v5

    cmp-long v9, v7, p3

    if-gtz v9, :cond_2

    iget-object v3, p0, Landroidx/media3/transformer/CompositionPlayer;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    invoke-static {v3, v1}, Landroidx/media3/transformer/CompositionPlayer;->createMediaSourceWithSilence(Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/transformer/EditedMediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v1

    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;->add(Landroidx/media3/exoplayer/source/MediaSource;J)Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;

    add-int/lit8 v2, v2, 0x1

    iget-object v1, p2, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    rem-int/2addr v2, v1

    move-wide v3, v7

    goto :goto_1

    :cond_2
    sub-long/2addr p3, v3

    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    invoke-static {v1, p3, p4}, Landroidx/media3/transformer/CompositionPlayer;->clipToDuration(Landroidx/media3/transformer/EditedMediaItem;J)Landroidx/media3/transformer/EditedMediaItem;

    move-result-object p2

    invoke-static {p0, p2}, Landroidx/media3/transformer/CompositionPlayer;->createMediaSourceWithSilence(Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/transformer/EditedMediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;->add(Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;

    :cond_3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;->build()Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;

    move-result-object p0

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/ExoPlayer;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V

    return-void
.end method

.method private setVideoSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V
    .locals 3

    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->removeSurfaceCallbacks()V

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/media3/common/util/Size;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroidx/media3/common/util/Size;-><init>(II)V

    iput-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->videoOutputSize:Landroidx/media3/common/util/Size;

    invoke-direct {p0, v0, v1}, Landroidx/media3/transformer/CompositionPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->clearVideoSurfaceInternal()V

    :goto_0
    return-void
.end method

.method private setVideoSurfaceInternal(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->displaySurface:Landroid/view/Surface;

    invoke-virtual {p2}, Landroidx/media3/common/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Landroidx/media3/common/util/Size;->getHeight()I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/media3/transformer/CompositionPlayer;->maybeSetOutputSurfaceInfo(II)V

    return-void
.end method

.method private updatePlaybackState()V
    .locals 11

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackException:Landroidx/media3/common/PlaybackException;

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackState:I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    iget-object v7, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-ge v3, v7, :cond_5

    iget-object v7, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v7}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v7

    if-eq v7, v1, :cond_3

    if-eq v7, v9, :cond_2

    if-eq v7, v10, :cond_4

    if-ne v7, v8, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-lez v4, :cond_6

    iput v1, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackState:I

    goto :goto_4

    :cond_6
    if-lez v5, :cond_8

    iput v9, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackState:I

    if-ne v0, v10, :cond_b

    iget-boolean v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playWhenReady:Z

    if-eqz v0, :cond_b

    move v0, v2

    :goto_2
    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1, v2}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    iget-boolean v0, p0, Landroidx/media3/transformer/CompositionPlayer;->isSeeking:Z

    if-nez v0, :cond_b

    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer;->finalAudioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {p0}, Landroidx/media3/exoplayer/audio/AudioSink;->pause()V

    goto :goto_4

    :cond_8
    iget-object v3, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v6, v3, :cond_9

    iput v8, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackState:I

    goto :goto_4

    :cond_9
    iput v10, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackState:I

    iput-boolean v2, p0, Landroidx/media3/transformer/CompositionPlayer;->isSeeking:Z

    if-eq v0, v10, :cond_b

    iget-boolean v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playWhenReady:Z

    if-eqz v0, :cond_b

    :goto_3
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer;->finalAudioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {p0}, Landroidx/media3/exoplayer/audio/AudioSink;->play()V

    :cond_b
    :goto_4
    return-void

    :cond_c
    :goto_5
    iput v1, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackState:I

    return-void
.end method

.method private wrapWithSpeedChangingMediaSource(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/audio/SpeedProvider;J)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 7

    new-instance v6, Landroidx/media3/transformer/CompositionPlayer$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media3/transformer/CompositionPlayer$1;-><init>(Landroidx/media3/transformer/CompositionPlayer;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/audio/SpeedProvider;J)V

    return-object v6
.end method

.method private wrapWithVideoEffectsBasedMediaSources(Landroidx/media3/exoplayer/source/MediaSource;Lcom/google/common/collect/ImmutableList;J)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Effect;",
            ">;J)",
            "Landroidx/media3/exoplayer/source/MediaSource;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->iterator()Ldgb;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Effect;

    instance-of v1, v0, Landroidx/media3/transformer/InactiveTimestampAdjustment;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/media3/transformer/InactiveTimestampAdjustment;

    iget-object v0, v0, Landroidx/media3/transformer/InactiveTimestampAdjustment;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    invoke-direct {p0, p1, v0, p3, p4}, Landroidx/media3/transformer/CompositionPlayer;->wrapWithSpeedChangingMediaSource(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/audio/SpeedProvider;J)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public getState()Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 4

    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    invoke-direct {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;-><init>()V

    sget-object v1, Landroidx/media3/transformer/CompositionPlayer;->AVAILABLE_COMMANDS:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setAvailableCommands(Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackState:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackException:Landroidx/media3/common/PlaybackException;

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlayerError(Landroidx/media3/common/PlaybackException;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/transformer/CompositionPlayer;->playWhenReady:Z

    iget v2, p0, Landroidx/media3/transformer/CompositionPlayer;->playWhenReadyChangeReason:I

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlayWhenReady(ZI)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/transformer/CompositionPlayer;->repeatMode:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setRepeatMode(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/transformer/CompositionPlayer;->volume:F

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setVolume(F)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->positionSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setContentPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->bufferedPositionSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setContentBufferedPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->totalBufferedDurationSupplier:Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->getRenderedFirstFrameAndReset()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setNewlyRenderedFirstFrame(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/transformer/CompositionPlayer;->repeatingCompositionSeekInProgress:Z

    if-eqz v1, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPositionDiscontinuity(IJ)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    iput-boolean v3, p0, Landroidx/media3/transformer/CompositionPlayer;->repeatingCompositionSeekInProgress:Z

    :cond_0
    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer;->playlist:Lcom/google/common/collect/ImmutableList;

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaylist(Ljava/util/List;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    :cond_1
    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method public handleClearVideoOutput(Ljava/lang/Object;)Lim5;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lim5;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->videoOutput:Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->videoOutput:Ljava/lang/Object;

    iget-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->composition:Landroidx/media3/transformer/Composition;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->h()Lim5;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->removeSurfaceCallbacks()V

    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->clearVideoSurfaceInternal()V

    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->h()Lim5;

    move-result-object p0

    return-object p0
.end method

.method public handlePrepare()Lim5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lim5;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->composition:Landroidx/media3/transformer/Composition;

    const-string v1, "No composition set"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->h()Lim5;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1}, Landroidx/media3/common/Player;->prepare()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->h()Lim5;

    move-result-object p0

    return-object p0
.end method

.method public handleRelease()Lim5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lim5;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->composition:Landroidx/media3/transformer/Composition;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->h()Lim5;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackThread:Landroid/os/HandlerThread;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionPlayerInternal:Landroidx/media3/transformer/CompositionPlayerInternal;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/CompositionPlayerInternal;

    invoke-virtual {v0}, Landroidx/media3/transformer/CompositionPlayerInternal;->release()V

    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->removeSurfaceCallbacks()V

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionInternalListenerHandler:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->displaySurface:Landroid/view/Surface;

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackThread:Landroid/os/HandlerThread;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer;->applicationHandler:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {p0, v1}, Landroidx/media3/common/util/HandlerWrapper;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->h()Lim5;

    move-result-object p0

    return-object p0
.end method

.method public handleSeek(IJI)Lim5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI)",
            "Lim5;"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->resetLivePositionSuppliers()V

    iget-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->compositionPlayerInternal:Landroidx/media3/transformer/CompositionPlayerInternal;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/transformer/CompositionPlayerInternal;

    const/4 p4, 0x1

    iput-boolean p4, p0, Landroidx/media3/transformer/CompositionPlayer;->isSeeking:Z

    invoke-virtual {p1, p2, p3}, Landroidx/media3/transformer/CompositionPlayerInternal;->startSeek(J)V

    const/4 p4, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p4, v0, :cond_0

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0, p2, p3}, Landroidx/media3/common/Player;->seekTo(J)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/transformer/CompositionPlayerInternal;->endSeek()V

    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->h()Lim5;

    move-result-object p0

    return-object p0
.end method

.method public handleSetPlayWhenReady(Z)Lim5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lim5;"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/media3/transformer/CompositionPlayer;->playWhenReady:Z

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playWhenReadyChangeReason:I

    iget v0, p0, Landroidx/media3/transformer/CompositionPlayer;->playbackState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->finalAudioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->play()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->finalAudioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->pause()V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1, p1}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->h()Lim5;

    move-result-object p0

    return-object p0
.end method

.method public handleSetRepeatMode(I)Lim5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lim5;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput p1, p0, Landroidx/media3/transformer/CompositionPlayer;->repeatMode:I

    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->h()Lim5;

    move-result-object p0

    return-object p0
.end method

.method public handleSetVideoOutput(Ljava/lang/Object;)Lim5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lim5;"
        }
    .end annotation

    instance-of v0, p1, Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    instance-of v1, p1, Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->videoOutput:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->composition:Landroidx/media3/transformer/Composition;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->h()Lim5;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz v0, :cond_3

    check-cast p1, Landroid/view/SurfaceHolder;

    invoke-direct {p0, p1}, Landroidx/media3/transformer/CompositionPlayer;->setVideoSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    :cond_3
    check-cast p1, Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/transformer/CompositionPlayer;->setVideoSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V

    :goto_1
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->h()Lim5;

    move-result-object p0

    return-object p0
.end method

.method public handleSetVolume(F)Lim5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lim5;"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/Util;->constrainValue(FFF)F

    move-result p1

    iput p1, p0, Landroidx/media3/transformer/CompositionPlayer;->volume:F

    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer;->finalAudioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->setVolume(F)V

    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->h()Lim5;

    move-result-object p0

    return-object p0
.end method

.method public handleStop()Lim5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lim5;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->players:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1}, Landroidx/media3/common/Player;->stop()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->h()Lim5;

    move-result-object p0

    return-object p0
.end method

.method public onError(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;Landroidx/media3/common/VideoFrameProcessingException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->applicationHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v0, Lud1;

    invoke-direct {v0, p0, p2}, Lud1;-><init>(Landroidx/media3/transformer/CompositionPlayer;Landroidx/media3/common/VideoFrameProcessingException;)V

    invoke-interface {p1, v0}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/transformer/CompositionPlayer;->maybeUpdatePlaybackError(Ljava/lang/String;Ljava/lang/Exception;I)V

    return-void
.end method

.method public onFirstFrameRendered(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->applicationHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v0, Ltd1;

    invoke-direct {v0, p0}, Ltd1;-><init>(Landroidx/media3/transformer/CompositionPlayer;)V

    invoke-interface {p1, v0}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFrameDropped(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;Landroidx/media3/common/VideoSize;)V
    .locals 0

    return-void
.end method

.method public setComposition(Landroidx/media3/transformer/Composition;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThread()V

    iget-object v0, p1, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    invoke-virtual {p1}, Landroidx/media3/transformer/Composition;->hasGaps()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->composition:Landroidx/media3/transformer/Composition;

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer;->deactivateSpeedAdjustingVideoEffects(Landroidx/media3/transformer/Composition;)Landroidx/media3/transformer/Composition;

    move-result-object p1

    iget-object v0, p1, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->previewingVideoGraphFactory:Landroidx/media3/common/PreviewingVideoGraph$Factory;

    invoke-interface {v0}, Landroidx/media3/common/PreviewingVideoGraph$Factory;->supportsMultipleInputs()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CompositionPlayer"

    const-string v1, "Setting multi-sequence Composition with single input video graph."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1}, Landroidx/media3/transformer/CompositionPlayer;->setCompositionInternal(Landroidx/media3/transformer/Composition;)V

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->videoOutput:Ljava/lang/Object;

    if-eqz v0, :cond_5

    instance-of v1, v0, Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/view/SurfaceHolder;

    invoke-direct {p0, v0}, Landroidx/media3/transformer/CompositionPlayer;->setVideoSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    :cond_2
    instance-of v1, v0, Landroid/view/SurfaceView;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/transformer/CompositionPlayer;->setVideoSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    :cond_3
    instance-of v1, v0, Landroid/view/Surface;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/view/Surface;

    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer;->videoOutputSize:Landroidx/media3/common/util/Size;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/util/Size;

    invoke-direct {p0, v0, v1}, Landroidx/media3/transformer/CompositionPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer;->videoOutput:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->composition:Landroidx/media3/transformer/Composition;

    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer;->videoOutput:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/transformer/CompositionPlayer;->videoOutputSize:Landroidx/media3/common/util/Size;

    invoke-direct {p0, p1, p2}, Landroidx/media3/transformer/CompositionPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    invoke-direct {p0, p3, p4}, Landroidx/media3/transformer/CompositionPlayer;->maybeSetOutputSurfaceInfo(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    new-instance v0, Landroidx/media3/common/util/Size;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/Size;-><init>(II)V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->videoOutputSize:Landroidx/media3/common/util/Size;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer;->videoOutputSize:Landroidx/media3/common/util/Size;

    invoke-direct {p0, p1, v0}, Landroidx/media3/transformer/CompositionPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/transformer/CompositionPlayer;->clearVideoSurfaceInternal()V

    return-void
.end method
