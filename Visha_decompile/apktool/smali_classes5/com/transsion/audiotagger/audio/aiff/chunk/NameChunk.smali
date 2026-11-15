.class public Lcom/transsion/audiotagger/audio/aiff/chunk/NameChunk;
.super Lcom/transsion/audiotagger/audio/aiff/chunk/TextChunk;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audiotagger/audio/aiff/chunk/TextChunk;-><init>(Lcom/transsion/audiotagger/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;)V

    return-void
.end method


# virtual methods
.method public readChunk()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/TextChunk;->aiffAudioHeader:Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/aiff/chunk/TextChunk;->readChunkText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;->setName(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
