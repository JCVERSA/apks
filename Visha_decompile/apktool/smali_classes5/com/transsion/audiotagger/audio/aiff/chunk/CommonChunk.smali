.class public Lcom/transsion/audiotagger/audio/aiff/chunk/CommonChunk;
.super Lcom/transsion/audiotagger/audio/iff/Chunk;
.source "SourceFile"


# instance fields
.field private aiffHeader:Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/transsion/audiotagger/audio/iff/Chunk;-><init>(Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V

    iput-object p3, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;

    return-void
.end method


# virtual methods
.method public readChunk()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Lcom/transsion/audiotagger/audio/generic/Utils;->u(S)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Lcom/transsion/audiotagger/audio/generic/Utils;->u(S)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Lcom/transsion/audiotagger/audio/aiff/AiffUtil;->read80BitDouble(Ljava/nio/ByteBuffer;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;->getFileType()Lcom/transsion/audiotagger/audio/aiff/AiffType;

    move-result-object v6

    sget-object v7, Lcom/transsion/audiotagger/audio/aiff/AiffType;->AIFC:Lcom/transsion/audiotagger/audio/aiff/AiffType;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    if-nez v6, :cond_0

    return v9

    :cond_0
    iget-object v6, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-static {v6}, Lcom/transsion/audiotagger/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->SOWT:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;

    sget-object v10, Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader$Endian;->LITTLE_ENDIAN:Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader$Endian;

    invoke-virtual {v7, v10}, Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;->setEndian(Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader$Endian;)V

    :cond_1
    iget-object v7, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-static {v7}, Lcom/transsion/audiotagger/audio/generic/Utils;->readPascalString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->getByCode(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->getCompression()Ljava/lang/String;

    move-result-object v7

    iget-object v11, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;

    invoke-virtual {v10}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->isLossless()Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setLossless(Z)V

    sget-object v11, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->NONE:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    if-ne v10, v11, :cond_3

    iget-object v10, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;

    invoke-virtual {v10, v9}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;

    invoke-virtual {v10, v9}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setLossless(Z)V

    :cond_3
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v7, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;

    invoke-virtual {v7, v6}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;

    invoke-virtual {v6, v7}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;

    invoke-virtual {v6, v8}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setLossless(Z)V

    iget-object v6, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;

    sget-object v7, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->NONE:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->getCompression()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;

    invoke-virtual {v6, v9}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    :goto_1
    iget-object v6, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;

    invoke-virtual {v6, v3}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setBitsPerSample(I)V

    iget-object v3, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;

    double-to-int v6, v4

    invoke-virtual {v3, v6}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setSamplingRate(I)V

    iget-object v3, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;

    invoke-virtual {v3, v0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;

    long-to-double v6, v1

    div-double/2addr v6, v4

    invoke-virtual {v0, v6, v7}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setPreciseLength(D)V

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/CommonChunk;->aiffHeader:Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setNoOfSamples(Ljava/lang/Long;)V

    return v8
.end method
