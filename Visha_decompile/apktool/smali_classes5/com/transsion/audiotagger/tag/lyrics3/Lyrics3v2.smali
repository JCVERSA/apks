.class public Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;
.super Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3;
.source "SourceFile"


# instance fields
.field private fieldMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/AbstractTag;)V
    .locals 3

    .line 10
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    if-eqz p1, :cond_2

    .line 12
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;

    if-nez v0, :cond_1

    .line 13
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;

    if-eqz v0, :cond_0

    .line 14
    check-cast p1, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;

    .line 15
    new-instance v0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;

    new-instance v1, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyLYR;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyLYR;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;-><init>(Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V

    .line 16
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 17
    :cond_0
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractTag;)V

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 18
    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    :try_start_0
    new-instance v0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;

    invoke-direct {v0, v1}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 20
    iget-object v1, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/transsion/audiotagger/tag/TagException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 21
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;)V
    .locals 4

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3;-><init>(Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3;)V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    .line 5
    iget-object v0, p1, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 6
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    new-instance v2, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;

    iget-object v3, p1, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;

    invoke-direct {v2, v3}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;-><init>(Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;)V

    .line 9
    iget-object v3, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/TagNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    .line 24
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->read(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lcom/transsion/audiotagger/tag/TagException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private seekSize(Ljava/nio/ByteBuffer;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTag;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getField(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;

    return-object p0
.end method

.method public getFieldCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    return p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 0

    const-string p0, "Lyrics3v2.00"

    return-object p0
.end method

.method public getSize()I
    .locals 2

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0xb

    return v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/TagException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->seek(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->seekSize(Ljava/nio/ByteBuffer;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->seek(Ljava/nio/ByteBuffer;)Z

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    :catch_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/lit8 v2, v0, -0xb

    if-ge v1, v2, :cond_0

    :try_start_0
    new-instance v1, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;

    invoke-direct {v1, p1}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->setField(Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;)V
    :try_end_0
    .catch Lcom/transsion/audiotagger/tag/InvalidTagException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lcom/transsion/audiotagger/tag/TagNotFoundException;

    const-string p1, "Lyrics3v2.00 Tag Not Found"

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeField(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public seek(Ljava/io/RandomAccessFile;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p0, 0xb

    .line 2
    new-array v0, p0, [B

    .line 3
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x89

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v1, 0x0

    const/16 v2, 0x9

    .line 4
    invoke-virtual {p1, v0, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 5
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 6
    const-string v4, "LYRICS200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x9

    sub-long/2addr v5, v7

    invoke-virtual {p1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 9
    invoke-virtual {p1, v0, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 10
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 11
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    :goto_0
    const-wide/16 v4, 0xf

    sub-long/2addr v2, v4

    .line 13
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v4, 0x6

    .line 14
    invoke-virtual {p1, v0, v1, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 15
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 16
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 17
    invoke-virtual {p1, v0, v1, p0}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 18
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0}, Ljava/lang/String;-><init>([BII)V

    .line 19
    const-string p0, "LYRICSBEGIN"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public seek(Ljava/nio/ByteBuffer;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public setField(Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->getSize()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public updateField(Ljava/lang/String;)V
    .locals 3

    const-string v0, "IND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    const-string v0, "LYR"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyLYR;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyLYR;->hasTimeStamp()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;

    new-instance v2, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIND;

    invoke-direct {v2, p1, v0}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyIND;-><init>(ZZ)V

    invoke-direct {v1, v2}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;-><init>(Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V

    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->setField(Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;)V

    :cond_1
    return-void
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xf

    new-array v0, v0, [B

    new-instance v1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    invoke-direct {v1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;-><init>()V

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3;->delete(Ljava/io/RandomAccessFile;)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0xb

    if-ge v4, v5, :cond_0

    const-string v5, "LYRICSBEGIN"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v3, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    const-string v4, "IND"

    invoke-virtual {p0, v4}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->updateField(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;

    invoke-virtual {v5, p1}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;->write(Ljava/io/RandomAccessFile;)V

    iget-object v5, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;

    invoke-virtual {v6}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getLyrics3SaveField(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz v8, :cond_1

    invoke-virtual {v6, p1}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;->write(Ljava/io/RandomAccessFile;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->getSize()I

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    move v1, v3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x6

    if-ge v1, v2, :cond_3

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x6

    move v2, v3

    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    add-int v4, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr v1, p0

    move p0, v3

    :goto_4
    const/16 v2, 0x9

    if-ge p0, v2, :cond_5

    add-int v2, p0, v1

    const-string v4, "LYRICS200"

    invoke-virtual {v4, p0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_5
    add-int/2addr v1, v2

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method
