.class public Lcom/transsion/audiotagger/audio/flac/FlacTagCreator;
.super Lcom/transsion/audiotagger/audio/generic/AbstractTagCreator;
.source "SourceFile"


# static fields
.field public static final DEFAULT_PADDING:I = 0xfa0

.field private static final creator:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentCreator;

.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.audio.flac"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/flac/FlacTagCreator;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentCreator;

    invoke-direct {v0}, Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentCreator;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/audio/flac/FlacTagCreator;->creator:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/generic/AbstractTagCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lcom/transsion/audiotagger/tag/Tag;I)Ljava/nio/ByteBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    sget-object p0, Lcom/transsion/audiotagger/audio/flac/FlacTagCreator;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Convert flac tag:padding:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/audiotagger/tag/flac/FlacTag;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->getVorbisCommentTag()Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/transsion/audiotagger/audio/flac/FlacTagCreator;->creator:Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentCreator;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->getVorbisCommentTag()Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/audio/generic/AbstractTagCreator;->convert(Lcom/transsion/audiotagger/tag/Tag;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v1, v3

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/transsion/audiotagger/audio/flac/FlacTagCreator;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Convert flac tag:taglength:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    add-int/2addr v1, p2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->getVorbisCommentTag()Lcom/transsion/audiotagger/tag/vorbiscomment/VorbisCommentTag;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    if-gtz p2, :cond_3

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    sget-object v4, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;->VORBIS_COMMENT:Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;-><init>(ZLcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;I)V

    goto :goto_3

    :cond_3
    :goto_2
    new-instance v2, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    sget-object v4, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;->VORBIS_COMMENT:Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    invoke-direct {v2, v0, v4, v5}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;-><init>(ZLcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;I)V

    :goto_3
    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_4
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/flac/FlacTag;->getImages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    if-gtz p2, :cond_6

    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    new-instance v2, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    sget-object v4, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;->PICTURE:Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getLength()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;-><init>(ZLcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;I)V

    goto :goto_6

    :cond_6
    :goto_5
    new-instance v2, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    sget-object v4, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;->PICTURE:Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getLength()I

    move-result v5

    invoke-direct {v2, v0, v4, v5}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;-><init>(ZLcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;I)V

    :goto_6
    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_7
    sget-object p0, Lcom/transsion/audiotagger/audio/flac/FlacTagCreator;->logger:Ljava/util/logging/Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Convert flac tag at"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    if-lez p2, :cond_8

    add-int/lit8 p2, p2, -0x4

    new-instance p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    sget-object p1, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;->PADDING:Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    invoke-direct {p0, v3, p1, p2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;-><init>(ZLcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;I)V

    new-instance p1, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;

    invoke-direct {p1, p2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;-><init>(I)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_8
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1
.end method
