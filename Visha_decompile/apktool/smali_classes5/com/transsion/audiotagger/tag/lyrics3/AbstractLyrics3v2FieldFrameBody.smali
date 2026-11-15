.class public abstract Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;
.super Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    return-void
.end method


# virtual methods
.method public read(Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidTagException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getSize()I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    if-gt p1, v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    invoke-virtual {v2, v1, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->readByteArray([BI)V

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->getSize()I

    move-result v2

    add-int/2addr p1, v2

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/InvalidTagException;

    const-string p1, "Invalid size for Frame Body"

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public readHeader(Ljava/io/RandomAccessFile;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidTagException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x5

    new-array v0, p0, [B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0}, Ljava/lang/String;-><init>([BII)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isLyrics3KeepEmptyFieldIfRead()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/InvalidTagException;

    const-string p1, "Lyircs3v2 Field has size of zero."

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return p0
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->writeByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeHeader(Ljava/io/RandomAccessFile;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x5

    new-array v0, p2, [B

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getSize()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x5

    if-ge v2, v3, :cond_0

    const/16 v3, 0x30

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr p2, v2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    add-int v2, v1, p2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    return-void
.end method
