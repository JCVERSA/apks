.class public abstract Lcom/transsion/audiotagger/audio/aiff/chunk/TextChunk;
.super Lcom/transsion/audiotagger/audio/iff/Chunk;
.source "SourceFile"


# instance fields
.field protected final aiffAudioHeader:Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/transsion/audiotagger/audio/iff/Chunk;-><init>(Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V

    iput-object p3, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/TextChunk;->aiffAudioHeader:Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;

    return-void
.end method


# virtual methods
.method public readChunkText()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    sget-object v1, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->getString(Ljava/nio/ByteBuffer;IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
