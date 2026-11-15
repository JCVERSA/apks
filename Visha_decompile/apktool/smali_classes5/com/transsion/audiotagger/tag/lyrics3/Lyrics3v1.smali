.class public Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;
.super Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3;
.source "SourceFile"


# instance fields
.field private lyric:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/AbstractTag;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 8
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;

    if-nez v0, :cond_1

    .line 9
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;

    if-eqz v0, :cond_0

    .line 10
    check-cast p1, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractTag;)V

    move-object p1, v0

    .line 12
    :goto_0
    const-string v0, "LYR"

    invoke-virtual {p1, v0}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->getField(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyLYR;

    .line 13
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyLYR;->getLyric()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    goto :goto_1

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3;-><init>(Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3;)V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 5
    iget-object p1, p1, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

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

    .line 15
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 17
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->read(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lcom/transsion/audiotagger/tag/TagException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTag;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 0

    const-string p0, "Lyrics3v1.00"

    return-object p0
.end method

.method public getLyric()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x14

    return p0
.end method

.method public isSubsetOf(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;

    iget-object p1, p1, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Method iterator() not yet implemented."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/TagException;
        }
    .end annotation

    const/16 v0, 0x1400

    new-array v0, v0, [B

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->seek(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "LYRICSEND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/TagNotFoundException;

    const-string p1, "ID3v1 tag not found"

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public seek(Ljava/io/RandomAccessFile;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p0, 0x1400

    .line 2
    new-array p0, p0, [B

    .line 3
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x89

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x0

    const/16 v1, 0x9

    .line 4
    invoke-virtual {p1, p0, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0, v0, v1}, Ljava/lang/String;-><init>([BII)V

    .line 6
    const-string v3, "LYRICSEND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x9

    sub-long/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 9
    invoke-virtual {p1, p0, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 10
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0, v0, v1}, Ljava/lang/String;-><init>([BII)V

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    :goto_0
    const-wide/16 v3, 0x1400

    sub-long/2addr v1, v3

    .line 13
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 14
    invoke-virtual {p1, p0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 15
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>([B)V

    .line 16
    const-string p0, "LYRICSBEGIN"

    invoke-virtual {v3, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v3, -0x1

    if-ne p0, v3, :cond_1

    return v0

    :cond_1
    int-to-long v3, p0

    add-long/2addr v1, v3

    const-wide/16 v3, 0xb

    add-long/2addr v1, v3

    .line 17
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public seek(Ljava/nio/ByteBuffer;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public setLyric(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x13ec

    invoke-static {p1, v0}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3;->delete(Ljava/io/RandomAccessFile;)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    const-string v3, "LYRICSBEGIN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    const/16 v2, 0x13ec

    invoke-static {p0, v2}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    move v2, v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    add-int/lit8 v4, v2, 0xb

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr v3, p0

    move v2, v1

    :goto_2
    const/16 v4, 0x9

    if-ge v2, v4, :cond_2

    add-int v4, v2, v3

    const-string v5, "LYRICSEND"

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 p0, p0, 0x14

    invoke-virtual {p1, v0, v1, p0}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method
