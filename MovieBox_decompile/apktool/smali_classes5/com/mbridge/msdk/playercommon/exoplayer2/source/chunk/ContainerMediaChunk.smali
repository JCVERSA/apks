.class public Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;
.super Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/BaseMediaChunk;
.source "source.java"


# instance fields
.field private volatile bytesLoaded:I

.field private final chunkCount:I

.field private final extractorWrapper:Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;

.field private volatile loadCanceled:Z

.field private volatile loadCompleted:Z

.field private final sampleOffsetUs:J


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;Lcom/mbridge/msdk/playercommon/exoplayer2/Format;ILjava/lang/Object;JJJJIJLcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct/range {p0 .. p13}, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/BaseMediaChunk;-><init>(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;Lcom/mbridge/msdk/playercommon/exoplayer2/Format;ILjava/lang/Object;JJJJ)V

    .line 3
    .line 4
    .line 5
    move/from16 v1, p14

    .line 6
    .line 7
    iput v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->chunkCount:I

    .line 8
    .line 9
    move-wide/from16 v1, p15

    .line 10
    .line 11
    iput-wide v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    .line 12
    .line 13
    move-object/from16 v1, p17

    .line 14
    .line 15
    iput-object v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->extractorWrapper:Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final bytesLoaded()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->bytesLoaded:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    return-wide v0
.end method

.method public final cancelLoad()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    .line 3
    .line 4
    return-void
.end method

.method public getNextChunkIndex()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/MediaChunk;->chunkIndex:J

    .line 2
    .line 3
    iget v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->chunkCount:I

    .line 4
    .line 5
    int-to-long v2, v2

    .line 6
    add-long/2addr v0, v2

    .line 7
    return-wide v0
.end method

.method public isLoadCompleted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->loadCompleted:Z

    .line 2
    .line 3
    return v0
.end method

.method public final load()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    .line 2
    .line 3
    iget v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->bytesLoaded:I

    .line 4
    .line 5
    int-to-long v1, v1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->subrange(J)Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :try_start_0
    new-instance v7, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/Chunk;->dataSource:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    .line 13
    .line 14
    iget-wide v3, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    .line 15
    .line 16
    invoke-interface {v2, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->open(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v5

    .line 20
    move-object v1, v7

    .line 21
    invoke-direct/range {v1 .. v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;JJ)V

    .line 22
    .line 23
    .line 24
    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->bytesLoaded:I

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/BaseMediaChunk;->getOutput()Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/BaseMediaChunkOutput;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-wide v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/BaseMediaChunkOutput;->setSampleOffsetUs(J)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->extractorWrapper:Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;

    .line 38
    .line 39
    iget-wide v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/BaseMediaChunk;->seekTimeUs:J

    .line 40
    .line 41
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    cmp-long v4, v2, v4

    .line 47
    .line 48
    if-nez v4, :cond_0

    .line 49
    .line 50
    const-wide/16 v2, 0x0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-wide v4, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    .line 54
    .line 55
    sub-long/2addr v2, v4

    .line 56
    :goto_0
    invoke-virtual {v1, v0, v2, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->init(Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto :goto_4

    .line 62
    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->extractorWrapper:Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->extractor:Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    move v2, v1

    .line 68
    :goto_2
    if-nez v2, :cond_2

    .line 69
    .line 70
    iget-boolean v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    .line 71
    .line 72
    if-nez v3, :cond_2

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-interface {v0, v7, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;->read(Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    goto :goto_2

    .line 80
    :catchall_1
    move-exception v0

    .line 81
    goto :goto_3

    .line 82
    :cond_2
    const/4 v0, 0x1

    .line 83
    if-eq v2, v0, :cond_3

    .line 84
    .line 85
    move v1, v0

    .line 86
    :cond_3
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    .line 88
    .line 89
    :try_start_2
    invoke-interface {v7}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getPosition()J

    .line 90
    .line 91
    .line 92
    move-result-wide v1

    .line 93
    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    .line 94
    .line 95
    iget-wide v3, v3, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    .line 96
    .line 97
    sub-long/2addr v1, v3

    .line 98
    long-to-int v1, v1

    .line 99
    iput v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->bytesLoaded:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    .line 101
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/Chunk;->dataSource:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    .line 102
    .line 103
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->closeQuietly(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;)V

    .line 104
    .line 105
    .line 106
    iput-boolean v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->loadCompleted:Z

    .line 107
    .line 108
    return-void

    .line 109
    :goto_3
    :try_start_3
    invoke-interface {v7}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getPosition()J

    .line 110
    .line 111
    .line 112
    move-result-wide v1

    .line 113
    iget-object v3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    .line 114
    .line 115
    iget-wide v3, v3, Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    .line 116
    .line 117
    sub-long/2addr v1, v3

    .line 118
    long-to-int v1, v1

    .line 119
    iput v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->bytesLoaded:I

    .line 120
    .line 121
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    :goto_4
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/source/chunk/Chunk;->dataSource:Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    .line 123
    .line 124
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->closeQuietly(Lcom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;)V

    .line 125
    .line 126
    .line 127
    throw v0
.end method
