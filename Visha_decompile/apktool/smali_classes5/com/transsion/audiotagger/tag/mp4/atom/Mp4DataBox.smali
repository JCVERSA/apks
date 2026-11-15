.class public Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;
.super Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;
.source "SourceFile"


# static fields
.field public static final DATA_HEADER_LENGTH:I = 0x10

.field public static final IDENTIFIER:Ljava/lang/String; = "data"

.field public static final NULL_LENGTH:I = 0x4

.field public static final NUMBER_LENGTH:I = 0x2

.field public static final PRE_DATA_LENGTH:I = 0x8

.field public static final TYPE_LENGTH:I = 0x3

.field public static final TYPE_POS:I = 0x1

.field public static final TYPE_POS_INCLUDING_HEADER:I = 0x9

.field public static final VERSION_LENGTH:I = 0x1


# instance fields
.field private bytedata:[B

.field private content:Ljava/lang/String;

.field private numbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 6

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;-><init>()V

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->header:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/transsion/audiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;->type:I

    sget-object v1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->TEXT:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->getFileClassId()I

    move-result v1

    const/16 v3, 0x8

    if-ne v0, v1, :cond_0

    iget-object p2, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getEncoding()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p2, v3, v0, p1}, Lcom/transsion/audiotagger/audio/generic/Utils;->getString(Ljava/nio/ByteBuffer;IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;->content:Ljava/lang/String;

    goto/16 :goto_3

    :cond_0
    iget v0, p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;->type:I

    sget-object v1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->IMPLICIT:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->getFileClassId()I

    move-result v1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_4

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;->numbers:Ljava/util/List;

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result p2

    sub-int/2addr p2, v3

    div-int/lit8 p2, p2, 0x2

    if-ge v4, p2, :cond_1

    iget-object p2, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v0, v4, 0x2

    add-int/lit8 v1, v0, 0x8

    add-int/lit8 v0, v0, 0x9

    invoke-static {p2, v1, v0}, Lcom/transsion/audiotagger/audio/generic/Utils;->getShortBE(Ljava/nio/ByteBuffer;II)S

    move-result p2

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;->numbers:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object p2, p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;->numbers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;->content:Ljava/lang/String;

    goto/16 :goto_3

    :cond_4
    iget v0, p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;->type:I

    sget-object v1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->INTEGER:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->getFileClassId()I

    move-result v1

    if-ne v0, v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v1, v3, v5}, Lcom/transsion/audiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;->content:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v0

    sub-int/2addr v0, v3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;->bytedata:[B

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/lit8 v1, v0, 0x8

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;->bytedata:[B

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;->numbers:Ljava/util/List;

    :goto_2
    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result p2

    sub-int/2addr p2, v3

    div-int/lit8 p2, p2, 0x2

    if-ge v4, p2, :cond_6

    iget-object p2, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v0, v4, 0x2

    add-int/lit8 v1, v0, 0x8

    add-int/lit8 v0, v0, 0x9

    invoke-static {p2, v1, v0}, Lcom/transsion/audiotagger/audio/generic/Utils;->getShortBE(Ljava/nio/ByteBuffer;II)S

    move-result p2

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;->numbers:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    iget p2, p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;->type:I

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->COVERART_JPEG:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->getFileClassId()I

    move-result v0

    if-ne p2, v0, :cond_6

    iget-object p2, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getEncoding()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p2, v3, v0, p1}, Lcom/transsion/audiotagger/audio/generic/Utils;->getString(Ljava/nio/ByteBuffer;IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;->content:Ljava/lang/String;

    :cond_6
    :goto_3
    return-void

    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to process data box because identifier is:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getByteData()[B
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;->bytedata:[B

    return-object p0
.end method

.method public getContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;->content:Ljava/lang/String;

    return-object p0
.end method

.method public getNumbers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;->numbers:Ljava/util/List;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4DataBox;->type:I

    return p0
.end method
