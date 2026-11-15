.class public Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockData;


# static fields
.field public static final STREAM_INFO_DATA_LENGTH:I = 0x22

.field private static final hexArray:[C

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private bitsPerSample:I

.field private isValid:Z

.field private maxBlockSize:I

.field private maxFrameSize:I

.field private md5:Ljava/lang/String;

.field private minBlockSize:I

.field private minFrameSize:I

.field private noOfChannels:I

.field private noOfSamples:I

.field private rawdata:Ljava/nio/ByteBuffer;

.field private samplingRate:I

.field private samplingRatePerChannel:I

.field private trackLength:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.audio.flac.MetadataBlockDataStreamInfo"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->logger:Ljava/util/logging/Logger;

    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->hexArray:[C

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/nio/channels/FileChannel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->isValid:Z

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p2

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/generic/Utils;->u(S)I

    move-result p1

    iput p1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->minBlockSize:I

    iget-object p1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/generic/Utils;->u(S)I

    move-result p1

    iput p1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->maxBlockSize:I

    iget-object p1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    iget-object p2, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->readThreeByteInteger(BBB)I

    move-result p1

    iput p1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->minFrameSize:I

    iget-object p1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    iget-object p2, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->readThreeByteInteger(BBB)I

    move-result p1

    iput p1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->maxFrameSize:I

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->readSamplingRate()I

    move-result p1

    iput p1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRate:I

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->readNoOfChannels()I

    move-result p1

    iput p1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->noOfChannels:I

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->readBitsPerSample()I

    move-result p1

    iput p1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->bitsPerSample:I

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->readTotalNumberOfSamples()I

    move-result p1

    iput p1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->noOfSamples:I

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->readMd5()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->md5:Ljava/lang/String;

    iget p1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->noOfSamples:I

    int-to-double p1, p1

    iget v0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRate:I

    int-to-double v1, v0

    div-double/2addr p1, v1

    double-to-float p1, p1

    iput p1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->trackLength:F

    iget p1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->noOfChannels:I

    div-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRatePerChannel:I

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to read required number of bytes, read:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":required:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readBitsPerSample()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/transsion/audiotagger/audio/generic/Utils;->u(B)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x4

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/generic/Utils;->u(B)I

    move-result p0

    and-int/lit16 p0, p0, 0xf0

    ushr-int/lit8 p0, p0, 0x4

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private readMd5()Ljava/lang/String;
    .locals 6

    const/16 v0, 0x20

    new-array v0, v0, [C

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    const/16 v2, 0x22

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, 0x12

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v3, v2, 0xff

    mul-int/lit8 v4, v1, 0x2

    sget-object v5, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->hexArray:[C

    ushr-int/lit8 v3, v3, 0x4

    aget-char v3, v5, v3

    aput-char v3, v0, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v5, v2

    aput-char v2, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private readNoOfChannels()I
    .locals 1

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/generic/Utils;->u(B)I

    move-result p0

    and-int/lit8 p0, p0, 0xe

    ushr-int/lit8 p0, p0, 0x1

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private readSamplingRate()I
    .locals 4

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/transsion/audiotagger/audio/generic/Utils;->u(B)I

    move-result v0

    const/16 v1, 0xc

    shl-int/2addr v0, v1

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/transsion/audiotagger/audio/generic/Utils;->u(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/generic/Utils;->u(B)I

    move-result p0

    and-int/lit16 p0, p0, 0xf0

    ushr-int/lit8 p0, p0, 0x4

    add-int/2addr v0, p0

    return v0
.end method

.method private readThreeByteInteger(BBB)I
    .locals 0

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/generic/Utils;->u(B)I

    move-result p0

    shl-int/lit8 p0, p0, 0x10

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/generic/Utils;->u(B)I

    move-result p1

    shl-int/lit8 p1, p1, 0x8

    add-int/2addr p0, p1

    invoke-static {p3}, Lcom/transsion/audiotagger/audio/generic/Utils;->u(B)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private readTotalNumberOfSamples()I
    .locals 4

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/transsion/audiotagger/audio/generic/Utils;->u(B)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->u(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->u(B)I

    move-result v1

    shl-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->u(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/generic/Utils;->u(B)I

    move-result p0

    and-int/2addr p0, v3

    shl-int/lit8 p0, p0, 0x20

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public getBitsPerSample()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->bitsPerSample:I

    return p0
.end method

.method public getBytes()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FLAC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->bitsPerSample:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bits"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result p0

    return p0
.end method

.method public getMD5Signature()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->md5:Ljava/lang/String;

    return-object p0
.end method

.method public getNoOfChannels()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->noOfChannels:I

    return p0
.end method

.method public getNoOfSamples()J
    .locals 2

    iget p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->noOfSamples:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public getPreciseLength()F
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->trackLength:F

    return p0
.end method

.method public getSamplingRate()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRate:I

    return p0
.end method

.method public getSamplingRatePerChannel()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRatePerChannel:I

    return p0
.end method

.method public isValid()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->isValid:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MinBlockSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->minBlockSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "MaxBlockSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->maxBlockSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "MinFrameSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->minFrameSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "MaxFrameSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->maxFrameSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "SampleRateTotal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "SampleRatePerChannel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRatePerChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":Channel number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->noOfChannels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":Bits per sample: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->bitsPerSample:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":TotalNumberOfSamples: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->noOfSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->trackLength:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
