.class public Landroidx/media3/extractor/ForwardingExtractorOutput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ExtractorOutput;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field private final output:Landroidx/media3/extractor/ExtractorOutput;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ForwardingExtractorOutput;->output:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method


# virtual methods
.method public endTracks()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorOutput;->output:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public seekMap(Landroidx/media3/extractor/SeekMap;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorOutput;->output:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {p0, p1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    return-void
.end method

.method public track(II)Landroidx/media3/extractor/TrackOutput;
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorOutput;->output:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {p0, p1, p2}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p0

    return-object p0
.end method
