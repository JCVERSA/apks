.class public final Landroidx/media3/exoplayer/MediaExtractorCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;,
        Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;,
        Landroidx/media3/exoplayer/MediaExtractorCompat$ExtractorOutputImpl;,
        Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;,
        Landroidx/media3/exoplayer/MediaExtractorCompat$SeekMode;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAST_SAMPLE_DURATION_US:J = 0x2710L

.field public static final SEEK_TO_CLOSEST_SYNC:I = 0x2

.field public static final SEEK_TO_NEXT_SYNC:I = 0x1

.field public static final SEEK_TO_PREVIOUS_SYNC:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaExtractorCompat"


# instance fields
.field private final allocator:Landroidx/media3/exoplayer/upstream/Allocator;

.field private currentDataSource:Landroidx/media3/datasource/DataSource;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private currentExtractor:Landroidx/media3/extractor/Extractor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private currentExtractorInput:Landroidx/media3/extractor/ExtractorInput;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private final extractorsFactory:Landroidx/media3/extractor/ExtractorsFactory;

.field private final formatHolder:Landroidx/media3/exoplayer/FormatHolder;

.field private hasBeenPrepared:Z

.field private httpRequestHeaders:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private logSessionId:Landroid/media/metrics/LogSessionId;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private offsetInCurrentFile:J

.field private pendingSeek:Landroidx/media3/extractor/SeekPoint;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final positionHolder:Landroidx/media3/extractor/PositionHolder;

.field private final sampleHolderWithBufferReplacementDisabled:Landroidx/media3/decoder/DecoderInputBuffer;

.field private final sampleHolderWithBufferReplacementEnabled:Landroidx/media3/decoder/DecoderInputBuffer;

.field private final sampleMetadataQueue:Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;

.field private final sampleQueues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;",
            ">;"
        }
    .end annotation
.end field

.field private seekMap:Landroidx/media3/extractor/SeekMap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final selectedTrackIndices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final tracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;",
            ">;"
        }
    .end annotation
.end field

.field private tracksEnded:Z

.field private upstreamFormatsCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;-><init>()V

    new-instance v1, Landroidx/media3/datasource/DefaultDataSource$Factory;

    invoke-direct {v1, p1}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/MediaExtractorCompat;-><init>(Landroidx/media3/extractor/ExtractorsFactory;Landroidx/media3/datasource/DataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/ExtractorsFactory;Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->extractorsFactory:Landroidx/media3/extractor/ExtractorsFactory;

    .line 4
    iput-object p2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 5
    new-instance p1, Landroidx/media3/extractor/PositionHolder;

    invoke-direct {p1}, Landroidx/media3/extractor/PositionHolder;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->positionHolder:Landroidx/media3/extractor/PositionHolder;

    .line 6
    new-instance p1, Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    const/4 p2, 0x1

    const/high16 v0, 0x10000

    invoke-direct {p1, p2, v0}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;-><init>(ZI)V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    .line 8
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleQueues:Landroid/util/SparseArray;

    .line 9
    new-instance p1, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;

    invoke-direct {p1}, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleMetadataQueue:Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;

    .line 10
    new-instance p1, Landroidx/media3/exoplayer/FormatHolder;

    invoke-direct {p1}, Landroidx/media3/exoplayer/FormatHolder;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    .line 11
    invoke-static {}, Landroidx/media3/decoder/DecoderInputBuffer;->newNoDataInstance()Landroidx/media3/decoder/DecoderInputBuffer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleHolderWithBufferReplacementDisabled:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 12
    new-instance p1, Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleHolderWithBufferReplacementEnabled:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 13
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->selectedTrackIndices:Ljava/util/Set;

    return-void
.end method

.method public static synthetic a(Landroidx/media3/extractor/Extractor;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->lambda$selectExtractor$0(Landroidx/media3/extractor/Extractor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Landroidx/media3/exoplayer/MediaExtractorCompat;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleQueues:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic access$400(Landroidx/media3/exoplayer/MediaExtractorCompat;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracksEnded:Z

    return p0
.end method

.method public static synthetic access$402(Landroidx/media3/exoplayer/MediaExtractorCompat;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracksEnded:Z

    return p1
.end method

.method public static synthetic access$500(Landroidx/media3/exoplayer/MediaExtractorCompat;)Landroidx/media3/exoplayer/upstream/Allocator;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    return-object p0
.end method

.method public static synthetic access$602(Landroidx/media3/exoplayer/MediaExtractorCompat;Landroidx/media3/extractor/SeekMap;)Landroidx/media3/extractor/SeekMap;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->seekMap:Landroidx/media3/extractor/SeekMap;

    return-object p1
.end method

.method public static synthetic access$700(Landroidx/media3/exoplayer/MediaExtractorCompat;Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;Landroidx/media3/common/Format;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaExtractorCompat;->onSampleQueueFormatInitialized(Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;Landroidx/media3/common/Format;)V

    return-void
.end method

.method public static synthetic access$800(Landroidx/media3/exoplayer/MediaExtractorCompat;)Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleMetadataQueue:Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;

    return-object p0
.end method

.method private advanceToSampleOrEndOfInput()Z
    .locals 8

    const-string v0, "Treating exception as the end of input."

    const-string v1, "MediaExtractorCompat"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->maybeResolvePendingSeek()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v3, v2

    :cond_0
    :goto_0
    iget-object v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleMetadataQueue:Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    iget-object v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->selectedTrackIndices:Ljava/util/Set;

    iget-object v6, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleMetadataQueue:Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;

    invoke-virtual {v6}, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;->peekFirst()Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;

    iget v6, v6, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;->trackIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->skipOneSample()V

    goto :goto_0

    :cond_2
    if-nez v3, :cond_4

    :try_start_1
    iget-object v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractor:Landroidx/media3/extractor/Extractor;

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/extractor/Extractor;

    iget-object v6, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractorInput:Landroidx/media3/extractor/ExtractorInput;

    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/extractor/ExtractorInput;

    iget-object v7, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->positionHolder:Landroidx/media3/extractor/PositionHolder;

    invoke-interface {v4, v6, v7}, Landroidx/media3/extractor/Extractor;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_3

    goto :goto_1

    :cond_3
    if-ne v4, v5, :cond_0

    iget-object v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->positionHolder:Landroidx/media3/extractor/PositionHolder;

    iget-wide v6, v4, Landroidx/media3/extractor/PositionHolder;->position:J

    invoke-direct {p0, v6, v7}, Landroidx/media3/exoplayer/MediaExtractorCompat;->reopenCurrentDataSource(J)Landroidx/media3/extractor/ExtractorInput;

    move-result-object v4

    iput-object v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractorInput:Landroidx/media3/extractor/ExtractorInput;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {v1, v0, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    move v3, v5

    goto :goto_0

    :cond_4
    return v2

    :catch_1
    move-exception p0

    invoke-static {v1, v0, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method private buildDataSpec(Landroid/net/Uri;J)Landroidx/media3/datasource/DataSpec;
    .locals 1

    new-instance v0, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {v0}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroidx/media3/datasource/DataSpec$Builder;->setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroidx/media3/datasource/DataSpec$Builder;->setFlags(I)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->httpRequestHeaders:Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroidx/media3/datasource/DataSpec$Builder;->setHttpRequestHeaders(Ljava/util/Map;)Landroidx/media3/datasource/DataSpec$Builder;

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$selectExtractor$0(Landroidx/media3/extractor/Extractor;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Landroidx/media3/extractor/Extractor;->getUnderlyingImplementation()Landroidx/media3/extractor/Extractor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private maybeResolvePendingSeek()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->pendingSeek:Landroidx/media3/extractor/SeekPoint;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/SeekPoint;

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractor:Landroidx/media3/extractor/Extractor;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/Extractor;

    iget-wide v2, v0, Landroidx/media3/extractor/SeekPoint;->position:J

    iget-wide v4, v0, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    invoke-interface {v1, v2, v3, v4, v5}, Landroidx/media3/extractor/Extractor;->seek(JJ)V

    iget-wide v0, v0, Landroidx/media3/extractor/SeekPoint;->position:J

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->reopenCurrentDataSource(J)Landroidx/media3/extractor/ExtractorInput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractorInput:Landroidx/media3/extractor/ExtractorInput;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->pendingSeek:Landroidx/media3/extractor/SeekPoint;

    return-void
.end method

.method private onSampleQueueFormatInitialized(Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;Landroidx/media3/common/Format;)V
    .locals 5

    iget v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->upstreamFormatsCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->upstreamFormatsCount:I

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;->setMainTrackIndex(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    new-instance v2, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, v4, v4}, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;-><init>(Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;ZLjava/lang/String;Landroidx/media3/exoplayer/MediaExtractorCompat$1;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getAlternativeCodecMimeType(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;->setCompatibilityTrackIndex(I)V

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    new-instance v0, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;

    invoke-direct {v0, p1, v1, p2, v4}, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;-><init>(Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;ZLjava/lang/String;Landroidx/media3/exoplayer/MediaExtractorCompat$1;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private peekNextSelectedTrackSample(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleMetadataQueue:Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;->peekFirst()Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;

    iget v1, v1, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;->trackIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->sampleQueue:Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroidx/media3/exoplayer/source/SampleQueue;->read(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;IZ)I

    move-result v1

    const/4 v4, -0x5

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    invoke-virtual {v0, v1, p1, v2, v3}, Landroidx/media3/exoplayer/source/SampleQueue;->read(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;IZ)I

    move-result v1

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/FormatHolder;->clear()V

    const/4 p0, -0x4

    if-ne v1, p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    return-void
.end method

.method private populatePlatformCryptoInfoParameters(Landroid/media/MediaCodec$CryptoInfo;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleHolderWithBufferReplacementEnabled:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object p0, p0, Landroidx/media3/decoder/DecoderInputBuffer;->cryptoInfo:Landroidx/media3/decoder/CryptoInfo;

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/decoder/CryptoInfo;

    invoke-virtual {p0}, Landroidx/media3/decoder/CryptoInfo;->getFrameworkCryptoInfo()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object p0

    iget v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iput v0, p1, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iget-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iput-object v0, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iget-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iput-object v0, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iget-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    iput-object v0, p1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    iget-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    iput-object v0, p1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    iget p0, p0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    iput p0, p1, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    return-void
.end method

.method private prepareDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->hasBeenPrepared:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-boolean v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->hasBeenPrepared:Z

    iget-wide v2, p2, Landroidx/media3/datasource/DataSpec;->position:J

    iput-wide v2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->offsetInCurrentFile:J

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentDataSource:Landroidx/media3/datasource/DataSource;

    invoke-interface {p1, p2}, Landroidx/media3/datasource/DataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v8

    new-instance p1, Landroidx/media3/extractor/DefaultExtractorInput;

    iget-object v5, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentDataSource:Landroidx/media3/datasource/DataSource;

    const-wide/16 v6, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Landroidx/media3/extractor/DefaultExtractorInput;-><init>(Landroidx/media3/common/DataReader;JJ)V

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->selectExtractor(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/extractor/Extractor;

    move-result-object p2

    new-instance v0, Landroidx/media3/exoplayer/MediaExtractorCompat$ExtractorOutputImpl;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroidx/media3/exoplayer/MediaExtractorCompat$ExtractorOutputImpl;-><init>(Landroidx/media3/exoplayer/MediaExtractorCompat;Landroidx/media3/exoplayer/MediaExtractorCompat$1;)V

    invoke-interface {p2, v0}, Landroidx/media3/extractor/Extractor;->init(Landroidx/media3/extractor/ExtractorOutput;)V

    move v0, v1

    :goto_0
    if-eqz v0, :cond_6

    const/4 v0, -0x1

    :try_start_0
    iget-object v3, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->positionHolder:Landroidx/media3/extractor/PositionHolder;

    invoke-interface {p2, p1, v3}, Landroidx/media3/extractor/Extractor;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    move v3, v0

    :goto_1
    iget-boolean v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracksEnded:Z

    if-eqz v4, :cond_1

    iget v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->upstreamFormatsCount:I

    iget-object v5, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    iget-object v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->seekMap:Landroidx/media3/extractor/SeekMap;

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    goto :goto_3

    :cond_1
    :goto_2
    move v4, v1

    :goto_3
    if-nez v2, :cond_4

    if-eqz v4, :cond_2

    if-ne v3, v0, :cond_2

    goto :goto_4

    :cond_2
    if-ne v3, v1, :cond_3

    iget-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->positionHolder:Landroidx/media3/extractor/PositionHolder;

    iget-wide v5, p1, Landroidx/media3/extractor/PositionHolder;->position:J

    invoke-direct {p0, v5, v6}, Landroidx/media3/exoplayer/MediaExtractorCompat;->reopenCurrentDataSource(J)Landroidx/media3/extractor/ExtractorInput;

    move-result-object p1

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    :goto_4
    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->release()V

    if-eqz v2, :cond_5

    const-string p0, "Exception encountered while parsing input media."

    goto :goto_5

    :cond_5
    const-string p0, "Reached end of input before preparation completed."

    :goto_5
    invoke-static {p0, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_6
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractorInput:Landroidx/media3/extractor/ExtractorInput;

    iput-object p2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractor:Landroidx/media3/extractor/Extractor;

    return-void
.end method

.method private reopenCurrentDataSource(J)Landroidx/media3/extractor/ExtractorInput;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentDataSource:Landroidx/media3/datasource/DataSource;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/media3/datasource/DataSource;

    invoke-interface {v2}, Landroidx/media3/datasource/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {v2}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    iget-wide v3, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->offsetInCurrentFile:J

    add-long/2addr v3, p1

    invoke-direct {p0, v0, v3, v4}, Landroidx/media3/exoplayer/MediaExtractorCompat;->buildDataSpec(Landroid/net/Uri;J)Landroidx/media3/datasource/DataSpec;

    move-result-object p0

    invoke-interface {v2, p0}, Landroidx/media3/datasource/DataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long p0, v0, v3

    if-eqz p0, :cond_0

    add-long/2addr v0, p1

    :cond_0
    move-wide v5, v0

    new-instance p0, Landroidx/media3/extractor/DefaultExtractorInput;

    move-object v1, p0

    move-wide v3, p1

    invoke-direct/range {v1 .. v6}, Landroidx/media3/extractor/DefaultExtractorInput;-><init>(Landroidx/media3/common/DataReader;JJ)V

    return-object p0
.end method

.method private selectExtractor(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/extractor/Extractor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->extractorsFactory:Landroidx/media3/extractor/ExtractorsFactory;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorsFactory;->createExtractors()[Landroidx/media3/extractor/Extractor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    :try_start_0
    invoke-interface {v3, p1}, Landroidx/media3/extractor/Extractor;->sniff(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_2

    :catch_0
    :cond_0
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    throw p0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    new-instance p1, Landroidx/media3/exoplayer/source/UnrecognizedInputFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "None of the available extractors ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-static {v2}, Lr95;->h(Ljava/lang/String;)Lr95;

    move-result-object v2

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    new-instance v3, Lbf6;

    invoke-direct {v3}, Lbf6;-><init>()V

    invoke-static {v0, v3}, Lcom/google/common/collect/Lists;->o(Ljava/util/List;Lo74;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lr95;->d(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") could read the stream."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentDataSource:Landroidx/media3/datasource/DataSource;

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/datasource/DataSource;

    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {p1, v0, p0, v1}, Landroidx/media3/exoplayer/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)V

    throw p1
.end method

.method private skipOneSample()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleMetadataQueue:Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;->removeFirst()Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;

    move-result-object v0

    iget v0, v0, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;->trackIndex:I

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->isCompatibilityTrack:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->discardFrontSample()V

    :cond_0
    return-void
.end method


# virtual methods
.method public advance()Z
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->advanceToSampleOrEndOfInput()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->skipOneSample()V

    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->advanceToSampleOrEndOfInput()Z

    move-result p0

    return p0
.end method

.method public getAllocator()Landroidx/media3/exoplayer/upstream/Allocator;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    return-object p0
.end method

.method public getCachedDuration()J
    .locals 13

    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->advanceToSampleOrEndOfInput()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    const/4 v0, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    move v5, v0

    move-wide v6, v3

    move-wide v8, v6

    :goto_0
    iget-object v10, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_1

    iget-object v10, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;

    iget-object v10, v10, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->sampleQueue:Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;

    invoke-virtual {v10}, Landroidx/media3/exoplayer/source/SampleQueue;->getLargestReadTimestampUs()J

    move-result-wide v11

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-virtual {v10}, Landroidx/media3/exoplayer/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v10

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    cmp-long p0, v6, v3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    cmp-long p0, v8, v6

    if-nez p0, :cond_3

    return-wide v1

    :cond_3
    cmp-long p0, v8, v3

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move-wide v1, v8

    :goto_1
    sub-long/2addr v6, v1

    const-wide/16 v0, 0x2710

    add-long/2addr v6, v0

    return-wide v6
.end method

.method public getDrmInitData()Landroidx/media3/common/DrmInitData;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleHolderWithBufferReplacementDisabled:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-static {v1, v2, v3}, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->access$100(Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;)Landroidx/media3/common/Format;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLogSessionId()Landroid/media/metrics/LogSessionId;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->logSessionId:Landroid/media/metrics/LogSessionId;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lze6;->a()Landroid/media/metrics/LogSessionId;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getMetrics()Landroid/os/PersistableBundle;
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractor:Landroidx/media3/extractor/Extractor;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/media3/extractor/Extractor;->getUnderlyingImplementation()Landroidx/media3/extractor/Extractor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.mediaextractor.fmt"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleHolderWithBufferReplacementDisabled:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-static {v1, v2, v3}, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->access$100(Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;)Landroidx/media3/common/Format;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "android.media.mediaextractor.mime"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const-string v1, "android.media.mediaextractor.ntrk"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getPsshInfo()Ljava/util/Map;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->getDrmInitData()Landroidx/media3/common/DrmInitData;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Landroidx/media3/common/DrmInitData;->schemeDataCount:I

    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Landroidx/media3/common/DrmInitData;->get(I)Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v3}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->parsePsshAtom([B)Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, v3, Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;->uuid:Ljava/util/UUID;

    iget-object v3, v3, Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;->schemeData:[B

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    return-object v0
.end method

.method public getSampleCryptoInfo(Landroid/media/MediaCodec$CryptoInfo;)Z
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->advanceToSampleOrEndOfInput()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleMetadataQueue:Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;->peekFirst()Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;

    move-result-object v0

    iget v0, v0, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleHolderWithBufferReplacementEnabled:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->peekNextSelectedTrackSample(Landroidx/media3/decoder/DecoderInputBuffer;)V

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->populatePlatformCryptoInfoParameters(Landroid/media/MediaCodec$CryptoInfo;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public getSampleFlags()I
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->advanceToSampleOrEndOfInput()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleMetadataQueue:Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;->peekFirst()Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;

    move-result-object p0

    iget p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;->flags:I

    return p0
.end method

.method public getSampleSize()J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->advanceToSampleOrEndOfInput()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleHolderWithBufferReplacementEnabled:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->peekNextSelectedTrackSample(Landroidx/media3/decoder/DecoderInputBuffer;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleHolderWithBufferReplacementEnabled:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object p0, p0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSampleTime()J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->advanceToSampleOrEndOfInput()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleMetadataQueue:Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;->peekFirst()Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;

    move-result-object p0

    iget-wide v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;->timeUs:J

    return-wide v0
.end method

.method public getSampleTrackIndex()I
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->advanceToSampleOrEndOfInput()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleMetadataQueue:Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;->peekFirst()Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;

    move-result-object p0

    iget p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue$SampleMetadata;->trackIndex:I

    return p0
.end method

.method public getTrackCount()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getTrackFormat(I)Landroid/media/MediaFormat;
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleHolderWithBufferReplacementDisabled:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p1, v0, v1}, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->createDownstreamMediaFormat(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;)Landroid/media/MediaFormat;

    move-result-object v0

    iget-object p1, p1, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->sampleQueue:Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;

    iget-wide v1, p1, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;->trackDurationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v1, v3

    const-string v5, "durationUs"

    if-eqz p1, :cond_0

    invoke-virtual {v0, v5, v1, v2}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->seekMap:Landroidx/media3/extractor/SeekMap;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroidx/media3/extractor/SeekMap;->getDurationUs()J

    move-result-wide v1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-interface {p0}, Landroidx/media3/extractor/SeekMap;->getDurationUs()J

    move-result-wide p0

    invoke-virtual {v0, v5, p0, p1}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public hasCacheReachedEndOfStream()Z
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->getCachedDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public readSampleData(Ljava/nio/ByteBuffer;I)I
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->advanceToSampleOrEndOfInput()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleHolderWithBufferReplacementDisabled:Landroidx/media3/decoder/DecoderInputBuffer;

    iput-object p1, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->peekNextSelectedTrackSample(Landroidx/media3/decoder/DecoderInputBuffer;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleHolderWithBufferReplacementDisabled:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    return p0
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/SampleQueue;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractor:Landroidx/media3/extractor/Extractor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/extractor/Extractor;->release()V

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractor:Landroidx/media3/extractor/Extractor;

    :cond_1
    iput-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractorInput:Landroidx/media3/extractor/ExtractorInput;

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->pendingSeek:Landroidx/media3/extractor/SeekPoint;

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentDataSource:Landroidx/media3/datasource/DataSource;

    invoke-static {v0}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentDataSource:Landroidx/media3/datasource/DataSource;

    return-void
.end method

.method public seekTo(JI)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->seekMap:Landroidx/media3/extractor/SeekMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->selectedTrackIndices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractor:Landroidx/media3/extractor/Extractor;

    instance-of v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;

    if-eqz v2, :cond_1

    check-cast v0, Landroidx/media3/extractor/mp4/Mp4Extractor;

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->selectedTrackIndices:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->getIdOfBackingTrack()I

    move-result v2

    invoke-virtual {v0, p1, p2, v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->getSeekPoints(JI)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-interface {v0, p1, p2}, Landroidx/media3/extractor/SeekMap;->getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object v0

    :goto_0
    if-eqz p3, :cond_5

    if-eq p3, v1, :cond_4

    const/4 v1, 0x2

    if-ne p3, v1, :cond_3

    iget-object p3, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->second:Landroidx/media3/extractor/SeekPoint;

    iget-wide v1, p3, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    sub-long v1, p1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    iget-object p3, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    iget-wide v3, p3, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    sub-long/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long p1, v1, p1

    if-gez p1, :cond_2

    iget-object p1, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->second:Landroidx/media3/extractor/SeekPoint;

    goto :goto_1

    :cond_2
    iget-object p1, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_4
    iget-object p1, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->second:Landroidx/media3/extractor/SeekPoint;

    goto :goto_1

    :cond_5
    iget-object p1, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    :goto_1
    iget-object p2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleMetadataQueue:Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/MediaExtractorCompat$SampleMetadataQueue;->clear()V

    const/4 p2, 0x0

    :goto_2
    iget-object p3, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_6

    iget-object p3, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;

    invoke-virtual {p3}, Landroidx/media3/exoplayer/source/SampleQueue;->reset()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->pendingSeek:Landroidx/media3/extractor/SeekPoint;

    return-void
.end method

.method public selectTrack(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->selectedTrackIndices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 3
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 15
    const-string v2, "file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->setDataSource(Ljava/lang/String;)V

    return-void

    .line 17
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 18
    :try_start_0
    const-string v0, "r"

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    .line 19
    :try_start_1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :try_start_2
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    .line 21
    :try_start_3
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0

    :cond_2
    if-eqz p1, :cond_3

    .line 22
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 23
    :catch_0
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Landroidx/media3/exoplayer/MediaExtractorCompat;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 8
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    .line 9
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/MediaExtractorCompat;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    :goto_0
    return-void
.end method

.method public setDataSource(Landroid/media/MediaDataSource;)V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    new-instance v0, Landroidx/media3/datasource/MediaDataSourceAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/media3/datasource/MediaDataSourceAdapter;-><init>(Landroid/media/MediaDataSource;Z)V

    .line 30
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v1, v2}, Landroidx/media3/exoplayer/MediaExtractorCompat;->buildDataSpec(Landroid/net/Uri;J)Landroidx/media3/datasource/DataSpec;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->prepareDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V

    return-void
.end method

.method public setDataSource(Landroid/net/Uri;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 2
    invoke-interface {v0}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/MediaExtractorCompat;->buildDataSpec(Landroid/net/Uri;J)Landroidx/media3/datasource/DataSpec;

    move-result-object p1

    .line 3
    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->prepareDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/MediaExtractorCompat;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    new-instance v6, Landroidx/media3/datasource/FileDescriptorDataSource;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media3/datasource/FileDescriptorDataSource;-><init>(Ljava/io/FileDescriptor;JJ)V

    .line 12
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-wide/16 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/MediaExtractorCompat;->buildDataSpec(Landroid/net/Uri;J)Landroidx/media3/datasource/DataSpec;

    move-result-object p1

    invoke-direct {p0, v6, p1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->prepareDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    iput-object p2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->httpRequestHeaders:Ljava/util/Map;

    .line 26
    iget-object p2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 27
    invoke-interface {p2}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object p2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->buildDataSpec(Landroid/net/Uri;J)Landroidx/media3/datasource/DataSpec;

    move-result-object p1

    .line 28
    invoke-direct {p0, p2, p1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->prepareDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V

    return-void
.end method

.method public setLogSessionId(Landroid/media/metrics/LogSessionId;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    invoke-static {}, Lze6;->a()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    invoke-static {p1, v0}, Laf6;->a(Landroid/media/metrics/LogSessionId;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->logSessionId:Landroid/media/metrics/LogSessionId;

    :cond_0
    return-void
.end method

.method public unselectTrack(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->selectedTrackIndices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
