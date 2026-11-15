.class public Lcom/transsion/audiotagger/tag/flac/FlacTag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/tag/Tag;


# instance fields
.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createNewTag()Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;-><init>(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->tag:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->tag:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    .line 6
    iput-object p2, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public varargs addField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    if-eqz p2, :cond_6

    const/4 v0, 0x0

    .line 4
    aget-object p2, p2, v0

    if-eqz p2, :cond_6

    .line 5
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM_ARTIST:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_5

    .line 6
    sget-object v0, Lcom/transsion/audiotagger/tag/flac/FlacTag$1;->$SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions:[I

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getVorbisAlbumArtistSaveOptions()Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    .line 9
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->createField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void

    .line 11
    :cond_1
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->createField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    .line 13
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_2
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    .line 16
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 17
    :cond_3
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    .line 19
    :cond_4
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->createField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void

    .line 21
    :cond_5
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    :goto_0
    return-void

    .line 23
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addField(Lcom/transsion/audiotagger/tag/TagField;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    check-cast p1, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->tag:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    :goto_0
    return-void
.end method

.method public addField(Lcom/transsion/audiotagger/tag/images/Artwork;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->createField(Lcom/transsion/audiotagger/tag/images/Artwork;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void
.end method

.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->createField(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void
.end method

.method public createArtworkField([BILjava/lang/String;Ljava/lang/String;IIII)Lcom/transsion/audiotagger/tag/TagField;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v9, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>([BILjava/lang/String;Ljava/lang/String;IIII)V

    return-object v9

    :cond_0
    new-instance v0, Lcom/transsion/audiotagger/tag/FieldDataInvalidException;

    const-string v1, "ImageData cannot be null"

    invoke-direct {v0, v1}, Lcom/transsion/audiotagger/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createCompilationField(Z)Lcom/transsion/audiotagger/tag/TagField;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->tag:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createCompilationField(Z)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    return-object p0
.end method

.method public varargs createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->COVER_ART:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->tag:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createField(Lcom/transsion/audiotagger/tag/images/Artwork;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 10
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->isLinked()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 11
    new-instance p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    .line 12
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 13
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getPictureType()I

    move-result v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, "-->"

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>([BILjava/lang/String;Ljava/lang/String;IIII)V

    return-object p0

    .line 14
    :cond_0
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->setImageFromData()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 15
    new-instance p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getBinaryData()[B

    move-result-object v1

    .line 16
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getPictureType()I

    move-result v2

    .line 17
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getWidth()I

    move-result v5

    .line 20
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>([BILjava/lang/String;Ljava/lang/String;IIII)V

    return-object p0

    .line 21
    :cond_1
    new-instance p0, Lcom/transsion/audiotagger/tag/FieldDataInvalidException;

    const-string p1, "Unable to createField buffered image from the image"

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COVERART:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->tag:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createField(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 1

    .line 7
    sget-object v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COVERART:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->tag:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createLinkedArtworkField(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 9

    new-instance p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    sget-object v0, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object p1, Lcom/transsion/audiotagger/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, "-->"

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>([BILjava/lang/String;Ljava/lang/String;IIII)V

    return-object p0
.end method

.method public deleteArtworkField()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->COVER_ART:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->deleteField(Lcom/transsion/audiotagger/tag/FieldKey;)V

    return-void
.end method

.method public deleteField(Lcom/transsion/audiotagger/tag/FieldKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->COVER_ART:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->tag:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lcom/transsion/audiotagger/tag/FieldKey;)V

    :goto_0
    return-void
.end method

.method public deleteField(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->COVER_ART:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->tag:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getAll(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/audiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->COVER_ART:Lcom/transsion/audiotagger/tag/FieldKey;

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->tag:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->getAll(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getArtworkList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/images/Artwork;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-static {v1}, Lcom/transsion/audiotagger/tag/images/ArtworkFactory;->createArtworkFromMetadataBlockDataPicture(Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;)Lcom/transsion/audiotagger/tag/images/Artwork;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getFieldCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->tag:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFieldCount()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getFieldCountIncludingSubValues()I
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->getFieldCount()I

    move-result p0

    return p0
.end method

.method public getFields()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->tag:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFields()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/audiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->COVER_ART:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1

    .line 11
    :cond_1
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->tag:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFields(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->COVER_ART:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->tag:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->getValue(Lcom/transsion/audiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->COVER_ART:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->tag:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFirstArtwork()Lcom/transsion/audiotagger/tag/images/Artwork;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->getArtworkList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/images/Artwork;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFirstField(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 5
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->COVER_ART:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->getFirstField(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->tag:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->getFirstField(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public getFirstField(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->COVER_ART:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/TagField;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->tag:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->getFirstField(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    return-object p0
.end method

.method public getImages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    return-object p0
.end method

.method public getValue(Lcom/transsion/audiotagger/tag/FieldKey;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->COVER_ART:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->tag:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->getValue(Lcom/transsion/audiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->ARTWORK_CANNOT_BE_RETRIEVED_WITH_THIS_METHOD:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getVorbisCommentTag()Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->tag:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    return-object p0
.end method

.method public hasCommonFields()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->tag:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->hasCommonFields()Z

    move-result p0

    return p0
.end method

.method public hasField(Lcom/transsion/audiotagger/tag/FieldKey;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->COVER_ART:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->tag:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->hasField(Lcom/transsion/audiotagger/tag/FieldKey;)Z

    move-result p0

    return p0
.end method

.method public hasField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)Z
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->tag:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->hasField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)Z

    move-result p0

    return p0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 1

    .line 5
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->COVER_ART:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->tag:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->hasField(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->tag:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->tag:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->setEncoding(Ljava/nio/charset/Charset;)Z

    move-result p0

    return p0
.end method

.method public varargs setField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    if-eqz p2, :cond_6

    const/4 v0, 0x0

    .line 1
    aget-object p2, p2, v0

    if-eqz p2, :cond_6

    .line 2
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM_ARTIST:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_5

    .line 3
    sget-object v0, Lcom/transsion/audiotagger/tag/flac/FlacTag$1;->$SwitchMap$com$transsion$audiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions:[I

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getVorbisAlbumArtistSaveOptions()Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    .line 6
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->createField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void

    .line 8
    :cond_1
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->createField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    .line 10
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_2
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    .line 13
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_3
    sget-object p1, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->createField(Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void

    .line 16
    :cond_4
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void

    .line 18
    :cond_5
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    :goto_0
    return-void

    .line 20
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setField(Lcom/transsion/audiotagger/tag/TagField;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 23
    instance-of v0, p1, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 25
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    check-cast p1, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-interface {p0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->images:Ljava/util/List;

    check-cast p1, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-interface {p0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 27
    :cond_1
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/flac/FlacTag;->tag:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    :goto_0
    return-void
.end method

.method public setField(Lcom/transsion/audiotagger/tag/images/Artwork;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->createField(Lcom/transsion/audiotagger/tag/images/Artwork;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->createField(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FLAC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->getVorbisCommentTag()Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
