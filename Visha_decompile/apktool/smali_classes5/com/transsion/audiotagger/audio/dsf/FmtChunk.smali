.class public Lcom/transsion/audiotagger/audio/dsf/FmtChunk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FMT_CHUNK_MIN_DATA_SIZE:I = 0x28

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private chunkSizeLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.audio.dsf.FmtChunk"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/dsf/FmtChunk;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/audiotagger/audio/dsf/FmtChunk;->chunkSizeLength:J

    return-void
.end method

.method private readAudioInfo(Lcom/transsion/audiotagger/audio/dsf/DsdChunk;Ljava/nio/ByteBuffer;)Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;
    .locals 4

    new-instance p0, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;-><init>()V

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p1

    const/16 v0, 0x28

    if-ge p1, v0, :cond_0

    sget-object p1, Lcom/transsion/audiotagger/audio/dsf/FmtChunk;->logger:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v0, "Not enough bytes supplied for Generic audio header. Returning an empty one."

    invoke-virtual {p1, p2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    const-string p2, "DSF"

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    mul-int p2, v1, v0

    mul-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setBitRate(I)V

    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setBitsPerSample(I)V

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setSamplingRate(I)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setNoOfSamples(Ljava/lang/Long;)V

    long-to-float p1, v2

    int-to-float p2, v0

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setPreciseLength(D)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    sget-object p1, Lcom/transsion/audiotagger/audio/dsf/FmtChunk;->logger:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created audio header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object p0
.end method

.method public static readChunkHeader(Ljava/nio/ByteBuffer;)Lcom/transsion/audiotagger/audio/dsf/FmtChunk;
    .locals 2

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/audiotagger/audio/dsf/DsfChunkType;->FORMAT:Lcom/transsion/audiotagger/audio/dsf/DsfChunkType;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/dsf/DsfChunkType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/audiotagger/audio/dsf/FmtChunk;

    invoke-direct {v0, p0}, Lcom/transsion/audiotagger/audio/dsf/FmtChunk;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public readChunkData(Lcom/transsion/audiotagger/audio/dsf/DsdChunk;Ljava/nio/channels/FileChannel;)Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/dsf/FmtChunk;->chunkSizeLength:J

    sget v2, Lcom/transsion/audiotagger/audio/iff/IffHeaderChunk;->SIGNATURE_LENGTH:I

    add-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {p2, v0}, Lcom/transsion/audiotagger/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/audio/dsf/FmtChunk;->readAudioInfo(Lcom/transsion/audiotagger/audio/dsf/DsdChunk;Ljava/nio/ByteBuffer;)Lcom/transsion/audiotagger/audio/generic/GenericAudioHeader;

    move-result-object p0

    return-object p0
.end method
