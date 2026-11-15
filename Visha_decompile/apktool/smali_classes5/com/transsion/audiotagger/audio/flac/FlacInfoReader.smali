.class public Lcom/transsion/audiotagger/audio/flac/FlacInfoReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.audio.flac"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/flac/FlacInfoReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private computeBitrate(JF)I
    .locals 2

    sget p0, Lcom/transsion/audiotagger/audio/generic/Utils;->KILOBYTE_MULTIPLIER:I

    int-to-long v0, p0

    div-long/2addr p1, v0

    sget p0, Lcom/transsion/audiotagger/audio/generic/Utils;->BITS_IN_BYTE_MULTIPLIER:I

    int-to-long v0, p0

    mul-long/2addr p1, v0

    long-to-float p0, p1

    div-float/2addr p0, p3

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public countMetaBlocks(Ljava/io/File;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x1

    const/4 v0, 0x0

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

    new-instance v3, Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;-><init>(Ljava/nio/channels/FileChannel;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;->findStream()V

    move v3, v0

    move v4, v3

    :goto_0
    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->readHeader(Ljava/nio/channels/FileChannel;)Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v3

    sget-object v5, Lcom/transsion/audiotagger/audio/flac/FlacInfoReader;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ":Found block:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v5

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v4, p0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :cond_0
    new-array p0, p0, [Ljava/io/Closeable;

    aput-object v2, p0, v0

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    return v4

    :catchall_1
    move-exception p1

    :goto_1
    new-array p0, p0, [Ljava/io/Closeable;

    aput-object v1, p0, v0

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    throw p1
.end method

.method public read(Ljava/io/File;)Lcom/transsion/audiotagger/audio/flac/FlacAudioHeader;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/transsion/audiotagger/audio/flac/FlacInfoReader;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    new-instance v5, Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;-><init>(Ljava/nio/channels/FileChannel;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;->findStream()V

    move v5, v1

    :goto_0
    if-nez v5, :cond_2

    invoke-static {v4}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->readHeader(Ljava/nio/channels/FileChannel;)Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v5

    sget-object v6, Lcom/transsion/audiotagger/audio/flac/FlacInfoReader;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    move-result-object v6

    sget-object v7, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;->STREAMINFO:Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    if-ne v6, v7, :cond_1

    new-instance v2, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;

    invoke-direct {v2, v5, v4}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;-><init>(Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/nio/channels/FileChannel;)V

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->isValid()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":FLAC StreamInfo not valid"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :goto_1
    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock()Z

    move-result v5

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v5

    if-eqz v2, :cond_3

    new-instance p1, Lcom/transsion/audiotagger/audio/flac/FlacAudioHeader;

    invoke-direct {p1}, Lcom/transsion/audiotagger/audio/flac/FlacAudioHeader;-><init>()V

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getNoOfSamples()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setNoOfSamples(Ljava/lang/Long;)V

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getPreciseLength()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {p1, v7, v8}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setPreciseLength(D)V

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getNoOfChannels()I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getSamplingRate()I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setSamplingRate(I)V

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getBitsPerSample()I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setBitsPerSample(I)V

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getEncodingType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setLossless(Z)V

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getMD5Signature()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/transsion/audiotagger/audio/flac/FlacAudioHeader;->setMd5(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {p1, v7, v8}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setAudioDataLength(J)V

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setAudioDataStartPosition(Ljava/lang/Long;)V

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setAudioDataEndPosition(Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->getAudioDataLength()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getPreciseLength()F

    move-result v2

    invoke-direct {p0, v4, v5, v2}, Lcom/transsion/audiotagger/audio/flac/FlacInfoReader;->computeBitrate(JF)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setBitRate(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array p0, v0, [Ljava/io/Closeable;

    aput-object v3, p0, v1

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    return-object p1

    :cond_3
    :try_start_2
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":Unable to find Flac StreamInfo"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception p0

    :goto_2
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v2, p1, v1

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    throw p0
.end method
