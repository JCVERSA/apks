.class public Lcom/transsion/audiotagger/audio/asf/io/AsfStreamer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private copyChunk(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT64(Ljava/io/InputStream;)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getBytes()[B

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v0, v1, p3}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->writeUINT64(JLjava/io/OutputStream;)V

    const-wide/16 p0, 0x18

    sub-long/2addr v0, p0

    invoke-static {p2, p3, v0, v1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    return-void
.end method

.method private modifyFileHeader(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object p0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_FILE:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getBytes()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT64(Ljava/io/InputStream;)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->writeUINT64(JLjava/io/OutputStream;)V

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getBytes()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT64(Ljava/io/InputStream;)J

    move-result-wide v2

    add-long/2addr v2, p3

    invoke-static {v2, v3, p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->writeUINT64(JLjava/io/OutputStream;)V

    const-wide/16 p3, 0x30

    sub-long/2addr v0, p3

    invoke-static {p1, p2, v0, v1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    return-void
.end method


# virtual methods
.method public createModifiedCopy(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/util/List;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/asf/io/ChunkModifier;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_0

    invoke-interface {v6, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v3

    sget-object v7, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_HEADER:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    invoke-virtual {v7, v3}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static/range {p1 .. p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT64(Ljava/io/InputStream;)J

    move-result-wide v7

    invoke-static/range {p1 .. p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v11

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    const/4 v13, 0x2

    new-array v13, v13, [B

    aput-byte v11, v13, v4

    aput-byte v12, v13, v5

    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-wide/16 v14, 0x0

    move-wide/from16 v16, v14

    move-wide/from16 v18, v16

    const/4 v4, 0x0

    :goto_0
    cmp-long v20, v14, v9

    if-gez v20, :cond_5

    invoke-static/range {p1 .. p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v12

    sget-object v5, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_FILE:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    invoke-virtual {v5, v12}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v5, v13

    invoke-static/range {p1 .. p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT64(Ljava/io/InputStream;)J

    move-result-wide v12

    invoke-static {v12, v13, v4}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->writeUINT64(JLjava/io/OutputStream;)V

    const-wide/16 v21, 0x18

    sub-long v12, v12, v21

    invoke-static {v1, v4, v12, v13}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-wide/from16 v24, v9

    const/4 v4, 0x1

    goto :goto_3

    :cond_1
    move-object v5, v13

    move-object/from16 v22, v4

    const/4 v13, 0x0

    const/16 v21, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-ge v13, v4, :cond_3

    if-nez v21, :cond_3

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/audiotagger/audio/asf/io/ChunkModifier;

    invoke-interface {v4, v12}, Lcom/transsion/audiotagger/audio/asf/io/ChunkModifier;->isApplicable(Lcom/transsion/audiotagger/audio/asf/data/GUID;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/audiotagger/audio/asf/io/ChunkModifier;

    invoke-interface {v4, v12, v1, v11}, Lcom/transsion/audiotagger/audio/asf/io/ChunkModifier;->modify(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;

    move-result-object v4

    move-object/from16 v23, v5

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;->getChunkCountDifference()I

    move-result v5

    move-wide/from16 v24, v9

    int-to-long v9, v5

    add-long v18, v18, v9

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;->getByteDifference()J

    move-result-wide v4

    add-long v16, v16, v4

    invoke-interface {v6, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v4, 0x1

    const/16 v21, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v23, v5

    move-wide/from16 v24, v9

    const/4 v4, 0x1

    :goto_2
    add-int/2addr v13, v4

    move-object/from16 v5, v23

    move-wide/from16 v9, v24

    goto :goto_1

    :cond_3
    move-object/from16 v23, v5

    move-wide/from16 v24, v9

    const/4 v4, 0x1

    if-nez v21, :cond_4

    invoke-direct {v0, v12, v1, v11}, Lcom/transsion/audiotagger/audio/asf/io/AsfStreamer;->copyChunk(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    :cond_4
    :goto_3
    const-wide/16 v9, 0x1

    add-long/2addr v14, v9

    move v5, v4

    move-object/from16 v4, v22

    move-object/from16 v13, v23

    move-wide/from16 v9, v24

    goto/16 :goto_0

    :cond_5
    move-object/from16 v22, v4

    move-wide/from16 v24, v9

    move-object/from16 v23, v13

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide/from16 v5, v16

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/transsion/audiotagger/audio/asf/io/ChunkModifier;

    const/4 v10, 0x0

    invoke-interface {v9, v10, v10, v11}, Lcom/transsion/audiotagger/audio/asf/io/ChunkModifier;->modify(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;

    move-result-object v9

    invoke-virtual {v9}, Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;->getChunkCountDifference()I

    move-result v12

    int-to-long v12, v12

    add-long v18, v18, v12

    invoke-virtual {v9}, Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;->getByteDifference()J

    move-result-wide v12

    add-long/2addr v5, v12

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    add-long/2addr v7, v5

    invoke-static {v7, v8, v2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->writeUINT64(JLjava/io/OutputStream;)V

    add-long v9, v24, v18

    invoke-static {v9, v10, v2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->writeUINT32(JLjava/io/OutputStream;)V

    move-object/from16 v3, v23

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    new-instance v3, Ljava/io/ByteArrayInputStream;

    move-object/from16 v12, v22

    invoke-direct {v3, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v3, v2, v5, v6}, Lcom/transsion/audiotagger/audio/asf/io/AsfStreamer;->modifyFileHeader(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-static/range {p1 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->flush(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ASF header object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
