.class public Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;
.super Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader<",
        "Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;",
        ">;"
    }
.end annotation


# static fields
.field private static final APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;

.field private static final FULL_READER:Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;

.field private static final INFO_READER:Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;

.field private static final TAG_READER:Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_HEADER:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    filled-new-array {v0}, [Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;->APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Lcom/transsion/audiotagger/audio/asf/io/FileHeaderReader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/transsion/audiotagger/audio/asf/io/StreamChunkReader;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;-><init>(Ljava/util/List;Z)V

    sput-object v3, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;->INFO_READER:Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-class v3, Lcom/transsion/audiotagger/audio/asf/io/ContentDescriptionReader;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v3, Lcom/transsion/audiotagger/audio/asf/io/ContentBrandingReader;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v3, Lcom/transsion/audiotagger/audio/asf/io/LanguageListReader;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v3, Lcom/transsion/audiotagger/audio/asf/io/MetadataReader;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/transsion/audiotagger/audio/asf/io/AsfExtHeaderReader;

    invoke-direct {v3, v0, v4}, Lcom/transsion/audiotagger/audio/asf/io/AsfExtHeaderReader;-><init>(Ljava/util/List;Z)V

    new-instance v5, Lcom/transsion/audiotagger/audio/asf/io/AsfExtHeaderReader;

    invoke-direct {v5, v0, v4}, Lcom/transsion/audiotagger/audio/asf/io/AsfExtHeaderReader;-><init>(Ljava/util/List;Z)V

    new-instance v6, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;

    invoke-direct {v6, v0, v4}, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;-><init>(Ljava/util/List;Z)V

    sput-object v6, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;->TAG_READER:Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;

    invoke-virtual {v6, v3}, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;->setExtendedHeaderReader(Lcom/transsion/audiotagger/audio/asf/io/AsfExtHeaderReader;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Lcom/transsion/audiotagger/audio/asf/io/EncodingChunkReader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Lcom/transsion/audiotagger/audio/asf/io/EncryptionChunkReader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Lcom/transsion/audiotagger/audio/asf/io/StreamBitratePropertiesReader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;-><init>(Ljava/util/List;Z)V

    sput-object v1, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;->FULL_READER:Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;

    invoke-virtual {v1, v5}, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;->setExtendedHeaderReader(Lcom/transsion/audiotagger/audio/asf/io/AsfExtHeaderReader;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
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

    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader;-><init>(Ljava/util/List;Z)V

    return-void
.end method

.method private static createStream(Ljava/io/RandomAccessFile;)Ljava/io/InputStream;
    .locals 3

    new-instance v0, Lcom/transsion/audiotagger/audio/asf/io/FullRequestInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Lcom/transsion/audiotagger/audio/asf/io/RandomAccessFileInputstream;

    invoke-direct {v2, p0}, Lcom/transsion/audiotagger/audio/asf/io/RandomAccessFileInputstream;-><init>(Ljava/io/RandomAccessFile;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/transsion/audiotagger/audio/asf/io/FullRequestInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static readHeader(Ljava/io/File;)Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2
    sget-object p0, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;->FULL_READER:Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;

    invoke-static {v0}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;->read(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lcom/transsion/audiotagger/audio/asf/data/ChunkContainer;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;

    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0
.end method

.method public static readHeader(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-static {p0}, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;->createStream(Ljava/io/RandomAccessFile;)Ljava/io/InputStream;

    move-result-object p0

    .line 5
    sget-object v0, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;->FULL_READER:Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;->read(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lcom/transsion/audiotagger/audio/asf/data/ChunkContainer;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;

    return-object p0
.end method

.method public static readInfoHeader(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;->createStream(Ljava/io/RandomAccessFile;)Ljava/io/InputStream;

    move-result-object p0

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;->INFO_READER:Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;->read(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lcom/transsion/audiotagger/audio/asf/data/ChunkContainer;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;

    return-object p0
.end method

.method public static readTagHeader(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;->createStream(Ljava/io/RandomAccessFile;)Ljava/io/InputStream;

    move-result-object p0

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;->TAG_READER:Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;->read(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lcom/transsion/audiotagger/audio/asf/data/ChunkContainer;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;

    return-object p0
.end method


# virtual methods
.method public canFail()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p4}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v4

    .line 3
    invoke-virtual {p4}, Ljava/io/InputStream;->read()I

    move-result p0

    const/4 v0, 0x1

    const-string v1, "No ASF"

    if-ne p0, v0, :cond_1

    .line 4
    invoke-virtual {p4}, Ljava/io/InputStream;->read()I

    move-result p0

    const/4 p4, 0x2

    if-ne p0, p4, :cond_0

    .line 5
    new-instance p0, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;-><init>(JLjava/math/BigInteger;J)V

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lcom/transsion/audiotagger/audio/asf/data/ChunkContainer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;->createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;

    move-result-object p0

    return-object p0
.end method

.method public getApplyingIds()[Lcom/transsion/audiotagger/audio/asf/data/GUID;
    .locals 0

    sget-object p0, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;->APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;

    invoke-virtual {p0}, [Lcom/transsion/audiotagger/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/transsion/audiotagger/audio/asf/data/GUID;

    return-object p0
.end method

.method public bridge synthetic read(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lcom/transsion/audiotagger/audio/asf/data/ChunkContainer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader;->read(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lcom/transsion/audiotagger/audio/asf/data/ChunkContainer;

    move-result-object p0

    return-object p0
.end method

.method public setExtendedHeaderReader(Lcom/transsion/audiotagger/audio/asf/io/AsfExtHeaderReader;)V
    .locals 5

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/io/AsfExtHeaderReader;->getApplyingIds()[Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/transsion/audiotagger/audio/asf/io/ChunkContainerReader;->readerMap:Ljava/util/Map;

    invoke-interface {v4, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
