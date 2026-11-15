.class public Lcom/transsion/audiotagger/audio/wav/chunk/WavChunkSummary;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.audio.wav.chunk"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavChunkSummary;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChunkBeforeFirstMetadataTag(Lcom/transsion/audiotagger/tag/wav/WavTag;)Lcom/transsion/audiotagger/audio/iff/ChunkSummary;
    .locals 5

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/wav/chunk/WavChunkSummary;->getStartLocationOfFirstMetadataChunk(Lcom/transsion/audiotagger/tag/wav/WavTag;)J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getChunkSummaryList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getChunkSummaryList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/audiotagger/audio/iff/ChunkSummary;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkSummary;->getFileStartLocation()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getChunkSummaryList()Ljava/util/List;

    move-result-object p0

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/iff/ChunkSummary;

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStartLocationOfFirstMetadataChunk(Lcom/transsion/audiotagger/tag/wav/WavTag;)J
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public static isOnlyMetadataTagsAfterStartingMetadataTag(Lcom/transsion/audiotagger/tag/wav/WavTag;)Z
    .locals 8

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/wav/chunk/WavChunkSummary;->getStartLocationOfFirstMetadataChunk(Lcom/transsion/audiotagger/tag/wav/WavTag;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    sget-object p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavChunkSummary;->logger:Ljava/util/logging/Logger;

    const-string v0, "Unable to find any metadata tags !"

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getChunkSummaryList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v2, v3

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/audiotagger/audio/iff/ChunkSummary;

    if-eqz v2, :cond_2

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/iff/ChunkSummary;->getChunkId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->ID3:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/iff/ChunkSummary;->getChunkId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->LIST:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/iff/ChunkSummary;->getChunkId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->INFO:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    return v3

    :cond_2
    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/iff/ChunkSummary;->getFileStartLocation()J

    move-result-wide v6

    cmp-long v4, v6, v0

    if-nez v4, :cond_1

    move v2, v5

    goto :goto_0

    :cond_3
    if-ne v2, v5, :cond_4

    return v5

    :cond_4
    return v3
.end method
