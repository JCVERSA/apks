.class public Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;
.super Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;
.source "SourceFile"


# instance fields
.field private minute:J

.field private second:J


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;)V
    .locals 2

    .line 7
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;-><init>(Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;)V

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->minute:J

    .line 9
    iput-wide v0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->second:J

    .line 10
    iget-wide v0, p1, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->minute:J

    iput-wide v0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->minute:J

    .line 11
    iget-wide v0, p1, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->second:J

    iput-wide v0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->second:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->minute:J

    .line 6
    iput-wide v0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->second:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->minute:J

    .line 3
    iput-wide p1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->second:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;

    iget-wide v2, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->minute:J

    iget-wide v4, v0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->minute:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-wide v2, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->second:J

    iget-wide v4, v0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->second:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getMinute()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->minute:J

    return-wide v0
.end method

.method public getSecond()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->second:J

    return-wide v0
.end method

.method public getSize()I
    .locals 0

    const/4 p0, 0x7

    return p0
.end method

.method public readByteArray([BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidDataTypeException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->readString(Ljava/lang/String;I)V

    return-void
.end method

.method public readString(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public readString(Ljava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_2

    if-ltz p2, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x7

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    const/4 v0, 0x3

    .line 5
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->minute:J

    const/4 p2, 0x4

    const/4 v0, 0x6

    .line 6
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->second:J

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    .line 7
    iput-wide p1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->minute:J

    .line 8
    iput-wide p1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->second:J

    :goto_0
    return-void

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Offset to timeStamp is out of bounds: offset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", timeStamp.length()"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Image is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinute(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->minute:J

    return-void
.end method

.method public setSecond(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->second:J

    return-void
.end method

.method public setTimeStamp(JB)V
    .locals 4

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    const-wide/16 v0, 0x3c

    div-long v2, p1, v0

    iput-wide v2, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->minute:J

    rem-long/2addr p1, v0

    iput-wide p1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->second:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->writeString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeByteArray()[B
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->writeString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public writeString()Ljava/lang/String;
    .locals 11

    iget-wide v0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->minute:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/16 v5, 0x30

    const-wide/16 v6, 0xa

    const-string v8, "00"

    const-string v9, "["

    if-gez v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    cmp-long v0, v0, v6

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->minute:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v9, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->second:J

    cmp-long v1, v9, v2

    if-gez v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    cmp-long v1, v9, v6

    if-gez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->second:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
