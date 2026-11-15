.class public Lcom/transsion/audiotagger/tag/images/AndroidArtwork;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/tag/images/Artwork;


# instance fields
.field private binaryData:[B

.field private description:Ljava/lang/String;

.field private height:I

.field private imageUrl:Ljava/lang/String;

.field private isLinked:Z

.field private mimeType:Ljava/lang/String;

.field private pictureType:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->description:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->isLinked:Z

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->imageUrl:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->pictureType:I

    return-void
.end method

.method public static createArtworkFromFile(Ljava/io/File;)Lcom/transsion/audiotagger/tag/images/AndroidArtwork;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;-><init>()V

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->setFromFile(Ljava/io/File;)V

    return-object v0
.end method

.method public static createArtworkFromMetadataBlockDataPicture(Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;)Lcom/transsion/audiotagger/tag/images/AndroidArtwork;
    .locals 1

    new-instance v0, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;-><init>()V

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->setFromMetadataBlockDataPicture(Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;)V

    return-object v0
.end method

.method public static createLinkedArtworkFromURL(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/images/AndroidArtwork;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;-><init>()V

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->setLinkedFromURL(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getBinaryData()[B
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->binaryData:[B

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->height:I

    return p0
.end method

.method public getImage()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->imageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public getPictureType()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->pictureType:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->width:I

    return p0
.end method

.method public isLinked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->isLinked:Z

    return p0
.end method

.method public setBinaryData([B)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->binaryData:[B

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->description:Ljava/lang/String;

    return-void
.end method

.method public setFromFile(Ljava/io/File;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    long-to-int p1, v1

    new-array p1, p1, [B

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->setBinaryData([B)V

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->getMimeTypeForBinarySignature([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->setMimeType(Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->setDescription(Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/audiotagger/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->setPictureType(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    const-class p1, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IOException"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public setFromMetadataBlockDataPicture(Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;)V
    .locals 1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->setMimeType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->setDescription(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getPictureType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->setPictureType(I)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->isImageUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->isImageUrl()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->setLinked(Z)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->setImageUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getImageData()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->setBinaryData([B)V

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->setWidth(I)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->setHeight(I)V

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->height:I

    return-void
.end method

.method public setImageFromData()Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setLinked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->isLinked:Z

    return-void
.end method

.method public setLinkedFromURL(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->setLinked(Z)V

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->setImageUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setPictureType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->pictureType:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->width:I

    return-void
.end method
