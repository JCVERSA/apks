.class public Lcom/transsion/audiotagger/audio/mp4/Mp4TagReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.audiotagger.tag.mp4"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createMp4Field(Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "----"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :try_start_0
    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;

    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagReverseDnsField;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/audiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_UNABLE_READ_REVERSE_DNS_FIELD:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagRawBinaryField;

    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagRawBinaryField;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p3}, Ljava/nio/Buffer;->position()I

    move-result p0

    sget-object v0, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const/4 v1, 0x4

    invoke-static {p3, v1, v1, v0}, Lcom/transsion/audiotagger/audio/generic/Utils;->getString(Ljava/nio/ByteBuffer;IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p3, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-eqz v0, :cond_d

    const/16 p0, 0x9

    const/16 v0, 0xb

    invoke-static {p3, p0, v0}, Lcom/transsion/audiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result p0

    invoke-static {p0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->getFieldType(I)Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    move-result-object v0

    sget-object v1, Lcom/transsion/audiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Box Type id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->TRACK:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TrackField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->DISCNUMBER:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4DiscNoField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4GenreField;

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4GenreField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->ARTWORK:Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_b

    invoke-static {v0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->isCoverArtType(Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_1

    :cond_5
    sget-object v1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->TEXT:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    if-ne v0, v1, :cond_6

    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextField;

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    goto/16 :goto_3

    :cond_6
    sget-object v1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->IMPLICIT:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    if-ne v0, v1, :cond_7

    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextNumberField;

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagTextNumberField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    goto/16 :goto_3

    :cond_7
    sget-object v1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->INTEGER:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    if-ne v0, v1, :cond_8

    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagByteField;

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagByteField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    goto/16 :goto_3

    :cond_8
    invoke-static {}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->values()[Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;

    move-result-object v0

    array-length v1, v0

    :goto_0
    const-string v3, " with invalid field type of:"

    if-ge v2, v1, :cond_a

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/transsion/audiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object p1, Lcom/transsion/audiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Known Field:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is ignored"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/transsion/audiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnKnown Field:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " created as binary"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;

    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagBinaryField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    goto :goto_3

    :cond_b
    :goto_1
    move p0, v2

    :goto_2
    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v1

    if-ge v2, v1, :cond_f

    if-lez p0, :cond_c

    add-int/lit8 v0, v2, 0x9

    add-int/lit8 v1, v2, 0xb

    invoke-static {p3, v0, v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result v0

    invoke-static {v0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->getFieldType(I)Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    move-result-object v0

    :cond_c
    new-instance v1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagCoverField;

    invoke-direct {v1, p3, v0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagCoverField;-><init>(Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;)V

    invoke-virtual {p1, v1}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagCoverField;->getDataAndHeaderSize()I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_d
    invoke-virtual {p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;->AAPR:Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/mp4/Mp4NonStandardFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagRawBinaryField;

    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagRawBinaryField;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    goto :goto_3

    :cond_e
    new-instance p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagRawBinaryField;

    invoke-direct {p0, p2, p3}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4TagRawBinaryField;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/audio/generic/AbstractTag;->addField(Lcom/transsion/audiotagger/tag/TagField;)V

    :cond_f
    :goto_3
    return-void
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    new-instance v1, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;

    invoke-direct {v1}, Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;-><init>()V

    sget-object v2, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->MOOV:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/channels/FileChannel;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    sget-object p1, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->UDTA:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->META:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p0, Lcom/transsion/audiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_FILE_HAS_NO_METADATA:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v2, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MetaBox;

    invoke-direct {v2, p1, v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MetaBox;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MetaBox;->processData()V

    sget-object p1, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->ILST:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p1

    if-nez p1, :cond_3

    sget-object p0, Lcom/transsion/audiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_FILE_HAS_NO_METADATA:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v1

    :cond_1
    sget-object p1, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->META:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p0, Lcom/transsion/audiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_FILE_HAS_NO_METADATA:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v1

    :cond_2
    new-instance v2, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MetaBox;

    invoke-direct {v2, p1, v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MetaBox;-><init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MetaBox;->processData()V

    sget-object p1, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->ILST:Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p1

    if-nez p1, :cond_3

    sget-object p0, Lcom/transsion/audiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_FILE_HAS_NO_METADATA:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v1

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v3, Lcom/transsion/audiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "headerlengthsays:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "datalength:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    sget-object v3, Lcom/transsion/audiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Started to read metadata fields at position is in metadata buffer:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    invoke-virtual {p1, v0}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->update(Ljava/nio/ByteBuffer;)V

    sget-object v4, Lcom/transsion/audiotagger/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Next position is at:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-direct {p0, v1, p1, v4}, Lcom/transsion/audiotagger/audio/mp4/Mp4TagReader;->createMp4Field(Lcom/transsion/audiotagger/tag/mp4/Mp4Tag;Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v4

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_4
    return-object v1

    :cond_5
    new-instance p0, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->MP4_FILE_NOT_CONTAINER:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
