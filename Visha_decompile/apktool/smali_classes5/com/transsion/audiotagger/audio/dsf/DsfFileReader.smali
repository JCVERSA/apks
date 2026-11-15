.class public Lcom/transsion/audiotagger/audio/dsf/DsfFileReader;
.super Lcom/transsion/audiotagger/audio/generic/AudioFileReader2;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/generic/AudioFileReader2;-><init>()V

    return-void
.end method

.method private readTag(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/dsf/DsdChunk;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/Tag;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/dsf/DsdChunk;->getMetadataOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    const/4 v0, 0x0

    if-lez p0, :cond_4

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/dsf/DsdChunk;->getMetadataOffset()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int p0, v1

    invoke-static {p1, p0}, Lcom/transsion/audiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/dsf/ID3Chunk;->readChunk(Ljava/nio/ByteBuffer;)Lcom/transsion/audiotagger/audio/dsf/ID3Chunk;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/dsf/ID3Chunk;->getDataBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    const/4 v1, 0x2

    const-string v2, ""

    if-eq p1, v1, :cond_2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    :try_start_0
    sget-object p0, Lcom/transsion/audiotagger/audio/generic/AudioFileReader;->logger:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Unknown ID3v2 version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Returning an empty ID3v2 Tag."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/dsf/ID3Chunk;->getDataBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-direct {p1, p0, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    return-object p1

    :cond_1
    new-instance p1, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/dsf/ID3Chunk;->getDataBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-direct {p1, p0, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/dsf/ID3Chunk;->getDataBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-direct {p1, p0, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/transsion/audiotagger/tag/TagException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Could not read ID3v2 tag:corruption"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    sget-object p0, Lcom/transsion/audiotagger/audio/generic/AudioFileReader;->logger:Ljava/util/logging/Logger;

    sget-object p1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " No existing ID3 tag(1)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object v0

    :cond_4
    sget-object p0, Lcom/transsion/audiotagger/audio/generic/AudioFileReader;->logger:Ljava/util/logging/Logger;

    sget-object p1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " No existing ID3 tag(2)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getEncodingInfo(Ljava/io/File;)Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    sget v3, Lcom/transsion/audiotagger/audio/dsf/DsdChunk;->DSD_HEADER_LENGTH:I

    invoke-static {v1, v3}, Lcom/transsion/audiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/audiotagger/audio/dsf/DsdChunk;->readChunk(Ljava/nio/ByteBuffer;)Lcom/transsion/audiotagger/audio/dsf/DsdChunk;

    move-result-object v3

    if-eqz v3, :cond_1

    sget v4, Lcom/transsion/audiotagger/audio/iff/IffHeaderChunk;->SIGNATURE_LENGTH:I

    add-int/lit8 v4, v4, 0x8

    invoke-static {v1, v4}, Lcom/transsion/audiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/audiotagger/audio/dsf/FmtChunk;->readChunkHeader(Ljava/nio/ByteBuffer;)Lcom/transsion/audiotagger/audio/dsf/FmtChunk;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, v3, v1}, Lcom/transsion/audiotagger/audio/dsf/FmtChunk;->readChunkData(Lcom/transsion/audiotagger/audio/dsf/DsdChunk;Ljava/nio/channels/FileChannel;)Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v2, v0, p0

    invoke-static {v0}, Lcom/transsion/audiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :cond_0
    :try_start_2
    new-instance v1, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Not a valid dsf file. Content does not include \'fmt \' chunk"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Not a valid dsf file. Content does not start with \'DSD \'"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception p1

    :goto_0
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v1, v0, p0

    invoke-static {v0}, Lcom/transsion/audiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    throw p1
.end method

.method public getTag(Ljava/io/File;)Lcom/transsion/audiotagger/tag/Tag;
    .locals 5
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

    sget v4, Lcom/transsion/audiotagger/audio/dsf/DsdChunk;->DSD_HEADER_LENGTH:I

    invoke-static {v2, v4}, Lcom/transsion/audiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/audiotagger/audio/dsf/DsdChunk;->readChunk(Ljava/nio/ByteBuffer;)Lcom/transsion/audiotagger/audio/dsf/DsdChunk;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, v4, p1}, Lcom/transsion/audiotagger/audio/dsf/DsfFileReader;->readTag(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/dsf/DsdChunk;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/Tag;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v3, p1, v0

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_0

    :cond_0
    :try_start_2
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Not a valid dsf file. Content does not start with \'DSD \'."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception p0

    :goto_0
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v2, p1, v0

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    throw p0
.end method
