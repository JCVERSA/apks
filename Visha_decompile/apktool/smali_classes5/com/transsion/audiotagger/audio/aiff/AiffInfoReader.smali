.class public Lcom/transsion/audiotagger/audio/aiff/AiffInfoReader;
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

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/AiffInfoReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkReader;-><init>()V

    return-void
.end method

.method private calculateBitRate(Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->getAudioDataLength()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->getAudioDataLength()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget p0, Lcom/transsion/audiotagger/audio/generic/Utils;->BITS_IN_BYTE_MULTIPLIER:I

    int-to-long v2, p0

    mul-long/2addr v0, v2

    long-to-double v0, v0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->getPreciseTrackLength()D

    move-result-wide v2

    sget p0, Lcom/transsion/audiotagger/audio/generic/Utils;->KILOBYTE_MULTIPLIER:I

    int-to-double v4, p0

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setBitRate(I)V

    :cond_0
    return-void
.end method

.method private createChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;)Lcom/transsion/audiotagger/audio/iff/Chunk;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->get(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/transsion/audiotagger/audio/aiff/AiffInfoReader$1;->$SwitchMap$com$transsion$audiotagger$audio$aiff$chunk$AiffChunkType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setAudioDataLength(J)V

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setAudioDataStartPosition(Ljava/lang/Long;)V

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v2

    add-long/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setAudioDataEndPosition(Ljava/lang/Long;)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/transsion/audiotagger/audio/aiff/chunk/AnnotationChunk;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkReader;->readChunkDataIntoBuffer(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-direct {v1, p2, p0, p3}, Lcom/transsion/audiotagger/audio/aiff/chunk/AnnotationChunk;-><init>(Lcom/transsion/audiotagger/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/transsion/audiotagger/audio/aiff/chunk/CopyrightChunk;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkReader;->readChunkDataIntoBuffer(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-direct {v1, p2, p0, p3}, Lcom/transsion/audiotagger/audio/aiff/chunk/CopyrightChunk;-><init>(Lcom/transsion/audiotagger/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;)V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/transsion/audiotagger/audio/aiff/chunk/AuthorChunk;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkReader;->readChunkDataIntoBuffer(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-direct {v1, p2, p0, p3}, Lcom/transsion/audiotagger/audio/aiff/chunk/AuthorChunk;-><init>(Lcom/transsion/audiotagger/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;)V

    goto :goto_0

    :pswitch_4
    new-instance v1, Lcom/transsion/audiotagger/audio/aiff/chunk/NameChunk;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkReader;->readChunkDataIntoBuffer(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-direct {v1, p2, p0, p3}, Lcom/transsion/audiotagger/audio/aiff/chunk/NameChunk;-><init>(Lcom/transsion/audiotagger/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;)V

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/transsion/audiotagger/audio/aiff/chunk/CommentsChunk;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkReader;->readChunkDataIntoBuffer(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-direct {v1, p2, p0, p3}, Lcom/transsion/audiotagger/audio/aiff/chunk/CommentsChunk;-><init>(Lcom/transsion/audiotagger/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;)V

    goto :goto_0

    :pswitch_6
    new-instance v1, Lcom/transsion/audiotagger/audio/aiff/chunk/CommonChunk;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkReader;->readChunkDataIntoBuffer(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-direct {v1, p2, p0, p3}, Lcom/transsion/audiotagger/audio/aiff/chunk/CommonChunk;-><init>(Lcom/transsion/audiotagger/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;)V

    goto :goto_0

    :pswitch_7
    new-instance v1, Lcom/transsion/audiotagger/audio/aiff/chunk/ApplicationChunk;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkReader;->readChunkDataIntoBuffer(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-direct {v1, p2, p0, p3}, Lcom/transsion/audiotagger/audio/aiff/chunk/ApplicationChunk;-><init>(Lcom/transsion/audiotagger/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;)V

    goto :goto_0

    :pswitch_8
    new-instance v1, Lcom/transsion/audiotagger/audio/aiff/chunk/FormatVersionChunk;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkReader;->readChunkDataIntoBuffer(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-direct {v1, p2, p0, p3}, Lcom/transsion/audiotagger/audio/aiff/chunk/FormatVersionChunk;-><init>(Lcom/transsion/audiotagger/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;)V

    :cond_0
    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/audio/aiff/AiffInfoReader;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Reading Info Chunk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;-><init>(Ljava/nio/ByteOrder;)V

    invoke-virtual {v0, p1}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->readHeader(Ljava/nio/channels/FileChannel;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    sget-object v1, Lcom/transsion/audiotagger/audio/aiff/AiffInfoReader;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Reading Next Chunk:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":starting at:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ":sizeIncHeader:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v4

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/audiotagger/audio/aiff/AiffInfoReader;->createChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;)Lcom/transsion/audiotagger/audio/iff/Chunk;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/iff/Chunk;->readChunk()Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/transsion/audiotagger/audio/aiff/AiffInfoReader;->logger:Ljava/util/logging/Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "ChunkReadFail:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-ltz p0, :cond_3

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide p2

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v1

    add-long/2addr p2, v1

    invoke-virtual {p1, p2, p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :cond_2
    invoke-static {p1, v0}, Lcom/transsion/audiotagger/audio/iff/IffHeaderChunk;->ensureOnEqualBoundary(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Not a valid header, unable to read a sensible size:Header"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Size:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/transsion/audiotagger/audio/aiff/AiffInfoReader;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    new-instance p1, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public read(Ljava/io/File;)Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;
    .locals 9
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

    sget-object v4, Lcom/transsion/audiotagger/audio/aiff/AiffInfoReader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " Reading AIFF file size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/transsion/audiotagger/logging/Hex;->asDecAndHex(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    new-instance v4, Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;

    invoke-direct {v4}, Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;-><init>()V

    new-instance v5, Lcom/transsion/audiotagger/audio/aiff/AiffFileHeader;

    invoke-direct {v5}, Lcom/transsion/audiotagger/audio/aiff/AiffFileHeader;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v4, v6}, Lcom/transsion/audiotagger/audio/aiff/AiffFileHeader;->readHeader(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;Ljava/lang/String;)J

    :cond_0
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Lcom/transsion/audiotagger/audio/aiff/AiffInfoReader;->readChunk(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v2, Lcom/transsion/audiotagger/audio/aiff/AiffInfoReader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " UnableToReadProcessChunk"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, v4}, Lcom/transsion/audiotagger/audio/aiff/AiffInfoReader;->calculateBitRate(Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v3, p0, v0

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    return-object v4

    :catchall_1
    move-exception p0

    :goto_1
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v2, p1, v0

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    throw p0
.end method
