.class public Lcom/transsion/audiotagger/audio/asf/AsfFileWriter;
.super Lcom/transsion/audiotagger/audio/generic/AudioFileWriter;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/generic/AudioFileWriter;-><init>()V

    return-void
.end method

.method private searchExistence(Lcom/transsion/audiotagger/audio/asf/data/ChunkContainer;[Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;)[Z
    .locals 3

    array-length p0, p2

    new-array v0, p0, [Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->getContainerType()Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->getContainerGUID()Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/transsion/audiotagger/audio/asf/data/ChunkContainer;->hasChunkByGUID(Lcom/transsion/audiotagger/audio/asf/data/GUID;)Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public deleteTag(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Lcom/transsion/audiotagger/tag/asf/AsfTag;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/transsion/audiotagger/tag/asf/AsfTag;-><init>(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/transsion/audiotagger/audio/asf/AsfFileWriter;->writeTag(Lcom/transsion/audiotagger/audio/AudioFile;Lcom/transsion/audiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    return-void
.end method

.method public writeTag(Lcom/transsion/audiotagger/audio/AudioFile;Lcom/transsion/audiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p3}, Lcom/transsion/audiotagger/audio/asf/io/AsfHeaderReader;->readTagHeader(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v0, Lcom/transsion/audiotagger/tag/asf/AsfTag;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/transsion/audiotagger/tag/asf/AsfTag;-><init>(Lcom/transsion/audiotagger/tag/Tag;Z)V

    invoke-static {v0}, Lcom/transsion/audiotagger/audio/asf/util/TagConverter;->distributeMetadata(Lcom/transsion/audiotagger/tag/asf/AsfTag;)[Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/audio/asf/AsfFileWriter;->searchExistence(Lcom/transsion/audiotagger/audio/asf/data/ChunkContainer;[Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;)[Z

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;->getExtendedHeader()Lcom/transsion/audiotagger/audio/asf/data/AsfExtendedHeader;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/audio/asf/AsfFileWriter;->searchExistence(Lcom/transsion/audiotagger/audio/asf/data/ChunkContainer;[Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;)[Z

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_4

    new-instance v4, Lcom/transsion/audiotagger/audio/asf/io/WriteableChunkModifer;

    aget-object v5, p2, v3

    invoke-direct {v4, v5}, Lcom/transsion/audiotagger/audio/asf/io/WriteableChunkModifer;-><init>(Lcom/transsion/audiotagger/audio/asf/io/WriteableChunk;)V

    aget-boolean v5, v0, v3

    if-eqz v5, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    aget-boolean v5, p0, v3

    if-eqz v5, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    if-ne v3, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    :goto_1
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    new-instance p0, Lcom/transsion/audiotagger/audio/asf/io/AsfExtHeaderModifier;

    invoke-direct {p0, v2}, Lcom/transsion/audiotagger/audio/asf/io/AsfExtHeaderModifier;-><init>(Ljava/util/List;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance p0, Lcom/transsion/audiotagger/audio/asf/io/AsfStreamer;

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/asf/io/AsfStreamer;-><init>()V

    new-instance p2, Lcom/transsion/audiotagger/audio/asf/io/RandomAccessFileInputstream;

    invoke-direct {p2, p3}, Lcom/transsion/audiotagger/audio/asf/io/RandomAccessFileInputstream;-><init>(Ljava/io/RandomAccessFile;)V

    new-instance p3, Lcom/transsion/audiotagger/audio/asf/io/RandomAccessFileOutputStream;

    invoke-direct {p3, p4}, Lcom/transsion/audiotagger/audio/asf/io/RandomAccessFileOutputStream;-><init>(Ljava/io/RandomAccessFile;)V

    invoke-virtual {p0, p2, p3, p1}, Lcom/transsion/audiotagger/audio/asf/io/AsfStreamer;->createModifiedCopy(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/util/List;)V

    return-void
.end method
