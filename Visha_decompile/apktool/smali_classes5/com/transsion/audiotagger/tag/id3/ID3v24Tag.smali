.class public Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;
.super Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;
.source "SourceFile"


# static fields
.field public static final MAJOR_VERSION:B = 0x4t

.field public static final MASK_V24_COMPRESSION:I = 0x10

.field public static final MASK_V24_CRC_DATA_PRESENT:I = 0x20

.field public static final MASK_V24_DATA_LENGTH_INDICATOR:I = 0x2

.field public static final MASK_V24_ENCRYPTION:I = 0x8

.field public static final MASK_V24_EXPERIMENTAL:I = 0x20

.field public static final MASK_V24_EXTENDED_HEADER:I = 0x40

.field public static final MASK_V24_FILE_ALTER_PRESERVATION:I = 0x20

.field public static final MASK_V24_FOOTER_PRESENT:I = 0x10

.field public static final MASK_V24_FRAME_UNSYNCHRONIZATION:I = 0x4

.field public static final MASK_V24_GROUPING_IDENTITY:I = 0x40

.field public static final MASK_V24_IMAGE_ENCODING:I = 0x4

.field public static final MASK_V24_IMAGE_SIZE_RESTRICTIONS:I = 0x6

.field public static final MASK_V24_READ_ONLY:I = 0x10

.field public static final MASK_V24_TAG_ALTER_PRESERVATION:I = 0x40

.field public static final MASK_V24_TAG_RESTRICTIONS:I = 0x10

.field public static final MASK_V24_TAG_SIZE_RESTRICTIONS:I = -0x40

.field public static final MASK_V24_TAG_UPDATE:I = 0x40

.field public static final MASK_V24_TEXT_ENCODING_RESTRICTIONS:I = 0x20

.field public static final MASK_V24_TEXT_FIELD_SIZE_RESTRICTIONS:I = 0x18

.field public static final MASK_V24_UNSYNCHRONIZATION:I = 0x80

.field public static final RELEASE:B = 0x2t

.field public static final REVISION:B = 0x0t

.field protected static TAG_EXT_HEADER_CRC_DATA_LENGTH:I = 0x5

.field protected static TAG_EXT_HEADER_CRC_LENGTH:I = 0x6

.field protected static TAG_EXT_HEADER_LENGTH:I = 0x6

.field protected static TAG_EXT_HEADER_RESTRICTION_DATA_LENGTH:I = 0x1

.field protected static TAG_EXT_HEADER_RESTRICTION_LENGTH:I = 0x2

.field protected static TAG_EXT_HEADER_UPDATE_LENGTH:I = 0x1

.field protected static TAG_EXT_NUMBER_BYTES_DATA_LENGTH:I = 0x1

.field protected static final TYPE_CRCDATA:Ljava/lang/String; = "crcdata"

.field protected static final TYPE_EXPERIMENTAL:Ljava/lang/String; = "experimental"

.field protected static final TYPE_EXTENDED:Ljava/lang/String; = "extended"

.field protected static final TYPE_FOOTER:Ljava/lang/String; = "footer"

.field protected static final TYPE_IMAGEENCODINGRESTRICTION:Ljava/lang/String; = "imageEncodingRestriction"

.field protected static final TYPE_IMAGESIZERESTRICTION:Ljava/lang/String; = "imageSizeRestriction"

.field protected static final TYPE_PADDINGSIZE:Ljava/lang/String; = "paddingsize"

.field protected static final TYPE_TAGRESTRICTION:Ljava/lang/String; = "tagRestriction"

.field protected static final TYPE_TAGSIZERESTRICTION:Ljava/lang/String; = "tagSizeRestriction"

.field protected static final TYPE_TEXTENCODINGRESTRICTION:Ljava/lang/String; = "textEncodingRestriction"

.field protected static final TYPE_TEXTFIELDSIZERESTRICTION:Ljava/lang/String; = "textFieldSizeRestriction"

.field protected static final TYPE_UNSYNCHRONISATION:Ljava/lang/String; = "unsyncronisation"

.field protected static final TYPE_UPDATETAG:Ljava/lang/String; = "updateTag"


# instance fields
.field protected crcData:I

.field protected crcDataFlag:Z

.field protected experimental:Z

.field protected extended:Z

.field protected footer:Z

.field protected imageEncodingRestriction:B

.field protected imageSizeRestriction:B

.field protected paddingSize:I

.field protected tagRestriction:Z

.field protected tagSizeRestriction:B

.field protected textEncodingRestriction:B

.field protected textFieldSizeRestriction:B

.field protected unsynchronization:Z

.field protected updateTag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    .line 3
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->experimental:Z

    .line 4
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->extended:Z

    .line 5
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->unsynchronization:Z

    .line 6
    iput v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->crcData:I

    .line 7
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->footer:Z

    .line 8
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    .line 9
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 10
    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    .line 11
    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    .line 12
    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    .line 13
    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    .line 14
    iput v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->paddingSize:I

    .line 15
    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/AbstractTag;)V
    .locals 6

    .line 36
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    .line 38
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->experimental:Z

    .line 39
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->extended:Z

    .line 40
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->unsynchronization:Z

    .line 41
    iput v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->crcData:I

    .line 42
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->footer:Z

    .line 43
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    .line 44
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 45
    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    .line 46
    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    .line 47
    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    .line 48
    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    .line 49
    iput v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->paddingSize:I

    .line 50
    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    .line 51
    sget-object v1, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    const-string v2, "Creating tag from a tag of a different version"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 52
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 53
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    if-eqz p1, :cond_a

    .line 54
    instance-of v1, p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    if-nez v1, :cond_9

    .line 55
    instance-of v1, p1, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    if-eqz v1, :cond_0

    .line 56
    check-cast p1, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->copyPrimitives(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->copyFrames(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V

    goto/16 :goto_2

    .line 59
    :cond_0
    instance-of v1, p1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    if-eqz v1, :cond_7

    .line 60
    move-object v1, p1

    check-cast v1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    .line 61
    iget-object v2, v1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 62
    new-instance v2, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTIT2;

    iget-object v3, v1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTIT2;-><init>(BLjava/lang/String;)V

    .line 63
    new-instance v3, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;

    const-string v4, "TIT2"

    invoke-direct {v3, v4}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v3, v2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->setBody(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 65
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_1
    iget-object v2, v1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 67
    new-instance v2, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTPE1;

    iget-object v3, v1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTPE1;-><init>(BLjava/lang/String;)V

    .line 68
    new-instance v3, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;

    const-string v4, "TPE1"

    invoke-direct {v3, v4}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v3, v2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->setBody(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 70
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_2
    iget-object v2, v1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 72
    new-instance v2, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTALB;

    iget-object v3, v1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTALB;-><init>(BLjava/lang/String;)V

    .line 73
    new-instance v3, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;

    const-string v4, "TALB"

    invoke-direct {v3, v4}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v3, v2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->setBody(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 75
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_3
    iget-object v2, v1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 77
    new-instance v2, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;

    iget-object v3, v1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;-><init>(BLjava/lang/String;)V

    .line 78
    new-instance v3, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;

    const-string v4, "TDRC"

    invoke-direct {v3, v4}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v3, v2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->setBody(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 80
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_4
    iget-object v2, v1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 82
    new-instance v2, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v3, ""

    iget-object v4, v1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    const-string v5, "ENG"

    invoke-direct {v2, v0, v5, v3, v4}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyCOMM;-><init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v3, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;

    const-string v4, "COMM"

    invoke-direct {v3, v4}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v3, v2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->setBody(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 85
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_5
    iget-byte v1, v1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->genre:B

    and-int/lit16 v2, v1, 0xff

    if-ltz v2, :cond_6

    and-int/lit16 v2, v1, 0xff

    const/16 v3, 0xff

    if-eq v2, v3, :cond_6

    and-int/2addr v1, v3

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/audiotagger/tag/reference/GenreTypes;->getInstanceOf()Lcom/transsion/audiotagger/tag/reference/GenreTypes;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/transsion/audiotagger/tag/datatype/AbstractIntStringValuePair;->getValueForId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    new-instance v2, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTCON;

    invoke-direct {v2, v0, v1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTCON;-><init>(BLjava/lang/String;)V

    .line 90
    new-instance v1, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;

    const-string v3, "TCON"

    invoke-direct {v1, v3}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, v2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->setBody(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 92
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_6
    instance-of v1, p1, Lcom/transsion/audiotagger/tag/id3/ID3v11Tag;

    if-eqz v1, :cond_a

    .line 94
    check-cast p1, Lcom/transsion/audiotagger/tag/id3/ID3v11Tag;

    .line 95
    iget-byte p1, p1, Lcom/transsion/audiotagger/tag/id3/ID3v11Tag;->track:B

    if-lez p1, :cond_a

    .line 96
    new-instance v1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTRCK;

    invoke-static {p1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTRCK;-><init>(BLjava/lang/String;)V

    .line 97
    new-instance p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;

    const-string v0, "TRCK"

    invoke-direct {p1, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->setBody(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 99
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 100
    :cond_7
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/lyrics3/AbstractLyrics3;

    if-eqz v0, :cond_a

    .line 101
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;

    if-eqz v0, :cond_8

    .line 102
    new-instance v0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;

    check-cast p1, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;-><init>(Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;)V

    goto :goto_0

    .line 103
    :cond_8
    new-instance v0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractTag;)V

    .line 104
    :goto_0
    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 105
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 106
    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;

    .line 107
    new-instance v1, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;

    invoke-direct {v1, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;-><init>(Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;)V

    .line 108
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/transsion/audiotagger/tag/InvalidTagException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 109
    :catch_0
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Unable to convert Lyrics3 to v24 Frame:Frame Identifier"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 110
    :cond_9
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_2
    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    .line 20
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->experimental:Z

    .line 21
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->extended:Z

    .line 22
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->unsynchronization:Z

    .line 23
    iput v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->crcData:I

    .line 24
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->footer:Z

    .line 25
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    .line 26
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 27
    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    .line 28
    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    .line 29
    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    .line 30
    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    .line 31
    iput v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->paddingSize:I

    .line 32
    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    .line 33
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Creating tag from another tag of same type"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->copyPrimitives(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->copyFrames(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/TagException;
        }
    .end annotation

    .line 130
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/TagException;
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    .line 113
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->experimental:Z

    .line 114
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->extended:Z

    .line 115
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->unsynchronization:Z

    .line 116
    iput v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->crcData:I

    .line 117
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->footer:Z

    .line 118
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    .line 119
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 120
    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    .line 121
    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    .line 122
    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    .line 123
    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    .line 124
    iput v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->paddingSize:I

    .line 125
    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    .line 126
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    .line 127
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    .line 128
    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private readExtendedHeader(Ljava/nio/ByteBuffer;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidTagException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    sget v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_LENGTH:I

    if-le p2, v0, :cond_6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    and-int/lit8 v0, p2, 0x40

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iput-boolean v3, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_2

    move p2, v1

    goto :goto_2

    :cond_2
    move p2, v2

    :goto_2
    iput-boolean p2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    :cond_3
    iget-boolean p2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    sget p2, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_CRC_DATA_LENGTH:I

    new-array v0, p2, [B

    invoke-virtual {p1, v0, v2, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iput v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->crcData:I

    move p2, v2

    :goto_3
    sget v3, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_CRC_DATA_LENGTH:I

    if-ge p2, v3, :cond_4

    iget v3, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->crcData:I

    shl-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->crcData:I

    aget-byte v4, v0, p2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->crcData:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_4
    iget-boolean p2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    new-array p2, v1, [B

    invoke-virtual {p1, p2, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    aget-byte p1, p2, v2

    and-int/lit8 p2, p1, -0x40

    shr-int/lit8 p2, p2, 0x6

    int-to-byte p2, p2

    iput-byte p2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    and-int/lit8 p2, p1, 0x20

    shr-int/lit8 p2, p2, 0x5

    int-to-byte p2, p2

    iput-byte p2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    and-int/lit8 p2, p1, 0x18

    shr-int/lit8 p2, p2, 0x3

    int-to-byte p2, p2

    iput-byte p2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    and-int/lit8 p2, p1, 0x4

    shr-int/lit8 p2, p2, 0x2

    int-to-byte p2, p2

    iput-byte p2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    and-int/lit8 p1, p1, 0x6

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    :cond_5
    return-void

    :cond_6
    new-instance p1, Lcom/transsion/audiotagger/tag/InvalidTagException;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_EXTENDED_HEADER_SIZE_TOO_SMALL:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readHeaderFlags(Ljava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/TagException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    and-int/lit16 v0, p1, 0x80

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->unsynchronization:Z

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->extended:Z

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->experimental:Z

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->footer:Z

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_4

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_4
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_5

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_5
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_6

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_6
    and-int/2addr p1, v2

    if-eqz p1, :cond_7

    sget-object p1, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->isUnsynchronization()Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_TAG_UNSYNCHRONIZED:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_8
    iget-boolean p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->extended:Z

    if-eqz p1, :cond_9

    sget-object p1, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_TAG_EXTENDED:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_9
    iget-boolean p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->experimental:Z

    if-eqz p1, :cond_a

    sget-object p1, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_TAG_EXPERIMENTAL:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_a
    iget-boolean p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->footer:Z

    if-eqz p1, :cond_b

    sget-object p1, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->ID3_TAG_FOOTER:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method private writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->unsynchronization:Z

    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->extended:Z

    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->experimental:Z

    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->footer:Z

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->TAG_ID:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->getMajorVersion()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->getRevision()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->isUnsynchronization()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x80

    int-to-byte v2, v2

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iget-boolean v3, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->extended:Z

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x40

    int-to-byte v2, v2

    :cond_1
    iget-boolean v3, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->experimental:Z

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    :cond_2
    iget-boolean v3, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->footer:Z

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    :cond_3
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-boolean v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->extended:Z

    if-eqz v2, :cond_6

    sget v2, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_LENGTH:I

    iget-boolean v3, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    if-eqz v3, :cond_4

    sget v3, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_UPDATE_LENGTH:I

    add-int/2addr v2, v3

    :cond_4
    iget-boolean v3, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    if-eqz v3, :cond_5

    sget v3, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr v2, v3

    :cond_5
    iget-boolean v3, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    if-eqz v3, :cond_7

    sget v3, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_RESTRICTION_LENGTH:I

    add-int/2addr v2, v3

    goto :goto_1

    :cond_6
    move v2, v0

    :cond_7
    :goto_1
    add-int/2addr p1, p2

    add-int/2addr p1, v2

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/ID3SyncSafeInteger;->valueToBuffer(I)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-boolean p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->extended:Z

    if-eqz p1, :cond_10

    sget p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_LENGTH:I

    iget-boolean p2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    if-eqz p2, :cond_8

    sget p2, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_UPDATE_LENGTH:I

    add-int/2addr p1, p2

    :cond_8
    iget-boolean p2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    if-eqz p2, :cond_9

    sget p2, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr p1, p2

    :cond_9
    iget-boolean p2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    if-eqz p2, :cond_a

    sget p2, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_RESTRICTION_LENGTH:I

    add-int/2addr p1, p2

    :cond_a
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    sget p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->TAG_EXT_NUMBER_BYTES_DATA_LENGTH:I

    int-to-byte p1, p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-boolean p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    if-eqz p1, :cond_b

    const/16 p1, 0x40

    int-to-byte p1, p1

    goto :goto_2

    :cond_b
    move p1, v0

    :goto_2
    iget-boolean v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    if-eqz v2, :cond_c

    or-int/lit8 p1, p1, 0x20

    int-to-byte p1, p1

    :cond_c
    iget-boolean v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    if-eqz v2, :cond_d

    or-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    :cond_d
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-boolean p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    if-eqz p1, :cond_e

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_e
    iget-boolean p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    if-eqz p1, :cond_f

    sget p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_CRC_DATA_LENGTH:I

    int-to-byte p1, p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->crcData:I

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_f
    iget-boolean p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    if-eqz p0, :cond_11

    sget p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_RESTRICTION_DATA_LENGTH:I

    int-to-byte p0, p0

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_10
    const/4 p2, 0x0

    :cond_11
    :goto_3
    if-eqz p2, :cond_12

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_12
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v1
.end method


# virtual methods
.method public addFrame(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 3

    :try_start_0
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->copyFrameIntoMap(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->convertFrame(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->copyFrameIntoMap(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V
    :try_end_0
    .catch Lcom/transsion/audiotagger/tag/InvalidFrameException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert frame:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public convertFrame(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidFrameException;
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v22Frame;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IPL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V

    move-object p1, v0

    :cond_0
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IPLS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyIPLS;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyPairs;->getPairing()Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/audiotagger/tag/datatype/Pair;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/datatype/Pair;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/audiotagger/tag/id3/valuepair/StandardIPLSKey;->isKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/datatype/Pair;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/audiotagger/tag/id3/valuepair/MusicianCredits;->isKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;

    move-object v3, p1

    check-cast v3, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    const-string v4, "TIPL"

    invoke-direct {v0, v3, v4}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;Ljava/lang/String;)V

    new-instance v4, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result v5

    invoke-direct {v4, v5, v1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTIPL;-><init>(BLjava/util/List;)V

    invoke-virtual {v0, v4}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->setBody(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;

    const-string v1, "TMCL"

    invoke-direct {v0, v3, v1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTMCL;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result p1

    invoke-direct {v1, p1, v2}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTMCL;-><init>(BLjava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->setBody(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object p0
.end method

.method public copyPrimitives(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V
    .locals 2

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Copying primitives"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->copyPrimitives(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;)V

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    iget-boolean v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->footer:Z

    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->footer:Z

    iget-boolean v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    iget-boolean v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    iget-byte v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    iget-byte v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    iget-byte v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    iget-byte v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    iget-byte p1, p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    iput-byte p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    :cond_0
    return-void
.end method

.method public createArtworkField([BLjava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 2

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->COVER_ART:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->getFrameAndSubIdFromGenericKey(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->createFrame(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyAPIC;

    const-string v1, "PictureData"

    invoke-virtual {v0, v1, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "PictureType"

    sget-object v1, Lcom/transsion/audiotagger/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "MIMEType"

    invoke-virtual {v0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "Description"

    const-string p2, ""

    invoke-virtual {v0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

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

    if-eqz p1, :cond_4

    .line 15
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    .line 16
    aget-object p2, p2, v0

    if-eqz p2, :cond_1

    .line 17
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->getFrameAndSubIdFromGenericKey(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->createFrame(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;

    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTCON;

    .line 20
    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isWriteMp3GenresAsText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p1, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p2}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTCON;->convertGenericToID3v24Genre(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    :goto_0
    return-object p0

    .line 23
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    return-object p0

    .line 26
    :cond_4
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public createField(Lcom/transsion/audiotagger/tag/id3/ID3v24FieldKey;Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24FieldKey;->getSubId()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;Lcom/transsion/audiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->doCreateTagField(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public createField(Lcom/transsion/audiotagger/tag/images/Artwork;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->COVER_ART:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->getFrameAndSubIdFromGenericKey(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->createFrame(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyAPIC;

    .line 5
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->isLinked()Z

    move-result v1

    const-string v2, ""

    const-string v3, "Description"

    const-string v4, "MIMEType"

    const-string v5, "PictureType"

    const-string v6, "PictureData"

    if-nez v1, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getBinaryData()[B

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getPictureType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0, v3, v2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    .line 10
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    const-string v7, "ISO-8859-1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/images/Artwork;->getPictureType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    const-string p1, "-->"

    invoke-virtual {v0, v4, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v0, v3, v2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic createFrame(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->createFrame(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;

    move-result-object p0

    return-object p0
.end method

.method public createFrame(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;
    .locals 0

    .line 2
    new-instance p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public createStructure()V
    .locals 5

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tag"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->createStructureHeader()V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, ""

    const-string v3, "header"

    invoke-virtual {v0, v3, v1}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "unsyncronisation"

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->isUnsynchronization()Z

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "crcdata"

    iget v4, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->crcData:I

    invoke-virtual {v0, v1, v4}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "experimental"

    iget-boolean v4, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->experimental:Z

    invoke-virtual {v0, v1, v4}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "extended"

    iget-boolean v4, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->extended:Z

    invoke-virtual {v0, v1, v4}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "paddingsize"

    iget v4, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->paddingSize:I

    invoke-virtual {v0, v1, v4}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "footer"

    iget-boolean v4, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->footer:Z

    invoke-virtual {v0, v1, v4}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "imageEncodingRestriction"

    iget v4, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->paddingSize:I

    invoke-virtual {v0, v1, v4}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "imageSizeRestriction"

    iget-byte v4, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    invoke-virtual {v0, v1, v4}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "tagRestriction"

    iget-boolean v4, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    invoke-virtual {v0, v1, v4}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "tagSizeRestriction"

    iget-byte v4, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    invoke-virtual {v0, v1, v4}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "textFieldSizeRestriction"

    iget-byte v4, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    invoke-virtual {v0, v1, v4}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "textEncodingRestriction"

    iget-byte v4, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    invoke-virtual {v0, v1, v4}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "updateTag"

    iget-boolean v4, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    invoke-virtual {v0, v1, v4}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->createStructureBody()V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    return-void
.end method

.method public deleteField(Lcom/transsion/audiotagger/tag/id3/ID3v24FieldKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24FieldKey;->getSubId()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;Lcom/transsion/audiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public deleteField(Ljava/lang/String;)V
    .locals 2

    .line 3
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;Lcom/transsion/audiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;

    iget-boolean v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->footer:Z

    iget-boolean v3, v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->footer:Z

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    iget-byte v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    iget-byte v3, v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-byte v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    iget-byte v3, v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    iget-boolean v3, v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-byte v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    iget-byte v3, v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget-byte v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    iget-byte v3, v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget-byte v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    iget-byte v3, v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget-boolean v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    iget-boolean v0, v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    if-ne v2, v0, :cond_8

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1
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

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTCON;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getValues()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTCON;->convertID3v24GenreToGeneric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getAll(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getArtworkList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/images/Artwork;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->COVER_ART:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/TagField;

    check-cast v1, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyAPIC;

    invoke-static {}, Lcom/transsion/audiotagger/tag/images/ArtworkFactory;->getNew()Lcom/transsion/audiotagger/tag/images/Artwork;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyAPIC;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/transsion/audiotagger/tag/images/Artwork;->setMimeType(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyAPIC;->getPictureType()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/transsion/audiotagger/tag/images/Artwork;->setPictureType(I)V

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyAPIC;->isImageUrl()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/transsion/audiotagger/tag/images/Artwork;->setLinked(Z)V

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyAPIC;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/transsion/audiotagger/tag/images/Artwork;->setImageUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyAPIC;->getImageData()[B

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/transsion/audiotagger/tag/images/Artwork;->setBinaryData([B)V

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getFirst(Lcom/transsion/audiotagger/tag/id3/ID3v24FieldKey;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frames;->getInstanceOf()Lcom/transsion/audiotagger/tag/id3/ID3v24Frames;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frames;->getGenericKeyFromId3(Lcom/transsion/audiotagger/tag/id3/ID3v24FieldKey;)Lcom/transsion/audiotagger/tag/FieldKey;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24FieldKey;->getSubId()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;Lcom/transsion/audiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-super {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->doGetValueAtIndex(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public getFrameAndSubIdFromGenericKey(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;
    .locals 3

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frames;->getInstanceOf()Lcom/transsion/audiotagger/tag/id3/ID3v24Frames;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frames;->getId3KeyFromGenericKey(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/id3/ID3v24FieldKey;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/ID3v24FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/ID3v24FieldKey;->getSubId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;Lcom/transsion/audiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getID3Frames()Lcom/transsion/audiotagger/tag/id3/ID3Frames;
    .locals 0

    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frames;->getInstanceOf()Lcom/transsion/audiotagger/tag/id3/ID3v24Frames;

    move-result-object p0

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 0

    const-string p0, "ID3v2.40"

    return-object p0
.end method

.method public getMajorVersion()B
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getPreferredFrameOrderComparator()Ljava/util/Comparator;
    .locals 0

    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->getInstanceof()Lcom/transsion/audiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;

    move-result-object p0

    return-object p0
.end method

.method public getRelease()B
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getRevision()B
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSize()I
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->extended:Z

    const/16 v1, 0xa

    if-eqz v0, :cond_2

    sget v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_LENGTH:I

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_UPDATE_LENGTH:I

    add-int/2addr v0, v1

    :cond_0
    iget-boolean v1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr v0, v1

    :cond_1
    move v1, v0

    iget-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_RESTRICTION_LENGTH:I

    add-int/2addr v1, v0

    :cond_2
    invoke-super {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getSize()I

    move-result p0

    add-int/2addr v1, p0

    sget-object p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag Size is"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return v1
.end method

.method public getValue(Lcom/transsion/audiotagger/tag/FieldKey;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_2

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTCON;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getValues()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTCON;->convertID3v24GenreToGeneric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->getValue(Lcom/transsion/audiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>()V

    throw p0
.end method

.method public isUnsynchronization()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->unsynchronization:Z

    return p0
.end method

.method public processDuplicateFrame(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->getOriginalID()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->getOriginalID()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TYER"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->getYear()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->setYear(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->getOriginalID()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TDAT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->getDate()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->setDate(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->isMonthOnly()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->setMonthOnly(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->getOriginalID()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TIME"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->getTime()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->setTime(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->isHoursOnly()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->setHoursOnly(Z)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->getFormattedText()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Text"

    invoke-virtual {p0, p2, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    instance-of p2, p2, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyUnsupported;

    if-eqz p2, :cond_5

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    sget-object p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found duplicate TDRC frame in invalid situation,discarding:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/TagException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->seek(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":Reading ID3v24 tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->readHeaderFlags(Ljava/nio/ByteBuffer;)V

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/ID3SyncSafeInteger;->bufferToValue(Ljava/nio/ByteBuffer;)I

    move-result v0

    sget-object v1, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":Reading tag from file size set in header is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->extended:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->readExtendedHeader(Ljava/nio/ByteBuffer;I)V

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->readFrames(Ljava/nio/ByteBuffer;I)V

    return-void

    :cond_1
    new-instance p1, Lcom/transsion/audiotagger/tag/TagNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " tag not found"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readFrames(Ljava/nio/ByteBuffer;I)V
    .locals 4

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":Start of frame body at"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->frameMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->encryptedFrameMap:Ljava/util/HashMap;

    iput p2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->fileReadSize:I

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":Start of frame body at:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",frames data size is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-gt v0, p2, :cond_0

    :try_start_0
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":looking for next frame at:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->loadFrameIntoMap(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V
    :try_end_0
    .catch Lcom/transsion/audiotagger/tag/PaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/transsion/audiotagger/tag/EmptyFrameException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/transsion/audiotagger/tag/InvalidFrameIdentifierException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/transsion/audiotagger/tag/InvalidFrameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/transsion/audiotagger/tag/InvalidDataTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception v0

    goto/16 :goto_4

    :goto_1
    sget-object v1, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":Corrupt Frame:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    goto :goto_0

    :goto_2
    sget-object p2, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":Invalid Frame:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    iget p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    goto :goto_5

    :goto_3
    sget-object p2, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":Invalid Frame Identifier:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    iget p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->invalidFrames:I

    goto :goto_5

    :goto_4
    sget-object v1, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":Empty Frame:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->emptyFrameBytes:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->emptyFrameBytes:I

    goto/16 :goto_0

    :catch_4
    sget-object p2, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":Found padding starting at:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_0
    :goto_5
    return-void
.end method

.method public write(Ljava/io/File;J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing tag to file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->writeFramesToBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 4
    array-length v0, v4

    add-int/lit8 v0, v0, 0xa

    long-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->calculateTagSize(II)I

    move-result v0

    .line 5
    array-length v1, v4

    add-int/lit8 v1, v1, 0xa

    sub-int v5, v0, v1

    .line 6
    array-length v1, v4

    invoke-direct {p0, v5, v1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v6, v0

    move-wide v7, p2

    .line 7
    invoke-virtual/range {v1 .. v8}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->writeBufferToFile(Ljava/io/File;Ljava/nio/ByteBuffer;[BIIJ)V

    int-to-long p0, v0

    return-wide p0
.end method

.method public write(Ljava/nio/channels/WritableByteChannel;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Writing tag to channel"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->writeFramesToBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    if-lez p2, :cond_0

    .line 10
    array-length v1, v0

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {p0, v1, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->calculateTagSize(II)I

    move-result p2

    .line 11
    array-length v1, v0

    add-int/lit8 v1, v1, 0xa

    sub-int/2addr p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 12
    :goto_0
    array-length v1, v0

    invoke-direct {p0, p2, v1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Tag;->writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 13
    invoke-interface {p1, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 14
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Tag;->writePadding(Ljava/nio/channels/WritableByteChannel;I)V

    return-void
.end method
