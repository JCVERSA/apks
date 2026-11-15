.class public final Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private extractHdrFrames:Z

.field private mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

.field private seekParameters:Landroidx/media3/exoplayer/SeekParameters;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/media3/exoplayer/SeekParameters;->DEFAULT:Landroidx/media3/exoplayer/SeekParameters;

    iput-object v0, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    sget-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;->PREFER_SOFTWARE:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    iput-object v0, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;->extractHdrFrames:Z

    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration;
    .locals 4

    new-instance v0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration;

    iget-object v1, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    iget-object v2, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    iget-boolean p0, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;->extractHdrFrames:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration;-><init>(Landroidx/media3/exoplayer/SeekParameters;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;ZLandroidx/media3/transformer/ExperimentalFrameExtractor$1;)V

    return-object v0
.end method

.method public setExtractHdrFrames(Z)Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x22
    .end annotation

    iput-boolean p1, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;->extractHdrFrames:Z

    return-object p0
.end method

.method public setMediaCodecSelector(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;)Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    return-object p0
.end method

.method public setSeekParameters(Landroidx/media3/exoplayer/SeekParameters;)Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration$Builder;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    return-object p0
.end method
