.class public Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagRawBinaryField;
.super Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;
.source "SourceFile"


# instance fields
.field protected dataBytes:[B

.field protected dataSize:I


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result p1

    iput p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagRawBinaryField;->dataSize:I

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagRawBinaryField;->build(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public build(Ljava/nio/ByteBuffer;)V
    .locals 3

    iget v0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagRawBinaryField;->dataSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagRawBinaryField;->dataBytes:[B

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagRawBinaryField;->dataBytes:[B

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
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not done"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getData()[B
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagRawBinaryField;->dataBytes:[B

    return-object p0
.end method

.method public getDataBytes()[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagRawBinaryField;->dataBytes:[B

    return-object p0
.end method

.method public getDataSize()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagRawBinaryField;->dataSize:I

    return p0
.end method

.method public getFieldType()Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;
    .locals 0

    sget-object p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->IMPLICIT:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    return-object p0
.end method

.method public getRawContent()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting Raw data for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget v1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagRawBinaryField;->dataSize:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagRawBinaryField;->dataBytes:[B

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isBinary()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagRawBinaryField;->dataBytes:[B

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

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagRawBinaryField;->dataBytes:[B

    return-void
.end method
