.class public Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;
.super Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final SIZE:I = 0x5


# instance fields
.field private timestamp:Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;

.field private type:Lcom/transsion/audiotagger/tag/datatype/NumberHashMap;


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;-><init>(Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;)V

    .line 2
    new-instance v0, Lcom/transsion/audiotagger/tag/datatype/NumberHashMap;

    const/4 v1, 0x1

    const-string v2, "TypeOfEvent"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/transsion/audiotagger/tag/datatype/NumberHashMap;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;I)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->type:Lcom/transsion/audiotagger/tag/datatype/NumberHashMap;

    .line 3
    new-instance v0, Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;

    const-string v1, "DateTime"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;I)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->timestamp:Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;

    .line 4
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->type:Lcom/transsion/audiotagger/tag/datatype/NumberHashMap;

    iget-object v1, p1, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->type:Lcom/transsion/audiotagger/tag/datatype/NumberHashMap;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/tag/datatype/NumberHashMap;->setValue(Ljava/lang/Object;)V

    .line 5
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->timestamp:Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;

    iget-object p1, p1, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->timestamp:Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V
    .locals 6

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;IJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;IJ)V
    .locals 3

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 8
    new-instance p1, Lcom/transsion/audiotagger/tag/datatype/NumberHashMap;

    const/4 v0, 0x1

    const-string v1, "TypeOfEvent"

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2, v0}, Lcom/transsion/audiotagger/tag/datatype/NumberHashMap;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;I)V

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->type:Lcom/transsion/audiotagger/tag/datatype/NumberHashMap;

    .line 9
    new-instance p1, Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;

    const-string v0, "DateTime"

    const/4 v1, 0x4

    invoke-direct {p1, v0, v2, v1}, Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;I)V

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->timestamp:Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;

    .line 10
    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->setBody(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 11
    iget-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->type:Lcom/transsion/audiotagger/tag/datatype/NumberHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/audiotagger/tag/datatype/NumberHashMap;->setValue(Ljava/lang/Object;)V

    .line 12
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->timestamp:Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;

    invoke-direct {v0, p0}, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;-><init>(Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->getType()I

    move-result v2

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->getType()I

    move-result v3

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public getSize()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getTimestamp()J
    .locals 2

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->timestamp:Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->type:Lcom/transsion/audiotagger/tag/datatype/NumberHashMap;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->type:Lcom/transsion/audiotagger/tag/datatype/NumberHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->timestamp:Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public readByteArray([BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidDataTypeException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->getSize()I

    move-result v0

    sget-object v1, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    array-length v1, p1

    sub-int/2addr v1, v0

    if-gt p2, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->type:Lcom/transsion/audiotagger/tag/datatype/NumberHashMap;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/audiotagger/tag/datatype/NumberHashMap;->readByteArray([BI)V

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->type:Lcom/transsion/audiotagger/tag/datatype/NumberHashMap;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;->getSize()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->timestamp:Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;->readByteArray([BI)V

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->timestamp:Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;->getSize()I

    return-void

    :cond_0
    sget-object p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    const-string p1, "Invalid size for FrameBody"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/audiotagger/tag/InvalidDataTypeException;

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBody(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->setBody(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->type:Lcom/transsion/audiotagger/tag/datatype/NumberHashMap;

    invoke-virtual {v0, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->setBody(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->timestamp:Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->setBody(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->timestamp:Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setType(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->type:Lcom/transsion/audiotagger/tag/datatype/NumberHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/NumberHashMap;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/valuepair/EventTimingTypes;->getInstanceOf()Lcom/transsion/audiotagger/tag/id3/valuepair/EventTimingTypes;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/audiotagger/tag/datatype/AbstractIntStringValuePair;->getValueForId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeByteArray()[B
    .locals 4

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->type:Lcom/transsion/audiotagger/tag/datatype/NumberHashMap;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;->writeByteArray()[B

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/EventTimingCode;->timestamp:Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/NumberFixedLength;->writeByteArray()[B

    move-result-object p0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    array-length v1, v0

    array-length v2, p0

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v2, p0

    invoke-static {p0, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
