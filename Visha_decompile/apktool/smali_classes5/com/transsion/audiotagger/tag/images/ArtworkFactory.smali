.class public Lcom/transsion/audiotagger/tag/images/ArtworkFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createArtworkFromFile(Ljava/io/File;)Lcom/transsion/audiotagger/tag/images/Artwork;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->createArtworkFromFile(Ljava/io/File;)Lcom/transsion/audiotagger/tag/images/AndroidArtwork;

    move-result-object p0

    return-object p0
.end method

.method public static createArtworkFromMetadataBlockDataPicture(Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;)Lcom/transsion/audiotagger/tag/images/Artwork;
    .locals 0

    invoke-static {p0}, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->createArtworkFromMetadataBlockDataPicture(Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;)Lcom/transsion/audiotagger/tag/images/AndroidArtwork;

    move-result-object p0

    return-object p0
.end method

.method public static createLinkedArtworkFromURL(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/images/Artwork;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;->createLinkedArtworkFromURL(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/images/AndroidArtwork;

    move-result-object p0

    return-object p0
.end method

.method public static getNew()Lcom/transsion/audiotagger/tag/images/Artwork;
    .locals 1

    new-instance v0, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/images/AndroidArtwork;-><init>()V

    return-object v0
.end method
