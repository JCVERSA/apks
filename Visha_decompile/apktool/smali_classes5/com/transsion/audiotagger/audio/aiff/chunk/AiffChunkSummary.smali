.class public Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkSummary;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChunkBeforeStartingMetadataTag(Lcom/transsion/audiotagger/tag/aiff/AiffTag;)Lcom/transsion/audiotagger/audio/iff/ChunkSummary;
    .locals 5

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getChunkSummaryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getChunkSummaryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/audio/iff/ChunkSummary;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/iff/ChunkSummary;->getFileStartLocation()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getChunkSummaryList()Ljava/util/List;

    move-result-object p0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/iff/ChunkSummary;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isOnlyMetadataTagsAfterStartingMetadataTag(Lcom/transsion/audiotagger/tag/aiff/AiffTag;)Z
    .locals 9

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getChunkSummaryList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/audiotagger/audio/iff/ChunkSummary;

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkSummary;->getChunkId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->TAG:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_1
    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkSummary;->getFileStartLocation()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-nez v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_2
    if-ne v2, v4, :cond_3

    return v4

    :cond_3
    return v1
.end method
