.class public abstract Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/tag/TagField;


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field protected id:Ljava/lang/String;

.field protected parentHeader:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.tag.mp4"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->parentHeader:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 7
    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->build(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->build(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->build(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public abstract build(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public abstract getDataBytes()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public abstract getFieldType()Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getIdBytes()[B
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->getId()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

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
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->getRawContentDataOnly()[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    array-length v2, v0

    add-int/lit8 v2, v2, 0x8

    invoke-static {v2}, Lcom/transsion/audiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->getId()Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

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

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->getDataBytes()[B

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

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->getFieldType()Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

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

.method public isBinary(Z)V
    .locals 0

    return-void
.end method

.method public isCommon()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    sget-object v1, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ARTIST:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    sget-object v1, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ALBUM:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    sget-object v1, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->TITLE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    sget-object v1, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->TRACK:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    sget-object v1, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->DAY:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    sget-object v1, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->COMMENT:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
