.class public abstract Lcom/transsion/audiotagger/audio/iff/Chunk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected chunkData:Ljava/nio/ByteBuffer;

.field protected chunkHeader:Lcom/transsion/audiotagger/audio/iff/ChunkHeader;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkData:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkHeader:Lcom/transsion/audiotagger/audio/iff/ChunkHeader;

    return-void
.end method


# virtual methods
.method public abstract readChunk()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
