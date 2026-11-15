.class public Lcom/transsion/audiotagger/audio/dsf/ID3Chunk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private dataBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.audio.generic.ID3Chunk"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/dsf/ID3Chunk;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/dsf/ID3Chunk;->dataBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static readChunk(Ljava/nio/ByteBuffer;)Lcom/transsion/audiotagger/audio/dsf/ID3Chunk;
    .locals 4

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/generic/Utils;->readThreeBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/audiotagger/audio/dsf/DsfChunkType;->ID3:Lcom/transsion/audiotagger/audio/dsf/DsfChunkType;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/dsf/DsfChunkType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/transsion/audiotagger/audio/dsf/ID3Chunk;

    invoke-direct {v0, p0}, Lcom/transsion/audiotagger/audio/dsf/ID3Chunk;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    :cond_0
    sget-object p0, Lcom/transsion/audiotagger/audio/dsf/ID3Chunk;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " where expected ID3 tag"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getDataBuffer()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/dsf/ID3Chunk;->dataBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method
