.class public Lcom/transsion/audiotagger/audio/dsf/DsdChunk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHUNKSIZE_LENGTH:I = 0x8

.field public static final DSD_HEADER_LENGTH:I

.field public static final FILESIZE_LENGTH:I = 0x8

.field public static final FMT_CHUNK_MIN_DATA_SIZE:I = 0x28

.field public static final METADATA_OFFSET_LENGTH:I = 0x8


# instance fields
.field private chunkSizeLength:J

.field private fileLength:J

.field private metadataOffset:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/transsion/audiotagger/audio/iff/IffHeaderChunk;->SIGNATURE_LENGTH:I

    add-int/lit8 v0, v0, 0x18

    sput v0, Lcom/transsion/audiotagger/audio/dsf/DsdChunk;->DSD_HEADER_LENGTH:I

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/audiotagger/audio/dsf/DsdChunk;->chunkSizeLength:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/audiotagger/audio/dsf/DsdChunk;->fileLength:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/audiotagger/audio/dsf/DsdChunk;->metadataOffset:J

    return-void
.end method

.method public static readChunk(Ljava/nio/ByteBuffer;)Lcom/transsion/audiotagger/audio/dsf/DsdChunk;
    .locals 2

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/audiotagger/audio/dsf/DsfChunkType;->DSD:Lcom/transsion/audiotagger/audio/dsf/DsfChunkType;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/dsf/DsfChunkType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/audiotagger/audio/dsf/DsdChunk;

    invoke-direct {v0, p0}, Lcom/transsion/audiotagger/audio/dsf/DsdChunk;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getChunkSizeLength()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/dsf/DsdChunk;->chunkSizeLength:J

    return-wide v0
.end method

.method public getFileLength()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/dsf/DsdChunk;->fileLength:J

    return-wide v0
.end method

.method public getMetadataOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/dsf/DsdChunk;->metadataOffset:J

    return-wide v0
.end method

.method public setChunkSizeLength(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/audiotagger/audio/dsf/DsdChunk;->chunkSizeLength:J

    return-void
.end method

.method public setFileLength(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/audiotagger/audio/dsf/DsdChunk;->fileLength:J

    return-void
.end method

.method public setMetadataOffset(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/audiotagger/audio/dsf/DsdChunk;->metadataOffset:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChunkSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/audiotagger/audio/dsf/DsdChunk;->chunkSizeLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ":fileLength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/audiotagger/audio/dsf/DsdChunk;->fileLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ":metadata:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/audiotagger/audio/dsf/DsdChunk;->metadataOffset:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write()Ljava/nio/ByteBuffer;
    .locals 3

    sget v0, Lcom/transsion/audiotagger/audio/dsf/DsdChunk;->DSD_HEADER_LENGTH:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/transsion/audiotagger/audio/dsf/DsfChunkType;->DSD:Lcom/transsion/audiotagger/audio/dsf/DsfChunkType;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/dsf/DsfChunkType;->getCode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/transsion/audiotagger/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/transsion/audiotagger/audio/dsf/DsdChunk;->chunkSizeLength:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/transsion/audiotagger/audio/dsf/DsdChunk;->fileLength:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/transsion/audiotagger/audio/dsf/DsdChunk;->metadataOffset:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method
