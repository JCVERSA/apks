.class public Lcom/transsion/audiotagger/tag/mp4/field/Mp4GenreField;
.super Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextNumberField;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 2
    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextNumberField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    .line 4
    invoke-static {}, Lcom/transsion/audiotagger/tag/reference/GenreTypes;->getMaxStandardGenreId()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    add-int/2addr v1, v0

    int-to-short v1, v1

    .line 6
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 7
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    .line 8
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 9
    :catch_0
    invoke-static {}, Lcom/transsion/audiotagger/tag/reference/GenreTypes;->getInstanceOf()Lcom/transsion/audiotagger/tag/reference/GenreTypes;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractIntStringValuePair;->getIdForValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Lcom/transsion/audiotagger/tag/reference/GenreTypes;->getMaxStandardGenreId()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, v0

    int-to-short p0, p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 13
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    .line 14
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextNumberField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static isValidGenre(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {}, Lcom/transsion/audiotagger/tag/reference/GenreTypes;->getMaxStandardGenreId()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v1, v2, :cond_0

    return v0

    :catch_0
    :cond_0
    invoke-static {}, Lcom/transsion/audiotagger/tag/reference/GenreTypes;->getInstanceOf()Lcom/transsion/audiotagger/tag/reference/GenreTypes;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/transsion/audiotagger/tag/datatype/AbstractIntStringValuePair;->getIdForValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {}, Lcom/transsion/audiotagger/tag/reference/GenreTypes;->getMaxStandardGenreId()I

    move-result v1

    if-gt p0, v1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public build(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    new-instance v1, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;

    invoke-direct {v1, v0, p1}, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result p1

    iput p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextField;->dataSize:I

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;->getNumbers()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-static {}, Lcom/transsion/audiotagger/tag/reference/GenreTypes;->getInstanceOf()Lcom/transsion/audiotagger/tag/reference/GenreTypes;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/tag/datatype/AbstractIntStringValuePair;->getValueForId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object p0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_GENRE_OUT_OF_RANGE:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/audiotagger/tag/mp4/Mp4TagField;->logger:Ljava/util/logging/Logger;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_NO_GENREID_FOR_GENRE:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
