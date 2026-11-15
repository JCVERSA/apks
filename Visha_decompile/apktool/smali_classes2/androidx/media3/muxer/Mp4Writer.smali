.class final Landroidx/media3/muxer/Mp4Writer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MOOV_BOX_SIZE_BYTES:I = 0x61a80

.field private static final FREE_BOX_TYPE:Ljava/lang/String; = "free"

.field private static final INTERLEAVE_DURATION_US:J = 0xf4240L

.field private static final MOOV_BOX_UPDATE_INTERVAL_US:J = 0xf4240L


# instance fields
.field private final annexBToAvccConverter:Landroidx/media3/muxer/AnnexBToAvccConverter;

.field private final auxiliaryTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/muxer/Track;",
            ">;"
        }
    .end annotation
.end field

.field private canWriteMoovAtStart:Z

.field private final hasWrittenSamples:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastMoovWritten:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastMoovWrittenAtSampleTimestampUs:J

.field private final lastSampleDurationBehavior:I

.field private final linearByteBufferAllocator:Landroidx/media3/muxer/LinearByteBufferAllocator;

.field private mdatDataEnd:J

.field private mdatEnd:J

.field private mdatStart:J

.field private final metadataCollector:Landroidx/media3/muxer/MetadataCollector;

.field private final outputFileChannel:Ljava/nio/channels/FileChannel;

.field private reservedMoovSpaceEnd:J

.field private reservedMoovSpaceStart:J

.field private final sampleBatchingEnabled:Z

.field private final sampleCopyEnabled:Z

.field private final tracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/muxer/Track;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;Landroidx/media3/muxer/MetadataCollector;Landroidx/media3/muxer/AnnexBToAvccConverter;IZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    iput-object p2, p0, Landroidx/media3/muxer/Mp4Writer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    iput-object p3, p0, Landroidx/media3/muxer/Mp4Writer;->annexBToAvccConverter:Landroidx/media3/muxer/AnnexBToAvccConverter;

    iput p4, p0, Landroidx/media3/muxer/Mp4Writer;->lastSampleDurationBehavior:I

    iput-boolean p5, p0, Landroidx/media3/muxer/Mp4Writer;->sampleCopyEnabled:Z

    iput-boolean p6, p0, Landroidx/media3/muxer/Mp4Writer;->sampleBatchingEnabled:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/muxer/Mp4Writer;->tracks:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/muxer/Mp4Writer;->auxiliaryTracks:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/media3/muxer/Mp4Writer;->hasWrittenSamples:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean p7, p0, Landroidx/media3/muxer/Mp4Writer;->canWriteMoovAtStart:Z

    const-wide/16 p3, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1, p1}, Lcom/google/common/collect/Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/muxer/Mp4Writer;->lastMoovWritten:Lcom/google/common/collect/Range;

    iput-wide p3, p0, Landroidx/media3/muxer/Mp4Writer;->lastMoovWrittenAtSampleTimestampUs:J

    new-instance p1, Landroidx/media3/muxer/LinearByteBufferAllocator;

    invoke-direct {p1, p2}, Landroidx/media3/muxer/LinearByteBufferAllocator;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/muxer/Mp4Writer;->linearByteBufferAllocator:Landroidx/media3/muxer/LinearByteBufferAllocator;

    return-void
.end method

.method public static synthetic a(Landroidx/media3/muxer/Track;Landroidx/media3/muxer/Track;)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/muxer/Mp4Writer;->lambda$addAuxiliaryTrack$1(Landroidx/media3/muxer/Track;Landroidx/media3/muxer/Track;)I

    move-result p0

    return p0
.end method

.method private assembleCurrentMoovData()Ljava/nio/ByteBuffer;
    .locals 3

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->tracks:Ljava/util/List;

    iget-object v1, p0, Landroidx/media3/muxer/Mp4Writer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    const/4 v2, 0x0

    iget p0, p0, Landroidx/media3/muxer/Mp4Writer;->lastSampleDurationBehavior:I

    invoke-static {v0, v1, v2, p0}, Landroidx/media3/muxer/Boxes;->moov(Ljava/util/List;Landroidx/media3/muxer/MetadataCollector;ZI)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/media3/muxer/Track;Landroidx/media3/muxer/Track;)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/muxer/Mp4Writer;->lambda$addTrack$0(Landroidx/media3/muxer/Track;Landroidx/media3/muxer/Track;)I

    move-result p0

    return p0
.end method

.method private doInterleave()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->tracks:Ljava/util/List;

    invoke-direct {p0, v0}, Landroidx/media3/muxer/Mp4Writer;->maybeWritePendingTrackSamples(Ljava/util/List;)Z

    move-result v0

    iget-object v1, p0, Landroidx/media3/muxer/Mp4Writer;->auxiliaryTracks:Ljava/util/List;

    invoke-direct {p0, v1}, Landroidx/media3/muxer/Mp4Writer;->maybeWritePendingTrackSamples(Ljava/util/List;)Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/muxer/Mp4Writer;->canWriteMoovAtStart:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/media3/muxer/Mp4Writer;->maybeWriteMoovAtStart()V

    :cond_0
    return-void
.end method

.method private getAxteBox()Ljava/nio/ByteBuffer;
    .locals 5

    invoke-static {}, Landroidx/media3/muxer/Boxes;->ftyp()Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Landroidx/media3/muxer/MetadataCollector;

    invoke-direct {v1}, Landroidx/media3/muxer/MetadataCollector;-><init>()V

    iget-object v2, p0, Landroidx/media3/muxer/Mp4Writer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    iget-object v2, v2, Landroidx/media3/muxer/MetadataCollector;->timestampData:Landroidx/media3/container/Mp4TimestampData;

    const/4 v3, 0x1

    iget-object v4, p0, Landroidx/media3/muxer/Mp4Writer;->auxiliaryTracks:Ljava/util/List;

    invoke-static {v1, v2, v3, v4}, Landroidx/media3/muxer/MuxerUtil;->populateAuxiliaryTracksMetadata(Landroidx/media3/muxer/MetadataCollector;Landroidx/media3/container/Mp4TimestampData;ZLjava/util/List;)V

    iget-object v2, p0, Landroidx/media3/muxer/Mp4Writer;->auxiliaryTracks:Ljava/util/List;

    const/4 v3, 0x0

    iget p0, p0, Landroidx/media3/muxer/Mp4Writer;->lastSampleDurationBehavior:I

    invoke-static {v2, v1, v3, p0}, Landroidx/media3/muxer/Boxes;->moov(Ljava/util/List;Landroidx/media3/muxer/MetadataCollector;ZI)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    add-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {v1, v2}, Landroidx/media3/muxer/Boxes;->getAxteBoxHeader(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    filled-new-array {v1, v0, p0}, [Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/muxer/BoxUtils;->concatenateBuffers([Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private getMdatExtensionAmount(J)J
    .locals 2

    const p0, 0x3e4ccccd    # 0.2f

    long-to-float p1, p1

    mul-float/2addr p1, p0

    float-to-long p0, p1

    const-wide/32 v0, 0x7a120

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    const-wide/32 v0, 0x3b9aca00

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$addAuxiliaryTrack$1(Landroidx/media3/muxer/Track;Landroidx/media3/muxer/Track;)I
    .locals 0

    iget p0, p0, Landroidx/media3/muxer/Track;->sortKey:I

    iget p1, p1, Landroidx/media3/muxer/Track;->sortKey:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$addTrack$0(Landroidx/media3/muxer/Track;Landroidx/media3/muxer/Track;)I
    .locals 0

    iget p0, p0, Landroidx/media3/muxer/Track;->sortKey:I

    iget p1, p1, Landroidx/media3/muxer/Track;->sortKey:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private maybeExtendMdatAndRewriteMoov(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/muxer/Mp4Writer;->canWriteMoovAtStart:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Landroidx/media3/muxer/Mp4Writer;->mdatDataEnd:J

    add-long v2, v0, p1

    iget-wide v4, p0, Landroidx/media3/muxer/Mp4Writer;->mdatEnd:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    invoke-direct {p0, v0, v1}, Landroidx/media3/muxer/Mp4Writer;->getMdatExtensionAmount(J)J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Landroidx/media3/muxer/Mp4Writer;->rewriteMoovWithMdatEmptySpace(J)V

    :cond_1
    return-void
.end method

.method private maybeWriteMoovAtStart()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroidx/media3/muxer/Mp4Writer;->assembleCurrentMoovData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    iget-wide v4, p0, Landroidx/media3/muxer/Mp4Writer;->reservedMoovSpaceEnd:J

    iget-wide v6, p0, Landroidx/media3/muxer/Mp4Writer;->reservedMoovSpaceStart:J

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    const-string v3, "free"

    const-wide/16 v4, 0x8

    if-gtz v2, :cond_0

    iget-object v1, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v1, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    iget-wide v0, p0, Landroidx/media3/muxer/Mp4Writer;->reservedMoovSpaceEnd:J

    iget-object v2, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    sub-long/2addr v0, v6

    sub-long/2addr v0, v4

    long-to-int v0, v0

    iget-object v1, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v3, v0}, Landroidx/media3/muxer/BoxUtils;->wrapIntoBox(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/media3/muxer/Mp4Writer;->canWriteMoovAtStart:Z

    iget-wide v6, p0, Landroidx/media3/muxer/Mp4Writer;->mdatDataEnd:J

    iput-wide v6, p0, Landroidx/media3/muxer/Mp4Writer;->mdatEnd:J

    iget-object v2, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v2, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    iget-wide v6, p0, Landroidx/media3/muxer/Mp4Writer;->mdatEnd:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v6, p0, Landroidx/media3/muxer/Mp4Writer;->mdatEnd:J

    int-to-long v1, v1

    add-long/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->lastMoovWritten:Lcom/google/common/collect/Range;

    iget-wide v0, p0, Landroidx/media3/muxer/Mp4Writer;->reservedMoovSpaceEnd:J

    iget-wide v6, p0, Landroidx/media3/muxer/Mp4Writer;->reservedMoovSpaceStart:J

    sub-long/2addr v0, v6

    sub-long/2addr v0, v4

    long-to-int v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v3, v0}, Landroidx/media3/muxer/BoxUtils;->wrapIntoBox(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    iget-wide v2, p0, Landroidx/media3/muxer/Mp4Writer;->reservedMoovSpaceStart:J

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    :goto_0
    iget-wide v0, p0, Landroidx/media3/muxer/Mp4Writer;->mdatDataEnd:J

    iget-wide v2, p0, Landroidx/media3/muxer/Mp4Writer;->mdatStart:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Landroidx/media3/muxer/Mp4Writer;->updateMdatSize(J)V

    return-void
.end method

.method private maybeWritePendingTrackSamples(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/muxer/Track;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/muxer/Track;

    iget-object v3, v2, Landroidx/media3/muxer/Track;->pendingSamplesBufferInfo:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    iget-object v3, v2, Landroidx/media3/muxer/Track;->pendingSamplesBufferInfo:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaCodec$BufferInfo;

    iget-object v4, v2, Landroidx/media3/muxer/Track;->pendingSamplesBufferInfo:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    invoke-direct {p0, v2}, Landroidx/media3/muxer/Mp4Writer;->writePendingTrackSamples(Landroidx/media3/muxer/Track;)V

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private rewriteMoovWithMdatEmptySpace(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Landroidx/media3/muxer/Mp4Writer;->mdatEnd:J

    add-long/2addr v0, p1

    iget-object p1, p0, Landroidx/media3/muxer/Mp4Writer;->lastMoovWritten:Lcom/google/common/collect/Range;

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-direct {p0}, Landroidx/media3/muxer/Mp4Writer;->assembleCurrentMoovData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/muxer/Mp4Writer;->safelyReplaceMoovAtEnd(JLjava/nio/ByteBuffer;)V

    return-void
.end method

.method private safelyReplaceMoovAtEnd(JLjava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->lastMoovWritten:Lcom/google/common/collect/Range;

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-wide v3, p0, Landroidx/media3/muxer/Mp4Writer;->mdatEnd:J

    cmp-long v0, p1, v3

    if-ltz v0, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    const-string v2, "free"

    invoke-static {v2, v1}, Landroidx/media3/muxer/BoxUtils;->wrapIntoBox(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const-wide/16 v0, 0x8

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/media3/muxer/Mp4Writer;->mdatEnd:J

    iget-wide v2, p0, Landroidx/media3/muxer/Mp4Writer;->mdatStart:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Landroidx/media3/muxer/Mp4Writer;->updateMdatSize(J)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result p3

    int-to-long v1, p3

    add-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/muxer/Mp4Writer;->lastMoovWritten:Lcom/google/common/collect/Range;

    return-void
.end method

.method private updateMdatSize(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    iget-wide v1, p0, Landroidx/media3/muxer/Mp4Writer;->mdatStart:J

    const-wide/16 v3, 0x8

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object p0, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private writeAxteBox()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroidx/media3/muxer/MuxerUtil;->getAuxiliaryTracksOffsetMetadata(J)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/muxer/Mp4Writer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    invoke-virtual {v1, v0}, Landroidx/media3/muxer/MetadataCollector;->addMetadata(Landroidx/media3/common/Metadata$Entry;)V

    invoke-direct {p0}, Landroidx/media3/muxer/Mp4Writer;->getAxteBox()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/muxer/Mp4Writer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Landroidx/media3/muxer/MuxerUtil;->getAuxiliaryTracksLengthMetadata(J)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media3/muxer/MetadataCollector;->addMetadata(Landroidx/media3/common/Metadata$Entry;)V

    invoke-virtual {p0}, Landroidx/media3/muxer/Mp4Writer;->finalizeMoovBox()V

    iget-object v2, p0, Landroidx/media3/muxer/Mp4Writer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    invoke-virtual {v2, v0}, Landroidx/media3/muxer/MetadataCollector;->removeMdtaMetadataEntry(Landroidx/media3/container/MdtaMetadataEntry;)V

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    iget-object v2, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/media3/muxer/MuxerUtil;->getAuxiliaryTracksOffsetMetadata(J)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media3/muxer/MetadataCollector;->addMetadata(Landroidx/media3/common/Metadata$Entry;)V

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    invoke-virtual {p0}, Landroidx/media3/muxer/Mp4Writer;->finalizeMoovBox()V

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object p0, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private writeHeader()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    invoke-static {}, Landroidx/media3/muxer/Boxes;->ftyp()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    iget-boolean v0, p0, Landroidx/media3/muxer/Mp4Writer;->canWriteMoovAtStart:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/muxer/Mp4Writer;->reservedMoovSpaceStart:J

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    const v1, 0x61a80

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-string v2, "free"

    invoke-static {v2, v1}, Landroidx/media3/muxer/BoxUtils;->wrapIntoBox(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/muxer/Mp4Writer;->reservedMoovSpaceEnd:J

    :cond_0
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/muxer/Mp4Writer;->mdatStart:J

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const-string v1, "mdat"

    invoke-static {v1}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v3, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    iget-wide v3, p0, Landroidx/media3/muxer/Mp4Writer;->mdatStart:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Landroidx/media3/muxer/Mp4Writer;->mdatDataEnd:J

    iget-boolean v0, p0, Landroidx/media3/muxer/Mp4Writer;->canWriteMoovAtStart:Z

    if-eqz v0, :cond_1

    const-wide v3, 0x7fffffffffffffffL

    :cond_1
    iput-wide v3, p0, Landroidx/media3/muxer/Mp4Writer;->mdatEnd:J

    return-void
.end method

.method private writePendingTrackSamples(Landroidx/media3/muxer/Track;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Landroidx/media3/muxer/Track;->pendingSamplesByteBuffer:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget-object v1, p1, Landroidx/media3/muxer/Track;->pendingSamplesBufferInfo:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p1, Landroidx/media3/muxer/Track;->pendingSamplesBufferInfo:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->hasWrittenSamples:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroidx/media3/muxer/Mp4Writer;->writeHeader()V

    :cond_2
    iget-object v0, p1, Landroidx/media3/muxer/Track;->pendingSamplesByteBuffer:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v4, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    goto :goto_1

    :cond_3
    invoke-direct {p0, v4, v5}, Landroidx/media3/muxer/Mp4Writer;->maybeExtendMdatAndRewriteMoov(J)V

    iget-object v0, p1, Landroidx/media3/muxer/Track;->writtenChunkOffsets:Ljava/util/List;

    iget-wide v4, p0, Landroidx/media3/muxer/Mp4Writer;->mdatDataEnd:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Landroidx/media3/muxer/Track;->writtenChunkSampleCounts:Ljava/util/List;

    iget-object v1, p1, Landroidx/media3/muxer/Track;->pendingSamplesBufferInfo:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p1, Landroidx/media3/muxer/Track;->pendingSamplesBufferInfo:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    iget-object v1, p1, Landroidx/media3/muxer/Track;->pendingSamplesByteBuffer:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    iget-object v4, p1, Landroidx/media3/muxer/Track;->format:Landroidx/media3/common/Format;

    iget-object v4, v4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroidx/media3/muxer/AnnexBUtils;->doesSampleContainAnnexBNalUnits(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroidx/media3/muxer/Mp4Writer;->annexBToAvccConverter:Landroidx/media3/muxer/AnnexBToAvccConverter;

    iget-object v5, p0, Landroidx/media3/muxer/Mp4Writer;->linearByteBufferAllocator:Landroidx/media3/muxer/LinearByteBufferAllocator;

    invoke-interface {v4, v1, v5}, Landroidx/media3/muxer/AnnexBToAvccConverter;->process(Ljava/nio/ByteBuffer;Landroidx/media3/muxer/ByteBufferAllocator;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    iget-wide v7, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    :cond_5
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0, v4, v5}, Landroidx/media3/muxer/Mp4Writer;->maybeExtendMdatAndRewriteMoov(J)V

    iget-wide v4, p0, Landroidx/media3/muxer/Mp4Writer;->mdatDataEnd:J

    iget-object v6, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v6, v1, v4, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroidx/media3/muxer/Mp4Writer;->mdatDataEnd:J

    iget-object v1, p0, Landroidx/media3/muxer/Mp4Writer;->linearByteBufferAllocator:Landroidx/media3/muxer/LinearByteBufferAllocator;

    invoke-virtual {v1}, Landroidx/media3/muxer/LinearByteBufferAllocator;->reset()V

    iget-object v1, p1, Landroidx/media3/muxer/Track;->writtenSamples:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Landroidx/media3/muxer/Track;->pendingSamplesBufferInfo:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Landroidx/media3/muxer/Mp4Writer;->mdatDataEnd:J

    iget-wide p0, p0, Landroidx/media3/muxer/Mp4Writer;->mdatEnd:J

    cmp-long p0, v0, p0

    if-gtz p0, :cond_6

    move v2, v3

    :cond_6
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    return-void
.end method


# virtual methods
.method public addAuxiliaryTrack(IILandroidx/media3/common/Format;)Landroidx/media3/muxer/Track;
    .locals 2

    new-instance v0, Landroidx/media3/muxer/Track;

    iget-boolean v1, p0, Landroidx/media3/muxer/Mp4Writer;->sampleCopyEnabled:Z

    invoke-direct {v0, p1, p3, p2, v1}, Landroidx/media3/muxer/Track;-><init>(ILandroidx/media3/common/Format;IZ)V

    iget-object p1, p0, Landroidx/media3/muxer/Mp4Writer;->auxiliaryTracks:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/media3/muxer/Mp4Writer;->auxiliaryTracks:Ljava/util/List;

    new-instance p1, Landroidx/media3/muxer/a;

    invoke-direct {p1}, Landroidx/media3/muxer/a;-><init>()V

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public addTrack(IILandroidx/media3/common/Format;)Landroidx/media3/muxer/Track;
    .locals 2

    new-instance v0, Landroidx/media3/muxer/Track;

    iget-boolean v1, p0, Landroidx/media3/muxer/Mp4Writer;->sampleCopyEnabled:Z

    invoke-direct {v0, p1, p3, p2, v1}, Landroidx/media3/muxer/Track;-><init>(ILandroidx/media3/common/Format;IZ)V

    iget-object p1, p0, Landroidx/media3/muxer/Mp4Writer;->tracks:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/media3/muxer/Mp4Writer;->tracks:Ljava/util/List;

    new-instance p1, Landroidx/media3/muxer/b;

    invoke-direct {p1}, Landroidx/media3/muxer/b;-><init>()V

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public finalizeMoovBox()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/muxer/Mp4Writer;->canWriteMoovAtStart:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/media3/muxer/Mp4Writer;->maybeWriteMoovAtStart()V

    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/media3/muxer/Mp4Writer;->assembleCurrentMoovData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    add-int/lit8 v2, v1, 0x8

    iget-wide v3, p0, Landroidx/media3/muxer/Mp4Writer;->mdatEnd:J

    iget-wide v5, p0, Landroidx/media3/muxer/Mp4Writer;->mdatDataEnd:J

    sub-long/2addr v3, v5

    int-to-long v5, v2

    cmp-long v2, v3, v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_2

    iget-object v2, p0, Landroidx/media3/muxer/Mp4Writer;->lastMoovWritten:Lcom/google/common/collect/Range;

    invoke-virtual {v2}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-direct {p0, v7, v8, v0}, Landroidx/media3/muxer/Mp4Writer;->safelyReplaceMoovAtEnd(JLjava/nio/ByteBuffer;)V

    iget-wide v7, p0, Landroidx/media3/muxer/Mp4Writer;->mdatEnd:J

    iget-wide v9, p0, Landroidx/media3/muxer/Mp4Writer;->mdatDataEnd:J

    sub-long/2addr v7, v9

    cmp-long v2, v7, v5

    if-ltz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    :cond_2
    iget-wide v5, p0, Landroidx/media3/muxer/Mp4Writer;->mdatDataEnd:J

    iget-object v2, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v2, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    iget-object v2, p0, Landroidx/media3/muxer/Mp4Writer;->lastMoovWritten:Lcom/google/common/collect/Range;

    invoke-virtual {v2}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    int-to-long v1, v1

    add-long/2addr v1, v5

    sub-long/2addr v7, v1

    const-wide/32 v9, 0x7fffffff

    cmp-long v9, v7, v9

    if-gez v9, :cond_3

    move v3, v4

    :cond_3
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    long-to-int v4, v7

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const-string v4, "free"

    invoke-static {v4}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v4, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v4, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    iput-wide v5, p0, Landroidx/media3/muxer/Mp4Writer;->mdatEnd:J

    iget-wide v3, p0, Landroidx/media3/muxer/Mp4Writer;->mdatStart:J

    sub-long v3, v5, v3

    invoke-direct {p0, v3, v4}, Landroidx/media3/muxer/Mp4Writer;->updateMdatSize(J)V

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    int-to-long v7, v0

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/common/collect/Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->lastMoovWritten:Lcom/google/common/collect/Range;

    iget-object p0, p0, Landroidx/media3/muxer/Mp4Writer;->outputFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, v1, v2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    return-void
.end method

.method public finishWritingSamplesAndFinalizeMoovBox()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/muxer/Mp4Writer;->tracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/media3/muxer/Mp4Writer;->tracks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/muxer/Track;

    invoke-direct {p0, v2}, Landroidx/media3/muxer/Mp4Writer;->writePendingTrackSamples(Landroidx/media3/muxer/Track;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Landroidx/media3/muxer/Mp4Writer;->auxiliaryTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/muxer/Mp4Writer;->auxiliaryTracks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/muxer/Track;

    invoke-direct {p0, v1}, Landroidx/media3/muxer/Mp4Writer;->writePendingTrackSamples(Landroidx/media3/muxer/Track;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->hasWrittenSamples:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/muxer/Mp4Writer;->finalizeMoovBox()V

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Writer;->auxiliaryTracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Landroidx/media3/muxer/Mp4Writer;->writeAxteBox()V

    :cond_3
    return-void
.end method

.method public writeSampleData(Landroidx/media3/muxer/Track;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Landroidx/media3/muxer/Track;->writeSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-boolean p2, p0, Landroidx/media3/muxer/Mp4Writer;->sampleBatchingEnabled:Z

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroidx/media3/muxer/Mp4Writer;->doInterleave()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/media3/muxer/Mp4Writer;->writePendingTrackSamples(Landroidx/media3/muxer/Track;)V

    iget-object p2, p0, Landroidx/media3/muxer/Mp4Writer;->tracks:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    iget-wide p2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroidx/media3/muxer/Mp4Writer;->canWriteMoovAtStart:Z

    if-eqz p1, :cond_1

    iget-wide v0, p0, Landroidx/media3/muxer/Mp4Writer;->lastMoovWrittenAtSampleTimestampUs:J

    sub-long v0, p2, v0

    const-wide/32 v2, 0xf4240

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    invoke-direct {p0}, Landroidx/media3/muxer/Mp4Writer;->maybeWriteMoovAtStart()V

    iput-wide p2, p0, Landroidx/media3/muxer/Mp4Writer;->lastMoovWrittenAtSampleTimestampUs:J

    :cond_1
    :goto_0
    return-void
.end method
