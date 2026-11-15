.class public final Landroidx/media3/muxer/MuxerUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field public static final UNSIGNED_INT_MAX_VALUE:J = 0xffffffffL


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuxiliaryTracksLengthMetadata(J)Landroidx/media3/container/MdtaMetadataEntry;
    .locals 2

    new-instance v0, Landroidx/media3/container/MdtaMetadataEntry;

    invoke-static {p0, p1}, Lcom/google/common/primitives/Longs;->k(J)[B

    move-result-object p0

    const/16 p1, 0x4e

    const-string v1, "auxiliary.tracks.length"

    invoke-direct {v0, v1, p0, p1}, Landroidx/media3/container/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BI)V

    return-object v0
.end method

.method private static getAuxiliaryTracksMapMetadata(Ljava/util/List;)Landroidx/media3/container/MdtaMetadataEntry;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/muxer/Track;",
            ">;)",
            "Landroidx/media3/container/MdtaMetadataEntry;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    int-to-byte v4, v0

    aput-byte v4, v1, v3

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_4

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/muxer/Track;

    iget-object v6, v5, Landroidx/media3/muxer/Track;->format:Landroidx/media3/common/Format;

    iget v6, v6, Landroidx/media3/common/Format;->auxiliaryTrackType:I

    if-eq v6, v3, :cond_2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    const/4 v8, 0x3

    if-eq v6, v8, :cond_3

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    move v7, v8

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported auxiliary track type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Landroidx/media3/muxer/Track;->format:Landroidx/media3/common/Format;

    iget v1, v1, Landroidx/media3/common/Format;->auxiliaryTrackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move v7, v3

    goto :goto_1

    :cond_2
    move v7, v2

    :cond_3
    :goto_1
    add-int/lit8 v5, v4, 0x2

    int-to-byte v6, v7

    aput-byte v6, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Landroidx/media3/container/MdtaMetadataEntry;

    const-string v0, "auxiliary.tracks.map"

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/container/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BI)V

    return-object p0
.end method

.method public static getAuxiliaryTracksOffsetMetadata(J)Landroidx/media3/container/MdtaMetadataEntry;
    .locals 2

    new-instance v0, Landroidx/media3/container/MdtaMetadataEntry;

    invoke-static {p0, p1}, Lcom/google/common/primitives/Longs;->k(J)[B

    move-result-object p0

    const/16 p1, 0x4e

    const-string v1, "auxiliary.tracks.offset"

    invoke-direct {v0, v1, p0, p1}, Landroidx/media3/container/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BI)V

    return-object v0
.end method

.method private static getAuxiliaryTracksSamplesLocationMetadata(Z)Landroidx/media3/container/MdtaMetadataEntry;
    .locals 3

    new-instance v0, Landroidx/media3/container/MdtaMetadataEntry;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p0, v1, v2

    const/16 p0, 0x4b

    const-string v2, "auxiliary.tracks.interleaved"

    invoke-direct {v0, v2, v1, p0}, Landroidx/media3/container/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BI)V

    return-object v0
.end method

.method public static isAuxiliaryTrack(Landroidx/media3/common/Format;)Z
    .locals 2

    iget v0, p0, Landroidx/media3/common/Format;->roleFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    iget p0, p0, Landroidx/media3/common/Format;->auxiliaryTrackType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static isMdtaMetadataEntrySupported(Landroidx/media3/container/MdtaMetadataEntry;)Z
    .locals 2

    iget p0, p0, Landroidx/media3/container/MdtaMetadataEntry;->typeIndicator:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v1, 0x17

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isMetadataSupported(Landroidx/media3/common/Metadata$Entry;)Z
    .locals 1

    instance-of v0, p0, Landroidx/media3/container/Mp4OrientationData;

    if-nez v0, :cond_3

    instance-of v0, p0, Landroidx/media3/container/Mp4LocationData;

    if-nez v0, :cond_3

    instance-of v0, p0, Landroidx/media3/container/Mp4TimestampData;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/media3/container/Mp4TimestampData;

    invoke-static {v0}, Landroidx/media3/muxer/MuxerUtil;->isMp4TimestampDataSupported(Landroidx/media3/container/Mp4TimestampData;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    instance-of v0, p0, Landroidx/media3/container/MdtaMetadataEntry;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroidx/media3/container/MdtaMetadataEntry;

    invoke-static {v0}, Landroidx/media3/muxer/MuxerUtil;->isMdtaMetadataEntrySupported(Landroidx/media3/container/MdtaMetadataEntry;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    instance-of p0, p0, Landroidx/media3/container/XmpData;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isMp4TimestampDataSupported(Landroidx/media3/container/Mp4TimestampData;)Z
    .locals 4

    iget-wide v0, p0, Landroidx/media3/container/Mp4TimestampData;->creationTimestampSeconds:J

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/container/Mp4TimestampData;->modificationTimestampSeconds:J

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static populateAuxiliaryTracksMetadata(Landroidx/media3/muxer/MetadataCollector;Landroidx/media3/container/Mp4TimestampData;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/muxer/MetadataCollector;",
            "Landroidx/media3/container/Mp4TimestampData;",
            "Z",
            "Ljava/util/List<",
            "Landroidx/media3/muxer/Track;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/media3/muxer/MetadataCollector;->addMetadata(Landroidx/media3/common/Metadata$Entry;)V

    invoke-static {p2}, Landroidx/media3/muxer/MuxerUtil;->getAuxiliaryTracksSamplesLocationMetadata(Z)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/muxer/MetadataCollector;->addMetadata(Landroidx/media3/common/Metadata$Entry;)V

    invoke-static {p3}, Landroidx/media3/muxer/MuxerUtil;->getAuxiliaryTracksMapMetadata(Ljava/util/List;)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/muxer/MetadataCollector;->addMetadata(Landroidx/media3/common/Metadata$Entry;)V

    return-void
.end method
