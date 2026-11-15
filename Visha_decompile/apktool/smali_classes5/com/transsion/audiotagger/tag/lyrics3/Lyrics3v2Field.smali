.class public Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;
.super Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/TagException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 7
    const-string v1, "USLT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 8
    new-instance v0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyLYR;

    invoke-direct {v0, v2}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyLYR;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    .line 9
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyUSLT;

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyLYR;->addLyric(Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyUSLT;)V

    goto/16 :goto_0

    .line 10
    :cond_0
    const-string v1, "SYLT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    new-instance v0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyLYR;

    invoke-direct {v0, v2}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyLYR;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    .line 12
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodySYLT;

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyLYR;->addLyric(Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodySYLT;)V

    goto/16 :goto_0

    .line 13
    :cond_1
    const-string v1, "COMM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyCOMM;->getText()Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance v0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyINF;

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyINF;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    goto/16 :goto_0

    .line 16
    :cond_2
    const-string v1, "TCOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    .line 18
    new-instance v0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyAUT;

    invoke-direct {v0, v2}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyAUT;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    if-eqz p1, :cond_6

    .line 19
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 20
    new-instance v0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyAUT;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyAUT;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    goto/16 :goto_0

    .line 21
    :cond_3
    const-string v1, "TALB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 22
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    if-eqz p1, :cond_6

    .line 23
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 24
    new-instance v0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyEAL;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyEAL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    goto :goto_0

    .line 25
    :cond_4
    const-string v1, "TPE1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 26
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    if-eqz p1, :cond_6

    .line 27
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 28
    new-instance v0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyEAR;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyEAR;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    goto :goto_0

    .line 29
    :cond_5
    const-string v1, "TIT2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 30
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    if-eqz p1, :cond_6

    .line 31
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 32
    new-instance v0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyETT;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyETT;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    :cond_6
    :goto_0
    return-void

    .line 33
    :cond_7
    new-instance p0, Lcom/transsion/audiotagger/tag/TagException;

    const-string p1, "Cannot createField Lyrics3v2 field from given ID3v2 frame"

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/TagException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidTagException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private readBody(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidTagException;
        }
    .end annotation

    const-string p0, "AUT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyAUT;

    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyAUT;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    const-string p0, "EAL"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyEAL;

    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyEAL;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_1
    const-string p0, "EAR"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyEAR;

    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyEAR;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_2
    const-string p0, "ETT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyETT;

    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyETT;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_3
    const-string p0, "IMG"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;

    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIMG;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_4
    const-string p0, "IND"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIND;

    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIND;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_5
    const-string p0, "INF"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyINF;

    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyINF;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_6
    const-string p0, "LYR"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyLYR;

    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyLYR;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_7
    new-instance p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyUnsupported;

    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyUnsupported;-><init>(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidTagException;
        }
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [B

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v3}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Fields;->isLyrics3v2FieldIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v3, p1}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;->readBody(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    return-void

    :cond_1
    new-instance p0, Lcom/transsion/audiotagger/tag/InvalidTagException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not a valid ID3v2.4 frame"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getSize()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isLyrics3SaveEmptyField()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [B

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Ljava/io/RandomAccessFile;->write([BII)V

    :cond_2
    return-void
.end method
