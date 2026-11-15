.class public Lcom/transsion/audiotagger/audio/aiff/chunk/FormatVersionChunk;
.super Lcom/transsion/audiotagger/audio/iff/Chunk;
.source "SourceFile"


# instance fields
.field private aiffHeader:Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/transsion/audiotagger/audio/iff/Chunk;-><init>(Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V

    iput-object p3, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/FormatVersionChunk;->aiffHeader:Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;

    return-void
.end method


# virtual methods
.method public readChunk()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/transsion/audiotagger/audio/aiff/AiffUtil;->timestampToDate(J)Ljava/util/Date;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/FormatVersionChunk;->aiffHeader:Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;->setTimestamp(Ljava/util/Date;)V

    const/4 p0, 0x1

    return p0
.end method
