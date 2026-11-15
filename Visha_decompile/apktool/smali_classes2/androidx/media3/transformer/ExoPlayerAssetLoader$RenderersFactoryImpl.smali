.class final Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/RenderersFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/ExoPlayerAssetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RenderersFactoryImpl"
.end annotation


# instance fields
.field private final assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

.field private final decoderFactory:Landroidx/media3/transformer/Codec$DecoderFactory;

.field private final flattenForSlowMotion:Z

.field private final hdrMode:I

.field private final mediaClock:Landroidx/media3/transformer/TransformerMediaClock;

.field private final removeAudio:Z

.field private final removeVideo:Z


# direct methods
.method public constructor <init>(ZZZLandroidx/media3/transformer/Codec$DecoderFactory;ILandroidx/media3/transformer/AssetLoader$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->removeAudio:Z

    iput-boolean p2, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->removeVideo:Z

    iput-boolean p3, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->flattenForSlowMotion:Z

    iput-object p4, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->decoderFactory:Landroidx/media3/transformer/Codec$DecoderFactory;

    iput p5, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->hdrMode:I

    iput-object p6, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    new-instance p1, Landroidx/media3/transformer/TransformerMediaClock;

    invoke-direct {p1}, Landroidx/media3/transformer/TransformerMediaClock;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->mediaClock:Landroidx/media3/transformer/TransformerMediaClock;

    return-void
.end method


# virtual methods
.method public createRenderers(Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/text/TextOutput;Landroidx/media3/exoplayer/metadata/MetadataOutput;)[Landroidx/media3/exoplayer/Renderer;
    .locals 6

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-boolean p2, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->removeAudio:Z

    if-nez p2, :cond_0

    new-instance p2, Landroidx/media3/transformer/ExoAssetLoaderAudioRenderer;

    iget-object p3, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->decoderFactory:Landroidx/media3/transformer/Codec$DecoderFactory;

    iget-object p4, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->mediaClock:Landroidx/media3/transformer/TransformerMediaClock;

    iget-object p5, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    invoke-direct {p2, p3, p4, p5}, Landroidx/media3/transformer/ExoAssetLoaderAudioRenderer;-><init>(Landroidx/media3/transformer/Codec$DecoderFactory;Landroidx/media3/transformer/TransformerMediaClock;Landroidx/media3/transformer/AssetLoader$Listener;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean p2, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->removeVideo:Z

    if-nez p2, :cond_1

    new-instance p2, Landroidx/media3/transformer/ExoAssetLoaderVideoRenderer;

    iget-boolean v1, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->flattenForSlowMotion:Z

    iget-object v2, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->decoderFactory:Landroidx/media3/transformer/Codec$DecoderFactory;

    iget v3, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->hdrMode:I

    iget-object v4, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->mediaClock:Landroidx/media3/transformer/TransformerMediaClock;

    iget-object v5, p0, Landroidx/media3/transformer/ExoPlayerAssetLoader$RenderersFactoryImpl;->assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media3/transformer/ExoAssetLoaderVideoRenderer;-><init>(ZLandroidx/media3/transformer/Codec$DecoderFactory;ILandroidx/media3/transformer/TransformerMediaClock;Landroidx/media3/transformer/AssetLoader$Listener;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroidx/media3/exoplayer/Renderer;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/media3/exoplayer/Renderer;

    return-object p0
.end method
