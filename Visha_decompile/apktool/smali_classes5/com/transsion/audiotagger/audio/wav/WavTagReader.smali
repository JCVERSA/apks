.class public Lcom/transsion/audiotagger/audio/wav/WavTagReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private loggingName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.audio.wav"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->loggingName:Ljava/lang/String;

    return-void
.end method

.method private createDefaultMetadataTagsIfMissing(Lcom/transsion/audiotagger/tag/wav/WavTag;)V
    .locals 0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/transsion/audiotagger/tag/wav/WavTag;->createDefaultID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->setID3Tag(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->isExistingInfoTag()Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;-><init>()V

    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->setInfoTag(Lcom/transsion/audiotagger/tag/wav/WavInfoTag;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public read(Ljava/io/File;)Lcom/transsion/audiotagger/tag/wav/WavTag;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Read Tag:start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    new-instance v2, Lcom/transsion/audiotagger/tag/wav/WavTag;

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getWavOptions()Lcom/transsion/audiotagger/audio/wav/WavOptions;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/transsion/audiotagger/tag/wav/WavTag;-><init>(Lcom/transsion/audiotagger/audio/wav/WavOptions;)V

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/wav/WavRIFFHeader;->isValidHeader(Ljava/nio/channels/FileChannel;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-gez v3, :cond_1

    invoke-virtual {p0, p1, v2}, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->readChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v4, p1, v0

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    invoke-direct {p0, v2}, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->createDefaultMetadataTagsIfMissing(Lcom/transsion/audiotagger/tag/wav/WavTag;)V

    sget-object p1, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Read Tag:end"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    return-object v2

    :cond_2
    :try_start_2
    new-instance p1, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Wav RIFF Header not valid"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception p0

    :goto_1
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v3, p1, v0

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    throw p0
.end method

.method public readChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/wav/WavTag;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v3, v4}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;-><init>(Ljava/nio/ByteOrder;)V

    invoke-virtual {v3, v1}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->readHeader(Ljava/nio/channels/FileChannel;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    :cond_0
    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Next Id is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":FileLocation:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ":Size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->get(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    move-result-object v4

    const/4 v6, 0x1

    if-eqz v4, :cond_b

    sget-object v7, Lcom/transsion/audiotagger/audio/wav/WavTagReader$1;->$SwitchMap$com$transsion$audiotagger$audio$wav$WavChunkType:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v7, v4

    const-wide/16 v7, 0x8

    const-string v9, ":sizeIncHeader:"

    const-string v10, ":"

    if-eq v4, v6, :cond_9

    const/4 v11, 0x2

    const-wide/16 v12, 0x7

    if-eq v4, v11, :cond_7

    const/4 v11, 0x3

    if-eq v4, v11, :cond_5

    const/4 v5, 0x4

    const-string v7, " Found Corrupt id3 chunk, starting at Odd Location:"

    if-eq v4, v5, :cond_3

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    new-instance v0, Lcom/transsion/audiotagger/audio/iff/ChunkSummary;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v16

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v18

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lcom/transsion/audiotagger/audio/iff/ChunkSummary;-><init>(Ljava/lang/String;JJ)V

    invoke-virtual {v2, v0}, Lcom/transsion/audiotagger/tag/wav/WavTag;->addChunkSummary(Lcom/transsion/audiotagger/audio/iff/ChunkSummary;)V

    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v7

    add-long/2addr v4, v7

    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto/16 :goto_0

    :cond_1
    sget-object v4, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {v2, v6}, Lcom/transsion/audiotagger/tag/wav/WavTag;->setIncorrectlyAlignedTag(Z)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long/2addr v2, v12

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return v6

    :cond_3
    sget-object v4, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {v2, v6}, Lcom/transsion/audiotagger/tag/wav/WavTag;->setIncorrectlyAlignedTag(Z)V

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long/2addr v2, v12

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return v6

    :cond_5
    new-instance v4, Lcom/transsion/audiotagger/audio/iff/ChunkSummary;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v13

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v15

    move-object v11, v4

    invoke-direct/range {v11 .. v16}, Lcom/transsion/audiotagger/audio/iff/ChunkSummary;-><init>(Ljava/lang/String;JJ)V

    invoke-virtual {v2, v4}, Lcom/transsion/audiotagger/tag/wav/WavTag;->addChunkSummary(Lcom/transsion/audiotagger/audio/iff/ChunkSummary;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v4

    if-nez v4, :cond_6

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavId3Chunk;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v7

    long-to-int v4, v7

    invoke-static {v1, v4}, Lcom/transsion/audiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-direct {v0, v4, v3, v2}, Lcom/transsion/audiotagger/audio/wav/chunk/WavId3Chunk;-><init>(Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;Lcom/transsion/audiotagger/tag/wav/WavTag;)V

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/iff/Chunk;->readChunk()Z

    move-result v0

    if-nez v0, :cond_c

    return v5

    :cond_6
    sget-object v2, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Ignoring id3 chunk because already have one:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/transsion/audiotagger/logging/Hex;->asDecAndHex(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v9

    add-long/2addr v9, v7

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    sget-object v4, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Found Corrupt LIST Chunk, starting at Odd Location:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {v2, v6}, Lcom/transsion/audiotagger/tag/wav/WavTag;->setIncorrectlyAlignedTag(Z)V

    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long/2addr v2, v12

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return v6

    :cond_9
    new-instance v4, Lcom/transsion/audiotagger/audio/iff/ChunkSummary;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v13

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v15

    move-object v11, v4

    invoke-direct/range {v11 .. v16}, Lcom/transsion/audiotagger/audio/iff/ChunkSummary;-><init>(Ljava/lang/String;JJ)V

    invoke-virtual {v2, v4}, Lcom/transsion/audiotagger/tag/wav/WavTag;->addChunkSummary(Lcom/transsion/audiotagger/audio/iff/ChunkSummary;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object v4

    if-nez v4, :cond_a

    new-instance v4, Lcom/transsion/audiotagger/audio/wav/chunk/WavListChunk;

    iget-object v0, v0, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-static {v1, v7}, Lcom/transsion/audiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-direct {v4, v0, v7, v3, v2}, Lcom/transsion/audiotagger/audio/wav/chunk/WavListChunk;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;Lcom/transsion/audiotagger/tag/wav/WavTag;)V

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/iff/Chunk;->readChunk()Z

    move-result v0

    if-nez v0, :cond_c

    return v5

    :cond_a
    sget-object v2, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Ignoring LIST chunk because already have one:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Lcom/transsion/audiotagger/logging/Hex;->asDecAndHex(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v9

    add-long/2addr v9, v7

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v2, v4, v7

    if-ltz v2, :cond_e

    sget-object v2, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Skipping chunk bytes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "for"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v7

    add-long/2addr v4, v7

    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    cmp-long v2, v4, v7

    if-gtz v2, :cond_d

    :cond_c
    :goto_0
    invoke-static {v1, v3}, Lcom/transsion/audiotagger/audio/iff/IffHeaderChunk;->ensureOnEqualBoundary(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V

    return v6

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Failed to move to invalid position to "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " because file length is only "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " indicates invalid chunk"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    invoke-direct {v1, v0}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->loggingName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Not a valid header, unable to read a sensible size:Header"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Size:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/audiotagger/audio/wav/WavTagReader;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    invoke-direct {v1, v0}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
