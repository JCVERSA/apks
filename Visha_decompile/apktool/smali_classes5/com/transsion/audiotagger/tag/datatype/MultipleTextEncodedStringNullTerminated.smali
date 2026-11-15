.class public Lcom/transsion/audiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated;
.super Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated$Values;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;-><init>(Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringSizeTerminated;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;-><init>(Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;)V

    .line 4
    new-instance p1, Lcom/transsion/audiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated$Values;

    invoke-direct {p1}, Lcom/transsion/audiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated$Values;-><init>()V

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 2
    new-instance p1, Lcom/transsion/audiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated$Values;

    invoke-direct {p1}, Lcom/transsion/audiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated$Values;-><init>()V

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public canBeEncoded()Z
    .locals 5

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/audiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated$Values;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated$Values;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringNullTerminated;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/datatype/AbstractString;->canBeEncoded()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->size:I

    return p0
.end method

.method public readByteArray([BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidDataTypeException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading MultipleTextEncodedStringNullTerminated from array from offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :goto_0
    :try_start_0
    new-instance v0, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringNullTerminated;

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, p1, p2}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringNullTerminated;->readByteArray([BI)V

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/datatype/AbstractString;->getSize()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/audiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated$Values;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/audiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated$Values;->add(Ljava/lang/String;)V

    iget v1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->size:I

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/datatype/AbstractString;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->size:I

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/datatype/AbstractString;->getSize()I

    move-result v0
    :try_end_0
    .catch Lcom/transsion/audiotagger/tag/InvalidDataTypeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p2, v0

    iget v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->size:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    const-string p1, "No null terminated Strings found"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/audiotagger/tag/InvalidDataTypeException;

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    :goto_1
    sget-object p1, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Read  MultipleTextEncodedStringNullTerminated:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " size:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->size:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return-void
.end method

.method public writeByteArray()[B
    .locals 7

    sget-object v0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    const-string v1, "Writing MultipleTextEncodedStringNullTerminated"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/audiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated$Values;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated$Values;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringNullTerminated;

    iget-object v4, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringNullTerminated;->writeByteArray()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/datatype/AbstractString;->getSize()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    iput v2, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->size:I

    sget-object p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    const-string v1, "Written MultipleTextEncodedStringNullTerminated"

    invoke-virtual {p0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :goto_1
    sget-object v0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "IOException in MultipleTextEncodedStringNullTerminated when writing byte array"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
