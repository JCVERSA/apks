.class public final Landroidx/media3/muxer/Mp4Muxer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;,
        Landroidx/media3/muxer/Mp4Muxer$Builder;,
        Landroidx/media3/muxer/Mp4Muxer$FileFormat;,
        Landroidx/media3/muxer/Mp4Muxer$LastSampleDurationBehavior;
    }
.end annotation


# static fields
.field public static final FILE_FORMAT_DEFAULT:I = 0x0

.field public static final FILE_FORMAT_MP4_WITH_AUXILIARY_TRACKS_EXTENSION:I = 0x1

.field public static final LAST_SAMPLE_DURATION_BEHAVIOR_SET_FROM_END_OF_STREAM_BUFFER_OR_DUPLICATE_PREVIOUS:I = 0x1

.field public static final LAST_SAMPLE_DURATION_BEHAVIOR_SET_TO_ZERO:I = 0x0

.field public static final SUPPORTED_AUDIO_SAMPLE_MIME_TYPES:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORTED_VIDEO_SAMPLE_MIME_TYPES:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Mp4Muxer"


# instance fields
.field private final annexBToAvccConverter:Landroidx/media3/muxer/AnnexBToAvccConverter;

.field private final attemptStreamableOutputEnabled:Z

.field private final auxiliaryTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/muxer/Track;",
            ">;"
        }
    .end annotation
.end field

.field private auxiliaryTracksMetadataCollector:Landroidx/media3/muxer/MetadataCollector;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private auxiliaryTracksMp4Writer:Landroidx/media3/muxer/Mp4Writer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private cacheFileOutputStream:Ljava/io/FileOutputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private cacheFilePath:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final lastSampleDurationBehavior:I

.field private final metadataCollector:Landroidx/media3/muxer/MetadataCollector;

.field private final mp4AtFileParameters:Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mp4Writer:Landroidx/media3/muxer/Mp4Writer;

.field private nextTrackId:I

.field private final outputChannel:Ljava/nio/channels/FileChannel;

.field private final outputFileFormat:I

.field private final outputStream:Ljava/io/FileOutputStream;

.field private final sampleBatchingEnabled:Z

.field private final sampleCopyEnabled:Z

.field private final trackIdToTrack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/muxer/Track;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string/jumbo v5, "video/x-vnd.on2.vp9"

    const-string/jumbo v6, "video/apv"

    const-string/jumbo v0, "video/av01"

    const-string/jumbo v1, "video/3gpp"

    const-string/jumbo v2, "video/avc"

    const-string/jumbo v3, "video/hevc"

    const-string/jumbo v4, "video/mp4v-es"

    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Landroidx/media3/muxer/Mp4Muxer;->SUPPORTED_VIDEO_SAMPLE_MIME_TYPES:Lcom/google/common/collect/ImmutableList;

    const-string v5, "audio/vorbis"

    const-string v6, "audio/raw"

    const-string v1, "audio/mp4a-latm"

    const-string v2, "audio/3gpp"

    const-string v3, "audio/amr-wb"

    const-string v4, "audio/opus"

    invoke-static/range {v1 .. v6}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Landroidx/media3/muxer/Mp4Muxer;->SUPPORTED_AUDIO_SAMPLE_MIME_TYPES:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method private constructor <init>(Ljava/io/FileOutputStream;ILandroidx/media3/muxer/AnnexBToAvccConverter;ZZZILandroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;)V
    .locals 10
    .param p8    # Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move v7, p5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 3
    iput-object v1, v0, Landroidx/media3/muxer/Mp4Muxer;->outputStream:Ljava/io/FileOutputStream;

    .line 4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/muxer/Mp4Muxer;->outputChannel:Ljava/nio/channels/FileChannel;

    move v5, p2

    .line 5
    iput v5, v0, Landroidx/media3/muxer/Mp4Muxer;->lastSampleDurationBehavior:I

    move-object v4, p3

    .line 6
    iput-object v4, v0, Landroidx/media3/muxer/Mp4Muxer;->annexBToAvccConverter:Landroidx/media3/muxer/AnnexBToAvccConverter;

    if-eqz v7, :cond_0

    if-eqz p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    iput-boolean v1, v0, Landroidx/media3/muxer/Mp4Muxer;->sampleCopyEnabled:Z

    .line 8
    iput-boolean v7, v0, Landroidx/media3/muxer/Mp4Muxer;->sampleBatchingEnabled:Z

    move/from16 v8, p6

    .line 9
    iput-boolean v8, v0, Landroidx/media3/muxer/Mp4Muxer;->attemptStreamableOutputEnabled:Z

    move/from16 v1, p7

    .line 10
    iput v1, v0, Landroidx/media3/muxer/Mp4Muxer;->outputFileFormat:I

    move-object/from16 v1, p8

    .line 11
    iput-object v1, v0, Landroidx/media3/muxer/Mp4Muxer;->mp4AtFileParameters:Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;

    .line 12
    new-instance v3, Landroidx/media3/muxer/MetadataCollector;

    invoke-direct {v3}, Landroidx/media3/muxer/MetadataCollector;-><init>()V

    iput-object v3, v0, Landroidx/media3/muxer/Mp4Muxer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    .line 13
    new-instance v9, Landroidx/media3/muxer/Mp4Writer;

    move-object v1, v9

    move-object v4, p3

    move v5, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Landroidx/media3/muxer/Mp4Writer;-><init>(Ljava/nio/channels/FileChannel;Landroidx/media3/muxer/MetadataCollector;Landroidx/media3/muxer/AnnexBToAvccConverter;IZZZ)V

    iput-object v9, v0, Landroidx/media3/muxer/Mp4Muxer;->mp4Writer:Landroidx/media3/muxer/Mp4Writer;

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/media3/muxer/Mp4Muxer;->trackIdToTrack:Ljava/util/List;

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracks:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/FileOutputStream;ILandroidx/media3/muxer/AnnexBToAvccConverter;ZZZILandroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;Landroidx/media3/muxer/Mp4Muxer$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Landroidx/media3/muxer/Mp4Muxer;-><init>(Ljava/io/FileOutputStream;ILandroidx/media3/muxer/AnnexBToAvccConverter;ZZZILandroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;)V

    return-void
.end method

.method private appendAuxiliaryTracksDataToTheOutputFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracksMp4Writer:Landroidx/media3/muxer/Mp4Writer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->outputChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Landroidx/media3/muxer/Mp4Muxer;->cacheFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media3/muxer/Mp4Muxer;->outputChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/media3/muxer/Boxes;->getAxteBoxHeader(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    iget-object p0, p0, Landroidx/media3/muxer/Mp4Muxer;->outputStream:Ljava/io/FileOutputStream;

    invoke-static {v0, p0}, Lmo0;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method private ensureSetupForAuxiliaryTracks()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracksMp4Writer:Landroidx/media3/muxer/Mp4Writer;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->mp4AtFileParameters:Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;

    iget-object v0, v0, Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;->cacheFileProvider:Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters$CacheFileProvider;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters$CacheFileProvider;

    invoke-interface {v0}, Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters$CacheFileProvider;->getCacheFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->cacheFilePath:Ljava/lang/String;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Landroidx/media3/muxer/Mp4Muxer;->cacheFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->cacheFileOutputStream:Ljava/io/FileOutputStream;

    new-instance v0, Landroidx/media3/muxer/MetadataCollector;

    invoke-direct {v0}, Landroidx/media3/muxer/MetadataCollector;-><init>()V

    iput-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracksMetadataCollector:Landroidx/media3/muxer/MetadataCollector;

    new-instance v0, Landroidx/media3/muxer/Mp4Writer;

    iget-object v1, p0, Landroidx/media3/muxer/Mp4Muxer;->cacheFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    iget-object v1, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracksMetadataCollector:Landroidx/media3/muxer/MetadataCollector;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/media3/muxer/MetadataCollector;

    iget-object v4, p0, Landroidx/media3/muxer/Mp4Muxer;->annexBToAvccConverter:Landroidx/media3/muxer/AnnexBToAvccConverter;

    iget v5, p0, Landroidx/media3/muxer/Mp4Muxer;->lastSampleDurationBehavior:I

    iget-boolean v6, p0, Landroidx/media3/muxer/Mp4Muxer;->sampleCopyEnabled:Z

    iget-boolean v7, p0, Landroidx/media3/muxer/Mp4Muxer;->sampleBatchingEnabled:Z

    iget-boolean v8, p0, Landroidx/media3/muxer/Mp4Muxer;->attemptStreamableOutputEnabled:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroidx/media3/muxer/Mp4Writer;-><init>(Ljava/nio/channels/FileChannel;Landroidx/media3/muxer/MetadataCollector;Landroidx/media3/muxer/AnnexBToAvccConverter;IZZZ)V

    iput-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracksMp4Writer:Landroidx/media3/muxer/Mp4Writer;

    :cond_0
    return-void
.end method

.method private finishWritingAuxiliaryTracks()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracksMp4Writer:Landroidx/media3/muxer/Mp4Writer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracksMetadataCollector:Landroidx/media3/muxer/MetadataCollector;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/muxer/MetadataCollector;

    iget-object v1, p0, Landroidx/media3/muxer/Mp4Muxer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    iget-object v1, v1, Landroidx/media3/muxer/MetadataCollector;->timestampData:Landroidx/media3/container/Mp4TimestampData;

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracks:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Landroidx/media3/muxer/MuxerUtil;->populateAuxiliaryTracksMetadata(Landroidx/media3/muxer/MetadataCollector;Landroidx/media3/container/Mp4TimestampData;ZLjava/util/List;)V

    iget-object p0, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracksMp4Writer:Landroidx/media3/muxer/Mp4Writer;

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/muxer/Mp4Writer;

    invoke-virtual {p0}, Landroidx/media3/muxer/Mp4Writer;->finishWritingSamplesAndFinalizeMoovBox()V

    return-void
.end method

.method private finishWritingPrimaryVideoTracks()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroidx/media3/muxer/MuxerUtil;->getAuxiliaryTracksOffsetMetadata(J)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracksMp4Writer:Landroidx/media3/muxer/Mp4Writer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/muxer/Mp4Muxer;->cacheFileOutputStream:Ljava/io/FileOutputStream;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    iget-object v3, p0, Landroidx/media3/muxer/Mp4Muxer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    invoke-static {v1, v2}, Landroidx/media3/muxer/MuxerUtil;->getAuxiliaryTracksLengthMetadata(J)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/media3/muxer/MetadataCollector;->addMetadata(Landroidx/media3/common/Metadata$Entry;)V

    iget-object v1, p0, Landroidx/media3/muxer/Mp4Muxer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    invoke-virtual {v1, v0}, Landroidx/media3/muxer/MetadataCollector;->addMetadata(Landroidx/media3/common/Metadata$Entry;)V

    :cond_0
    iget-object v1, p0, Landroidx/media3/muxer/Mp4Muxer;->mp4Writer:Landroidx/media3/muxer/Mp4Writer;

    invoke-virtual {v1}, Landroidx/media3/muxer/Mp4Writer;->finishWritingSamplesAndFinalizeMoovBox()V

    iget-object v1, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracksMp4Writer:Landroidx/media3/muxer/Mp4Writer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/muxer/Mp4Muxer;->outputChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/media3/muxer/Mp4Muxer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    invoke-virtual {v3, v0}, Landroidx/media3/muxer/MetadataCollector;->removeMdtaMetadataEntry(Landroidx/media3/container/MdtaMetadataEntry;)V

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    invoke-static {v1, v2}, Landroidx/media3/muxer/MuxerUtil;->getAuxiliaryTracksOffsetMetadata(J)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/media3/muxer/MetadataCollector;->addMetadata(Landroidx/media3/common/Metadata$Entry;)V

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->mp4Writer:Landroidx/media3/muxer/Mp4Writer;

    invoke-virtual {v0}, Landroidx/media3/muxer/Mp4Writer;->finalizeMoovBox()V

    iget-object p0, p0, Landroidx/media3/muxer/Mp4Muxer;->outputChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const-string v0, "The auxiliary tracks offset should remain the same"

    invoke-static {p0, v0}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addMetadataEntry(Landroidx/media3/common/Metadata$Entry;)V
    .locals 2

    invoke-static {p1}, Landroidx/media3/muxer/MuxerUtil;->isMetadataSupported(Landroidx/media3/common/Metadata$Entry;)Z

    move-result v0

    const-string v1, "Unsupported metadata"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    iget-object p0, p0, Landroidx/media3/muxer/Mp4Muxer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    invoke-virtual {p0, p1}, Landroidx/media3/muxer/MetadataCollector;->addMetadata(Landroidx/media3/common/Metadata$Entry;)V

    return-void
.end method

.method public addTrack(ILandroidx/media3/common/Format;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    .line 2
    iget v0, p0, Landroidx/media3/muxer/Mp4Muxer;->outputFileFormat:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {p2}, Landroidx/media3/muxer/MuxerUtil;->isAuxiliaryTrack(Landroidx/media3/common/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->mp4AtFileParameters:Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;

    iget-boolean v0, v0, Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;->shouldInterleaveSamples:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->mp4Writer:Landroidx/media3/muxer/Mp4Writer;

    iget v1, p0, Landroidx/media3/muxer/Mp4Muxer;->nextTrackId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/muxer/Mp4Muxer;->nextTrackId:I

    invoke-virtual {v0, v1, p1, p2}, Landroidx/media3/muxer/Mp4Writer;->addAuxiliaryTrack(IILandroidx/media3/common/Format;)Landroidx/media3/muxer/Track;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/muxer/Mp4Muxer;->ensureSetupForAuxiliaryTracks()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracksMp4Writer:Landroidx/media3/muxer/Mp4Writer;

    iget v1, p0, Landroidx/media3/muxer/Mp4Muxer;->nextTrackId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/muxer/Mp4Muxer;->nextTrackId:I

    invoke-virtual {v0, v1, p1, p2}, Landroidx/media3/muxer/Mp4Writer;->addTrack(IILandroidx/media3/common/Format;)Landroidx/media3/muxer/Track;

    move-result-object p1

    .line 8
    iget-object p2, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracks:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Landroidx/media3/muxer/MuxerException;

    const-string p2, "Cache file not found"

    invoke-direct {p1, p2, p0}, Landroidx/media3/muxer/MuxerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 10
    :cond_1
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->mp4Writer:Landroidx/media3/muxer/Mp4Writer;

    iget v1, p0, Landroidx/media3/muxer/Mp4Muxer;->nextTrackId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/muxer/Mp4Muxer;->nextTrackId:I

    invoke-virtual {v0, v1, p1, p2}, Landroidx/media3/muxer/Mp4Writer;->addTrack(IILandroidx/media3/common/Format;)Landroidx/media3/muxer/Track;

    move-result-object p1

    .line 11
    :goto_0
    iget-object p0, p0, Landroidx/media3/muxer/Mp4Muxer;->trackIdToTrack:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget p0, p1, Landroidx/media3/muxer/Track;->id:I

    return p0
.end method

.method public addTrack(Landroidx/media3/common/Format;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, p1}, Landroidx/media3/muxer/Mp4Muxer;->addTrack(ILandroidx/media3/common/Format;)I

    move-result p0

    return p0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    const-string v0, "Mp4Muxer"

    :try_start_0
    invoke-direct {p0}, Landroidx/media3/muxer/Mp4Muxer;->finishWritingAuxiliaryTracks()V

    invoke-direct {p0}, Landroidx/media3/muxer/Mp4Muxer;->finishWritingPrimaryVideoTracks()V

    invoke-direct {p0}, Landroidx/media3/muxer/Mp4Muxer;->appendAuxiliaryTracksDataToTheOutputFile()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Landroidx/media3/muxer/MuxerException;

    const-string v3, "Failed to finish writing data"

    invoke-direct {v2, v3, v1}, Landroidx/media3/muxer/MuxerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    :goto_0
    :try_start_1
    iget-object v2, p0, Landroidx/media3/muxer/Mp4Muxer;->outputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "Failed to close output stream"

    if-nez v1, :cond_0

    new-instance v1, Landroidx/media3/muxer/MuxerException;

    invoke-direct {v1, v3, v2}, Landroidx/media3/muxer/MuxerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-static {v0, v3, v2}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object p0, p0, Landroidx/media3/muxer/Mp4Muxer;->cacheFileOutputStream:Ljava/io/FileOutputStream;

    if-eqz p0, :cond_2

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    if-nez v1, :cond_1

    new-instance v1, Landroidx/media3/muxer/MuxerException;

    const-string v0, "Failed to close the cache file output stream"

    invoke-direct {v1, v0, p0}, Landroidx/media3/muxer/MuxerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    const-string v2, "Failed to close cache file output stream"

    invoke-static {v0, v2, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    if-nez v1, :cond_3

    return-void

    :cond_3
    throw v1
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->trackIdToTrack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/muxer/Track;

    :try_start_0
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracksMp4Writer:Landroidx/media3/muxer/Mp4Writer;

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/muxer/Mp4Writer;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/muxer/Mp4Writer;->writeSampleData(Landroidx/media3/muxer/Track;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Landroidx/media3/muxer/Mp4Muxer;->mp4Writer:Landroidx/media3/muxer/Mp4Writer;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/muxer/Mp4Writer;->writeSampleData(Landroidx/media3/muxer/Track;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :goto_1
    new-instance p1, Landroidx/media3/muxer/MuxerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to write sample for presentationTimeUs="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", size="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroidx/media3/muxer/MuxerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
