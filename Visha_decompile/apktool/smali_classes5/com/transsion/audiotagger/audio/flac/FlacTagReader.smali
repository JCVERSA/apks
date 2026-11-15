.class public Lcom/transsion/audiotagger/audio/flac/FlacTagReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private vorbisCommentReader:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.audio.flac"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentReader;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentReader;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/flac/FlacTagReader;->vorbisCommentReader:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentReader;

    return-void
.end method


# virtual methods
.method public read(Ljava/io/File;)Lcom/transsion/audiotagger/tag/flac/FlacTag;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    new-instance v5, Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;-><init>(Ljava/nio/channels/FileChannel;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;->findStream()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v1

    :goto_0
    if-nez v6, :cond_7

    sget-object v6, Lcom/transsion/audiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/transsion/audiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " Looking for MetaBlockHeader at:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto/16 :goto_6

    :cond_0
    :goto_1
    invoke-static {v4}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->readHeader(Ljava/nio/channels/FileChannel;)Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v6

    if-nez v6, :cond_1

    goto/16 :goto_5

    :cond_1
    sget-object v8, Lcom/transsion/audiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v8, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lcom/transsion/audiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " Reading MetadataBlockHeader:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ending at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    move-result-object v8

    if-eqz v8, :cond_6

    sget-object v8, Lcom/transsion/audiotagger/audio/flac/FlacTagReader$1;->$SwitchMap$com$transsion$audiotagger$audio$flac$metadatablock$BlockType:[I

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    if-eq v8, v0, :cond_5

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    sget-object v8, Lcom/transsion/audiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v8, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lcom/transsion/audiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Ignoring MetadataBlock:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    invoke-virtual {v4, v7, v8}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_4
    :try_start_2
    new-instance v7, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-direct {v7, v6, v4}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>(Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/nio/channels/FileChannel;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/transsion/audiotagger/tag/InvalidFrameException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v7

    goto :goto_2

    :catch_1
    move-exception v7

    goto :goto_3

    :goto_2
    :try_start_3
    sget-object v8, Lcom/transsion/audiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "Unable to read picture metablock, ignoring"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    sget-object v8, Lcom/transsion/audiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "Unable to read picture metablock, ignoring:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    iget-object v7, p0, Lcom/transsion/audiotagger/audio/flac/FlacTagReader;->vorbisCommentReader:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentReader;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v7, v2, v1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentReader;->read([BZ)Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    move-result-object v2

    :cond_6
    :goto_4
    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock()Z

    move-result v6

    goto/16 :goto_0

    :cond_7
    :goto_5
    sget-object p0, Lcom/transsion/audiotagger/audio/flac/FlacTagReader;->logger:Ljava/util/logging/Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Audio should start at:"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/transsion/audiotagger/logging/Hex;->asHex(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    if-nez v2, :cond_8

    invoke-static {}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createNewTag()Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    move-result-object v2

    :cond_8
    new-instance p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;

    invoke-direct {p0, v2, v5}, Lcom/transsion/audiotagger/tag/flac/FlacTag;-><init>(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v3, p1, v1

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    return-object p0

    :catchall_1
    move-exception p0

    :goto_6
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v2, p1, v1

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    throw p0
.end method
