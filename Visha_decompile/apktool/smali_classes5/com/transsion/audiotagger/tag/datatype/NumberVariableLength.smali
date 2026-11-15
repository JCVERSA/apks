.class public Lcom/transsion/audiotagger/tag/datatype/NumberVariableLength;
.super Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;
.source "SourceFile"


# static fields
.field private static final MAXIMUM_NO_OF_DIGITS:I = 0x8

.field private static final MINIMUM_NO_OF_DIGITS:I = 0x1


# instance fields
.field minLength:I


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/tag/datatype/NumberVariableLength;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;-><init>(Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;)V

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/transsion/audiotagger/tag/datatype/NumberVariableLength;->minLength:I

    .line 5
    iget p1, p1, Lcom/transsion/audiotagger/tag/datatype/NumberVariableLength;->minLength:I

    iput p1, p0, Lcom/transsion/audiotagger/tag/datatype/NumberVariableLength;->minLength:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 2
    iput p3, p0, Lcom/transsion/audiotagger/tag/datatype/NumberVariableLength;->minLength:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/datatype/NumberVariableLength;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/transsion/audiotagger/tag/datatype/NumberVariableLength;

    iget v2, p0, Lcom/transsion/audiotagger/tag/datatype/NumberVariableLength;->minLength:I

    iget v0, v0, Lcom/transsion/audiotagger/tag/datatype/NumberVariableLength;->minLength:I

    if-ne v2, v0, :cond_1

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getMaximumLenth()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public getMinimumLength()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/tag/datatype/NumberVariableLength;->minLength:I

    return p0
.end method

.method public getSize()I
    .locals 6

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {v0}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->getWholeNumber(Ljava/lang/Object;)J

    move-result-wide v2

    const/4 v0, 0x1

    :goto_0
    const/16 v4, 0x8

    if-gt v0, v4, :cond_2

    long-to-int v5, v2

    int-to-byte v5, v5

    and-int/lit16 v5, v5, 0xff

    if-eqz v5, :cond_1

    move v1, v0

    :cond_1
    shr-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/transsion/audiotagger/tag/datatype/NumberVariableLength;->minLength:I

    if-le p0, v1, :cond_3

    move v1, p0

    :cond_3
    return v1
.end method

.method public readByteArray([BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidDataTypeException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-ltz p2, :cond_3

    array-length v0, p1

    const-wide/16 v1, 0x0

    if-lt p2, v0, :cond_1

    iget v0, p0, Lcom/transsion/audiotagger/tag/datatype/NumberVariableLength;->minLength:I

    if-nez v0, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/InvalidDataTypeException;

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

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_2

    const/16 v0, 0x8

    shl-long v0, v1, v0

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long v1, v0, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "negativer offset into an array offset:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Byte array is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinimumSize(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/transsion/audiotagger/tag/datatype/NumberVariableLength;->minLength:I

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeByteArray()[B
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/NumberVariableLength;->getSize()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    invoke-static {p0}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->getWholeNumber(Ljava/lang/Object;)J

    move-result-wide v1

    new-array p0, v0, [B

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    const-wide/16 v3, 0xff

    and-long/2addr v3, v1

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    const/16 v3, 0x8

    shr-long/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method
