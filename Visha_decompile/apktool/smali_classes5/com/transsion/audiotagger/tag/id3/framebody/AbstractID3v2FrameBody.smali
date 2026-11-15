.class public abstract Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;
.super Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;
.source "SourceFile"


# static fields
.field protected static final TYPE_BODY:Ljava/lang/String; = "body"


# instance fields
.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidTagException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;-><init>()V

    .line 4
    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->setSize(I)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public createStructure()V
    .locals 3

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, ""

    const-string v2, "body"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->createStructure()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->size:I

    return p0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidTagException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->getSize()I

    move-result v0

    sget-object v1, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading body for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    new-array v1, v0, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    sget-object v3, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    if-gt p1, v0, :cond_0

    :try_start_0
    invoke-virtual {v2, v1, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->readByteArray([BI)V
    :try_end_0
    .catch Lcom/transsion/audiotagger/tag/InvalidDataTypeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->getSize()I

    move-result v2

    add-int/2addr p1, v2

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Problem reading datatype within Frame Body:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    throw p0

    :cond_0
    sget-object p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    const-string p1, "Invalid Size for FrameBody"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/audiotagger/tag/InvalidFrameException;

    const-string p1, "Invalid size for Frame Body"

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public setSize()V
    .locals 3

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->size:I

    .line 3
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    .line 4
    iget v2, p0, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->size:I

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->getSize()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->size:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->size:I

    return-void
.end method

.method public write(Ljava/io/ByteArrayOutputStream;)V
    .locals 3

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing frame body for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":Est Size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->writeByteArray()[B

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->setSize()V

    sget-object p1, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Written frame body for"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":Real Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->size:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    return-void
.end method
