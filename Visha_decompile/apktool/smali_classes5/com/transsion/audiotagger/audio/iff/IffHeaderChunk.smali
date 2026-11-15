.class public Lcom/transsion/audiotagger/audio/iff/IffHeaderChunk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static HEADER_LENGTH:I

.field public static SIGNATURE_LENGTH:I

.field public static SIZE_LENGTH:I

.field public static TYPE_LENGTH:I

.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.transsion.audiotagger.audio.iff"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/iff/IffHeaderChunk;->logger:Ljava/util/logging/Logger;

    const/4 v0, 0x4

    sput v0, Lcom/transsion/audiotagger/audio/iff/IffHeaderChunk;->SIGNATURE_LENGTH:I

    sput v0, Lcom/transsion/audiotagger/audio/iff/IffHeaderChunk;->SIZE_LENGTH:I

    sput v0, Lcom/transsion/audiotagger/audio/iff/IffHeaderChunk;->TYPE_LENGTH:I

    add-int v1, v0, v0

    add-int/2addr v1, v0

    sput v1, Lcom/transsion/audiotagger/audio/iff/IffHeaderChunk;->HEADER_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureOnEqualBoundary(Ljava/io/RandomAccessFile;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    .line 3
    sget-object p1, Lcom/transsion/audiotagger/audio/iff/IffHeaderChunk;->logger:Ljava/util/logging/Logger;

    const-string v0, "Skipping Byte because on odd boundary"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    :cond_0
    return-void
.end method

.method public static ensureOnEqualBoundary(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/iff/ChunkHeader;->getSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->isOddLength(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    .line 7
    sget-object p1, Lcom/transsion/audiotagger/audio/iff/IffHeaderChunk;->logger:Ljava/util/logging/Logger;

    const-string v0, "Skipping Byte because on odd boundary"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :cond_0
    return-void
.end method
