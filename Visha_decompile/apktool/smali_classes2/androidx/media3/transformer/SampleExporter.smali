.class abstract Landroidx/media3/transformer/SampleExporter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final metadata:Landroidx/media3/common/Metadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final muxerWrapper:Landroidx/media3/transformer/MuxerWrapper;

.field private muxerWrapperTrackAdded:Z

.field private final outputTrackType:I


# direct methods
.method public constructor <init>(Landroidx/media3/common/Format;Landroidx/media3/transformer/MuxerWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/transformer/SampleExporter;->muxerWrapper:Landroidx/media3/transformer/MuxerWrapper;

    iget-object p2, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    iput-object p2, p0, Landroidx/media3/transformer/SampleExporter;->metadata:Landroidx/media3/common/Metadata;

    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/transformer/TransformerUtil;->getProcessedTrackType(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroidx/media3/transformer/SampleExporter;->outputTrackType:I

    return-void
.end method

.method private feedMuxer()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/transformer/SampleExporter;->muxerWrapperTrackAdded:Z

    const/16 v1, 0x1b59

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/media3/transformer/SampleExporter;->getMuxerInputFormat()Landroidx/media3/common/Format;

    move-result-object v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    iget-object v4, p0, Landroidx/media3/transformer/SampleExporter;->metadata:Landroidx/media3/common/Metadata;

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v4, p0, Landroidx/media3/transformer/SampleExporter;->metadata:Landroidx/media3/common/Metadata;

    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    :cond_1
    iget-object v4, p0, Landroidx/media3/transformer/SampleExporter;->muxerWrapper:Landroidx/media3/transformer/MuxerWrapper;

    iget-object v5, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/media3/transformer/MuxerWrapper;->supportsSampleMimeType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getAlternativeCodecMimeType(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroidx/media3/transformer/SampleExporter;->muxerWrapper:Landroidx/media3/transformer/MuxerWrapper;

    invoke-virtual {v5, v4}, Landroidx/media3/transformer/MuxerWrapper;->supportsSampleMimeType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    :cond_2
    :try_start_0
    iget-object v4, p0, Landroidx/media3/transformer/SampleExporter;->muxerWrapper:Landroidx/media3/transformer/MuxerWrapper;

    invoke-virtual {v4, v0}, Landroidx/media3/transformer/MuxerWrapper;->addTrackFormat(Landroidx/media3/common/Format;)V
    :try_end_0
    .catch Landroidx/media3/muxer/MuxerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v2, p0, Landroidx/media3/transformer/SampleExporter;->muxerWrapperTrackAdded:Z

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    const/16 v0, 0x1b5b

    invoke-static {p0, v0}, Landroidx/media3/transformer/ExportException;->createForMuxer(Ljava/lang/Throwable;I)Landroidx/media3/transformer/ExportException;

    move-result-object p0

    throw p0

    :goto_1
    invoke-static {p0, v1}, Landroidx/media3/transformer/ExportException;->createForMuxer(Ljava/lang/Throwable;I)Landroidx/media3/transformer/ExportException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/media3/transformer/SampleExporter;->isMuxerInputEnded()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/media3/transformer/SampleExporter;->muxerWrapper:Landroidx/media3/transformer/MuxerWrapper;

    iget p0, p0, Landroidx/media3/transformer/SampleExporter;->outputTrackType:I

    invoke-virtual {v0, p0}, Landroidx/media3/transformer/MuxerWrapper;->endTrack(I)V

    return v3

    :cond_4
    invoke-virtual {p0}, Landroidx/media3/transformer/SampleExporter;->getMuxerInputBuffer()Landroidx/media3/decoder/DecoderInputBuffer;

    move-result-object v0

    if-nez v0, :cond_5

    return v3

    :cond_5
    :try_start_1
    iget-object v4, p0, Landroidx/media3/transformer/SampleExporter;->muxerWrapper:Landroidx/media3/transformer/MuxerWrapper;

    iget v5, p0, Landroidx/media3/transformer/SampleExporter;->outputTrackType:I

    iget-object v6, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/Buffer;->isKeyFrame()Z

    move-result v7

    iget-wide v8, v0, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual/range {v4 .. v9}, Landroidx/media3/transformer/MuxerWrapper;->writeSample(ILjava/nio/ByteBuffer;ZJ)Z

    move-result v0
    :try_end_1
    .catch Landroidx/media3/muxer/MuxerException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v0, :cond_6

    return v3

    :cond_6
    invoke-virtual {p0}, Landroidx/media3/transformer/SampleExporter;->releaseMuxerInputBuffer()V

    return v2

    :catch_2
    move-exception p0

    invoke-static {p0, v1}, Landroidx/media3/transformer/ExportException;->createForMuxer(Ljava/lang/Throwable;I)Landroidx/media3/transformer/ExportException;

    move-result-object p0

    throw p0
.end method

.method public static findSupportedMimeTypeForEncoderAndMuxer(Landroidx/media3/common/Format;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Format;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Lcom/google/common/collect/ImmutableSet$a;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableSet$a;-><init>()V

    iget-object v2, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableSet$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string/jumbo v2, "video/hevc"

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableSet$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;

    move-result-object v2

    const-string/jumbo v3, "video/avc"

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableSet$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;

    :cond_0
    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableSet$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$a;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet$a;->o()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    iget-object v4, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v4}, Landroidx/media3/common/ColorInfo;->isTransferHdr(Landroidx/media3/common/ColorInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v3, v4}, Landroidx/media3/transformer/EncoderUtil;->getSupportedEncodersForHdrEditing(Ljava/lang/String;Landroidx/media3/common/ColorInfo;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    return-object v3

    :cond_2
    invoke-static {v3}, Landroidx/media3/transformer/EncoderUtil;->getSupportedEncoders(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    return-object v3

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract getInput(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;I)Landroidx/media3/transformer/GraphInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation
.end method

.method public abstract getMuxerInputBuffer()Landroidx/media3/decoder/DecoderInputBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation
.end method

.method public abstract getMuxerInputFormat()Landroidx/media3/common/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation
.end method

.method public abstract isMuxerInputEnded()Z
.end method

.method public final processData()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    invoke-direct {p0}, Landroidx/media3/transformer/SampleExporter;->feedMuxer()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/transformer/SampleExporter;->isMuxerInputEnded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/transformer/SampleExporter;->processDataUpToMuxer()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public processDataUpToMuxer()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public abstract release()V
.end method

.method public abstract releaseMuxerInputBuffer()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation
.end method
