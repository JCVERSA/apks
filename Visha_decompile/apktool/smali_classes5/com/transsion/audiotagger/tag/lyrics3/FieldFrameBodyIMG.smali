.class public Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;
.super Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;
.source "SourceFile"


# instance fields
.field private images:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;)V
    .locals 4

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>(Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p1, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6
    iget-object v1, p1, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;

    .line 7
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    new-instance v3, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;

    invoke-direct {v3, v1}, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;-><init>(Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    .line 10
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;->readString(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidTagException;
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private readString(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Fields;->CRLF:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    const-string v2, "Image"

    if-ltz v0, :cond_0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;

    invoke-direct {v3, v2, p0}, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v3, v1}, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->setFilename(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Fields;->CRLF:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;

    invoke-direct {v0, v2, p0}, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;-><init>(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, p1}, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->setFilename(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private writeString()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, ""

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->writeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Fields;->CRLF:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v1, 0x2

    if-le p0, v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public addImage(Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 0

    const-string p0, "IMG"

    return-object p0
.end method

.method public getSize()I
    .locals 2

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;->writeString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isSubsetOf(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;

    iget-object v0, v0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_2
    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->isSubsetOf(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/transsion/audiotagger/tag/datatype/Lyrics3Image;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidTagException;
        }
    .end annotation

    const/4 v0, 0x5

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v2, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isLyrics3KeepEmptyFieldIfRead()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/InvalidTagException;

    const-string p1, "Lyircs3v2 Field has size of zero."

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;->readString(Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;->readString(Ljava/lang/String;)V

    return-void
.end method

.method public setupObjectList()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    new-array v1, v0, [B

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;->getSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x5

    if-ge v5, v6, :cond_0

    const/16 v6, 0x30

    aput-byte v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x5

    move v6, v4

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    add-int v7, v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1, v4, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    if-lez v2, :cond_3

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;->writeString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v4, v1, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_3
    return-void
.end method
