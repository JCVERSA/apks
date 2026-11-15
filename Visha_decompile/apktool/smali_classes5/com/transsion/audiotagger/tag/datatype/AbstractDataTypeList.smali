.class public abstract Lcom/transsion/audiotagger/tag/datatype/AbstractDataTypeList;
.super Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;",
        ">",
        "Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/tag/datatype/AbstractDataTypeList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/audiotagger/tag/datatype/AbstractDataTypeList<",
            "TT;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;-><init>(Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataTypeList;->setValue(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public abstract createListElement()Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getSize()I
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataTypeList;->getValue()Ljava/util/List;

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

    check-cast v1, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataTypeList;->getValue()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataTypeList;->getValue()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataTypeList;->getValue()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public readByteArray([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidDataTypeException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-ltz p2, :cond_2

    array-length v0, p1

    if-lt p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataTypeList;->getValue()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    :cond_0
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataTypeList;->createListElement()Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->readByteArray([BI)V

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->setBody(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataTypeList;->getValue()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->getSize()I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Offset to byte array is out of bounds: offset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", array.length = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Byte array is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setValue(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    :goto_0
    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataTypeList;->getValue()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataTypeList;->getValue()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "{}"

    :goto_0
    return-object p0
.end method

.method public writeByteArray()[B
    .locals 5

    sget-object v0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing DataTypeList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataTypeList;->getSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataTypeList;->getValue()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->writeByteArray()[B

    move-result-object v3

    array-length v4, v3

    invoke-static {v3, v1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method
