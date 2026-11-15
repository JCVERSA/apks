.class public Landroidx/media3/extractor/ForwardingExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field private final delegate:Landroidx/media3/extractor/Extractor;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/Extractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ForwardingExtractor;->delegate:Landroidx/media3/extractor/Extractor;

    return-void
.end method


# virtual methods
.method public getSniffFailureDetails()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/SniffFailure;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractor;->delegate:Landroidx/media3/extractor/Extractor;

    invoke-interface {p0}, Landroidx/media3/extractor/Extractor;->getSniffFailureDetails()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUnderlyingImplementation()Landroidx/media3/extractor/Extractor;
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractor;->delegate:Landroidx/media3/extractor/Extractor;

    invoke-interface {p0}, Landroidx/media3/extractor/Extractor;->getUnderlyingImplementation()Landroidx/media3/extractor/Extractor;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractor;->delegate:Landroidx/media3/extractor/Extractor;

    invoke-interface {p0, p1}, Landroidx/media3/extractor/Extractor;->init(Landroidx/media3/extractor/ExtractorOutput;)V

    return-void
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractor;->delegate:Landroidx/media3/extractor/Extractor;

    invoke-interface {p0, p1, p2}, Landroidx/media3/extractor/Extractor;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result p0

    return p0
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractor;->delegate:Landroidx/media3/extractor/Extractor;

    invoke-interface {p0}, Landroidx/media3/extractor/Extractor;->release()V

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractor;->delegate:Landroidx/media3/extractor/Extractor;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/Extractor;->seek(JJ)V

    return-void
.end method

.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractor;->delegate:Landroidx/media3/extractor/Extractor;

    invoke-interface {p0, p1}, Landroidx/media3/extractor/Extractor;->sniff(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result p0

    return p0
.end method
