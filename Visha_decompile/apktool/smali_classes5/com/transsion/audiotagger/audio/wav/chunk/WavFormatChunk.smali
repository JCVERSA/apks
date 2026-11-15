.class public Lcom/transsion/audiotagger/audio/wav/chunk/WavFormatChunk;
.super Lcom/transsion/audiotagger/audio/iff/Chunk;
.source "SourceFile"


# static fields
.field private static final EXTENSIBLE_DATA_SIZE:I = 0x16

.field private static final EXTENSIBLE_DATA_SIZE_WE_NEED:I = 0xa

.field private static final STANDARD_DATA_SIZE:I = 0x12

.field private static final WAV_RIFF_ENCODING_PREPEND:Ljava/lang/String; = "WAV-RIFF "


# instance fields
.field private blockAlign:I

.field private channelMask:I

.field private info:Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;

.field private isValid:Z

.field private wsf:Lcom/transsion/audiotagger/audio/wav/WavSubFormat;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/audio/iff/Chunk;-><init>(Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavFormatChunk;->isValid:Z

    iput-object p3, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavFormatChunk;->info:Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;

    return-void
.end method


# virtual methods
.method public readChunk()Z
    .locals 4
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

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->getByCode(Ljava/lang/Integer;)Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavFormatChunk;->wsf:Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavFormatChunk;->info:Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Lcom/transsion/audiotagger/audio/generic/Utils;->u(S)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavFormatChunk;->info:Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setSamplingRate(I)V

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavFormatChunk;->info:Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setByteRate(I)V

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavFormatChunk;->info:Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->getByteRate()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Lcom/transsion/audiotagger/audio/generic/Utils;->BITS_IN_BYTE_MULTIPLIER:I

    mul-int/2addr v2, v3

    sget v3, Lcom/transsion/audiotagger/audio/generic/Utils;->KILOBYTE_MULTIPLIER:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setBitRate(I)V

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavFormatChunk;->info:Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->u(S)I

    move-result v1

    iput v1, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavFormatChunk;->blockAlign:I

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavFormatChunk;->info:Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Lcom/transsion/audiotagger/audio/generic/Utils;->u(S)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setBitsPerSample(I)V

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavFormatChunk;->wsf:Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->FORMAT_EXTENSIBLE:Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->u(S)I

    move-result v1

    const/16 v2, 0x16

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavFormatChunk;->info:Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Lcom/transsion/audiotagger/audio/generic/Utils;->u(S)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setBitsPerSample(I)V

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavFormatChunk;->channelMask:I

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->u(S)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->getByCode(Ljava/lang/Integer;)Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavFormatChunk;->wsf:Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    :cond_0
    iget-object v1, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavFormatChunk;->wsf:Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavFormatChunk;->info:Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->getBitsPerSample()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavFormatChunk;->info:Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavFormatChunk;->wsf:Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavFormatChunk;->info:Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->getBitsPerSample()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bits"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavFormatChunk;->info:Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavFormatChunk;->wsf:Lcom/transsion/audiotagger/audio/wav/WavSubFormat;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/wav/WavSubFormat;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavFormatChunk;->info:Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Sub Format Code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/transsion/audiotagger/logging/Hex;->asHex(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RIFF-WAVE Header:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Is valid?: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavFormatChunk;->isValid:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
