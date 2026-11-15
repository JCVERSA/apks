.class final Landroidx/media3/transformer/MuxerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/MuxerWrapper$Listener;,
        Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;,
        Landroidx/media3/transformer/MuxerWrapper$TrackInfo;,
        Landroidx/media3/transformer/MuxerWrapper$MuxerReleaseReason;,
        Landroidx/media3/transformer/MuxerWrapper$MuxerMode;
    }
.end annotation


# static fields
.field private static final MAX_TRACK_WRITE_AHEAD_US:J

.field public static final MUXER_MODE_APPEND:I = 0x2

.field public static final MUXER_MODE_DEFAULT:I = 0x0

.field public static final MUXER_MODE_MUX_PARTIAL:I = 0x1

.field public static final MUXER_RELEASE_REASON_CANCELLED:I = 0x1

.field public static final MUXER_RELEASE_REASON_COMPLETED:I = 0x0

.field public static final MUXER_RELEASE_REASON_ERROR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MuxerWrapper"


# instance fields
.field private volatile additionalRotationDegrees:I

.field private final appendVideoFormat:Landroidx/media3/common/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final bufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private final dropSamplesBeforeFirstVideoSample:Z

.field private firstVideoPresentationTimeUs:J

.field private isEnded:Z

.field private isReady:Z

.field private final listener:Landroidx/media3/transformer/MuxerWrapper$Listener;

.field private maxEndedTrackTimeUs:J

.field private minEndedTrackTimeUs:J

.field private minTrackTimeUs:J

.field private muxedPartialAudio:Z

.field private muxedPartialVideo:Z

.field private muxer:Landroidx/media3/transformer/Muxer;

.field private final muxerFactory:Landroidx/media3/transformer/Muxer$Factory;

.field private muxerMode:I

.field private final outputPath:Ljava/lang/String;

.field private previousTrackType:I

.field private volatile trackCount:I

.field private final trackTypeToInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/transformer/MuxerWrapper$TrackInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/media3/transformer/MuxerWrapper;->MAX_TRACK_WRITE_AHEAD_US:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/media3/transformer/Muxer$Factory;Landroidx/media3/transformer/MuxerWrapper$Listener;IZLandroidx/media3/common/Format;)V
    .locals 0
    .param p6    # Landroidx/media3/common/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/MuxerWrapper;->outputPath:Ljava/lang/String;

    iput-object p2, p0, Landroidx/media3/transformer/MuxerWrapper;->muxerFactory:Landroidx/media3/transformer/Muxer$Factory;

    iput-object p3, p0, Landroidx/media3/transformer/MuxerWrapper;->listener:Landroidx/media3/transformer/MuxerWrapper$Listener;

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p4, :cond_1

    if-ne p4, p2, :cond_0

    goto :goto_0

    :cond_0
    move p3, p1

    goto :goto_1

    :cond_1
    :goto_0
    move p3, p2

    :goto_1
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput p4, p0, Landroidx/media3/transformer/MuxerWrapper;->muxerMode:I

    iput-boolean p5, p0, Landroidx/media3/transformer/MuxerWrapper;->dropSamplesBeforeFirstVideoSample:Z

    if-nez p4, :cond_2

    if-eqz p6, :cond_3

    :cond_2
    if-ne p4, p2, :cond_4

    if-eqz p6, :cond_4

    :cond_3
    move p1, p2

    :cond_4
    const-string p2, "appendVideoFormat must be present if and only if muxerMode is MUXER_MODE_MUX_PARTIAL."

    invoke-static {p1, p2}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p6, p0, Landroidx/media3/transformer/MuxerWrapper;->appendVideoFormat:Landroidx/media3/common/Format;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    const/4 p1, -0x2

    iput p1, p0, Landroidx/media3/transformer/MuxerWrapper;->previousTrackType:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/transformer/MuxerWrapper;->firstVideoPresentationTimeUs:J

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Landroidx/media3/transformer/MuxerWrapper;->minEndedTrackTimeUs:J

    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/MuxerWrapper;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method

.method private canWriteSample(IJ)Z
    .locals 7

    iget-boolean v0, p0, Landroidx/media3/transformer/MuxerWrapper;->dropSamplesBeforeFirstVideoSample:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object v2, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-static {v2, v0}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Landroidx/media3/transformer/MuxerWrapper;->firstVideoPresentationTimeUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/transformer/MuxerWrapper;->isReady:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;

    iget-wide v3, v0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->timeUs:J

    sub-long v3, p2, v3

    sget-wide v5, Landroidx/media3/transformer/MuxerWrapper;->MAX_TRACK_WRITE_AHEAD_US:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-static {v0}, Landroidx/media3/transformer/MuxerWrapper;->getTrackInfoWithMinTimeUs(Landroid/util/SparseArray;)Landroidx/media3/transformer/MuxerWrapper$TrackInfo;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;

    iget-object v0, v0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->format:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p1, :cond_3

    return v2

    :cond_3
    iget v0, p0, Landroidx/media3/transformer/MuxerWrapper;->previousTrackType:I

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-static {p1}, Landroidx/media3/transformer/MuxerWrapper;->getTrackInfoWithMinTimeUs(Landroid/util/SparseArray;)Landroidx/media3/transformer/MuxerWrapper$TrackInfo;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;

    iget-wide v3, p1, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->timeUs:J

    iput-wide v3, p0, Landroidx/media3/transformer/MuxerWrapper;->minTrackTimeUs:J

    :cond_4
    iget-wide p0, p0, Landroidx/media3/transformer/MuxerWrapper;->minTrackTimeUs:J

    sub-long/2addr p2, p0

    cmp-long p0, p2, v5

    if-gtz p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method private ensureMuxerInitialized()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->muxer:Landroidx/media3/transformer/Muxer;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->muxerFactory:Landroidx/media3/transformer/Muxer$Factory;

    iget-object v1, p0, Landroidx/media3/transformer/MuxerWrapper;->outputPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/media3/transformer/Muxer$Factory;->create(Ljava/lang/String;)Landroidx/media3/transformer/Muxer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->muxer:Landroidx/media3/transformer/Muxer;

    :cond_0
    return-void
.end method

.method private getCurrentOutputSizeBytes()J
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Landroidx/media3/transformer/MuxerWrapper;->outputPath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public static getMostCompatibleInitializationData(Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Ljava/util/List;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Format;",
            "Landroidx/media3/common/Format;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/media3/common/Format;->initializationDataEquals(Landroidx/media3/common/Format;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    return-object p0

    :cond_0
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string/jumbo v1, "video/avc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v0, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v1, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v0, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v3, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v2

    :cond_3
    iget-object v0, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v4, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    sget-object v5, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    array-length v5, v5

    add-int/lit8 v5, v5, 0x3

    array-length v6, v0

    if-lt v5, v6, :cond_4

    return-object v2

    :cond_4
    array-length v6, v0

    array-length v7, v4

    if-eq v6, v7, :cond_5

    return-object v2

    :cond_5
    move v6, v3

    :goto_0
    array-length v7, v0

    if-ge v6, v7, :cond_7

    if-eq v6, v5, :cond_6

    aget-byte v7, v0, v6

    aget-byte v8, v4, v6

    if-eq v7, v8, :cond_6

    return-object v2

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    :goto_1
    sget-object v6, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    array-length v7, v6

    if-ge v3, v7, :cond_9

    aget-byte v7, v0, v3

    aget-byte v6, v6, v3

    if-eq v7, v6, :cond_8

    return-object v2

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    array-length v3, v6

    aget-byte v3, v0, v3

    and-int/lit8 v3, v3, 0x1f

    const/4 v7, 0x7

    if-eq v3, v7, :cond_a

    return-object v2

    :cond_a
    array-length v3, v6

    add-int/2addr v3, v1

    aget-byte v1, v0, v3

    if-nez v1, :cond_b

    return-object v2

    :cond_b
    aget-byte v1, v4, v5

    aget-byte v0, v0, v5

    if-lt v1, v0, :cond_c

    iget-object p0, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    goto :goto_2

    :cond_c
    iget-object p0, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    :goto_2
    return-object p0

    :cond_d
    :goto_3
    return-object v2
.end method

.method private static getTrackInfoWithMinTimeUs(Landroid/util/SparseArray;)Landroidx/media3/transformer/MuxerWrapper$TrackInfo;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroidx/media3/transformer/MuxerWrapper$TrackInfo;",
            ">;)",
            "Landroidx/media3/transformer/MuxerWrapper$TrackInfo;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;

    iget-wide v3, v2, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->timeUs:J

    iget-wide v5, v0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->timeUs:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    move-object v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public addTrackFormat(Landroidx/media3/common/Format;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;,
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v5, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v4

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported track format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    if-ne v1, v3, :cond_3

    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget p1, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    iget v5, p0, Landroidx/media3/transformer/MuxerWrapper;->additionalRotationDegrees:I

    add-int/2addr p1, v5

    rem-int/lit16 p1, p1, 0x168

    invoke-virtual {v0, p1}, Landroidx/media3/common/Format$Builder;->setRotationDegrees(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    iget v0, p0, Landroidx/media3/transformer/MuxerWrapper;->muxerMode:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->appendVideoFormat:Landroidx/media3/common/Format;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Format;

    invoke-static {p1, v0}, Landroidx/media3/transformer/MuxerWrapper;->getMostCompatibleInitializationData(Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    goto :goto_2

    :cond_2
    new-instance p0, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;

    const-string p1, "Switching to MUXER_MODE_APPEND will fail."

    invoke-direct {p0, p1}, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    iget v0, p0, Landroidx/media3/transformer/MuxerWrapper;->muxerMode:I

    if-ne v0, v3, :cond_f

    const-string v0, " != "

    if-ne v1, v3, :cond_9

    iget-object v1, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v1, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;

    iget-object v1, v1, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->format:Landroidx/media3/common/Format;

    iget-object v2, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, v1, Landroidx/media3/common/Format;->width:I

    iget v3, p1, Landroidx/media3/common/Format;->width:I

    if-ne v2, v3, :cond_7

    iget v2, v1, Landroidx/media3/common/Format;->height:I

    iget v3, p1, Landroidx/media3/common/Format;->height:I

    if-ne v2, v3, :cond_6

    iget v2, v1, Landroidx/media3/common/Format;->rotationDegrees:I

    iget v3, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    if-ne v2, v3, :cond_5

    iget-object p0, p0, Landroidx/media3/transformer/MuxerWrapper;->appendVideoFormat:Landroidx/media3/common/Format;

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/Format;

    invoke-virtual {p1, p0}, Landroidx/media3/common/Format;->initializationDataEquals(Landroidx/media3/common/Format;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto/16 :goto_3

    :cond_4
    new-instance p0, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;

    const-string p1, "The initialization data of the newly added track format doesn\'t match appendVideoFormat."

    invoke-direct {p0, p1}, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video format mismatch - rotationDegrees: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroidx/media3/common/Format;->rotationDegrees:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video format mismatch - height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroidx/media3/common/Format;->height:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroidx/media3/common/Format;->height:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video format mismatch - width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroidx/media3/common/Format;->width:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroidx/media3/common/Format;->width:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video format mismatch - sampleMimeType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    if-ne v1, v4, :cond_e

    iget-object v1, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-static {v1, v4}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object p0, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;

    iget-object p0, p0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->format:Landroidx/media3/common/Format;

    iget-object v1, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v2, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget v1, p0, Landroidx/media3/common/Format;->channelCount:I

    iget v2, p1, Landroidx/media3/common/Format;->channelCount:I

    if-ne v1, v2, :cond_c

    iget v1, p0, Landroidx/media3/common/Format;->sampleRate:I

    iget v2, p1, Landroidx/media3/common/Format;->sampleRate:I

    if-ne v1, v2, :cond_b

    invoke-virtual {p0, p1}, Landroidx/media3/common/Format;->initializationDataEquals(Landroidx/media3/common/Format;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_3

    :cond_a
    new-instance p0, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;

    const-string p1, "Audio format mismatch - initializationData."

    invoke-direct {p0, p1}, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance v1, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio format mismatch - sampleRate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/media3/common/Format;->sampleRate:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroidx/media3/common/Format;->sampleRate:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    new-instance v1, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio format mismatch - channelCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/media3/common/Format;->channelCount:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroidx/media3/common/Format;->channelCount:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    new-instance v1, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio format mismatch - sampleMimeType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Landroidx/media3/transformer/MuxerWrapper$AppendTrackFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    :goto_3
    return-void

    :cond_f
    iget v0, p0, Landroidx/media3/transformer/MuxerWrapper;->trackCount:I

    if-lez v0, :cond_10

    move v3, v4

    goto :goto_4

    :cond_10
    move v3, v2

    :goto_4
    const-string v5, "The track count should be set before the formats are added."

    invoke-static {v3, v5}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    iget-object v3, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v3, v0, :cond_11

    move v3, v4

    goto :goto_5

    :cond_11
    move v3, v2

    :goto_5
    const-string v5, "All track formats have already been added."

    invoke-static {v3, v5}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    iget-object v3, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-static {v3, v1}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v3

    xor-int/2addr v3, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There is already a track of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    invoke-direct {p0}, Landroidx/media3/transformer/MuxerWrapper;->ensureMuxerInitialized()V

    new-instance v3, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;

    iget-object v5, p0, Landroidx/media3/transformer/MuxerWrapper;->muxer:Landroidx/media3/transformer/Muxer;

    invoke-interface {v5, p1}, Landroidx/media3/transformer/Muxer;->addTrack(Landroidx/media3/common/Format;)I

    move-result v5

    invoke-direct {v3, p1, v5}, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;-><init>(Landroidx/media3/common/Format;I)V

    iget-object v5, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-virtual {v5, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v1}, Landroidx/media3/common/util/Util;->getTrackTypeString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v10

    const-string v5, "Muxer"

    const-string v6, "InputFormat"

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-string v9, "%s:%s"

    invoke-static/range {v5 .. v10}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-eqz v1, :cond_12

    :goto_6
    iget-object v1, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    invoke-virtual {v1}, Landroidx/media3/common/Metadata;->length()I

    move-result v1

    if-ge v2, v1, :cond_12

    iget-object v1, p0, Landroidx/media3/transformer/MuxerWrapper;->muxer:Landroidx/media3/transformer/Muxer;

    iget-object v3, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    invoke-virtual {v3, v2}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v3

    invoke-interface {v1, v3}, Landroidx/media3/transformer/Muxer;->addMetadataEntry(Landroidx/media3/common/Metadata$Entry;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    iget-object p1, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ne p1, v0, :cond_13

    iput-boolean v4, p0, Landroidx/media3/transformer/MuxerWrapper;->isReady:Z

    :cond_13
    return-void
.end method

.method public changeToAppendMode()V
    .locals 2

    iget v0, p0, Landroidx/media3/transformer/MuxerWrapper;->muxerMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/transformer/MuxerWrapper;->muxerMode:I

    return-void
.end method

.method public endTrack(I)V
    .locals 11

    iget-boolean v0, p0, Landroidx/media3/transformer/MuxerWrapper;->isReady:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;

    iget-wide v1, p0, Landroidx/media3/transformer/MuxerWrapper;->minEndedTrackTimeUs:J

    iget-wide v3, v0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->startTimeUs:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/transformer/MuxerWrapper;->minEndedTrackTimeUs:J

    iget-wide v1, p0, Landroidx/media3/transformer/MuxerWrapper;->maxEndedTrackTimeUs:J

    iget-wide v3, v0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->timeUs:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/transformer/MuxerWrapper;->maxEndedTrackTimeUs:J

    iget-object v1, p0, Landroidx/media3/transformer/MuxerWrapper;->listener:Landroidx/media3/transformer/MuxerWrapper$Listener;

    iget-object v2, v0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->format:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->getAverageBitrate()I

    move-result v3

    iget v4, v0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->sampleCount:I

    invoke-interface {v1, p1, v2, v3, v4}, Landroidx/media3/transformer/MuxerWrapper$Listener;->onTrackEnded(ILandroidx/media3/common/Format;II)V

    iget-wide v7, v0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->timeUs:J

    invoke-static {p1}, Landroidx/media3/common/util/Util;->getTrackTypeString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v10

    const-string v5, "Muxer"

    const-string v6, "InputEnded"

    const-string v9, "%s"

    invoke-static/range {v5 .. v10}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Landroidx/media3/transformer/MuxerWrapper;->muxerMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iput-boolean v1, p0, Landroidx/media3/transformer/MuxerWrapper;->muxedPartialVideo:Z

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_3

    iput-boolean v1, p0, Landroidx/media3/transformer/MuxerWrapper;->muxedPartialAudio:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    iget-object p1, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_3

    iput-boolean v1, p0, Landroidx/media3/transformer/MuxerWrapper;->isEnded:Z

    const-string p1, "OutputEnded"

    iget-wide v2, p0, Landroidx/media3/transformer/MuxerWrapper;->maxEndedTrackTimeUs:J

    const-string v0, "Muxer"

    invoke-static {v0, p1, v2, v3}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_3
    :goto_0
    iget-wide v2, p0, Landroidx/media3/transformer/MuxerWrapper;->maxEndedTrackTimeUs:J

    iget-wide v4, p0, Landroidx/media3/transformer/MuxerWrapper;->minEndedTrackTimeUs:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v2

    iget p1, p0, Landroidx/media3/transformer/MuxerWrapper;->muxerMode:I

    if-ne p1, v1, :cond_5

    iget-boolean p1, p0, Landroidx/media3/transformer/MuxerWrapper;->muxedPartialVideo:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Landroidx/media3/transformer/MuxerWrapper;->muxedPartialAudio:Z

    if-nez p1, :cond_4

    iget p1, p0, Landroidx/media3/transformer/MuxerWrapper;->trackCount:I

    if-ne p1, v1, :cond_5

    :cond_4
    iget-object p1, p0, Landroidx/media3/transformer/MuxerWrapper;->listener:Landroidx/media3/transformer/MuxerWrapper$Listener;

    invoke-direct {p0}, Landroidx/media3/transformer/MuxerWrapper;->getCurrentOutputSizeBytes()J

    move-result-wide v0

    invoke-interface {p1, v2, v3, v0, v1}, Landroidx/media3/transformer/MuxerWrapper$Listener;->onEnded(JJ)V

    return-void

    :cond_5
    iget-boolean p1, p0, Landroidx/media3/transformer/MuxerWrapper;->isEnded:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroidx/media3/transformer/MuxerWrapper;->listener:Landroidx/media3/transformer/MuxerWrapper$Listener;

    invoke-direct {p0}, Landroidx/media3/transformer/MuxerWrapper;->getCurrentOutputSizeBytes()J

    move-result-wide v0

    invoke-interface {p1, v2, v3, v0, v1}, Landroidx/media3/transformer/MuxerWrapper$Listener;->onEnded(JJ)V

    :cond_6
    :goto_1
    return-void
.end method

.method public finishWritingAndMaybeRelease(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget v1, p0, Landroidx/media3/transformer/MuxerWrapper;->muxerMode:I

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media3/transformer/MuxerWrapper;->isReady:Z

    iget-object p0, p0, Landroidx/media3/transformer/MuxerWrapper;->muxer:Landroidx/media3/transformer/Muxer;

    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface {p0}, Landroidx/media3/transformer/Muxer;->close()V
    :try_end_0
    .catch Landroidx/media3/muxer/MuxerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "Failed to stop the MediaMuxer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public getSupportedSampleMimeTypes(I)Lcom/google/common/collect/ImmutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/transformer/MuxerWrapper;->muxerFactory:Landroidx/media3/transformer/Muxer$Factory;

    invoke-interface {p0, p1}, Landroidx/media3/transformer/Muxer$Factory;->getSupportedSampleMimeTypes(I)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public getTrackFormat(I)Landroidx/media3/common/Format;
    .locals 1

    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object p0, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;

    iget-object p0, p0, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->format:Landroidx/media3/common/Format;

    return-object p0
.end method

.method public isEnded()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/transformer/MuxerWrapper;->isEnded:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/media3/transformer/MuxerWrapper;->muxerMode:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/media3/transformer/MuxerWrapper;->muxedPartialVideo:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/transformer/MuxerWrapper;->muxedPartialAudio:Z

    if-nez v0, :cond_1

    iget p0, p0, Landroidx/media3/transformer/MuxerWrapper;->trackCount:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public setAdditionalRotationDegrees(I)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media3/transformer/MuxerWrapper;->additionalRotationDegrees:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "The additional rotation cannot be changed after adding track formats."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    iput p1, p0, Landroidx/media3/transformer/MuxerWrapper;->additionalRotationDegrees:I

    return-void
.end method

.method public setTrackCount(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    iget v0, p0, Landroidx/media3/transformer/MuxerWrapper;->muxerMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The track count cannot be changed after adding track formats."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    iput p1, p0, Landroidx/media3/transformer/MuxerWrapper;->trackCount:I

    return-void
.end method

.method public supportsSampleMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media3/transformer/MuxerWrapper;->getSupportedSampleMimeTypes(I)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public writeSample(ILjava/nio/ByteBuffer;ZJ)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v8, p4

    iget-object v2, v0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-static {v2, v1}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v2, v0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;

    invoke-direct {v0, v1, v8, v9}, Landroidx/media3/transformer/MuxerWrapper;->canWriteSample(IJ)Z

    move-result v11

    invoke-static/range {p1 .. p1}, Landroidx/media3/common/util/Util;->getTrackTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v7

    const-string v2, "Muxer"

    const-string v3, "CanWriteSample"

    const-string v6, "%s:%s"

    move-wide/from16 v4, p4

    invoke-static/range {v2 .. v7}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/Object;)V

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    iget-wide v6, v0, Landroidx/media3/transformer/MuxerWrapper;->firstVideoPresentationTimeUs:J

    cmp-long v6, v6, v2

    if-nez v6, :cond_1

    iput-wide v8, v0, Landroidx/media3/transformer/MuxerWrapper;->firstVideoPresentationTimeUs:J

    goto :goto_0

    :cond_0
    if-ne v1, v4, :cond_1

    iget-boolean v6, v0, Landroidx/media3/transformer/MuxerWrapper;->dropSamplesBeforeFirstVideoSample:Z

    if-eqz v6, :cond_1

    iget-object v6, v0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-static {v6, v5}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-wide v6, v0, Landroidx/media3/transformer/MuxerWrapper;->firstVideoPresentationTimeUs:J

    cmp-long v12, v6, v2

    if-eqz v12, :cond_1

    cmp-long v6, v8, v6

    if-gez v6, :cond_1

    iget-object v0, v0, Landroidx/media3/transformer/MuxerWrapper;->listener:Landroidx/media3/transformer/MuxerWrapper$Listener;

    invoke-interface {v0}, Landroidx/media3/transformer/MuxerWrapper$Listener;->onSampleWrittenOrDropped()V

    return v4

    :cond_1
    :goto_0
    const/4 v6, 0x0

    if-nez v11, :cond_2

    return v6

    :cond_2
    iget v7, v10, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->sampleCount:I

    if-nez v7, :cond_5

    if-ne v1, v5, :cond_4

    iget-object v5, v0, Landroidx/media3/transformer/MuxerWrapper;->trackTypeToInfo:Landroid/util/SparseArray;

    invoke-static {v5, v4}, Landroidx/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, v0, Landroidx/media3/transformer/MuxerWrapper;->dropSamplesBeforeFirstVideoSample:Z

    if-nez v5, :cond_4

    iget-wide v7, v0, Landroidx/media3/transformer/MuxerWrapper;->firstVideoPresentationTimeUs:J

    cmp-long v2, v7, v2

    if-eqz v2, :cond_3

    move v6, v4

    :cond_3
    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    const-string v2, "MuxerWrapper"

    const-string v3, "Applying workarounds for edit list: shifting only the first video timestamp to zero."

    invoke-static {v2, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_4
    move-wide v2, v8

    :goto_1
    iput-wide v2, v10, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->startTimeUs:J

    goto :goto_2

    :cond_5
    move-wide v2, v8

    :goto_2
    iget v5, v10, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->sampleCount:I

    add-int/2addr v5, v4

    iput v5, v10, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->sampleCount:I

    iget-wide v5, v10, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->bytesWritten:J

    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v10, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->bytesWritten:J

    iget-wide v5, v10, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->timeUs:J

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v10, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->timeUs:J

    iget-object v5, v0, Landroidx/media3/transformer/MuxerWrapper;->listener:Landroidx/media3/transformer/MuxerWrapper$Listener;

    invoke-interface {v5}, Landroidx/media3/transformer/MuxerWrapper$Listener;->onSampleWrittenOrDropped()V

    iget-object v5, v0, Landroidx/media3/transformer/MuxerWrapper;->muxer:Landroidx/media3/transformer/Muxer;

    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v0, Landroidx/media3/transformer/MuxerWrapper;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->position()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->remaining()I

    move-result v13

    invoke-static/range {p3 .. p3}, Landroidx/media3/transformer/TransformerUtil;->getMediaCodecFlags(I)I

    move-result v16

    move-wide v14, v2

    invoke-virtual/range {v11 .. v16}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    iget-object v5, v0, Landroidx/media3/transformer/MuxerWrapper;->muxer:Landroidx/media3/transformer/Muxer;

    iget v6, v10, Landroidx/media3/transformer/MuxerWrapper$TrackInfo;->trackId:I

    iget-object v7, v0, Landroidx/media3/transformer/MuxerWrapper;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    move-object/from16 v8, p2

    invoke-interface {v5, v6, v8, v7}, Landroidx/media3/transformer/Muxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    invoke-static/range {p1 .. p1}, Landroidx/media3/common/util/Util;->getTrackTypeString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v16

    const-string v11, "Muxer"

    const-string v12, "AcceptedInput"

    const-string v15, "%s"

    move-wide v13, v2

    invoke-static/range {v11 .. v16}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/Object;)V

    iput v1, v0, Landroidx/media3/transformer/MuxerWrapper;->previousTrackType:I

    return v4
.end method
