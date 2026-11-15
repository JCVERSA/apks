.class abstract Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/audio/asf/io/ChunkReader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ChunkType:",
        "Lcom/transsion/audiotagger/audio/asf/data/ChunkContainer;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/transsion/audiotagger/audio/asf/io/ChunkReader;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final LOGGER:Ljava/util/logging/Logger;

.field public static final READ_LIMIT:I = 0x2000


# instance fields
.field protected final eachChunkOnce:Z

.field protected hasFailingReaders:Z

.field protected final readerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/transsion/audiotagger/audio/asf/data/GUID;",
            "Lcom/transsion/audiotagger/audio/asf/io/ChunkReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotabgger.audio"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/transsion/audiotagger/audio/asf/io/ChunkReader;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader;->hasFailingReaders:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader;->readerMap:Ljava/util/Map;

    iput-boolean p2, p0, Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader;->eachChunkOnce:Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader;->register(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private register(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/transsion/audiotagger/audio/asf/io/ChunkReader;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/audio/asf/io/ChunkReader;

    invoke-interface {p1}, Lcom/transsion/audiotagger/audio/asf/io/ChunkReader;->getApplyingIds()[Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader;->readerMap:Ljava/util/Map;

    invoke-interface {v4, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :goto_1
    sget-object p1, Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    sget-object p1, Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    :cond_0
    :goto_3
    return-void
.end method


# virtual methods
.method public checkStream(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-boolean p0, p0, Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader;->hasFailingReaders:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream has to support mark/reset."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lcom/transsion/audiotagger/audio/asf/data/ChunkContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/math/BigInteger;",
            "Ljava/io/InputStream;",
            ")TChunkType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getReader(Lcom/transsion/audiotagger/audio/asf/data/GUID;)Lcom/transsion/audiotagger/audio/asf/io/ChunkReader;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader;->readerMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/asf/io/ChunkReader;

    return-object p0
.end method

.method public isReaderAvailable(Lcom/transsion/audiotagger/audio/asf/data/GUID;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader;->readerMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic read(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lcom/transsion/audiotagger/audio/asf/data/Chunk;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader;->read(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lcom/transsion/audiotagger/audio/asf/data/ChunkContainer;

    move-result-object p0

    return-object p0
.end method

.method public read(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lcom/transsion/audiotagger/audio/asf/data/ChunkContainer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/audiotagger/audio/asf/data/GUID;",
            "Ljava/io/InputStream;",
            "J)TChunkType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader;->checkStream(Ljava/io/InputStream;)V

    .line 3
    new-instance v0, Lcom/transsion/audiotagger/audio/asf/io/CountingInputStream;

    invoke-direct {v0, p2}, Lcom/transsion/audiotagger/audio/asf/io/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    invoke-interface {p0}, Lcom/transsion/audiotagger/audio/asf/io/ChunkReader;->getApplyingIds()[Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 5
    invoke-static {v0}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p3, p4, p1, v0}, Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader;->createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lcom/transsion/audiotagger/audio/asf/data/ChunkContainer;

    move-result-object p1

    .line 7
    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/asf/io/CountingInputStream;->getReadCount()J

    move-result-wide v1

    add-long/2addr p3, v1

    const-wide/16 v1, 0x10

    add-long/2addr p3, v1

    .line 8
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 9
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->getChunkEnd()J

    move-result-wide v1

    cmp-long v1, p3, v1

    if-gez v1, :cond_6

    .line 10
    invoke-static {v0}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v1

    .line 11
    iget-boolean v2, p0, Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader;->eachChunkOnce:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader;->isReaderAvailable(Lcom/transsion/audiotagger/audio/asf/data/GUID;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_3

    .line 12
    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader;->isReaderAvailable(Lcom/transsion/audiotagger/audio/asf/data/GUID;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13
    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader;->getReader(Lcom/transsion/audiotagger/audio/asf/data/GUID;)Lcom/transsion/audiotagger/audio/asf/io/ChunkReader;

    move-result-object v3

    .line 14
    invoke-interface {v3}, Lcom/transsion/audiotagger/audio/asf/io/ChunkReader;->canFail()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x2000

    .line 15
    invoke-virtual {v0, v3}, Lcom/transsion/audiotagger/audio/asf/io/CountingInputStream;->mark(I)V

    .line 16
    :cond_2
    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader;->getReader(Lcom/transsion/audiotagger/audio/asf/data/GUID;)Lcom/transsion/audiotagger/audio/asf/io/ChunkReader;

    move-result-object v3

    invoke-interface {v3, v1, v0, p3, p4}, Lcom/transsion/audiotagger/audio/asf/io/ChunkReader;->read(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lcom/transsion/audiotagger/audio/asf/data/Chunk;

    move-result-object v1

    goto :goto_2

    .line 17
    :cond_3
    invoke-static {}, Lcom/transsion/audiotagger/audio/asf/io/ChunkHeaderReader;->getInstance()Lcom/transsion/audiotagger/audio/asf/io/ChunkHeaderReader;

    move-result-object v3

    invoke-virtual {v3, v1, v0, p3, p4}, Lcom/transsion/audiotagger/audio/asf/io/ChunkHeaderReader;->read(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lcom/transsion/audiotagger/audio/asf/data/Chunk;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_4

    .line 18
    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/asf/io/CountingInputStream;->reset()V

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    .line 19
    invoke-virtual {p1, v1}, Lcom/transsion/audiotagger/audio/asf/data/ChunkContainer;->addChunk(Lcom/transsion/audiotagger/audio/asf/data/Chunk;)V

    .line 20
    :cond_5
    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->getChunkEnd()J

    move-result-wide p3

    goto :goto_0

    :cond_6
    return-object p1

    .line 21
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "provided GUID is not supported by this reader."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
