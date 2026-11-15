.class public final Landroidx/media3/transformer/CompositionPlayer$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/CompositionPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

.field private built:Z

.field private clock:Landroidx/media3/common/util/Clock;

.field private final context:Landroid/content/Context;

.field private imageDecoderFactory:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

.field private looper:Landroid/os/Looper;

.field private mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

.field private previewingVideoGraphFactory:Landroidx/media3/common/PreviewingVideoGraph$Factory;

.field private videoPrewarmingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->context:Landroid/content/Context;

    new-instance v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    sget-object p1, Landroidx/media3/exoplayer/image/ImageDecoder$Factory;->DEFAULT:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->imageDecoderFactory:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->videoPrewarmingEnabled:Z

    sget-object p1, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->clock:Landroidx/media3/common/util/Clock;

    return-void
.end method

.method public static synthetic access$100(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->looper:Landroid/os/Looper;

    return-object p0
.end method

.method public static synthetic access$200(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroidx/media3/common/util/Clock;
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->clock:Landroidx/media3/common/util/Clock;

    return-object p0
.end method

.method public static synthetic access$300(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$400(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroidx/media3/exoplayer/audio/AudioSink;
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    return-object p0
.end method

.method public static synthetic access$500(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    return-object p0
.end method

.method public static synthetic access$600(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroidx/media3/exoplayer/image/ImageDecoder$Factory;
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->imageDecoderFactory:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    return-object p0
.end method

.method public static synthetic access$700(Landroidx/media3/transformer/CompositionPlayer$Builder;)Landroidx/media3/common/PreviewingVideoGraph$Factory;
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->previewingVideoGraphFactory:Landroidx/media3/common/PreviewingVideoGraph$Factory;

    return-object p0
.end method

.method public static synthetic access$800(Landroidx/media3/transformer/CompositionPlayer$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->videoPrewarmingEnabled:Z

    return p0
.end method


# virtual methods
.method public build()Landroidx/media3/transformer/CompositionPlayer;
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->built:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->looper:Landroid/os/Looper;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->looper:Landroid/os/Looper;

    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;

    iget-object v2, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->build()Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    :cond_1
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->previewingVideoGraphFactory:Landroidx/media3/common/PreviewingVideoGraph$Factory;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/media3/effect/PreviewingSingleInputVideoGraph$Factory;

    invoke-direct {v0}, Landroidx/media3/effect/PreviewingSingleInputVideoGraph$Factory;-><init>()V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->previewingVideoGraphFactory:Landroidx/media3/common/PreviewingVideoGraph$Factory;

    :cond_2
    new-instance v0, Landroidx/media3/transformer/CompositionPlayer;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroidx/media3/transformer/CompositionPlayer;-><init>(Landroidx/media3/transformer/CompositionPlayer$Builder;Landroidx/media3/transformer/CompositionPlayer$1;)V

    iput-boolean v1, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->built:Z

    return-object v0
.end method

.method public setAudioSink(Landroidx/media3/exoplayer/audio/AudioSink;)Landroidx/media3/transformer/CompositionPlayer$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->audioSink:Landroidx/media3/exoplayer/audio/AudioSink;

    return-object p0
.end method

.method public setClock(Landroidx/media3/common/util/Clock;)Landroidx/media3/transformer/CompositionPlayer$Builder;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->clock:Landroidx/media3/common/util/Clock;

    return-object p0
.end method

.method public setImageDecoderFactory(Landroidx/media3/exoplayer/image/ImageDecoder$Factory;)Landroidx/media3/transformer/CompositionPlayer$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->imageDecoderFactory:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    return-object p0
.end method

.method public setLooper(Landroid/os/Looper;)Landroidx/media3/transformer/CompositionPlayer$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->looper:Landroid/os/Looper;

    return-object p0
.end method

.method public setMediaSourceFactory(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/transformer/CompositionPlayer$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    return-object p0
.end method

.method public setPreviewingVideoGraphFactory(Landroidx/media3/common/PreviewingVideoGraph$Factory;)Landroidx/media3/transformer/CompositionPlayer$Builder;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->previewingVideoGraphFactory:Landroidx/media3/common/PreviewingVideoGraph$Factory;

    return-object p0
.end method

.method public setVideoPrewarmingEnabled(Z)Landroidx/media3/transformer/CompositionPlayer$Builder;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Landroidx/media3/transformer/CompositionPlayer$Builder;->videoPrewarmingEnabled:Z

    return-object p0
.end method
