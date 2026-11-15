.class public Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyUnsupported;
.super Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;
.source "SourceFile"


# instance fields
.field private value:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyUnsupported;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>(Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    .line 5
    iget-object p1, p1, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidTagException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    .line 10
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyUnsupported;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyUnsupported;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    iget-object v0, v0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

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

    const-string p0, "ZZZ"

    return-object p0
.end method

.method public isSubsetOf(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyUnsupported;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyUnsupported;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->isSubsetOf(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
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

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setupObjectList()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    const/4 v0, 0x5

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x5

    if-ge v4, v5, :cond_0

    const/16 v5, 0x30

    aput-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v0, v4

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    add-int v4, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyUnsupported;->value:[B

    invoke-virtual {p1, p0}, Ljava/io/RandomAccessFile;->write([B)V

    return-void
.end method
