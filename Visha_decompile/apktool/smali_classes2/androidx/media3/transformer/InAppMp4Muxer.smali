.class public final Landroidx/media3/transformer/InAppMp4Muxer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/Muxer;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;,
        Landroidx/media3/transformer/InAppMp4Muxer$Factory;
    }
.end annotation


# static fields
.field public static final MUXER_NAME:Ljava/lang/String; = "androidx.media3:media3-muxer:1.7.1"

.field private static final TAG:Ljava/lang/String; = "InAppMp4Muxer"

.field private static final TRACK_ID_UNSET:I = -0x1


# instance fields
.field private final metadataEntries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media3/common/Metadata$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final metadataProvider:Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final muxer:Landroidx/media3/muxer/Mp4Muxer;

.field private final videoDurationUs:J

.field private videoTrackId:I


# direct methods
.method private constructor <init>(Landroidx/media3/muxer/Mp4Muxer;Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;J)V
    .locals 0
    .param p2    # Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/media3/transformer/InAppMp4Muxer;->muxer:Landroidx/media3/muxer/Mp4Muxer;

    .line 4
    iput-object p2, p0, Landroidx/media3/transformer/InAppMp4Muxer;->metadataProvider:Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;

    .line 5
    iput-wide p3, p0, Landroidx/media3/transformer/InAppMp4Muxer;->videoDurationUs:J

    .line 6
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/InAppMp4Muxer;->metadataEntries:Ljava/util/Set;

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Landroidx/media3/transformer/InAppMp4Muxer;->videoTrackId:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/muxer/Mp4Muxer;Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;JLandroidx/media3/transformer/InAppMp4Muxer$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/transformer/InAppMp4Muxer;-><init>(Landroidx/media3/muxer/Mp4Muxer;Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;J)V

    return-void
.end method

.method private writeMetadata()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/transformer/InAppMp4Muxer;->metadataProvider:Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Landroidx/media3/transformer/InAppMp4Muxer;->metadataEntries:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Landroidx/media3/transformer/InAppMp4Muxer;->metadataProvider:Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;

    invoke-interface {v1, v0}, Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;->updateMetadataEntries(Ljava/util/Set;)V

    iget-object v1, p0, Landroidx/media3/transformer/InAppMp4Muxer;->metadataEntries:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, p0, Landroidx/media3/transformer/InAppMp4Muxer;->metadataEntries:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/InAppMp4Muxer;->metadataEntries:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Metadata$Entry;

    iget-object v2, p0, Landroidx/media3/transformer/InAppMp4Muxer;->muxer:Landroidx/media3/muxer/Mp4Muxer;

    invoke-virtual {v2, v1}, Landroidx/media3/muxer/Mp4Muxer;->addMetadataEntry(Landroidx/media3/common/Metadata$Entry;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addMetadataEntry(Landroidx/media3/common/Metadata$Entry;)V
    .locals 1

    invoke-static {p1}, Landroidx/media3/muxer/MuxerUtil;->isMetadataSupported(Landroidx/media3/common/Metadata$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/transformer/InAppMp4Muxer;->metadataEntries:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addTrack(Landroidx/media3/common/Format;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/transformer/InAppMp4Muxer;->muxer:Landroidx/media3/muxer/Mp4Muxer;

    invoke-virtual {v0, p1}, Landroidx/media3/muxer/Mp4Muxer;->addTrack(Landroidx/media3/common/Format;)I

    move-result v0

    iget-object v1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/transformer/InAppMp4Muxer;->muxer:Landroidx/media3/muxer/Mp4Muxer;

    new-instance v2, Landroidx/media3/container/Mp4OrientationData;

    iget p1, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    invoke-direct {v2, p1}, Landroidx/media3/container/Mp4OrientationData;-><init>(I)V

    invoke-virtual {v1, v2}, Landroidx/media3/muxer/Mp4Muxer;->addMetadataEntry(Landroidx/media3/common/Metadata$Entry;)V

    iput v0, p0, Landroidx/media3/transformer/InAppMp4Muxer;->videoTrackId:I

    :cond_0
    return v0
.end method

.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    iget-wide v0, p0, Landroidx/media3/transformer/InAppMp4Muxer;->videoDurationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/transformer/InAppMp4Muxer;->videoTrackId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-wide v5, p0, Landroidx/media3/transformer/InAppMp4Muxer;->videoDurationUs:J

    const/4 v7, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    iget v1, p0, Landroidx/media3/transformer/InAppMp4Muxer;->videoTrackId:I

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Landroidx/media3/transformer/InAppMp4Muxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_0
    invoke-direct {p0}, Landroidx/media3/transformer/InAppMp4Muxer;->writeMetadata()V

    iget-object p0, p0, Landroidx/media3/transformer/InAppMp4Muxer;->muxer:Landroidx/media3/muxer/Mp4Muxer;

    invoke-virtual {p0}, Landroidx/media3/muxer/Mp4Muxer;->close()V

    return-void
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    iget-wide v0, p0, Landroidx/media3/transformer/InAppMp4Muxer;->videoDurationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroidx/media3/transformer/InAppMp4Muxer;->videoTrackId:I

    if-ne p1, v2, :cond_0

    iget-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-wide v0, p0, Landroidx/media3/transformer/InAppMp4Muxer;->videoDurationUs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Skipped sample with presentation time (%d) > video duration (%d)"

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "InAppMp4Muxer"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/media3/transformer/InAppMp4Muxer;->muxer:Landroidx/media3/muxer/Mp4Muxer;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/muxer/Mp4Muxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method
