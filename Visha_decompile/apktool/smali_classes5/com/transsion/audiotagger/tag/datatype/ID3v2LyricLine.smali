.class public Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;
.super Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;
.source "SourceFile"


# instance fields
.field text:Ljava/lang/String;

.field timeStamp:J


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;)V
    .locals 2

    .line 4
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;-><init>(Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;)V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->text:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->timeStamp:J

    .line 7
    iget-object v0, p1, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->text:Ljava/lang/String;

    .line 8
    iget-wide v0, p1, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->timeStamp:J

    iput-wide v0, p0, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->timeStamp:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 2
    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->text:Ljava/lang/String;

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->timeStamp:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->text:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-wide v2, p0, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->timeStamp:J

    iget-wide v4, v0, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->timeStamp:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->text:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x5

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->text:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->timeStamp:J

    return-wide v0
.end method

.method public readByteArray([BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidDataTypeException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-ltz p2, :cond_1

    array-length v0, p1

    if-ge p2, v0, :cond_1

    new-instance v0, Ljava/lang/String;

    array-length v1, p1

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x4

    sget-object v2, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, p2, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->text:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->timeStamp:J

    array-length p2, p1

    add-int/lit8 p2, p2, -0x4

    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    iget-wide v0, p0, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->timeStamp:J

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->timeStamp:J

    aget-byte v2, p1, p2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->timeStamp:J

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
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

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Byte array is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->text:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->timeStamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->timeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->text:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeByteArray()[B
    .locals 8

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->getSize()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->text:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v2, 0x1

    aput-byte v1, v0, v2

    add-int/lit8 v1, v2, 0x2

    iget-wide v4, p0, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->timeStamp:J

    const-wide/32 v6, -0x1000000

    and-long/2addr v6, v4

    const/16 p0, 0x18

    shr-long/2addr v6, p0

    long-to-int p0, v6

    int-to-byte p0, p0

    aput-byte p0, v0, v3

    add-int/lit8 p0, v2, 0x3

    const-wide/32 v6, 0xff0000

    and-long/2addr v6, v4

    const/16 v3, 0x10

    shr-long/2addr v6, v3

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v2, v2, 0x4

    const-wide/32 v6, 0xff00

    and-long/2addr v6, v4

    const/16 v1, 0x8

    shr-long/2addr v6, v1

    long-to-int v1, v6

    int-to-byte v1, v1

    aput-byte v1, v0, p0

    const-wide/16 v6, 0xff

    and-long v3, v4, v6

    long-to-int p0, v3

    int-to-byte p0, p0

    aput-byte p0, v0, v2

    return-object v0
.end method
