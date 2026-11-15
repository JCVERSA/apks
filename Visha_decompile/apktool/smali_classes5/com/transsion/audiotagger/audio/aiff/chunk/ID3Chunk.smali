.class public Lcom/transsion/audiotagger/audio/aiff/chunk/ID3Chunk;
.super Lcom/transsion/audiotagger/audio/iff/Chunk;
.source "SourceFile"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private aiffTag:Lcom/transsion/audiotagger/tag/aiff/AiffTag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.audio.aiff.chunk"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/ID3Chunk;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/audio/iff/ChunkHeader;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/tag/aiff/AiffTag;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/transsion/audiotagger/audio/iff/Chunk;-><init>(Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/iff/ChunkHeader;)V

    iput-object p3, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/ID3Chunk;->aiffTag:Lcom/transsion/audiotagger/tag/aiff/AiffTag;

    return-void
.end method

.method private isId3v2Tag(Ljava/nio/ByteBuffer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    sget-object v2, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->TAG_ID:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public readChunk()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v1, "Reading chunk"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/transsion/audiotagger/audio/aiff/chunk/ID3Chunk;->isId3v2Tag(Ljava/nio/ByteBuffer;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/transsion/audiotagger/audio/aiff/chunk/ID3Chunk;->logger:Ljava/util/logging/Logger;

    const-string v0, "Invalid ID3 header for ID3 chunk"

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;-><init>()V

    sget-object v2, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v3, "Reading ID3V2.4 tag"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/id3/ID3v23Tag;-><init>()V

    sget-object v2, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v3, "Reading ID3V2.3 tag"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/id3/ID3v22Tag;-><init>()V

    sget-object v2, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v3, "Reading ID3V2.2 tag"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/ID3Chunk;->aiffTag:Lcom/transsion/audiotagger/tag/aiff/AiffTag;

    invoke-virtual {v2, v0}, Lcom/transsion/audiotagger/tag/aiff/AiffTag;->setID3Tag(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :try_start_0
    iget-object p0, p0, Lcom/transsion/audiotagger/audio/iff/Chunk;->chunkData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->read(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lcom/transsion/audiotagger/tag/TagException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception reading ID3 tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return v1
.end method
