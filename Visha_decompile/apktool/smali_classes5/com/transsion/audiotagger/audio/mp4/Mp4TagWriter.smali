.class public Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private tc:Lcom/transsion/audiotagger/tag/mp4/Mp4TagCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.tag.mp4"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagCreator;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/mp4/Mp4TagCreator;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->tc:Lcom/transsion/audiotagger/tag/mp4/Mp4TagCreator;

    return-void
.end method

.method private adjustFreeAtom(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    add-int/lit8 p0, p3, -0x8

    if-lt p0, p4, :cond_0

    sget-object v0, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Writing:Option 6;Larger Size can use top free atom"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FreeBox;

    sub-int/2addr p0, p4

    invoke-direct {v0, p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->getHeader()Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->getData()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    int-to-long p2, p3

    add-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    :cond_0
    if-ne p3, p4, :cond_1

    sget-object p0, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string p2, "Writing:Option 7;Larger Size uses top free atom including header"

    invoke-virtual {p0, p2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    int-to-long p2, p3

    add-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :cond_1
    :goto_0
    return-void
.end method

.method private adjustSizeOfMoovHeader(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;ILcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result p0

    add-int/2addr p0, p3

    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    const-wide/16 v0, 0x8

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result p0

    add-int/2addr p0, p3

    invoke-virtual {p4, p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    invoke-virtual {p4}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v2, v0

    long-to-int p0, v2

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p4}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result p0

    add-int/2addr p0, p3

    invoke-virtual {p5, p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    invoke-virtual {p5}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide p3

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide p0

    sub-long/2addr p3, p0

    sub-long/2addr p3, v0

    long-to-int p0, p3

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p5}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_1
    return-void
.end method

.method private adjustStcosIfNoSuitableTopLevelAtom(IZILjava/util/List;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZI",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;",
            ">;",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p6}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual {p5}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide p5

    cmp-long p0, v0, p5

    if-lez p0, :cond_2

    if-eqz p2, :cond_0

    add-int/lit8 p0, p1, -0x8

    if-ge p0, p3, :cond_2

    if-eq p1, p3, :cond_2

    :cond_0
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;

    invoke-virtual {p1, p3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;->adjustOffsets(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private checkFileWrittenCorrectly(Ljava/io/RandomAccessFile;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/channels/FileChannel;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/nio/channels/FileChannel;",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object p0, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v0, "Checking file has been written correctly"

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :try_start_0
    new-instance p0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;-><init>(Ljava/io/RandomAccessFile;Z)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->getMdatNode()Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v3

    if-ne v2, v3, :cond_7

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->getUdtaNode()Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->getMetaNode()Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->getStcos()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_4

    move v2, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;

    sget-object v5, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stco:Original First Offset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    sget-object v5, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stco:Original Diff"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v9

    sub-long/2addr v7, v9

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    sget-object v5, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stco:Original Mdat Pos"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    sget-object v5, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stco:New First Offset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    sget-object v5, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stco:New Diff"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v9

    sub-long/2addr v7, v9

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    sget-object v5, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stco:New Mdat Pos"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    if-nez v0, :cond_1

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v2

    int-to-long v5, v2

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v2, v5

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v7

    sub-long/2addr v5, v7

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-nez v2, :cond_0

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v2

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :catch_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    sub-long/2addr v2, v0

    sub-long/2addr v2, v7

    long-to-int p0, v2

    new-instance p2, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    sget-object p4, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_INCORRECT_OFFSETS:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v4

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v3

    sub-int/2addr v4, v3

    if-ne v2, v4, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    sget-object p2, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_INCORRECT_OFFSETS:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {p3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    sget-object p0, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string p1, "File has been written correctly"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    return-void

    :cond_4
    :try_start_1
    new-instance p2, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_INCORRECT_NUMBER_OF_TRACKS:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p4, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    sget-object p2, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_NO_TAG_DATA:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    sget-object p2, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_NO_TAG_DATA:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    sget-object p2, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_DATA_CORRUPT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    sget-object p2, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_NO_DATA:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    instance-of p2, p0, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    if-eqz p2, :cond_9

    check-cast p0, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    throw p0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p2, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {p3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    throw p0
.end method

.method private convertandWriteTagsAtomToFreeAtom(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FreeBox;

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->getHeader()Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->getData()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private createMetadataAtoms(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;ILcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result p0

    add-int/2addr p0, p3

    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    return-void
.end method

.method private getMetaLevelFreeAtomSize(Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;)I
    .locals 3

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->getFreeNodes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lcom/transsion/audiotagger/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;->getPreviousSibling()Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;->isRoot()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->META:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->ILST:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->writeNeroData(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->writeDataInChunks(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;)V

    :goto_0
    return-void
.end method

.method private writeDataInChunks(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getWriteChunkSize()J

    move-result-wide v9

    div-long v11, v0, v9

    rem-long v13, v0, v9

    const-wide/16 v15, 0x0

    const/4 v2, 0x0

    move-wide/from16 v17, v15

    :goto_0
    int-to-long v3, v2

    cmp-long v3, v3, v11

    if-gez v3, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v5

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-wide v7, v9

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v3

    add-long v17, v17, v3

    invoke-virtual/range {p2 .. p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v3

    add-long/2addr v3, v9

    move-object/from16 v5, p2

    invoke-virtual {v5, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    cmp-long v2, v13, v15

    if-lez v2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-wide v4, v6

    move-wide v6, v13

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v2

    add-long v2, v17, v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Was meant to write "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes but only written "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    :goto_1
    return-void
.end method

.method private writeDataUptoIncludingIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    invoke-virtual {p3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p2, p4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return-void
.end method

.method private writeFromEndOfIlstToNeroTagsAndMakeNeroFree(JLjava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p5}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    move-object v4, p4

    move-object v5, p3

    move-wide v8, v0

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    invoke-virtual {p4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p4, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-direct {p0, p4, p5}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->convertandWriteTagsAtomToFreeAtom(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    invoke-virtual {p5}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    sub-long v6, p1, v0

    invoke-virtual {p4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    move-object v2, p4

    move-object v3, p3

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    return-void
.end method

.method private writeHaveExistingMetadata(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;ILcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/util/List;IIZLjava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;III)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/nio/channels/FileChannel;",
            "Ljava/nio/channels/FileChannel;",
            "I",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/nio/ByteBuffer;",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;",
            ">;IIZ",
            "Ljava/nio/ByteBuffer;",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p7

    move/from16 v12, p10

    sget-object v0, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Writing:Option 5.3;udta and meta atom exists"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    move-object v0, p0

    move/from16 v1, p11

    move/from16 v2, p12

    move/from16 v3, p10

    move-object/from16 v4, p9

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->adjustStcosIfNoSuitableTopLevelAtom(IZILjava/util/List;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;)Z

    move-result v6

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v13

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->adjustSizeOfMoovHeader(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;ILcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual/range {p7 .. p7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v11, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v9, v11}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-object/from16 v0, p13

    invoke-virtual {v9, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    if-eqz p14, :cond_0

    add-int v0, p16, p17

    add-int v0, v0, p15

    int-to-long v0, v0

    invoke-virtual {v8, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-object v0, p0

    move-wide v1, v13

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p14

    invoke-direct/range {v0 .. v5}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->writeFromEndOfIlstToNeroTagsAndMakeNeroFree(JLjava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    add-int v0, v10, p17

    add-int v0, v0, p15

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v9, v11}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v0

    int-to-long v2, v12

    sub-long/2addr v0, v2

    invoke-virtual {v8, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :goto_0
    if-nez v6, :cond_1

    move/from16 v0, p11

    invoke-direct {p0, v8, v9, v0, v12}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->adjustFreeAtom(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;II)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Writing:Option 9;Top Level Free comes after Mdat or before Metadata or not large enough"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v8, v9}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->writeDataInChunks(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;)V

    return-void
.end method

.method private writeMetadataSameSize(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Writing:Option 1:Same Size"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    invoke-virtual {p3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p2, p4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-direct {p0, p1, p2, p5}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    return-void
.end method

.method private writeNeroData(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    invoke-virtual {p3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    move-object v4, p2

    move-object v5, p1

    move-wide v8, v0

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->convertandWriteTagsAtomToFreeAtom(Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    invoke-virtual {p3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->writeDataInChunks(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;)V

    return-void
.end method

.method private writeNewMetadataLargerButCanUseFreeAtom(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;ILjava/nio/ByteBuffer;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    sub-int p7, p5, p7

    sget-object v0, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing:Option 5;Larger Size can use meta free atom need extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p6}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->writeDataUptoIncludingIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    new-instance p3, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FreeBox;

    add-int/lit8 p7, p7, -0x8

    invoke-direct {p3, p7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    invoke-virtual {p3}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->getHeader()Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p6

    invoke-virtual {p6}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object p6

    invoke-virtual {p2, p6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p3}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->getData()Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide p6

    int-to-long v0, p5

    add-long/2addr p6, v0

    invoke-virtual {p1, p6, p7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-direct {p0, p1, p2, p4}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    return-void
.end method

.method private writeNoExistingMetaAtom(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/util/List;IZLcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;IIIII)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/nio/channels/FileChannel;",
            "Ljava/nio/channels/FileChannel;",
            "Ljava/nio/ByteBuffer;",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/nio/ByteBuffer;",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;",
            ">;IZ",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "IIIII)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p6

    sget-object v0, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Writing:Option 5.2;No meta atom"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v11

    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual/range {p5 .. p5}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v1

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox;->createiTunesStyleHdlrBox()Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox;

    move-result-object v15

    invoke-virtual {v15}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->getHeader()Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MetaBox;->createiTunesStyleMetaBox(I)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MetaBox;

    move-result-object v16

    new-instance v6, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    sget-object v0, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->UDTA:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->getHeader()Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    invoke-virtual {v6, v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v0

    sub-int v17, v0, v1

    move-object/from16 v0, p0

    move/from16 v1, p9

    move/from16 v2, p10

    move/from16 v3, v17

    move-object/from16 v4, p8

    move-object/from16 v5, p5

    move-object/from16 v18, v6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->adjustStcosIfNoSuitableTopLevelAtom(IZILjava/util/List;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;)Z

    move-result v0

    invoke-virtual/range {p5 .. p5}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v1

    add-int v1, v1, v17

    move-object/from16 v2, p5

    invoke-virtual {v2, v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    invoke-virtual/range {p5 .. p5}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    sub-int/2addr v13, v14

    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v9, v10}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual/range {v18 .. v18}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual/range {p6 .. p6}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual/range {p6 .. p6}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual/range {p6 .. p6}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-virtual {v10, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual/range {p6 .. p6}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v10, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v9, v10}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    :cond_0
    invoke-virtual/range {v16 .. v16}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->getHeader()Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual/range {v16 .. v16}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v15}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->getHeader()Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v15}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual/range {p3 .. p4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    add-int v1, p13, p14

    add-int v1, v1, p12

    int-to-long v1, v1

    invoke-virtual {v8, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    if-eqz p11, :cond_1

    move-object/from16 p4, p0

    move-wide/from16 p5, v11

    move-object/from16 p7, p2

    move-object/from16 p8, p3

    move-object/from16 p9, p11

    invoke-direct/range {p4 .. p9}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->writeFromEndOfIlstToNeroTagsAndMakeNeroFree(JLjava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    sub-long/2addr v11, v1

    invoke-virtual/range {p3 .. p3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    move-object/from16 p4, p3

    move-object/from16 p5, p2

    move-wide/from16 p6, v1

    move-wide/from16 p8, v11

    invoke-virtual/range {p4 .. p9}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    invoke-virtual/range {p3 .. p3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    add-long/2addr v1, v11

    invoke-virtual {v9, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :goto_0
    if-nez v0, :cond_2

    move/from16 v0, p15

    move/from16 v1, p16

    invoke-direct {v7, v8, v9, v0, v1}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->adjustFreeAtom(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;II)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Writing:Option 9;Top Level Free comes after Mdat or before Metadata or not large enough"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v7, v8, v9}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->writeDataInChunks(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;)V

    return-void
.end method

.method private writeNoExistingUdtaAtom(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/util/List;IZLcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;IIIII)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/FileChannel;",
            "Ljava/nio/channels/FileChannel;",
            "Ljava/nio/ByteBuffer;",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/nio/ByteBuffer;",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;",
            ">;IZ",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "IIIII)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    sget-object v2, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v3, "Writing:Option 5.1;No udta atom"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v2

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox;->createiTunesStyleHdlrBox()Lcom/transsion/audiotagger/audio/mp4/atom/Mp4HdlrBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->getHeader()Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Ljava/nio/Buffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v5}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MetaBox;->createiTunesStyleMetaBox(I)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MetaBox;

    move-result-object v5

    new-instance v6, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    sget-object v7, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->UDTA:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->getHeader()Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v7

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v7

    add-int/lit8 v7, v7, 0x8

    invoke-virtual {v6, v7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v11

    move-object v8, p0

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v12, p7

    move-object/from16 v13, p4

    move-object/from16 v14, p6

    invoke-direct/range {v8 .. v14}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->adjustStcosIfNoSuitableTopLevelAtom(IZILjava/util/List;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;)Z

    move-result v7

    invoke-virtual/range {p4 .. p4}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v8

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v9

    add-int/2addr v8, v9

    move-object/from16 v9, p4

    invoke-virtual {v9, v8}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    invoke-virtual/range {p4 .. p4}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual/range {p5 .. p5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-object/from16 v8, p5

    invoke-virtual {v1, v8}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->getHeader()Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->getData()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->getHeader()Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->getData()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual/range {p2 .. p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    add-int v4, p12, p13

    add-int v4, v4, p11

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    if-eqz p10, :cond_0

    move-object/from16 p3, p0

    move-wide/from16 p4, v2

    move-object/from16 p6, p1

    move-object/from16 p7, p2

    move-object/from16 p8, p10

    invoke-direct/range {p3 .. p8}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->writeFromEndOfIlstToNeroTagsAndMakeNeroFree(JLjava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual/range {p2 .. p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    move-object/from16 p3, p2

    move-object/from16 p4, p1

    move-wide/from16 p5, v4

    move-wide/from16 p7, v2

    invoke-virtual/range {p3 .. p8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    invoke-virtual/range {p2 .. p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :goto_0
    if-nez v7, :cond_1

    move-object v2, p0

    move/from16 v3, p14

    move/from16 v4, p15

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->adjustFreeAtom(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;II)V

    goto :goto_1

    :cond_1
    move-object v2, p0

    sget-object v3, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v4, "Writing:Option 9;Top Level Free comes after Mdat or before Metadata or not large enough"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :goto_1
    invoke-direct/range {p0 .. p2}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->writeDataInChunks(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;)V

    return-void
.end method

.method private writeOldMetadataLargerThanNewMetadata(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/util/List;I)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/FileChannel;",
            "Ljava/nio/channels/FileChannel;",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v0, p12

    sget-object v1, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v2, "Writing:Option 1:Smaller Size"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v3

    const-wide/16 v13, 0x8

    add-long/2addr v3, v13

    sub-long/2addr v1, v3

    long-to-int v13, v1

    invoke-virtual/range {p10 .. p10}, Ljava/nio/Buffer;->limit()I

    move-result v1

    if-lez v0, :cond_0

    sget-object v2, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing:Option 2:Smaller Size have free atom:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-direct {p0, v7, v8, v9, v12}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->writeDataUptoIncludingIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    sub-int/2addr v2, v1

    add-int v1, v0, v2

    new-instance v2, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FreeBox;

    add-int/lit8 v1, v1, -0x8

    invoke-direct {v2, v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->getHeader()Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    invoke-virtual {v7, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v7, v8, v10}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x8

    if-lez v0, :cond_1

    sget-object v1, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v2, "Writing:Option 3:Smaller Size can create free atom"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-direct {p0, v7, v8, v9, v12}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->writeDataUptoIncludingIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    new-instance v1, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FreeBox;

    invoke-direct {v1, v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->getHeader()Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-direct {p0, v7, v8, v10}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    goto/16 :goto_1

    :cond_1
    sget-object v0, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v2, "Writing:Option 4:Smaller Size <=8 cannot create free atoms"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    sub-int v14, v0, v1

    const-wide/16 v0, 0x0

    invoke-virtual {v7, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const-wide/16 v2, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual/range {p7 .. p7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-interface/range {p11 .. p11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;

    neg-int v2, v14

    invoke-virtual {v1, v2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StcoBox;->adjustOffsets(I)V

    goto :goto_0

    :cond_2
    neg-int v3, v14

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p9

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->adjustSizeOfMoovHeader(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;ILcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual/range {p9 .. p9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v11, v13}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v8, v11}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v8, v12}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual/range {p9 .. p9}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    add-int/2addr v13, v0

    invoke-virtual {v11, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v8, v11}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v0

    int-to-long v2, v14

    add-long/2addr v0, v2

    invoke-virtual {v7, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v7, v8, v10}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    :goto_1
    return-void
.end method

.method private writeUpToMoovHeader(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    invoke-virtual {p3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return-void
.end method


# virtual methods
.method public delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;-><init>()V

    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->write(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catch Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    sget-object v1, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v2, "Started writing tag data"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v14

    :try_start_0
    new-instance v1, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;

    const/4 v2, 0x0

    move-object/from16 v13, p2

    invoke-direct {v1, v13, v2}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;-><init>(Ljava/io/RandomAccessFile;Z)V
    :try_end_0
    .catch Lcom/transsion/audiotagger/audio/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->getMdatNode()Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v12

    if-eqz v12, :cond_f

    iget-object v3, v0, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->tc:Lcom/transsion/audiotagger/tag/mp4/Mp4TagCreator;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Lcom/transsion/audiotagger/audio/generic/AbstractTagCreator;->convert(Lcom/transsion/audiotagger/tag/Tag;)Ljava/nio/ByteBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual/range {v16 .. v16}, Ljava/nio/Buffer;->limit()I

    move-result v3

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->getMoovNode()Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v7

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->getStcos()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->getIlstNode()Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v8

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->getUdtaNode()Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v5

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->getMetaNode()Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->getHdlrWithinMetaNode()Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v4

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->getTagsNode()Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v17

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->getTrakNodes()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->getTrakNodes()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/16 v18, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {v1, v9}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v9

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->getMoovBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    const-wide/16 v19, 0x8

    if-eqz v5, :cond_3

    if-eqz v6, :cond_2

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v4

    move/from16 p1, v3

    invoke-virtual {v8}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    long-to-int v2, v2

    move v9, v4

    int-to-long v3, v2

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v22

    add-long v22, v22, v19

    sub-long v3, v3, v22

    long-to-int v3, v3

    move/from16 v19, v2

    move v4, v9

    move v9, v3

    goto :goto_3

    :cond_0
    move/from16 p1, v3

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v3, v2

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v22

    :goto_0
    add-long v22, v22, v19

    sub-long v3, v3, v22

    long-to-int v3, v3

    :goto_1
    move/from16 v19, v2

    move v9, v3

    :goto_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_1
    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    long-to-int v2, v2

    add-int/lit8 v2, v2, 0xc

    int-to-long v3, v2

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v22

    goto :goto_0

    :cond_2
    move/from16 p1, v3

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v3

    long-to-int v3, v3

    move v9, v2

    move/from16 v19, v3

    goto :goto_2

    :cond_3
    move/from16 p1, v3

    if-eqz v6, :cond_4

    invoke-virtual {v9}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v3, v2

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v22

    goto :goto_0

    :cond_4
    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    goto :goto_1

    :goto_3
    invoke-direct {v0, v1}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->getMetaLevelFreeAtomSize(Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;)I

    move-result v20

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomTree;->getFreeNodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lcom/transsion/audiotagger/utils/tree/TreeNode;

    move-result-object v3

    check-cast v3, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;->isRoot()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    move v3, v2

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v1

    long-to-int v1, v1

    move/from16 v22, v3

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    const/16 v22, 0x0

    :goto_4
    if-lez v22, :cond_9

    int-to-long v2, v1

    invoke-virtual {v12}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v23

    cmp-long v23, v2, v23

    if-lez v23, :cond_7

    :goto_5
    move/from16 v21, v1

    const/16 v18, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v23

    cmp-long v2, v2, v23

    if-gez v2, :cond_8

    goto :goto_5

    :cond_8
    :goto_6
    move/from16 v21, v1

    goto :goto_7

    :cond_9
    invoke-virtual {v12}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_6

    :goto_7
    sget-object v1, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v2, "Read header successfully ready for writing"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    move/from16 v1, p1

    if-ne v4, v1, :cond_a

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v14

    move-object v4, v8

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->writeMetadataSameSize(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    move-object/from16 p1, v11

    move-object/from16 v23, v12

    :goto_8
    move-object/from16 v26, v14

    move-object/from16 v27, v15

    goto/16 :goto_9

    :cond_a
    if-le v4, v1, :cond_b

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v14

    move-object v4, v7

    move-object v7, v8

    move-object v8, v12

    move-object/from16 v9, v17

    move-object/from16 p1, v11

    move-object/from16 v11, v16

    move-object/from16 v23, v12

    move-object/from16 v12, p1

    move/from16 v13, v20

    invoke-direct/range {v1 .. v13}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->writeOldMetadataLargerThanNewMetadata(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/util/List;I)V

    goto :goto_8

    :cond_b
    move-object/from16 p1, v11

    move-object/from16 v23, v12

    sub-int v11, v1, v4

    add-int/lit8 v1, v20, -0x8

    if-gt v11, v1, :cond_c

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v14

    move-object v4, v8

    move-object/from16 v5, v17

    move/from16 v6, v20

    move-object/from16 v7, v16

    move v8, v11

    invoke-direct/range {v1 .. v8}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->writeNewMetadataLargerButCanUseFreeAtom(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;ILjava/nio/ByteBuffer;I)V

    goto :goto_8

    :cond_c
    sub-int v24, v11, v20

    invoke-direct {v0, v15, v14, v7}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->writeUpToMoovHeader(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    if-nez v5, :cond_d

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v14

    move/from16 v25, v4

    move-object/from16 v4, v16

    move-object v5, v7

    move-object v6, v10

    move-object/from16 v7, v23

    move-object/from16 v8, p1

    move/from16 v9, v22

    move/from16 v10, v18

    move-object/from16 v11, v17

    move/from16 v12, v20

    move/from16 v13, v19

    move-object/from16 v26, v14

    move/from16 v14, v25

    move-object/from16 v27, v15

    move/from16 v15, v21

    move/from16 v16, v24

    invoke-direct/range {v1 .. v16}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->writeNoExistingUdtaAtom(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/util/List;IZLcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;IIIII)V

    goto :goto_9

    :cond_d
    move/from16 v25, v4

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    if-nez v6, :cond_e

    move-object/from16 v1, p0

    move-object v2, v5

    move-object/from16 v3, v27

    move-object/from16 v4, v26

    move-object/from16 v5, v16

    move-object v6, v7

    move-object v7, v10

    move-object/from16 v8, v23

    move-object/from16 v9, p1

    move/from16 v10, v22

    move/from16 v11, v18

    move-object/from16 v12, v17

    move/from16 v13, v20

    move/from16 v14, v19

    move/from16 v15, v25

    move/from16 v16, v21

    move/from16 v17, v24

    invoke-direct/range {v1 .. v17}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->writeNoExistingMetaAtom(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/util/List;IZLcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;IIIII)V

    goto :goto_9

    :cond_e
    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v4, v27

    move-object/from16 v5, v26

    move v6, v9

    move-object v8, v10

    move-object/from16 v9, v23

    move-object/from16 v10, p1

    move/from16 v11, v24

    move/from16 v12, v22

    move/from16 v13, v18

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    move/from16 v16, v20

    move/from16 v17, v19

    move/from16 v18, v25

    invoke-direct/range {v1 .. v18}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->writeHaveExistingMetadata(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;ILcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/util/List;IIZLjava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;III)V

    :goto_9
    invoke-virtual/range {v27 .. v27}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->close()V

    move-object/from16 v4, p1

    move-object/from16 v1, p3

    move-object/from16 v3, v23

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagWriter;->checkFileWrittenCorrectly(Ljava/io/RandomAccessFile;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/channels/FileChannel;Ljava/util/List;)V

    return-void

    :cond_f
    new-instance v0, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    sget-object v1, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_CANNOT_FIND_AUDIO:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
