.class public Lcom/hunantv/media/player/MgtvByteBufferPlayerDataSource;
.super Lcom/hunantv/media/player/MgtvPlayerDataSource;
.source "SourceFile"


# instance fields
.field private mBufferMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private mM3u8:[B

.field private mM3u8Path:Ljava/lang/String;

.field private mSegments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvPlayerDataSource;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvByteBufferPlayerDataSource;->mBufferMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvByteBufferPlayerDataSource;->mM3u8:[B

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvByteBufferPlayerDataSource;->init()V

    return-void
.end method

.method public constructor <init>([BLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvPlayerDataSource;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvByteBufferPlayerDataSource;->mBufferMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvByteBufferPlayerDataSource;->mM3u8:[B

    iput-object p2, p0, Lcom/hunantv/media/player/MgtvByteBufferPlayerDataSource;->mSegments:Ljava/util/Map;

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvByteBufferPlayerDataSource;->init()V

    return-void
.end method

.method private fillMap()V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvByteBufferPlayerDataSource;->mBufferMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvByteBufferPlayerDataSource;->mM3u8Path:Ljava/lang/String;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvByteBufferPlayerDataSource;->mM3u8:[B

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvByteBufferPlayerDataSource;->mSegments:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvByteBufferPlayerDataSource;->mBufferMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private genData()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iobuff://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".m3u8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvByteBufferPlayerDataSource;->mM3u8Path:Ljava/lang/String;

    return-void
.end method

.method private init()V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvByteBufferPlayerDataSource;->genData()V

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvByteBufferPlayerDataSource;->fillMap()V

    return-void
.end method


# virtual methods
.method public getBufferMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvByteBufferPlayerDataSource;->mBufferMap:Ljava/util/Map;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvByteBufferPlayerDataSource;->mM3u8Path:Ljava/lang/String;

    return-object p0
.end method
