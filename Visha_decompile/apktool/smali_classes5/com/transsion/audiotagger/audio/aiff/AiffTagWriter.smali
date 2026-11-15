.class public Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.audio.aiff"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private deleteRemainderOfFile(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/aiff/AiffTag;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkSummary;->getChunkBeforeStartingMetadataTag(Lcom/transsion/audiotagger/tag/aiff/AiffTag;)Lcom/transsion/audiotagger/audio/iff/ChunkSummary;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/iff/ChunkSummary;->getEndLocation()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result p0

    const-string v0, " Truncating corrupted ID3 tags from:"

    if-nez p0, :cond_0

    sget-object p0, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide p2

    sub-long/2addr p2, v4

    invoke-virtual {p1, p2, p3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    :goto_0
    return-void
.end method

.method private deleteTagChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/aiff/AiffTag;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v0

    long-to-int p3, v0

    add-int/lit8 v0, p3, 0x8

    int-to-long v1, v0

    invoke-static {v1, v2}, Lcom/transsion/audiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-gez v1, :cond_0

    add-int/lit8 v0, p3, 0x9

    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    int-to-long v8, v0

    sub-long/2addr v1, v8

    sget-object p3, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Size of id3 chunk to delete is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":Location:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v3

    add-long/2addr v3, v8

    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    move-wide v6, v1

    invoke-direct/range {v3 .. v9}, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->deleteTagChunkUsingSmallByteBufferSegments(Lcom/transsion/audiotagger/tag/aiff/AiffTag;Ljava/nio/channels/FileChannel;JJ)V

    sget-object p0, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " Setting new length to:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    return-void
.end method

.method private deleteTagChunkUsingChannelTransfer(Lcom/transsion/audiotagger/tag/aiff/AiffTag;Ljava/nio/channels/FileChannel;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide p0

    :goto_0
    sub-long v6, p3, p0

    move-object v0, p2

    move-object v1, p2

    move-wide v2, p0

    move-wide v4, v6

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v0

    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    add-long/2addr p0, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private deleteTagChunkUsingSmallByteBufferSegments(Lcom/transsion/audiotagger/tag/aiff/AiffTag;Ljava/nio/channels/FileChannel;JJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getWriteChunkSize()J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    :goto_0
    invoke-virtual {p2, p0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-gez p1, :cond_1

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide p3

    sub-long v0, p3, p5

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p2, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p2, p3, p4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private getExistingMetadata(Ljava/io/File;)Lcom/transsion/audiotagger/tag/aiff/AiffTag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    :try_start_0
    new-instance p0, Lcom/transsion/audiotagger/audio/aiff/AiffTagReader;

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/aiff/AiffTagReader;-><init>()V

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/aiff/AiffTagReader;->read(Ljava/io/File;)Lcom/transsion/audiotagger/tag/aiff/AiffTag;

    move-result-object p0
    :try_end_0
    .catch Lcom/transsion/audiotagger/audio/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Failed to read file"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isAtEndOfFileAllowingForPaddingByte(Lcom/transsion/audiotagger/tag/aiff/AiffTag;Ljava/nio/channels/FileChannel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private rewriteRiffHeaderSize(Ljava/nio/channels/FileChannel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget p0, Lcom/transsion/audiotagger/audio/iff/IffHeaderChunk;->SIGNATURE_LENGTH:I

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    sget p0, Lcom/transsion/audiotagger/audio/iff/IffHeaderChunk;->SIZE_LENGTH:I

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    long-to-int v0, v0

    sget v1, Lcom/transsion/audiotagger/audio/iff/IffHeaderChunk;->SIGNATURE_LENGTH:I

    sub-int/2addr v0, v1

    sget v1, Lcom/transsion/audiotagger/audio/iff/IffHeaderChunk;->SIZE_LENGTH:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p1, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private seekToStartOfMetadata(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/aiff/AiffTag;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/iff/ChunkHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    new-instance p0, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;-><init>(Ljava/nio/ByteOrder;)V

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->readHeader(Ljava/nio/channels/FileChannel;)Z

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    sget-object p1, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->TAG:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " Unable to find ID3 chunk at expected location:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writeDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;-><init>(Ljava/nio/ByteOrder;)V

    sget-object v1, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->TAG:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->setID(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->setSize(J)V

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->writeHeader()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p2

    int-to-long v0, p2

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->writeExtraByteIfChunkOddSize(Ljava/nio/channels/FileChannel;J)V

    return-void
.end method

.method private writeExtraByteIfChunkOddSize(Ljava/nio/channels/FileChannel;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2, p3}, Lcom/transsion/audiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public convert(Lcom/transsion/audiotagger/tag/aiff/AiffTag;Lcom/transsion/audiotagger/tag/aiff/AiffTag;)Ljava/nio/ByteBuffer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    :try_start_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getSizeOfID3TagOnly()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    const-wide/16 v4, 0x1

    and-long v6, v0, v4

    cmp-long p2, v6, v2

    if-eqz p2, :cond_0

    add-long/2addr v0, v4

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p2

    long-to-int v0, v0

    invoke-virtual {p2, p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->write(Ljava/io/OutputStream;I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    array-length p2, p2

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    array-length p0, p0

    add-int/lit8 p0, p0, 0x1

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->write(Ljava/io/OutputStream;I)V

    move-object p0, p2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public delete(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    sget-object v3, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " Deleting tag from file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->getExistingMetadata(Ljava/io/File;)Lcom/transsion/audiotagger/tag/aiff/AiffTag;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->isExistingId3Tag()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->seekToStartOfMetadata(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/aiff/AiffTag;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/iff/ChunkHeader;

    move-result-object v4

    invoke-direct {p0, v3, v1}, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->isAtEndOfFileAllowingForPaddingByte(Lcom/transsion/audiotagger/tag/aiff/AiffTag;Ljava/nio/channels/FileChannel;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v4, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " Setting new length to:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getStartLocationInFileOfId3Chunk()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :cond_0
    sget-object v5, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " Deleting tag chunk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->deleteTagChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/aiff/AiffTag;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, v1}, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->rewriteRiffHeaderSize(Ljava/nio/channels/FileChannel;)V

    :cond_1
    sget-object p0, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " Deleted tag from file"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array p0, v0, [Ljava/io/Closeable;

    aput-object v2, p0, p1

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_1
    :try_start_2
    new-instance v2, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    new-array p2, v0, [Ljava/io/Closeable;

    aput-object v1, p2, p1

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    throw p0
.end method

.method public write(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/File;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, ":"

    sget-object v3, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " Writing Aiff tag to file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->getExistingMetadata(Ljava/io/File;)Lcom/transsion/audiotagger/tag/aiff/AiffTag;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v4, 0x0

    :try_start_1
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    invoke-direct {v5, p2, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    check-cast p1, Lcom/transsion/audiotagger/tag/aiff/AiffTag;

    invoke-virtual {p0, p1, v3}, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->convert(Lcom/transsion/audiotagger/tag/aiff/AiffTag;Lcom/transsion/audiotagger/tag/aiff/AiffTag;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->isExistingId3Tag()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getID3Tag()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v8

    invoke-virtual {v8}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->isIncorrectlyAlignedTag()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v4, v3, v8}, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->seekToStartOfMetadata(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/aiff/AiffTag;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/iff/ChunkHeader;

    move-result-object v8

    sget-object v9, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "Current Space allocated:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->getSizeOfID3TagOnly()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ":NewTagRequires:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-direct {p0, v3, v4}, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->isAtEndOfFileAllowingForPaddingByte(Lcom/transsion/audiotagger/tag/aiff/AiffTag;Ljava/nio/channels/FileChannel;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-direct {p0, v4, p1}, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->writeDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    move-object v4, v5

    goto/16 :goto_2

    :catch_0
    move-exception p0

    move-object v4, v5

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v4, v3, v8, v9}, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->deleteTagChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/aiff/AiffTag;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    invoke-direct {p0, v4, v8, v9}, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->writeExtraByteIfChunkOddSize(Ljava/nio/channels/FileChannel;J)V

    invoke-direct {p0, v4, p1}, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->writeDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkSummary;->isOnlyMetadataTagsAfterStartingMetadataTag(Lcom/transsion/audiotagger/tag/aiff/AiffTag;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v4, v3, v8}, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->deleteRemainderOfFile(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/tag/aiff/AiffTag;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    invoke-direct {p0, v4, v8, v9}, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->writeExtraByteIfChunkOddSize(Ljava/nio/channels/FileChannel;J)V

    invoke-direct {p0, v4, p1}, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->writeDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " Metadata tags are corrupted and not at end of file so cannot be fixed"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/transsion/audiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    :cond_4
    invoke-direct {p0, v4, p1}, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->writeDataToFile(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    :goto_0
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    cmp-long p1, v6, v8

    if-eqz p1, :cond_5

    invoke-direct {p0, v4}, Lcom/transsion/audiotagger/audio/aiff/AiffTagWriter;->rewriteRiffHeaderSize(Ljava/nio/channels/FileChannel;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v5, p0, v0

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_1
    :try_start_3
    new-instance p1, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v4, p1, v0

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    throw p0

    :catch_2
    move-exception p0

    new-instance p1, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
