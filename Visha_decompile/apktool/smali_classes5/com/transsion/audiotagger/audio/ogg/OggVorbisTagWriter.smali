.class public Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private reader:Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;

.field private tc:Lcom/transsion/audiotagger/audio/ogg/OggVorbisCommentTagCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.audio.ogg"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisCommentTagCreator;

    invoke-direct {v0}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisCommentTagCreator;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->tc:Lcom/transsion/audiotagger/audio/ogg/OggVorbisCommentTagCreator;

    new-instance v0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;

    invoke-direct {v0}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->reader:Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;

    return-void
.end method

.method private calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V
    .locals 3

    const/16 p0, 0x16

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/ogg/util/OggCRCFactory;->computeCRC([B)[B

    move-result-object p0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x16

    aget-byte v2, p0, v0

    invoke-virtual {p1, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method

.method private createSegmentTable(IILjava/util/List;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;",
            ">;)[B"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create SegmentTable CommentLength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":SetupHeaderLength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 3
    invoke-direct {p0, p1, v1}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v2, 0x1

    .line 4
    invoke-direct {p0, p1, v2}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object p1

    .line 5
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 6
    invoke-direct {p0, p2, v2}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object p2

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0, p2, v1}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object p2

    .line 8
    :goto_0
    sget-object v2, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " segments for header"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 9
    sget-object v2, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " segments for setup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 10
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 11
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 12
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 13
    sget-object p1, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating segments for "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " packets"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 14
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 15
    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result p2

    invoke-direct {p0, p2, v1}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object p2

    .line 16
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    .line 17
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 18
    :goto_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to create segment table:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createSegmentTable(ILjava/util/List;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;",
            ">;)[B"
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x1

    .line 20
    invoke-direct {p0, p1, v1}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object p1

    .line 21
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 22
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 23
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 24
    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result p2

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object p2

    .line 25
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 27
    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to create segment table:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createSegments(IZ)[B
    .locals 3

    const/4 p0, 0x1

    sget-object v0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create Segments for length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":QuitStream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p0, p0, [B

    aput-byte v0, p0, v0

    return-object p0

    :cond_0
    div-int/lit16 v1, p1, 0xff

    rem-int/lit16 v2, p1, 0xff

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, p0

    :goto_0
    add-int/2addr v1, p2

    new-array p2, v1, [B

    :goto_1
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_2

    const/4 v2, -0x1

    aput-byte v2, p2, v0

    add-int/2addr v0, p0

    goto :goto_1

    :cond_2
    mul-int/lit16 v0, v0, 0xff

    sub-int/2addr p1, v0

    int-to-byte p0, p1

    aput-byte p0, p2, v2

    return-object p2
.end method

.method private isCommentAndSetupHeaderFitsOnASinglePage(IILjava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;",
            ">;)Z"
        }
    .end annotation

    const/16 p0, 0xff

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    div-int/lit16 v1, p1, 0xff

    add-int/lit8 v2, v1, 0x1

    rem-int/2addr p1, p0

    if-nez p1, :cond_1

    add-int/lit8 v2, v1, 0x2

    :cond_1
    :goto_0
    sget-object p1, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Require:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " segments for comment"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    if-nez p2, :cond_2

    add-int/2addr v2, v0

    goto :goto_1

    :cond_2
    div-int/lit16 p1, p2, 0xff

    add-int/2addr p1, v0

    add-int/2addr v2, p1

    rem-int/2addr p2, p0

    if-nez p2, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    :goto_1
    sget-object p1, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " segments for comment plus setup"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result p3

    if-nez p3, :cond_5

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result p3

    div-int/2addr p3, p0

    add-int/2addr p3, v0

    add-int/2addr v2, p3

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$PacketStartAndLength;->getLength()I

    move-result p2

    rem-int/2addr p2, p0

    if-nez p2, :cond_4

    goto :goto_3

    :cond_6
    sget-object p1, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Total No Of Segment If New Comment And Header Put On One Page:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    if-gt v2, p0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    return v0
.end method

.method private replacePagesAndRenumberPageSeqs(Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;ILcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p4

    move-object/from16 v7, p5

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPageSequence()I

    move-result v1

    const v2, 0xfe01

    div-int v3, p2, v2

    sget-object v4, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Comment requires:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " complete pages"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    const/4 v8, 0x5

    const/16 v4, 0x1a

    const/16 v9, 0x12

    const/4 v5, 0x0

    if-lez v3, :cond_3

    move v10, v5

    move v11, v10

    :goto_0
    if-ge v10, v3, :cond_2

    invoke-direct {v6, v2, v5}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object v12

    array-length v13, v12

    const v14, 0xfe1c

    add-int/2addr v13, v14

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getRawHeaderData()[B

    move-result-object v14

    invoke-virtual {v13, v14, v5, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    array-length v14, v12

    int-to-byte v14, v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    array-length v14, v12

    move v15, v5

    :goto_1
    if-ge v15, v14, :cond_0

    aget-byte v4, v12, v15

    invoke-virtual {v13, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v15, v15, 0x1

    const/16 v4, 0x1a

    goto :goto_1

    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v13, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v13, v9, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    if-eqz v10, :cond_1

    sget-object v4, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->CONTINUED_PACKET:Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->getFileValue()B

    move-result v4

    invoke-virtual {v13, v8, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :cond_1
    invoke-direct {v6, v13}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    invoke-virtual/range {p6 .. p6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    add-int/2addr v11, v2

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v10, v10, 0x1

    const/16 v4, 0x1a

    goto :goto_0

    :cond_2
    move v10, v1

    goto :goto_2

    :cond_3
    move v10, v1

    move v11, v5

    :goto_2
    rem-int v2, p2, v2

    sget-object v1, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Last comment packet size:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderSize()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v6, v2, v1, v4}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->isCommentAndSetupHeaderFitsOnASinglePage(IILjava/util/List;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v4, "WriteOgg Type 3"

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {v6, v2, v1}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->createSegments(IZ)[B

    move-result-object v1

    array-length v4, v1

    add-int/lit8 v4, v4, 0x1b

    add-int/2addr v2, v4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getRawHeaderData()[B

    move-result-object v4

    const/16 v12, 0x1a

    invoke-virtual {v2, v4, v5, v12}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    array-length v4, v1

    int-to-byte v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    array-length v4, v1

    move v12, v5

    :goto_3
    if-ge v12, v4, :cond_4

    aget-byte v13, v1, v12

    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v9, v10}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    if-lez v3, :cond_5

    sget-object v0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->CONTINUED_PACKET:Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->getFileValue()B

    move-result v0

    invoke-virtual {v2, v8, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :cond_5
    sget-object v0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing Last Comment Page "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to file"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    invoke-direct {v6, v2}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    invoke-virtual/range {p6 .. p6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderSize()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->createSegmentTable(ILjava/util/List;)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1b

    iget-object v2, v6, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->reader:Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderStartPosition()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12, v7}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->convertToVorbisSetupHeaderPacketAndAdditionalPackets(JLjava/io/RandomAccessFile;)[B

    move-result-object v2

    array-length v4, v2

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getRawHeaderData()[B

    move-result-object v4

    const/16 v8, 0x1a

    invoke-virtual {v1, v4, v5, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    array-length v4, v0

    int-to-byte v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    array-length v4, v0

    :goto_4
    if-ge v5, v4, :cond_6

    aget-byte v8, v0, v5

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v9, v10}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing Setup Header and packets Page "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-direct {v6, v1}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    invoke-virtual/range {p6 .. p6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    :goto_5
    move-object/from16 v0, p6

    goto :goto_6

    :cond_7
    sget-object v1, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v3, "WriteOgg Type 4"

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderSize()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketDataSize()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->startCreateBasicSecondPage(Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderStartPosition()J

    move-result-wide v1

    invoke-virtual {v7, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, v6, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->reader:Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderStartPosition()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v7}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->convertToVorbisSetupHeaderPacketAndAdditionalPackets(JLjava/io/RandomAccessFile;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v9, v10}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->CONTINUED_PACKET:Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->getFileValue()B

    move-result v1

    invoke-virtual {v0, v8, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    invoke-direct {v6, v0}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    invoke-virtual/range {p6 .. p6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_5

    :goto_6
    invoke-virtual {v6, v10, v7, v0}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->writeRemainingPages(ILjava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    return-void
.end method

.method private replaceSecondPageAndRenumberPageSeqs(Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "WriteOgg Type 2"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->startCreateBasicSecondPage(Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPageSequence()I

    move-result p3

    iget-object p4, p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->reader:Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderStartPosition()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1, p6}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->convertToVorbisSetupHeaderPacketAndAdditionalPackets(JLjava/io/RandomAccessFile;)[B

    move-result-object p1

    sget-object p4, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, p1

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p0, p3, p6, p7}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->writeRemainingPages(ILjava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    return-void
.end method

.method private replaceSecondPageOnly(Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;JLjava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "WriteOgg Type 1"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->startCreateBasicSecondPage(Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p8, p6, p7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getCommentHeaderSize()I

    move-result p1

    invoke-virtual {p8, p1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-virtual {p8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p9}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p9}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p3

    invoke-virtual {p8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p4

    invoke-virtual {p9}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide p5

    invoke-virtual {p8}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide p0

    invoke-virtual {p8}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide p7

    sub-long p7, p0, p7

    invoke-virtual/range {p3 .. p8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    return-void
.end method

.method private startCreateBasicSecondPage(Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "WriteOgg Type 1"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderSize()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->createSegmentTable(IILjava/util/List;)[B

    move-result-object p0

    array-length p1, p0

    add-int/lit8 p1, p1, 0x1b

    sget-object p2, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New second page header length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    sget-object p2, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No of segments:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    add-int/2addr p3, p1

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getRawHeaderData()[B

    move-result-object p2

    const/16 p3, 0x1a

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    array-length p2, p0

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    array-length p2, p0

    :goto_0
    if-ge p4, p2, :cond_0

    aget-byte p3, p0, p4

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p1
.end method


# virtual methods
.method public delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->reader:Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;

    invoke-virtual {v0, p1}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->read(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/tag/Tag;
    :try_end_0
    .catch Lcom/transsion/audiotagger/audio/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createNewTag()Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->write(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    return-void

    :catch_0
    invoke-static {}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createNewTag()Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->write(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    return-void
.end method

.method public write(Lcom/transsion/audiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Starting to write file:"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Read 1st Page:identificationHeader:"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getStartByte()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getSegmentTable()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    int-to-long v7, v1

    const-wide/16 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getSegmentTable()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v1, v0

    invoke-virtual {p3, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    sget-object v0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Written identificationHeader:"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v8

    sget-object v1, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read 2nd Page:comment and setup and possibly audio:Header finishes at file position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->reader:Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;

    invoke-virtual {v1, p2}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader;->readOggVorbisHeaderSizes(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;

    move-result-object v3

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->tc:Lcom/transsion/audiotagger/audio/ogg/OggVorbisCommentTagCreator;

    invoke-virtual {v1, p1}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisCommentTagCreator;->convert(Lcom/transsion/audiotagger/tag/Tag;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderSize()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketDataSize()I

    move-result v2

    add-int v5, v1, v2

    sget-object v1, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Old 2nd Page no of packets: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Old 2nd Page size: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Old last packet incomplete: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setup Header Size: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderSize()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Extra Packets: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Extra Packet Data Size: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketDataSize()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Old comment: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getCommentHeaderSize()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New comment: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New Page Data Size: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getSetupHeaderSize()I

    move-result v1

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;->getExtraPacketList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v4, v1, v2}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->isCommentAndSetupHeaderFitsOnASinglePage(IILjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v1

    const v2, 0xfe01

    if-ge v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_2

    :cond_1
    sget-object v1, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v2, "Header and Setup remain on single page:"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move-object v2, p0

    move-object v6, v0

    move-object v7, p1

    move-object v10, p2

    move-object v11, p3

    invoke-direct/range {v2 .. v11}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->replaceSecondPageOnly(Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;JLjava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v2, "Header and Setup now on single page:"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move-object v2, p0

    move-object v6, v0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->replaceSecondPageAndRenumberPageSeqs(Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;IILcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v2, "Header and Setup with shift audio:"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move-object v2, p0

    move-object v5, v0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->replacePagesAndRenumberPageSeqs(Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagReader$OggVorbisHeaderSizes;ILcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;Ljava/nio/ByteBuffer;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    :goto_0
    return-void
.end method

.method public writeRemainingPages(ILjava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v5, v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :goto_0
    invoke-virtual {v4}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-static {v4}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->read(Ljava/nio/ByteBuffer;)Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;

    move-result-object v6
    :try_end_0
    .catch Lcom/transsion/audiotagger/audio/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getRawHeaderData()[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getRawHeaderData()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x1

    const/16 v8, 0x12

    invoke-virtual {v7, v8, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    invoke-direct {p0, v7}, Lcom/transsion/audiotagger/audio/ogg/OggVorbisTagWriter;->calculateChecksumOverPage(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v8

    invoke-virtual {v6}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v6

    add-int/2addr v8, v6

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result p1

    sget-object v6, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    array-length v6, v6

    sub-int/2addr p1, v6

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v4}, Lcom/transsion/audiotagger/audio/generic/Utils;->readThreeBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    const-string v6, "TAG"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    add-int/lit8 p0, p0, 0x3

    int-to-long p0, p0

    goto :goto_1

    :cond_0
    throw p0

    :cond_1
    const-wide/16 p0, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    add-long/2addr v6, p0

    sub-long/2addr v6, v2

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    return-void

    :cond_2
    new-instance v4, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File written counts don\'t match, file not written:origAudioLength:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ":newAudioLength:"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide p2

    add-long/2addr p2, p0

    sub-long/2addr p2, v2

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ":bytesDiscarded:"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Lcom/transsion/audiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
