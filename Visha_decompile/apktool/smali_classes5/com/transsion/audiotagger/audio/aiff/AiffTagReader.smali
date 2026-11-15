.class public Lcom/transsion/audiotagger/audio/aiff/AiffTagReader;
.super Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkReader;
.source "SourceFile"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.audio.aiff"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/AiffTagReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkReader;-><init>()V

    return-void
.end method

.method private readChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/aiff/AiffTag;Ljava/lang/String;)Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    sget-object v3, Lcom/transsion/audiotagger/audio/aiff/AiffTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Reading Tag Chunk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    new-instance v3, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v3, v4}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;-><init>(Ljava/nio/ByteOrder;)V

    invoke-virtual {v3, v0}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->readHeader(Ljava/nio/channels/FileChannel;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v4, Lcom/transsion/audiotagger/audio/aiff/AiffTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Reading Chunk:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":starting at:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/transsion/audiotagger/logging/Hex;->asDecAndHex(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":sizeIncHeader:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v7

    const-wide/16 v9, 0x8

    add-long/2addr v7, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->get(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    move-result-object v7

    const-wide/16 v11, 0x1

    const-string v8, ":"

    const/4 v13, 0x1

    if-eqz v7, :cond_2

    sget-object v14, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->TAG:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    if-ne v7, v14, :cond_2

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_2

    move-object/from16 v14, p0

    invoke-virtual {v14, v0, v3}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkReader;->readChunkDataIntoBuffer(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)Ljava/nio/ByteBuffer;

    move-result-object v7

    new-instance v15, Lcom/transsion/audiotagger/audio/iff/ChunkSummary;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v17

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v19

    move-object v14, v15

    move-object v9, v15

    move-object/from16 v15, v16

    move-wide/from16 v16, v17

    move-wide/from16 v18, v19

    invoke-direct/range {v14 .. v19}, Lcom/transsion/audiotagger/audio/iff/ChunkSummary;-><init>(Ljava/lang/String;JJ)V

    invoke-virtual {v1, v9}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->addChunkSummary(Lcom/transsion/audiotagger/audio/iff/ChunkSummary;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v9

    if-nez v9, :cond_1

    new-instance v9, Lcom/transsion/audiotagger/audio/aiff/chunk/ID3Chunk;

    invoke-direct {v9, v3, v7, v1}, Lcom/transsion/audiotagger/audio/aiff/chunk/ID3Chunk;-><init>(Lcom/transsion/audiotagger/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/tag/aiff/AiffTag;)V

    invoke-virtual {v9}, Lcom/transsion/audiotagger/audio/iff/Chunk;->readChunk()Z

    invoke-virtual {v1, v13}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->setExistingId3Tag(Z)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->setStartLocationInFile(J)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->setEndLocationInFile(J)V

    :cond_1
    sget-object v1, Lcom/transsion/audiotagger/audio/aiff/AiffTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Ignoring ID3Tag because already have one:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v7

    sub-long/2addr v7, v11

    invoke-static {v7, v8}, Lcom/transsion/audiotagger/logging/Hex;->asDecAndHex(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v5

    const-wide/16 v7, 0x8

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    if-eqz v7, :cond_4

    sget-object v4, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->CORRUPT_TAG_LATE:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    if-ne v7, v4, :cond_4

    sget-object v4, Lcom/transsion/audiotagger/audio/aiff/AiffTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Found Corrupt ID3 Chunk, starting at Odd Location:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v7

    sub-long/2addr v7, v11

    invoke-static {v7, v8}, Lcom/transsion/audiotagger/logging/Hex;->asDecAndHex(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v2

    const-wide/16 v6, 0x8

    add-long/2addr v2, v6

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v1, v13}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->setIncorrectlyAlignedTag(Z)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    const-wide/16 v3, 0x9

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return v13

    :cond_4
    if-eqz v7, :cond_6

    sget-object v4, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->CORRUPT_TAG_EARLY:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    if-ne v7, v4, :cond_6

    sget-object v4, Lcom/transsion/audiotagger/audio/aiff/AiffTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Found Corrupt ID3 Chunk, starting at Odd Location:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/transsion/audiotagger/logging/Hex;->asDecAndHex(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v2

    const-wide/16 v6, 0x8

    add-long/2addr v2, v6

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-virtual {v1, v13}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->setIncorrectlyAlignedTag(Z)V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    const-wide/16 v3, 0x7

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return v13

    :cond_6
    sget-object v4, Lcom/transsion/audiotagger/audio/aiff/AiffTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Skipping Chunk:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    new-instance v2, Lcom/transsion/audiotagger/audio/iff/ChunkSummary;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v7

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v9

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/transsion/audiotagger/audio/iff/ChunkSummary;-><init>(Ljava/lang/String;JJ)V

    invoke-virtual {v1, v2}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->addChunkSummary(Lcom/transsion/audiotagger/audio/iff/ChunkSummary;)V

    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v4

    add-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :goto_0
    invoke-static {v0, v3}, Lcom/transsion/audiotagger/audio/iff/IffHeaderChunk;->ensureOnEqualBoundary(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V

    return v13
.end method


# virtual methods
.method public read(Ljava/io/File;)Lcom/transsion/audiotagger/tag/aiff/AiffTag;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    new-instance v4, Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;

    invoke-direct {v4}, Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;-><init>()V

    new-instance v5, Lcom/transsion/audiotagger/tag/aiff/AiffTag;

    invoke-direct {v5}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;-><init>()V

    new-instance v6, Lcom/transsion/audiotagger/audio/aiff/AiffFileHeader;

    invoke-direct {v6}, Lcom/transsion/audiotagger/audio/aiff/AiffFileHeader;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v4, v7}, Lcom/transsion/audiotagger/audio/aiff/AiffFileHeader;->readHeader(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;Ljava/lang/String;)J

    :cond_0
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-gez v4, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v5, v4}, Lcom/transsion/audiotagger/audio/aiff/AiffTagReader;->readChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/aiff/AiffTag;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object p0, Lcom/transsion/audiotagger/audio/aiff/AiffTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " UnableToReadProcessChunk"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v5}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->createDefaultID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->setID3Tag(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v3, p0, v0

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    return-object v5

    :catchall_1
    move-exception p0

    :goto_1
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v2, p1, v0

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    throw p0
.end method
