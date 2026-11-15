.class public Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockData;
.implements Lcom/transsion/audiotagger/tag/TagField;


# static fields
.field public static final IMAGE_IS_URL:Ljava/lang/String; = "-->"

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private colourDepth:I

.field private description:Ljava/lang/String;

.field private height:I

.field private imageData:[B

.field private indexedColouredCount:I

.field private lengthOfPictureInBytes:I

.field private mimeType:Ljava/lang/String;

.field private pictureType:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.audio.flac.MetadataBlockDataPicture"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/nio/channels/FileChannel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/tag/InvalidFrameException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->mimeType:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 7
    invoke-virtual {p2, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p2

    .line 8
    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v1

    if-lt p2, v1, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 10
    invoke-direct {p0, v0}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->initFromByteBuffer(Ljava/nio/ByteBuffer;)V

    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to read required number of databytes read:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":required:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/tag/InvalidFrameException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->mimeType:Ljava/lang/String;

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->initFromByteBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>([BILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->mimeType:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->pictureType:I

    if-eqz p3, :cond_0

    .line 15
    iput-object p3, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->mimeType:Ljava/lang/String;

    .line 16
    :cond_0
    iput-object p4, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->description:Ljava/lang/String;

    .line 17
    iput p5, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->width:I

    .line 18
    iput p6, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->height:I

    .line 19
    iput p7, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->colourDepth:I

    .line 20
    iput p8, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->indexedColouredCount:I

    .line 21
    iput-object p1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->imageData:[B

    return-void
.end method

.method private getString(Ljava/nio/ByteBuffer;ILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array p0, p2, [B

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1
.end method

.method private initFromByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/transsion/audiotagger/tag/InvalidFrameException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->pictureType:I

    invoke-static {}, Lcom/transsion/audiotagger/tag/reference/PictureTypes;->getInstanceOf()Lcom/transsion/audiotagger/tag/reference/PictureTypes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    sget-object v1, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getString(Ljava/nio/ByteBuffer;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->mimeType:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    sget-object v1, Lcom/transsion/audiotagger/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getString(Ljava/nio/ByteBuffer;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->description:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->width:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->height:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->colourDepth:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->indexedColouredCount:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->lengthOfPictureInBytes:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->imageData:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    sget-object p1, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read image:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/transsion/audiotagger/tag/InvalidFrameException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PictureType was:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->pictureType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "but the maximum allowed is "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/audiotagger/tag/reference/PictureTypes;->getInstanceOf()Lcom/transsion/audiotagger/tag/reference/PictureTypes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/AbstractValuePair;->getSize()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public copyContent(Lcom/transsion/audiotagger/tag/TagField;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getBytes()Ljava/nio/ByteBuffer;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->pictureType:I

    invoke-static {v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->mimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->mimeType:Ljava/lang/String;

    sget-object v2, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->description:Ljava/lang/String;

    sget-object v2, Lcom/transsion/audiotagger/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->width:I

    invoke-static {v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->height:I

    invoke-static {v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->colourDepth:I

    invoke-static {v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->indexedColouredCount:I

    invoke-static {v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->imageData:[B

    array-length v1, v1

    invoke-static {v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->imageData:[B

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColourDepth()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->colourDepth:I

    return p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->height:I

    return p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/audiotagger/tag/FieldKey;->COVER_ART:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getImageData()[B
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->imageData:[B

    return-object p0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->isImageUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getImageData()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getImageData()[B

    move-result-object p0

    array-length p0, p0

    sget-object v2, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getIndexedColourCount()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->indexedColouredCount:I

    return p0
.end method

.method public getLength()I
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result p0

    return p0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public getPictureType()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->pictureType:I

    return p0
.end method

.method public getRawContent()[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->width:I

    return p0
.end method

.method public isBinary(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public isBinary()Z
    .locals 0

    .line 2
    const/4 p0, 0x1

    return p0
.end method

.method public isCommon()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isImageUrl()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getMimeType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "-->"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/audiotagger/tag/reference/PictureTypes;->getInstanceOf()Lcom/transsion/audiotagger/tag/reference/PictureTypes;

    move-result-object v1

    iget v2, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->pictureType:I

    invoke-virtual {v1, v2}, Lcom/transsion/audiotagger/tag/datatype/AbstractIntStringValuePair;->getValueForId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":colourdepth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->colourDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":indexedColourCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->indexedColouredCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":image size in bytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->lengthOfPictureInBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->imageData:[B

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
