.class public Lcom/transsion/audiotagger/audio/flac/FlacTagWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;
    }
.end annotation


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private tc:Lcom/transsion/audiotagger/audio/flac/FlacTagCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.audio.flac"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/audiotagger/audio/flac/FlacTagCreator;

    invoke-direct {v0}, Lcom/transsion/audiotagger/audio/flac/FlacTagCreator;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter;->tc:Lcom/transsion/audiotagger/audio/flac/FlacTagCreator;

    return-void
.end method

.method private computeAvailableRoom(Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)I
    .locals 2

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->a(Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->d(Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->b(Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->c(Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    move-result p1

    add-int/2addr v0, p1

    goto :goto_3

    :cond_3
    return v0
.end method

.method private computeNeededRoom(Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)I
    .locals 2

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->a(Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->d(Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->b(Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    move-result p1

    add-int/2addr v0, p1

    goto :goto_2

    :cond_2
    return v0
.end method

.method private insertTagAndShift(Ljava/io/File;Lcom/transsion/audiotagger/tag/Tag;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;II)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    move/from16 v13, p6

    invoke-virtual/range {p5 .. p5}, Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    move-result v0

    add-int/lit8 v0, v0, 0x2a

    add-int v1, v0, v13

    add-int/lit16 v1, v1, 0xfa0

    int-to-long v5, v1

    invoke-virtual/range {p3 .. p3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    add-int v0, v0, p7

    int-to-long v3, v0

    sub-long/2addr v1, v3

    add-long v14, v5, v1

    const/4 v1, 0x0

    :try_start_0
    sget-object v8, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v9, 0x0

    move-object/from16 v7, p3

    move-wide v11, v14

    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v16
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    move-object/from16 v4, p3

    move-wide v7, v14

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    :try_start_1
    invoke-direct/range {v1 .. v12}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter;->insertTagAndShiftViaMappedByteBuffer(Lcom/transsion/audiotagger/tag/Tag;Ljava/nio/MappedByteBuffer;Ljava/nio/channels/FileChannel;JJLcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    if-nez v1, :cond_0

    add-int/lit16 v13, v13, 0xfa0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v14, p7

    invoke-direct/range {v7 .. v14}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter;->insertUsingChunks(Ljava/io/File;Lcom/transsion/audiotagger/tag/Tag;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;II)V

    :goto_1
    return-void

    :cond_0
    sget-object v1, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private insertTagAndShiftViaMappedByteBuffer(Lcom/transsion/audiotagger/tag/Tag;Ljava/nio/MappedByteBuffer;Ljava/nio/channels/FileChannel;JJLcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/transsion/audiotagger/utils/PrimitiveUtils;->safeLongToInt(J)I

    move-result v0

    const-wide/16 v1, 0xfa0

    sub-long/2addr p4, v1

    int-to-long v1, p10

    sub-long/2addr p4, v1

    int-to-long p10, p11

    add-long/2addr p4, p10

    invoke-static {p4, p5}, Lcom/transsion/audiotagger/utils/PrimitiveUtils;->safeLongToInt(J)I

    move-result p4

    int-to-long p10, v0

    sub-long/2addr p6, p10

    invoke-static {p6, p7}, Lcom/transsion/audiotagger/utils/PrimitiveUtils;->safeLongToInt(J)I

    move-result p5

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object p6

    invoke-virtual {p6}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getWriteChunkSize()J

    move-result-wide p6

    invoke-static {p6, p7}, Lcom/transsion/audiotagger/utils/PrimitiveUtils;->safeLongToInt(J)I

    move-result p6

    sub-int/2addr v0, p6

    new-array p7, p6, [B

    :goto_0
    const/4 p10, 0x0

    if-lt v0, p4, :cond_0

    invoke-virtual {p2, v0}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p2, p7, p10, p6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int p11, v0, p5

    invoke-virtual {p2, p11}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p2, p7, p10, p6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, p6

    goto :goto_0

    :cond_0
    add-int/2addr v0, p6

    sub-int/2addr v0, p4

    if-lez v0, :cond_1

    invoke-virtual {p2, p4}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p2, p7, p10, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr p4, p5

    invoke-virtual {p2, p4}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p2, p7, p10, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_1
    invoke-static {p2}, Lcom/transsion/audiotagger/utils/DirectByteBufferUtils;->release(Ljava/nio/Buffer;)V

    invoke-direct {p0, p1, p3, p8, p9}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter;->writeTags(Lcom/transsion/audiotagger/tag/Tag;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;)V

    return-void
.end method

.method private insertUsingChunks(Ljava/io/File;Lcom/transsion/audiotagger/tag/Tag;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual {p5}, Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    move-result v2

    add-int/lit8 v2, v2, 0x2a

    add-int/2addr v2, p7

    int-to-long v2, v2

    sub-int/2addr p6, p7

    sget-object p7, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Audio needs shifting:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p7, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getWriteChunkSize()J

    move-result-wide v4

    long-to-int p1, v4

    if-ge p1, p6, :cond_0

    goto :goto_0

    :cond_0
    move p6, p1

    :goto_0
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-virtual {p3, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-static {p6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p7

    invoke-virtual {p3, p7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-interface {p1, p7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    invoke-virtual {p5}, Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    move-result p5

    add-int/lit8 p5, p5, 0x4

    int-to-long v4, p5

    invoke-virtual {p3, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-direct {p0, p3, p4}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter;->writeOtherMetadataBlocks(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)V

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter;->tc:Lcom/transsion/audiotagger/audio/flac/FlacTagCreator;

    const/16 p4, 0xfa0

    invoke-virtual {p0, p2, p4}, Lcom/transsion/audiotagger/audio/flac/FlacTagCreator;->convert(Lcom/transsion/audiotagger/tag/Tag;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide p4

    invoke-virtual {p3, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :goto_1
    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-gez p0, :cond_1

    invoke-static {p6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-interface {p1, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, p4, p5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide p4

    invoke-virtual {p3, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto :goto_1

    :cond_1
    invoke-virtual {p3, p4, p5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private insertUsingDirectBuffer(Ljava/io/File;Lcom/transsion/audiotagger/tag/Tag;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p5}, Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    move-result p1

    add-int/lit8 p1, p1, 0x2a

    add-int/2addr p1, p6

    int-to-long v0, p1

    invoke-virtual {p3, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p1, v0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p5}, Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    move-result p5

    add-int/lit8 p5, p5, 0x4

    int-to-long p5, p5

    invoke-virtual {p3, p5, p6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-direct {p0, p3, p4}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter;->writeOtherMetadataBlocks(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)V

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter;->tc:Lcom/transsion/audiotagger/audio/flac/FlacTagCreator;

    const/16 p4, 0xfa0

    invoke-virtual {p0, p2, p4}, Lcom/transsion/audiotagger/audio/flac/FlacTagCreator;->convert(Lcom/transsion/audiotagger/tag/Tag;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p3, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private writeOtherMetadataBlocks(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->e(Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;->getHeader()Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytesWithoutIsLastBlockFlag()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->e(Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;->getData()Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockData;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockData;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->a(Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;->getHeader()Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytesWithoutIsLastBlockFlag()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;->getData()Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockData;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockData;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->d(Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;->getHeader()Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytesWithoutIsLastBlockFlag()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;->getData()Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockData;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockData;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->b(Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;->getHeader()Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytesWithoutIsLastBlockFlag()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;->getData()Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockData;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockData;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_2

    :cond_2
    return-void
.end method

.method private writeTags(Lcom/transsion/audiotagger/tag/Tag;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p4}, Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    move-result p4

    add-int/lit8 p4, p4, 0x4

    int-to-long v0, p4

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter;->writeOtherMetadataBlocks(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)V

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter;->tc:Lcom/transsion/audiotagger/audio/flac/FlacTagCreator;

    const/16 p3, 0xfa0

    invoke-virtual {p0, p1, p3}, Lcom/transsion/audiotagger/audio/flac/FlacTagCreator;->convert(Lcom/transsion/audiotagger/tag/Tag;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method


# virtual methods
.method public delete(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    new-instance p1, Lcom/transsion/audiotagger/tag/flac/FlacTag;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lcom/transsion/audiotagger/tag/flac/FlacTag;-><init>(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;Ljava/util/List;)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter;->write(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/File;)V

    return-void
.end method

.method public write(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/File;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " Writing tag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, p2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    new-instance v9, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;

    invoke-direct {v9, v2}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;-><init>(Lxx3;)V

    new-instance v10, Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v8, v2}, Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;-><init>(Ljava/nio/channels/FileChannel;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v10}, Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;->findStream()V
    :try_end_2
    .catch Lcom/transsion/audiotagger/audio/exceptions/CannotReadException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    :try_start_3
    invoke-static {v8}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->readHeader(Ljava/nio/channels/FileChannel;)Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$1;->$SwitchMap$com$transsion$audiotagger$audio$flac$metadatablock$BlockType:[I

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v8, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto/16 :goto_6

    :catch_0
    move-exception p0

    move-object v2, v3

    goto/16 :goto_5

    :catch_1
    move-exception p0

    goto :goto_2

    :pswitch_0
    new-instance v4, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataCueSheet;

    invoke-direct {v4, v2, v8}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataCueSheet;-><init>(Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/nio/channels/FileChannel;)V

    invoke-static {v9}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->b(Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-direct {v6, v2, v4}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;-><init>(Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockData;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    new-instance v4, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataSeekTable;

    invoke-direct {v4, v2, v8}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataSeekTable;-><init>(Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/nio/channels/FileChannel;)V

    invoke-static {v9}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->d(Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-direct {v6, v2, v4}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;-><init>(Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockData;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    new-instance v4, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataApplication;

    invoke-direct {v4, v2, v8}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataApplication;-><init>(Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/nio/channels/FileChannel;)V

    invoke-static {v9}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->a(Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-direct {v6, v2, v4}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;-><init>(Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockData;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v8, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    new-instance v4, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;-><init>(I)V

    invoke-static {v9}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->c(Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-direct {v6, v2, v4}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;-><init>(Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockData;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_4
    new-instance v4, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;

    new-instance v5, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;

    invoke-direct {v5, v2, v8}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;-><init>(Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/nio/channels/FileChannel;)V

    invoke-direct {v4, v2, v5}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;-><init>(Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockData;)V

    invoke-static {v9, v4}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;->f(Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlock;)V

    :cond_0
    :goto_1
    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock()Z

    move-result v2
    :try_end_3
    .catch Lcom/transsion/audiotagger/audio/exceptions/CannotReadException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :goto_2
    :try_start_4
    new-instance p1, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-direct {p0, v9}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter;->computeAvailableRoom(Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)I

    move-result v12

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter;->tc:Lcom/transsion/audiotagger/audio/flac/FlacTagCreator;

    invoke-virtual {v2, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTagCreator;->convert(Lcom/transsion/audiotagger/tag/Tag;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-direct {p0, v9}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter;->computeNeededRoom(Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v10}, Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v8, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    sget-object v5, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ":Writing tag available bytes:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":needed bytes:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    if-eq v12, v4, :cond_3

    add-int/lit8 v5, v4, 0x4

    if-le v12, v5, :cond_2

    goto :goto_3

    :cond_2
    sget-object v5, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ":Audio must be shifted NewTagSize:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":AvailableRoom:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":MinimumAdditionalRoomRequired:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v2, v4, v12

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    add-int/lit16 v11, v4, 0xfa0

    move-object v5, p0

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v5 .. v12}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter;->insertUsingChunks(Ljava/io/File;Lcom/transsion/audiotagger/tag/Tag;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;II)V

    goto :goto_4

    :cond_3
    :goto_3
    sget-object v2, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ":Room to Rewrite"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/transsion/audiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    int-to-long v5, v2

    invoke-virtual {v8, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v8, v9}, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter;->writeOtherMetadataBlocks(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/flac/FlacTagWriter$MetadataBlockInfo;)V

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter;->tc:Lcom/transsion/audiotagger/audio/flac/FlacTagCreator;

    sub-int/2addr v12, v4

    invoke-virtual {p0, p1, v12}, Lcom/transsion/audiotagger/audio/flac/FlacTagCreator;->convert(Lcom/transsion/audiotagger/tag/Tag;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    new-array p0, v0, [Ljava/io/Closeable;

    aput-object v3, p0, v1

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    return-void

    :catch_2
    move-exception p0

    :try_start_5
    new-instance p1, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_3
    move-exception p0

    :goto_5
    :try_start_6
    sget-object p1, Lcom/transsion/audiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_6
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v2, p1, v1

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
