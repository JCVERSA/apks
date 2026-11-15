.class public Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;
.super Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/tag/TagTextField;


# static fields
.field public static final IDENTIFIER:Ljava/lang/String; = "----"


# instance fields
.field protected content:Ljava/lang/String;

.field protected dataSize:I

.field private descriptor:Ljava/lang/String;

.field private issuer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getIssuer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->issuer:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->descriptor:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;-><init>(Ljava/lang/String;)V

    .line 7
    iput-object p2, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->issuer:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->descriptor:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build(Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    new-instance v1, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4MeanBox;

    invoke-direct {v1, v0, p1}, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4MeanBox;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4MeanBox;->getIssuer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->setIssuer(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v1, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v1, p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    new-instance v2, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4NameBox;

    invoke-direct {v2, v1, p1}, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4NameBox;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4NameBox;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->setDescriptor(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->parentHeader:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v2

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, ":"

    const-string v3, "----:"

    if-ne v2, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->issuer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->descriptor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->setContent(Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_REVERSE_DNS_FIELD_HAS_NO_DATA:Lcom/transsion/audiotagger/logging/ErrorMessage;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    new-instance v2, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;

    invoke-direct {v2, v0, p1}, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->setContent(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->issuer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->descriptor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public copyContent(Lcom/transsion/audiotagger/tag/TagField;)V
    .locals 1

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->getIssuer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->issuer:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->descriptor:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->getContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    return-object p0
.end method

.method public getDataBytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->getEncoding()Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->descriptor:Ljava/lang/String;

    return-object p0
.end method

.method public getEncoding()Ljava/nio/charset/Charset;
    .locals 0

    sget-object p0, Lcom/transsion/audiotagger/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public getFieldType()Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;
    .locals 0

    sget-object p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->TEXT:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    return-object p0
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->issuer:Ljava/lang/String;

    return-object p0
.end method

.method public getRawContent()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x4

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->issuer:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->getEncoding()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v3, v2

    add-int/lit8 v3, v3, 0xc

    invoke-static {v3}, Lcom/transsion/audiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    const-string v3, "mean"

    sget-object v4, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->descriptor:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->getEncoding()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v3, v2

    add-int/lit8 v3, v3, 0xc

    invoke-static {v3}, Lcom/transsion/audiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    const-string v3, "name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->getRawContentDataOnly()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lcom/transsion/audiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    const-string v0, "----"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public getRawContentDataOnly()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting Raw data for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->getEncoding()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v4, v3

    add-int/lit8 v4, v4, 0x10

    invoke-static {v4}, Lcom/transsion/audiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    const-string v4, "data"

    sget-object v5, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    new-array v4, v0, [B

    aput-byte v1, v4, v1

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->getFieldType()Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->getFileClassId()I

    move-result p0

    int-to-byte p0, p0

    const/4 v4, 0x3

    new-array v4, v4, [B

    aput-byte v1, v4, v1

    aput-byte v1, v4, v0

    const/4 v0, 0x2

    aput-byte p0, v4, v0

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    const/4 p0, 0x4

    new-array p0, p0, [B

    fill-array-data p0, :array_0

    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public isBinary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    return-void
.end method

.method public setDescriptor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->descriptor:Ljava/lang/String;

    return-void
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)V
    .locals 0

    return-void
.end method

.method public setIssuer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->issuer:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    return-object p0
.end method
