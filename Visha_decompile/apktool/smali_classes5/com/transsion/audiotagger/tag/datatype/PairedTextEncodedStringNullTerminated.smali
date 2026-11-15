.class public Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;
.super Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;)V
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
    new-instance p1, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    invoke-direct {p1}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;-><init>()V

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 2
    new-instance p1, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    invoke-direct {p1}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;-><init>()V

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public canBeEncoded()Z
    .locals 5

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    invoke-static {v0}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->a(Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/datatype/Pair;

    new-instance v2, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringNullTerminated;

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/datatype/Pair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/datatype/AbstractString;->canBeEncoded()Z

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

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/transsion/audiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->size:I

    return p0
.end method

.method public getValue()Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast p0, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated;->getValue()Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object p0

    return-object p0
.end method

.method public readByteArray([BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidDataTypeException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading PairTextEncodedStringNullTerminated from array from offset:"

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

    iget v1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->size:I

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/datatype/AbstractString;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->size:I

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/datatype/AbstractString;->getSize()I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/datatype/AbstractString;->getSize()I

    move-result v1
    :try_end_0
    .catch Lcom/transsion/audiotagger/tag/InvalidDataTypeException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_1
    new-instance v1, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringNullTerminated;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-direct {v1, v2, v3}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v1, p1, p2}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringNullTerminated;->readByteArray([BI)V

    iget v2, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->size:I

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/datatype/AbstractString;->getSize()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->size:I

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/datatype/AbstractString;->getSize()I

    move-result v2

    add-int/2addr p2, v2

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/datatype/AbstractString;->getSize()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/transsion/audiotagger/tag/InvalidDataTypeException; {:try_start_1 .. :try_end_1} :catch_0

    iget v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->size:I

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    const-string p1, "No null terminated Strings found"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/audiotagger/tag/InvalidDataTypeException;

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    :try_start_2
    array-length v1, p1

    if-lt p2, v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringSizeTerminated;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-direct {v1, v2, v3}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringSizeTerminated;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v1, p1, p2}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringSizeTerminated;->readByteArray([BI)V

    iget p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->size:I

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/datatype/AbstractString;->getSize()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->size:I

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/datatype/AbstractString;->getSize()I

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/datatype/AbstractString;->getSize()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/transsion/audiotagger/tag/InvalidDataTypeException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_1
    sget-object p1, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Read  PairTextEncodedStringNullTerminated:"

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

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeByteArray()[B
    .locals 8

    sget-object v0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    const-string v1, "Writing PairTextEncodedStringNullTerminated"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    invoke-static {v1}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->a(Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/audiotagger/tag/datatype/Pair;

    new-instance v4, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringNullTerminated;

    iget-object v5, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/datatype/Pair;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringNullTerminated;->writeByteArray()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Lcom/transsion/audiotagger/tag/datatype/AbstractString;->getSize()I

    move-result v4

    add-int/2addr v2, v4

    new-instance v4, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringNullTerminated;

    iget-object v5, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/datatype/Pair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringNullTerminated;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/transsion/audiotagger/tag/datatype/TextEncodedStringNullTerminated;->writeByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Lcom/transsion/audiotagger/tag/datatype/AbstractString;->getSize()I

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

    const-string v1, "Written PairTextEncodedStringNullTerminated"

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
