.class public Lcom/transsion/audiotagger/audio/asf/io/AsfExtHeaderModifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/audio/asf/io/ChunkModifier;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final modifierList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/asf/io/ChunkModifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/asf/io/ChunkModifier;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/asf/io/AsfExtHeaderModifier;->modifierList:Ljava/util/List;

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


# virtual methods
.method public isApplicable(Lcom/transsion/audiotagger/audio/asf/data/GUID;)Z
    .locals 0

    sget-object p0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_HEADER_EXTENSION:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public modify(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/transsion/audiotagger/audio/asf/io/AsfExtHeaderModifier;->modifierList:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v4, p1

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v6

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v7

    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v10, Lcom/transsion/audiotagger/audio/asf/io/CountingInputStream;

    move-object/from16 v11, p2

    invoke-direct {v10, v11}, Lcom/transsion/audiotagger/audio/asf/io/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v11, 0x0

    :goto_0
    invoke-virtual {v10}, Lcom/transsion/audiotagger/audio/asf/io/CountingInputStream;->getReadCount()J

    move-result-wide v13

    cmp-long v13, v13, v7

    const/4 v14, 0x0

    if-gez v13, :cond_3

    invoke-static {v10}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v13

    move-wide/from16 v16, v7

    move v15, v14

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v14, v7, :cond_1

    if-nez v15, :cond_1

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/audiotagger/audio/asf/io/ChunkModifier;

    invoke-interface {v7, v13}, Lcom/transsion/audiotagger/audio/asf/io/ChunkModifier;->isApplicable(Lcom/transsion/audiotagger/audio/asf/data/GUID;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/audiotagger/audio/asf/io/ChunkModifier;

    invoke-interface {v7, v13, v10, v9}, Lcom/transsion/audiotagger/audio/asf/io/ChunkModifier;->modify(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;->getByteDifference()J

    move-result-wide v18

    add-long v11, v11, v18

    invoke-virtual {v7}, Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;->getOccuredGUIDs()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v7, 0x1

    move v15, v7

    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    if-nez v15, :cond_2

    invoke-interface {v3, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v13, v10, v9}, Lcom/transsion/audiotagger/audio/asf/io/AsfExtHeaderModifier;->copyChunk(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    :cond_2
    move-wide/from16 v7, v16

    goto :goto_0

    :cond_3
    move-wide/from16 v16, v7

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/audiotagger/audio/asf/io/ChunkModifier;

    const/4 v7, 0x0

    invoke-interface {v2, v7, v7, v9}, Lcom/transsion/audiotagger/audio/asf/io/ChunkModifier;->modify(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;->getByteDifference()J

    move-result-wide v7

    add-long/2addr v11, v7

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;->getOccuredGUIDs()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_HEADER_EXTENSION:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v11, v12}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8, v1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->writeUINT64(JLjava/io/OutputStream;)V

    invoke-virtual {v5}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v6, v1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    add-long v7, v16, v11

    invoke-static {v7, v8, v1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->writeUINT32(JLjava/io/OutputStream;)V

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    new-instance v0, Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;

    invoke-direct {v0, v14, v11, v12, v3}, Lcom/transsion/audiotagger/audio/asf/io/ModificationResult;-><init>(IJLjava/util/Set;)V

    return-object v0
.end method
