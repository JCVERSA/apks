.class final Landroidx/media3/muxer/MetadataCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public locationData:Landroidx/media3/container/Mp4LocationData;

.field public metadataEntries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media3/container/MdtaMetadataEntry;",
            ">;"
        }
    .end annotation
.end field

.field public orientationData:Landroidx/media3/container/Mp4OrientationData;

.field public timestampData:Landroidx/media3/container/Mp4TimestampData;

.field public xmpData:Landroidx/media3/container/XmpData;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/container/Mp4OrientationData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/container/Mp4OrientationData;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/muxer/MetadataCollector;->orientationData:Landroidx/media3/container/Mp4OrientationData;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/media3/muxer/MetadataCollector;->metadataEntries:Ljava/util/Set;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/container/Mp4TimestampData;->unixTimeToMp4TimeSeconds(J)J

    move-result-wide v0

    new-instance v2, Landroidx/media3/container/Mp4TimestampData;

    invoke-direct {v2, v0, v1, v0, v1}, Landroidx/media3/container/Mp4TimestampData;-><init>(JJ)V

    iput-object v2, p0, Landroidx/media3/muxer/MetadataCollector;->timestampData:Landroidx/media3/container/Mp4TimestampData;

    return-void
.end method


# virtual methods
.method public addMetadata(Landroidx/media3/common/Metadata$Entry;)V
    .locals 1

    instance-of v0, p1, Landroidx/media3/container/Mp4OrientationData;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/media3/container/Mp4OrientationData;

    iput-object p1, p0, Landroidx/media3/muxer/MetadataCollector;->orientationData:Landroidx/media3/container/Mp4OrientationData;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroidx/media3/container/Mp4LocationData;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/media3/container/Mp4LocationData;

    iput-object p1, p0, Landroidx/media3/muxer/MetadataCollector;->locationData:Landroidx/media3/container/Mp4LocationData;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Landroidx/media3/container/Mp4TimestampData;

    if-eqz v0, :cond_2

    check-cast p1, Landroidx/media3/container/Mp4TimestampData;

    iput-object p1, p0, Landroidx/media3/muxer/MetadataCollector;->timestampData:Landroidx/media3/container/Mp4TimestampData;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroidx/media3/container/MdtaMetadataEntry;

    if-eqz v0, :cond_3

    iget-object p0, p0, Landroidx/media3/muxer/MetadataCollector;->metadataEntries:Ljava/util/Set;

    check-cast p1, Landroidx/media3/container/MdtaMetadataEntry;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    instance-of v0, p1, Landroidx/media3/container/XmpData;

    if-eqz v0, :cond_4

    check-cast p1, Landroidx/media3/container/XmpData;

    iput-object p1, p0, Landroidx/media3/muxer/MetadataCollector;->xmpData:Landroidx/media3/container/XmpData;

    :goto_0
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported metadata"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeMdtaMetadataEntry(Landroidx/media3/container/MdtaMetadataEntry;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/muxer/MetadataCollector;->metadataEntries:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
