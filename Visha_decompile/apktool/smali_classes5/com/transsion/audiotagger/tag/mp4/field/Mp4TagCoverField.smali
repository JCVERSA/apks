.class public Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagCoverField;
.super Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;
.source "SourceFile"


# instance fields
.field private dataAndHeaderSize:I

.field private imageType:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ARTWORK:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ARTWORK:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 3
    iput-object p2, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagCoverField;->imageType:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    .line 4
    invoke-static {p2}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->isCoverArtType(Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 5
    sget-object p0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->logger:Ljava/util/logging/Logger;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_IMAGE_FORMAT_IS_NOT_TO_EXPECTED_TYPE:Lcom/transsion/audiotagger/logging/ErrorMessage;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 6
    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ARTWORK:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;-><init>(Ljava/lang/String;[B)V

    .line 7
    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsPngFormat([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    sget-object p1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->COVERART_PNG:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagCoverField;->imageType:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsJpgFormat([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    sget-object p1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->COVERART_JPEG:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagCoverField;->imageType:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsGifFormat([B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    sget-object p1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->COVERART_GIF:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagCoverField;->imageType:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsBmpFormat([B)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    sget-object p1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->COVERART_BMP:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagCoverField;->imageType:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    goto :goto_0

    .line 15
    :cond_3
    sget-object p1, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_UNIDENITIFED_IMAGE_FORMAT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 16
    sget-object p1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->COVERART_PNG:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagCoverField;->imageType:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    :goto_0
    return-void
.end method

.method public static getMimeTypeForImageType(Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->COVERART_PNG:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    if-ne p0, v0, :cond_0

    const-string p0, "image/png"

    return-object p0

    :cond_0
    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->COVERART_JPEG:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    if-ne p0, v0, :cond_1

    const-string p0, "image/jpeg"

    return-object p0

    :cond_1
    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->COVERART_GIF:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    if-ne p0, v0, :cond_2

    const-string p0, "image/gif"

    return-object p0

    :cond_2
    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->COVERART_BMP:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    if-ne p0, v0, :cond_3

    const-string p0, "image/bmp"

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public build(Ljava/nio/ByteBuffer;)V
    .locals 4

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v1

    iput v1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;->dataSize:I

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    iput v0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagCoverField;->dataAndHeaderSize:I

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;->dataSize:I

    add-int/lit8 v0, v0, -0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;->dataBytes:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    if-gt v1, v2, :cond_1

    new-instance v1, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v1, p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;->dataSize:I

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;->dataSize:I

    iget p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagCoverField;->dataAndHeaderSize:I

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagCoverField;->dataAndHeaderSize:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_1
    :goto_0
    return-void
.end method

.method public getDataAndHeaderSize()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagCoverField;->dataAndHeaderSize:I

    return p0
.end method

.method public getFieldType()Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagCoverField;->imageType:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    return-object p0
.end method

.method public isBinary()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagCoverField;->imageType:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;->dataBytes:[B

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "bytes"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
