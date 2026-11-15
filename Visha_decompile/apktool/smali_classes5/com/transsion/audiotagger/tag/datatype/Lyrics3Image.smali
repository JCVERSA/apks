.class public Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;
.super Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;
.source "SourceFile"


# instance fields
.field private description:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private time:Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;)V
    .locals 2

    .line 5
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;-><init>(Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->time:Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    .line 9
    new-instance v0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;

    iget-object v1, p1, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->time:Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;

    invoke-direct {v0, v1}, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;-><init>(Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->time:Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;

    .line 10
    iget-object v0, p1, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    .line 11
    iget-object p1, p1, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->time:Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;

    .line 3
    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->time:Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;

    if-nez v2, :cond_3

    iget-object v0, v0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->time:Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;

    if-eqz v0, :cond_4

    return v1

    :cond_3
    iget-object v0, v0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->time:Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;

    invoke-virtual {v2, v0}, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->time:Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->getSize()I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public getTimeStamp()Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->time:Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;

    return-object p0
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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->readString(Ljava/lang/String;I)V

    return-void
.end method

.method public readString(Ljava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_2

    if-ltz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    const-string v0, "||"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x7

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;

    const-string v0, "Time Stamp"

    invoke-direct {p2, v0}, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->time:Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;

    invoke-virtual {p2, p1}, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->readString(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Offset to image string is out of bounds: offset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", string.length()"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Image string is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->time:Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filename = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->time:Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", timestamp = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->time:Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeByteArray()[B
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->writeString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public writeString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    const-string v1, "||"

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->time:Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->time:Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->writeString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method
