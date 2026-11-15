.class public Lcom/transsion/audiotagger/audio/wav/chunk/WavListChunk;
.super Lcom/transsion/audiotagger/audio/iff/Chunk;
.source "SourceFile"


# instance fields
.field private isValid:Z

.field private loggingName:Ljava/lang/String;

.field private tag:Lcom/transsion/audiotagger/tag/wav/WavTag;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;Lcom/transsion/audiotagger/tag/wav/WavTag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/audio/iff/Chunk;-><init>(Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavListChunk;->isValid:Z

    iput-object p4, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavListChunk;->tag:Lcom/transsion/audiotagger/tag/wav/WavTag;

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavListChunk;->loggingName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public readChunk()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/transsion/audiotagger/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->INFO:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoChunk;

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavListChunk;->tag:Lcom/transsion/audiotagger/tag/wav/WavTag;

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavListChunk;->loggingName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoChunk;-><init>(Lcom/transsion/audiotagger/tag/wav/WavTag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoChunk;->readChunks(Ljava/nio/ByteBuffer;)Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavListChunk;->tag:Lcom/transsion/audiotagger/tag/wav/WavTag;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkHeader:Lcom/transsion/audiotagger/audio/iff/ChunkHeader;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->setStartLocationInFile(J)V

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavListChunk;->tag:Lcom/transsion/audiotagger/tag/wav/WavTag;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->getInfoTag()Lcom/transsion/audiotagger/tag/wav/WavInfoTag;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkHeader:Lcom/transsion/audiotagger/audio/iff/ChunkHeader;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getStartLocationInFile()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkHeader:Lcom/transsion/audiotagger/audio/iff/ChunkHeader;

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/transsion/audiotagger/tag/wav/WavInfoTag;->setEndLocationInFile(J)V

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavListChunk;->tag:Lcom/transsion/audiotagger/tag/wav/WavTag;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/tag/wav/WavTag;->setExistingInfoTag(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RIFF-WAVE Header:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Is valid?: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavListChunk;->isValid:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
