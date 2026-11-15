.class public Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;
.super Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;
.source "SourceFile"


# instance fields
.field private lyric:Ljava/lang/String;

.field private timeStamp:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;)V
    .locals 3

    .line 4
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;-><init>(Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;)V

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p1, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 9
    new-instance v1, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;

    iget-object v2, p1, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;

    invoke-direct {v1, v2}, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;-><init>(Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;)V

    .line 10
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 2
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    .line 3
    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addLyric(Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    return-void
.end method

.method public addLyric(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    return-void
.end method

.method public addTimeStamp(Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    iget-object v0, v0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractDataType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getLyric()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public getTimeStamp()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public hasTimeStamp()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->readString(Ljava/lang/String;I)V

    return-void
.end method

.method public readString(Ljava/lang/String;I)V
    .locals 4

    if-eqz p1, :cond_2

    if-ltz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    const-string v0, "["

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_0

    const-string p2, "]"

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    new-instance v2, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;

    const-string v3, "Time Stamp"

    invoke-direct {v2, v3}, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->readString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Offset to line is out of bounds: offset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", line.length()"

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

    const-string p1, "Image is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLyric(Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/datatype/ID3v2LyricLine;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    return-void
.end method

.method public setLyric(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeStamp = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lyric = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeByteArray()[B
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->writeString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public writeString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->timeStamp:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/datatype/Lyrics3TimeStamp;->writeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;->lyric:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
