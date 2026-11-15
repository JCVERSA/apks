.class public final Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private codecsToParseWithinGopSampleDependencies:I

.field private parseSubtitlesDuringExtraction:Z

.field private subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;

    invoke-direct {v0}, Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    return-void
.end method


# virtual methods
.method public createProgressiveMediaExtractor(ILandroidx/media3/common/Format;ZLjava/util/List;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;
    .locals 7
    .param p5    # Landroidx/media3/extractor/TrackOutput;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/Format;",
            "Z",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;",
            "Landroidx/media3/extractor/TrackOutput;",
            "Landroidx/media3/exoplayer/analytics/PlayerId;",
            ")",
            "Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;"
        }
    .end annotation

    iget-object p6, p2, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {p6}, Landroidx/media3/common/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p3, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->parseSubtitlesDuringExtraction:Z

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p3, Landroidx/media3/extractor/text/SubtitleExtractor;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-interface {p0, p2}, Landroidx/media3/extractor/text/SubtitleParser$Factory;->create(Landroidx/media3/common/Format;)Landroidx/media3/extractor/text/SubtitleParser;

    move-result-object p0

    invoke-direct {p3, p0, p2}, Landroidx/media3/extractor/text/SubtitleExtractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser;Landroidx/media3/common/Format;)V

    goto :goto_1

    :cond_1
    invoke-static {p6}, Landroidx/media3/common/MimeTypes;->isMatroska(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean p3, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->parseSubtitlesDuringExtraction:Z

    if-nez p3, :cond_2

    const/4 v1, 0x3

    :cond_2
    new-instance p3, Landroidx/media3/extractor/mkv/MatroskaExtractor;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {p3, p0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    goto :goto_1

    :cond_3
    const-string v0, "image/jpeg"

    invoke-static {p6, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p3, Landroidx/media3/extractor/jpeg/JpegExtractor;

    invoke-direct {p3, v1}, Landroidx/media3/extractor/jpeg/JpegExtractor;-><init>(I)V

    goto :goto_1

    :cond_4
    const-string v0, "image/png"

    invoke-static {p6, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_5

    new-instance p3, Landroidx/media3/extractor/png/PngExtractor;

    invoke-direct {p3}, Landroidx/media3/extractor/png/PngExtractor;-><init>()V

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_6

    const/4 p3, 0x4

    goto :goto_0

    :cond_6
    const/4 p3, 0x0

    :goto_0
    iget-boolean p6, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->parseSubtitlesDuringExtraction:Z

    if-nez p6, :cond_7

    or-int/lit8 p3, p3, 0x20

    :cond_7
    iget p6, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->codecsToParseWithinGopSampleDependencies:I

    invoke-static {p6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->codecsToParseWithinGopSampleDependenciesAsFlags(I)I

    move-result p6

    or-int v2, p3, p6

    new-instance p3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    :goto_1
    new-instance p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;

    invoke-direct {p0, p3, p1, p2}, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;-><init>(Landroidx/media3/extractor/Extractor;ILandroidx/media3/common/Format;)V

    return-object p0
.end method

.method public experimentalParseSubtitlesDuringExtraction(Z)Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;
    .locals 0

    .line 2
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->parseSubtitlesDuringExtraction:Z

    return-object p0
.end method

.method public bridge synthetic experimentalParseSubtitlesDuringExtraction(Z)Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$Factory;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->experimentalParseSubtitlesDuringExtraction(Z)Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;

    move-result-object p0

    return-object p0
.end method

.method public experimentalSetCodecsToParseWithinGopSampleDependencies(I)Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;
    .locals 0

    .line 2
    iput p1, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->codecsToParseWithinGopSampleDependencies:I

    return-object p0
.end method

.method public bridge synthetic experimentalSetCodecsToParseWithinGopSampleDependencies(I)Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$Factory;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->experimentalSetCodecsToParseWithinGopSampleDependencies(I)Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;

    move-result-object p0

    return-object p0
.end method

.method public getOutputTextFormat(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->parseSubtitlesDuringExtraction:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-interface {v0, p1}, Landroidx/media3/extractor/text/SubtitleParser$Factory;->supportsFormat(Landroidx/media3/common/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const-string v1, "application/x-media3-cues"

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-interface {p0, p1}, Landroidx/media3/extractor/text/SubtitleParser$Factory;->getCueReplacementBehavior(Landroidx/media3/common/Format;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/media3/common/Format$Builder;->setCueReplacementBehavior(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Landroidx/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public setSubtitleParserFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;
    .locals 0

    .line 2
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    return-object p0
.end method

.method public bridge synthetic setSubtitleParserFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$Factory;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->setSubtitleParserFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;

    move-result-object p0

    return-object p0
.end method
