.class public Lcom/transsion/audiotagger/audio/aiff/chunk/ApplicationChunk;
.super Lcom/transsion/audiotagger/audio/iff/Chunk;
.source "SourceFile"


# static fields
.field private static final SIGNATURE_PDOS:Ljava/lang/String; = "pdos"

.field private static final SIGNATURE_STOC:Ljava/lang/String; = "stoc"


# instance fields
.field private aiffHeader:Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/transsion/audiotagger/audio/iff/Chunk;-><init>(Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V

    iput-object p3, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/ApplicationChunk;->aiffHeader:Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;

    return-void
.end method


# virtual methods
.method public readChunk()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/transsion/audiotagger/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "stoc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "pdos"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->readPascalString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object p0, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/ApplicationChunk;->aiffHeader:Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/aiff/AiffAudioHeader;->addApplicationIdentifier(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
