.class public Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;
.super Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;
.source "SourceFile"


# instance fields
.field protected dataBytes:[B

.field protected dataSize:I

.field protected isBinary:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;->isBinary:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;->isBinary:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;->isBinary:Z

    .line 5
    iput-object p2, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;->dataBytes:[B

    return-void
.end method


# virtual methods
.method public build(Ljava/nio/ByteBuffer;)V
    .locals 3

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v0

    iput v0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;->dataSize:I

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;->dataSize:I

    add-int/lit8 v0, v0, -0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;->dataBytes:[B

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;->dataBytes:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public copyContent(Lcom/transsion/audiotagger/tag/TagField;)V
    .locals 1

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;->getData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;->dataBytes:[B

    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/TagField;->isBinary()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;->isBinary:Z

    :cond_0
    return-void
.end method

.method public getData()[B
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;->dataBytes:[B

    return-object p0
.end method

.method public getDataBytes()[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;->dataBytes:[B

    return-object p0
.end method

.method public getDataSize()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;->dataSize:I

    return p0
.end method

.method public getFieldType()Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;
    .locals 0

    sget-object p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->IMPLICIT:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    return-object p0
.end method

.method public isBinary()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;->isBinary:Z

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;->dataBytes:[B

    array-length p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setData([B)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;->dataBytes:[B

    return-void
.end method
