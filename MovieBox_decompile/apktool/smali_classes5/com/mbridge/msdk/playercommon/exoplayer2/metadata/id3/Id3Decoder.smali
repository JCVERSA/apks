.class public final Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;,
        Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$Id3Header;
    }
.end annotation


# static fields
.field private static final FRAME_FLAG_V3_HAS_GROUP_IDENTIFIER:I = 0x20

.field private static final FRAME_FLAG_V3_IS_COMPRESSED:I = 0x80

.field private static final FRAME_FLAG_V3_IS_ENCRYPTED:I = 0x40

.field private static final FRAME_FLAG_V4_HAS_DATA_LENGTH:I = 0x1

.field private static final FRAME_FLAG_V4_HAS_GROUP_IDENTIFIER:I = 0x40

.field private static final FRAME_FLAG_V4_IS_COMPRESSED:I = 0x8

.field private static final FRAME_FLAG_V4_IS_ENCRYPTED:I = 0x4

.field private static final FRAME_FLAG_V4_IS_UNSYNCHRONIZED:I = 0x2

.field public static final ID3_HEADER_LENGTH:I = 0xa

.field public static final ID3_TAG:I

.field private static final ID3_TEXT_ENCODING_ISO_8859_1:I = 0x0

.field private static final ID3_TEXT_ENCODING_UTF_16:I = 0x1

.field private static final ID3_TEXT_ENCODING_UTF_16BE:I = 0x2

.field private static final ID3_TEXT_ENCODING_UTF_8:I = 0x3

.field public static final NO_FRAMES_PREDICATE:Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

.field private static final TAG:Ljava/lang/String; = "Id3Decoder"


# instance fields
.field private final framePredicate:Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->NO_FRAMES_PREDICATE:Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    .line 7
    .line 8
    const-string v0, "ID3"

    .line 9
    .line 10
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->ID3_TAG:I

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;-><init>(Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)V

    return-void
.end method

.method public constructor <init>(Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->framePredicate:Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    return-void
.end method

.method private static copyOfRangeIfValid([BII)[B
    .locals 0

    .line 1
    if-gt p2, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    new-array p0, p0, [B

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static decodeApicFrame(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;II)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ApicFrame;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    add-int/lit8 p1, p1, -0x1

    .line 10
    .line 11
    new-array v2, p1, [B

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p0, v2, v3, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 15
    .line 16
    .line 17
    const-string p0, "ISO-8859-1"

    .line 18
    .line 19
    const-string v4, "image/"

    .line 20
    .line 21
    const/4 v5, 0x2

    .line 22
    if-ne p2, v5, :cond_1

    .line 23
    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    new-instance v4, Ljava/lang/String;

    .line 33
    .line 34
    const/4 v6, 0x3

    .line 35
    invoke-direct {v4, v2, v3, v6, p0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string p2, "image/jpg"

    .line 50
    .line 51
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_0

    .line 56
    .line 57
    const-string p0, "image/jpeg"

    .line 58
    .line 59
    :cond_0
    move p2, v5

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-static {v2, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    new-instance v6, Ljava/lang/String;

    .line 66
    .line 67
    invoke-direct {v6, v2, v3, p2, p0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const/16 v3, 0x2f

    .line 75
    .line 76
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    const/4 v6, -0x1

    .line 81
    if-ne v3, v6, :cond_2

    .line 82
    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    :cond_2
    :goto_0
    add-int/lit8 v3, p2, 0x1

    .line 99
    .line 100
    aget-byte v3, v2, v3

    .line 101
    .line 102
    and-int/lit16 v3, v3, 0xff

    .line 103
    .line 104
    add-int/2addr p2, v5

    .line 105
    invoke-static {v2, p2, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    new-instance v5, Ljava/lang/String;

    .line 110
    .line 111
    sub-int v6, v4, p2

    .line 112
    .line 113
    invoke-direct {v5, v2, p2, v6, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    add-int/2addr v4, p2

    .line 121
    invoke-static {v2, v4, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->copyOfRangeIfValid([BII)[B

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    new-instance p2, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ApicFrame;

    .line 126
    .line 127
    invoke-direct {p2, p0, v5, v3, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    .line 128
    .line 129
    .line 130
    return-object p2
.end method

.method private static decodeBinaryFrame(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/BinaryFrame;
    .locals 2

    .line 1
    new-array v0, p1, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 5
    .line 6
    .line 7
    new-instance p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/BinaryFrame;

    .line 8
    .line 9
    invoke-direct {p0, p2, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/BinaryFrame;-><init>(Ljava/lang/String;[B)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method private static decodeChapterFrame(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IIZILcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterFrame;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    iget-object v2, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    .line 7
    .line 8
    invoke-static {v2, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    new-instance v4, Ljava/lang/String;

    .line 13
    .line 14
    iget-object v3, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    .line 15
    .line 16
    sub-int v5, v2, v1

    .line 17
    .line 18
    const-string v6, "ISO-8859-1"

    .line 19
    .line 20
    invoke-direct {v4, v3, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    const-wide v7, 0xffffffffL

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    cmp-long v9, v2, v7

    .line 46
    .line 47
    const-wide/16 v10, -0x1

    .line 48
    .line 49
    if-nez v9, :cond_0

    .line 50
    .line 51
    move-wide v12, v10

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move-wide v12, v2

    .line 54
    :goto_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    cmp-long v7, v2, v7

    .line 59
    .line 60
    if-nez v7, :cond_1

    .line 61
    .line 62
    move-wide v9, v10

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move-wide v9, v2

    .line 65
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    add-int v1, v1, p1

    .line 71
    .line 72
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-ge v3, v1, :cond_3

    .line 77
    .line 78
    move/from16 v3, p2

    .line 79
    .line 80
    move/from16 v7, p3

    .line 81
    .line 82
    move/from16 v8, p4

    .line 83
    .line 84
    move-object/from16 v11, p5

    .line 85
    .line 86
    invoke-static {v3, p0, v7, v8, v11}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->decodeFrame(ILcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;ZILcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;

    .line 87
    .line 88
    .line 89
    move-result-object v14

    .line 90
    if-eqz v14, :cond_2

    .line 91
    .line 92
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    new-array v11, v0, [Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;

    .line 101
    .line 102
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterFrame;

    .line 106
    .line 107
    move-object v3, v0

    .line 108
    move-wide v7, v12

    .line 109
    invoke-direct/range {v3 .. v11}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterFrame;-><init>(Ljava/lang/String;IIJJ[Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;)V

    .line 110
    .line 111
    .line 112
    return-object v0
.end method

.method private static decodeChapterTOCFrame(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IIZILcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    iget-object v2, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    .line 7
    .line 8
    invoke-static {v2, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    new-instance v3, Ljava/lang/String;

    .line 13
    .line 14
    iget-object v4, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    .line 15
    .line 16
    sub-int v5, v2, v1

    .line 17
    .line 18
    const-string v6, "ISO-8859-1"

    .line 19
    .line 20
    invoke-direct {v3, v4, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    add-int/2addr v2, v4

    .line 25
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    and-int/lit8 v5, v2, 0x2

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    if-eqz v5, :cond_0

    .line 36
    .line 37
    move v5, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v5, v7

    .line 40
    :goto_0
    and-int/2addr v2, v4

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    move v2, v4

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move v2, v7

    .line 46
    :goto_1
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    new-array v9, v8, [Ljava/lang/String;

    .line 51
    .line 52
    :goto_2
    if-ge v7, v8, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    iget-object v11, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    .line 59
    .line 60
    invoke-static {v11, v10}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    new-instance v12, Ljava/lang/String;

    .line 65
    .line 66
    iget-object v13, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    .line 67
    .line 68
    sub-int v14, v11, v10

    .line 69
    .line 70
    invoke-direct {v12, v13, v10, v14, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    aput-object v12, v9, v7

    .line 74
    .line 75
    add-int/2addr v11, v4

    .line 76
    invoke-virtual {p0, v11}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 77
    .line 78
    .line 79
    add-int/lit8 v7, v7, 0x1

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    add-int v1, v1, p1

    .line 88
    .line 89
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-ge v6, v1, :cond_4

    .line 94
    .line 95
    move/from16 v6, p2

    .line 96
    .line 97
    move/from16 v7, p3

    .line 98
    .line 99
    move/from16 v8, p4

    .line 100
    .line 101
    move-object/from16 v10, p5

    .line 102
    .line 103
    invoke-static {v6, p0, v7, v8, v10}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->decodeFrame(ILcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;ZILcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    if-eqz v11, :cond_3

    .line 108
    .line 109
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    new-array v0, v0, [Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;

    .line 118
    .line 119
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    new-instance v1, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;

    .line 123
    .line 124
    move-object p0, v1

    .line 125
    move-object/from16 p1, v3

    .line 126
    .line 127
    move/from16 p2, v5

    .line 128
    .line 129
    move/from16 p3, v2

    .line 130
    .line 131
    move-object/from16 p4, v9

    .line 132
    .line 133
    move-object/from16 p5, v0

    .line 134
    .line 135
    invoke-direct/range {p0 .. p5}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;)V

    .line 136
    .line 137
    .line 138
    return-object v1
.end method

.method private static decodeCommentFrame(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/CommentFrame;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ge p1, v0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x3

    .line 15
    new-array v4, v3, [B

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-virtual {p0, v4, v5, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 19
    .line 20
    .line 21
    new-instance v6, Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {v6, v4, v5, v3}, Ljava/lang/String;-><init>([BII)V

    .line 24
    .line 25
    .line 26
    sub-int/2addr p1, v0

    .line 27
    new-array v0, p1, [B

    .line 28
    .line 29
    invoke-virtual {p0, v0, v5, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v5, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    new-instance p1, Ljava/lang/String;

    .line 37
    .line 38
    invoke-direct {p1, v0, v5, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    add-int/2addr p0, v3

    .line 46
    invoke-static {v0, p0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-static {v0, p0, v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/CommentFrame;

    .line 55
    .line 56
    invoke-direct {v0, v6, p1, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v0
.end method

.method private static decodeFrame(ILcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;ZILcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;
    .locals 19

    move/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    const/4 v12, 0x3

    if-lt v0, v12, :cond_0

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    move v13, v1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x4

    if-ne v0, v14, :cond_2

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    if-nez p2, :cond_1

    and-int/lit16 v2, v1, 0xff

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v2, v3

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v2, v3

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v1, v2

    :cond_1
    :goto_1
    move v15, v1

    goto :goto_2

    :cond_2
    if-ne v0, v12, :cond_3

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v1

    goto :goto_1

    :goto_2
    if-lt v0, v12, :cond_4

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    move v6, v1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    const/16 v16, 0x0

    if-nez v8, :cond_5

    if-nez v9, :cond_5

    if-nez v10, :cond_5

    if-nez v13, :cond_5

    if-nez v15, :cond_5

    if-nez v6, :cond_5

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v16

    .line 10
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    add-int v5, v1, v15

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    const-string v4, "Id3Decoder"

    if-le v5, v1, :cond_6

    .line 12
    const-string v0, "Frame size exceeds remaining tag data"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v16

    :cond_6
    if-eqz p4, :cond_7

    move-object/from16 v1, p4

    move/from16 v2, p0

    move v3, v8

    move-object v11, v4

    move v4, v9

    move v14, v5

    move v5, v10

    move/from16 v18, v6

    move v6, v13

    .line 14
    invoke-interface/range {v1 .. v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;->evaluate(IIIII)Z

    move-result v1

    if-nez v1, :cond_8

    .line 15
    invoke-virtual {v7, v14}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v16

    :cond_7
    move-object v11, v4

    move v14, v5

    move/from16 v18, v6

    :cond_8
    const/4 v1, 0x1

    if-ne v0, v12, :cond_c

    move/from16 v2, v18

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_9

    move v3, v1

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    and-int/lit8 v4, v2, 0x40

    if-eqz v4, :cond_a

    move v4, v1

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    :goto_5
    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_b

    move v2, v1

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    move/from16 v17, v3

    move v5, v4

    const/4 v6, 0x0

    move v3, v2

    move/from16 v4, v17

    goto :goto_c

    :cond_c
    move/from16 v2, v18

    const/4 v3, 0x4

    if-ne v0, v3, :cond_12

    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_d

    move v3, v1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_e

    move v4, v1

    goto :goto_8

    :cond_e
    const/4 v4, 0x0

    :goto_8
    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_f

    move v5, v1

    goto :goto_9

    :cond_f
    const/4 v5, 0x0

    :goto_9
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_10

    move v6, v1

    goto :goto_a

    :cond_10
    const/4 v6, 0x0

    :goto_a
    and-int/2addr v2, v1

    if-eqz v2, :cond_11

    move/from16 v17, v1

    goto :goto_c

    :cond_11
    :goto_b
    const/16 v17, 0x0

    goto :goto_c

    :cond_12
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_b

    :goto_c
    if-nez v4, :cond_27

    if-eqz v5, :cond_13

    goto/16 :goto_10

    :cond_13
    if-eqz v3, :cond_14

    add-int/lit8 v15, v15, -0x1

    .line 16
    invoke-virtual {v7, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_14
    if-eqz v17, :cond_15

    add-int/lit8 v15, v15, -0x4

    const/4 v1, 0x4

    .line 17
    invoke-virtual {v7, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_15
    if-eqz v6, :cond_16

    .line 18
    invoke-static {v7, v15}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->removeUnsynchronization(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)I

    move-result v15

    :cond_16
    const/16 v1, 0x54

    const/16 v2, 0x58

    const/4 v3, 0x2

    if-ne v8, v1, :cond_18

    if-ne v9, v2, :cond_18

    if-ne v10, v2, :cond_18

    if-eq v0, v3, :cond_17

    if-ne v13, v2, :cond_18

    .line 19
    :cond_17
    :try_start_0
    invoke-static {v7, v15}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->decodeTxxxFrame(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_18
    if-ne v8, v1, :cond_19

    .line 20
    invoke-static {v0, v8, v9, v10, v13}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v7, v15, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->decodeTextInformationFrame(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1

    goto/16 :goto_e

    :cond_19
    const/16 v4, 0x57

    if-ne v8, v4, :cond_1b

    if-ne v9, v2, :cond_1b

    if-ne v10, v2, :cond_1b

    if-eq v0, v3, :cond_1a

    if-ne v13, v2, :cond_1b

    .line 22
    :cond_1a
    invoke-static {v7, v15}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->decodeWxxxFrame(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/UrlLinkFrame;

    move-result-object v1

    goto/16 :goto_e

    :cond_1b
    if-ne v8, v4, :cond_1c

    .line 23
    invoke-static {v0, v8, v9, v10, v13}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-static {v7, v15, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->decodeUrlLinkFrame(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/UrlLinkFrame;

    move-result-object v1

    goto/16 :goto_e

    :cond_1c
    const/16 v2, 0x49

    const/16 v4, 0x50

    if-ne v8, v4, :cond_1d

    const/16 v5, 0x52

    if-ne v9, v5, :cond_1d

    if-ne v10, v2, :cond_1d

    const/16 v5, 0x56

    if-ne v13, v5, :cond_1d

    .line 25
    invoke-static {v7, v15}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->decodePrivFrame(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/PrivFrame;

    move-result-object v1

    goto/16 :goto_e

    :cond_1d
    const/16 v5, 0x47

    const/16 v6, 0x4f

    if-ne v8, v5, :cond_1f

    const/16 v5, 0x45

    if-ne v9, v5, :cond_1f

    if-ne v10, v6, :cond_1f

    const/16 v5, 0x42

    if-eq v13, v5, :cond_1e

    if-ne v0, v3, :cond_1f

    .line 26
    :cond_1e
    invoke-static {v7, v15}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->decodeGeobFrame(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/GeobFrame;

    move-result-object v1

    goto/16 :goto_e

    :cond_1f
    const/16 v5, 0x41

    const/16 v12, 0x43

    if-ne v0, v3, :cond_20

    if-ne v8, v4, :cond_21

    if-ne v9, v2, :cond_21

    if-ne v10, v12, :cond_21

    goto :goto_d

    :cond_20
    if-ne v8, v5, :cond_21

    if-ne v9, v4, :cond_21

    if-ne v10, v2, :cond_21

    if-ne v13, v12, :cond_21

    .line 27
    :goto_d
    invoke-static {v7, v15, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->decodeApicFrame(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;II)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ApicFrame;

    move-result-object v1

    goto :goto_e

    :cond_21
    if-ne v8, v12, :cond_23

    if-ne v9, v6, :cond_23

    const/16 v2, 0x4d

    if-ne v10, v2, :cond_23

    if-eq v13, v2, :cond_22

    if-ne v0, v3, :cond_23

    .line 28
    :cond_22
    invoke-static {v7, v15}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->decodeCommentFrame(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/CommentFrame;

    move-result-object v1

    goto :goto_e

    :cond_23
    if-ne v8, v12, :cond_24

    const/16 v2, 0x48

    if-ne v9, v2, :cond_24

    if-ne v10, v5, :cond_24

    if-ne v13, v4, :cond_24

    move-object/from16 v1, p1

    move v2, v15

    move/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    .line 29
    invoke-static/range {v1 .. v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->decodeChapterFrame(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IIZILcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterFrame;

    move-result-object v1

    goto :goto_e

    :cond_24
    if-ne v8, v12, :cond_25

    if-ne v9, v1, :cond_25

    if-ne v10, v6, :cond_25

    if-ne v13, v12, :cond_25

    move-object/from16 v1, p1

    move v2, v15

    move/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    .line 30
    invoke-static/range {v1 .. v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->decodeChapterTOCFrame(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IIZILcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;

    move-result-object v1

    goto :goto_e

    .line 31
    :cond_25
    invoke-static {v0, v8, v9, v10, v13}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v7, v15, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->decodeBinaryFrame(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/BinaryFrame;

    move-result-object v1

    :goto_e
    if-nez v1, :cond_26

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to decode frame: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-static {v0, v8, v9, v10, v13}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", frameSize="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_26
    invoke-virtual {v7, v14}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    .line 37
    :catch_0
    :try_start_1
    const-string v0, "Unsupported character encoding"

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    invoke-virtual {v7, v14}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v16

    :goto_f
    invoke-virtual {v7, v14}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 39
    throw v0

    .line 40
    :cond_27
    :goto_10
    const-string v0, "Skipping unsupported compressed or encrypted frame"

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {v7, v14}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v16
.end method

.method private static decodeGeobFrame(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/GeobFrame;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    add-int/lit8 p1, p1, -0x1

    .line 10
    .line 11
    new-array v2, p1, [B

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p0, v2, v3, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    new-instance v4, Ljava/lang/String;

    .line 22
    .line 23
    const-string v5, "ISO-8859-1"

    .line 24
    .line 25
    invoke-direct {v4, v2, v3, p0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 p0, p0, 0x1

    .line 29
    .line 30
    invoke-static {v2, p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-static {v2, p0, v3, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    add-int/2addr v3, v5

    .line 43
    invoke-static {v2, v3, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-static {v2, v3, v5, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    add-int/2addr v5, v0

    .line 56
    invoke-static {v2, v5, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->copyOfRangeIfValid([BII)[B

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/GeobFrame;

    .line 61
    .line 62
    invoke-direct {v0, v4, p0, v1, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/GeobFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 63
    .line 64
    .line 65
    return-object v0
.end method

.method private static decodeHeader(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$Id3Header;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "Id3Decoder"

    .line 9
    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    const-string p0, "Data too short to be an ID3 tag"

    .line 13
    .line 14
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-object v2

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sget v1, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->ID3_TAG:I

    .line 23
    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    new-instance p0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v1, "Unexpected first three bytes of ID3 tag header: "

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    const/4 v6, 0x2

    .line 64
    const/4 v7, 0x4

    .line 65
    if-ne v0, v6, :cond_2

    .line 66
    .line 67
    and-int/lit8 p0, v4, 0x40

    .line 68
    .line 69
    if-eqz p0, :cond_5

    .line 70
    .line 71
    const-string p0, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme"

    .line 72
    .line 73
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    return-object v2

    .line 77
    :cond_2
    const/4 v6, 0x3

    .line 78
    if-ne v0, v6, :cond_3

    .line 79
    .line 80
    and-int/lit8 v2, v4, 0x40

    .line 81
    .line 82
    if-eqz v2, :cond_5

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 89
    .line 90
    .line 91
    add-int/2addr v2, v7

    .line 92
    sub-int/2addr v5, v2

    .line 93
    goto :goto_0

    .line 94
    :cond_3
    if-ne v0, v7, :cond_7

    .line 95
    .line 96
    and-int/lit8 v2, v4, 0x40

    .line 97
    .line 98
    if-eqz v2, :cond_4

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    add-int/lit8 v3, v2, -0x4

    .line 105
    .line 106
    invoke-virtual {p0, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 107
    .line 108
    .line 109
    sub-int/2addr v5, v2

    .line 110
    :cond_4
    and-int/lit8 p0, v4, 0x10

    .line 111
    .line 112
    if-eqz p0, :cond_5

    .line 113
    .line 114
    add-int/lit8 v5, v5, -0xa

    .line 115
    .line 116
    :cond_5
    :goto_0
    if-ge v0, v7, :cond_6

    .line 117
    .line 118
    and-int/lit16 p0, v4, 0x80

    .line 119
    .line 120
    if-eqz p0, :cond_6

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_6
    const/4 v1, 0x0

    .line 124
    :goto_1
    new-instance p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$Id3Header;

    .line 125
    .line 126
    invoke-direct {p0, v0, v1, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$Id3Header;-><init>(IZI)V

    .line 127
    .line 128
    .line 129
    return-object p0

    .line 130
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v1, "Skipped ID3 tag with unsupported majorVersion="

    .line 136
    .line 137
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    return-object v2
.end method

.method private static decodePrivFrame(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/PrivFrame;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    new-array v0, p1, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    new-instance v2, Ljava/lang/String;

    .line 12
    .line 13
    const-string v3, "ISO-8859-1"

    .line 14
    .line 15
    invoke-direct {v2, v0, v1, p0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    add-int/lit8 p0, p0, 0x1

    .line 19
    .line 20
    invoke-static {v0, p0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->copyOfRangeIfValid([BII)[B

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    new-instance p1, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/PrivFrame;

    .line 25
    .line 26
    invoke-direct {p1, v2, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/PrivFrame;-><init>(Ljava/lang/String;[B)V

    .line 27
    .line 28
    .line 29
    return-object p1
.end method

.method private static decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    if-le p2, p1, :cond_1

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-le p2, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 8
    .line 9
    sub-int/2addr p2, p1

    .line 10
    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_1
    :goto_0
    const-string p0, ""

    .line 15
    .line 16
    return-object p0
.end method

.method private static decodeTextInformationFrame(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ge p1, v1, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    invoke-static {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    sub-int/2addr p1, v1

    .line 15
    new-array v1, p1, [B

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-virtual {p0, v1, v4, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v4, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    new-instance p1, Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {p1, v1, v4, p0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    .line 31
    .line 32
    invoke-direct {p0, p2, v0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object p0
.end method

.method private static decodeTxxxFrame(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ge p1, v0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    sub-int/2addr p1, v0

    .line 15
    new-array v0, p1, [B

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {p0, v0, v3, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v3, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    new-instance p1, Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {p1, v0, v3, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    add-int/2addr p0, v3

    .line 35
    invoke-static {v0, p0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-static {v0, p0, v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    .line 44
    .line 45
    const-string v1, "TXXX"

    .line 46
    .line 47
    invoke-direct {v0, v1, p1, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method

.method private static decodeUrlLinkFrame(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/UrlLinkFrame;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    new-array v0, p1, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    new-instance p1, Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "ISO-8859-1"

    .line 14
    .line 15
    invoke-direct {p1, v0, v1, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/UrlLinkFrame;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p2, v0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method private static decodeWxxxFrame(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/UrlLinkFrame;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ge p1, v0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    sub-int/2addr p1, v0

    .line 15
    new-array v0, p1, [B

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {p0, v0, v3, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v3, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    new-instance p1, Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {p1, v0, v3, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/2addr p0, v1

    .line 35
    invoke-static {v0, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const-string v2, "ISO-8859-1"

    .line 40
    .line 41
    invoke-static {v0, p0, v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/UrlLinkFrame;

    .line 46
    .line 47
    const-string v1, "WXXX"

    .line 48
    .line 49
    invoke-direct {v0, v1, p1, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v0
.end method

.method private static delimiterLength(I)I
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x2

    .line 8
    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 10
    :goto_1
    return p0
.end method

.method private static getCharsetName(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    const-string p0, "ISO-8859-1"

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    const-string p0, "UTF-8"

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_1
    const-string p0, "UTF-16BE"

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_2
    const-string p0, "UTF-16"

    .line 20
    .line 21
    return-object p0
.end method

.method private static getFrameId(IIIII)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x2

    .line 5
    if-ne p0, v3, :cond_0

    .line 6
    .line 7
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    new-array p4, v2, [Ljava/lang/Object;

    .line 22
    .line 23
    aput-object p1, p4, v1

    .line 24
    .line 25
    aput-object p2, p4, v0

    .line 26
    .line 27
    aput-object p3, p4, v3

    .line 28
    .line 29
    const-string p1, "%c%c%c"

    .line 30
    .line 31
    invoke-static {p0, p1, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p4

    .line 54
    const/4 v4, 0x4

    .line 55
    new-array v4, v4, [Ljava/lang/Object;

    .line 56
    .line 57
    aput-object p1, v4, v1

    .line 58
    .line 59
    aput-object p2, v4, v0

    .line 60
    .line 61
    aput-object p3, v4, v3

    .line 62
    .line 63
    aput-object p4, v4, v2

    .line 64
    .line 65
    const-string p1, "%c%c%c%c"

    .line 66
    .line 67
    invoke-static {p0, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    :goto_0
    return-object p0
.end method

.method private static indexOfEos([BII)I
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p2, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-ne p2, v0, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    array-length p2, p0

    .line 12
    add-int/lit8 p2, p2, -0x1

    .line 13
    .line 14
    if-ge p1, p2, :cond_2

    .line 15
    .line 16
    rem-int/lit8 p2, p1, 0x2

    .line 17
    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    add-int/lit8 p2, p1, 0x1

    .line 21
    .line 22
    aget-byte p2, p0, p2

    .line 23
    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    return p1

    .line 27
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 28
    .line 29
    invoke-static {p0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    array-length p0, p0

    .line 35
    return p0

    .line 36
    :cond_3
    :goto_1
    return p1
.end method

.method private static indexOfZeroByte([BI)I
    .locals 1

    .line 1
    :goto_0
    array-length v0, p0

    .line 2
    if-ge p1, v0, :cond_1

    .line 3
    .line 4
    aget-byte v0, p0, p1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return p1

    .line 9
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    array-length p0, p0

    .line 13
    return p0
.end method

.method private static removeUnsynchronization(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    :goto_0
    add-int/lit8 v1, p0, 0x1

    .line 8
    .line 9
    if-ge v1, p1, :cond_1

    .line 10
    .line 11
    aget-byte v2, v0, p0

    .line 12
    .line 13
    const/16 v3, 0xff

    .line 14
    .line 15
    and-int/2addr v2, v3

    .line 16
    if-ne v2, v3, :cond_0

    .line 17
    .line 18
    aget-byte v2, v0, v1

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    add-int/lit8 v2, p0, 0x2

    .line 23
    .line 24
    sub-int p0, p1, p0

    .line 25
    .line 26
    add-int/lit8 p0, p0, -0x2

    .line 27
    .line 28
    invoke-static {v0, v2, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 p1, p1, -0x1

    .line 32
    .line 33
    :cond_0
    move p0, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return p1
.end method

.method private static validateFrames(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IIZ)Z
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x1

    .line 14
    move/from16 v5, p2

    .line 15
    .line 16
    if-lt v3, v5, :cond_c

    .line 17
    .line 18
    const/4 v3, 0x3

    .line 19
    const/4 v6, 0x0

    .line 20
    if-lt v0, v3, :cond_0

    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    .line 27
    .line 28
    .line 29
    move-result-wide v8

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto/16 :goto_5

    .line 37
    .line 38
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    .line 43
    .line 44
    .line 45
    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    int-to-long v8, v8

    .line 47
    move v10, v6

    .line 48
    :goto_1
    const-wide/16 v11, 0x0

    .line 49
    .line 50
    if-nez v7, :cond_1

    .line 51
    .line 52
    cmp-long v7, v8, v11

    .line 53
    .line 54
    if-nez v7, :cond_1

    .line 55
    .line 56
    if-nez v10, :cond_1

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 59
    .line 60
    .line 61
    return v4

    .line 62
    :cond_1
    const/4 v7, 0x4

    .line 63
    if-ne v0, v7, :cond_3

    .line 64
    .line 65
    if-nez p3, :cond_3

    .line 66
    .line 67
    const-wide/32 v13, 0x808080

    .line 68
    .line 69
    .line 70
    and-long/2addr v13, v8

    .line 71
    cmp-long v11, v13, v11

    .line 72
    .line 73
    if-eqz v11, :cond_2

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 76
    .line 77
    .line 78
    return v6

    .line 79
    :cond_2
    const-wide/16 v11, 0xff

    .line 80
    .line 81
    and-long v13, v8, v11

    .line 82
    .line 83
    const/16 v15, 0x8

    .line 84
    .line 85
    shr-long v15, v8, v15

    .line 86
    .line 87
    and-long/2addr v15, v11

    .line 88
    const/16 v17, 0x7

    .line 89
    .line 90
    shl-long v15, v15, v17

    .line 91
    .line 92
    or-long/2addr v13, v15

    .line 93
    const/16 v15, 0x10

    .line 94
    .line 95
    shr-long v15, v8, v15

    .line 96
    .line 97
    and-long/2addr v15, v11

    .line 98
    const/16 v17, 0xe

    .line 99
    .line 100
    shl-long v15, v15, v17

    .line 101
    .line 102
    or-long/2addr v13, v15

    .line 103
    const/16 v15, 0x18

    .line 104
    .line 105
    shr-long/2addr v8, v15

    .line 106
    and-long/2addr v8, v11

    .line 107
    const/16 v11, 0x15

    .line 108
    .line 109
    shl-long/2addr v8, v11

    .line 110
    or-long/2addr v8, v13

    .line 111
    :cond_3
    if-ne v0, v7, :cond_5

    .line 112
    .line 113
    and-int/lit8 v3, v10, 0x40

    .line 114
    .line 115
    if-eqz v3, :cond_4

    .line 116
    .line 117
    move v3, v4

    .line 118
    goto :goto_2

    .line 119
    :cond_4
    move v3, v6

    .line 120
    :goto_2
    and-int/lit8 v7, v10, 0x1

    .line 121
    .line 122
    if-eqz v7, :cond_7

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_5
    if-ne v0, v3, :cond_8

    .line 126
    .line 127
    and-int/lit8 v3, v10, 0x20

    .line 128
    .line 129
    if-eqz v3, :cond_6

    .line 130
    .line 131
    move v3, v4

    .line 132
    goto :goto_3

    .line 133
    :cond_6
    move v3, v6

    .line 134
    :goto_3
    and-int/lit16 v7, v10, 0x80

    .line 135
    .line 136
    if-eqz v7, :cond_7

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_7
    move v4, v6

    .line 140
    goto :goto_4

    .line 141
    :cond_8
    move v3, v6

    .line 142
    move v4, v3

    .line 143
    :goto_4
    if-eqz v4, :cond_9

    .line 144
    .line 145
    add-int/lit8 v3, v3, 0x4

    .line 146
    .line 147
    :cond_9
    int-to-long v3, v3

    .line 148
    cmp-long v3, v8, v3

    .line 149
    .line 150
    if-gez v3, :cond_a

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 153
    .line 154
    .line 155
    return v6

    .line 156
    :cond_a
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    .line 157
    .line 158
    .line 159
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    int-to-long v3, v3

    .line 161
    cmp-long v3, v3, v8

    .line 162
    .line 163
    if-gez v3, :cond_b

    .line 164
    .line 165
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 166
    .line 167
    .line 168
    return v6

    .line 169
    :cond_b
    long-to-int v3, v8

    .line 170
    :try_start_2
    invoke-virtual {v1, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :cond_c
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 176
    .line 177
    .line 178
    return v4

    .line 179
    :goto_5
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 180
    .line 181
    .line 182
    throw v0
.end method


# virtual methods
.method public decode(Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataInputBuffer;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->decode([BI)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    move-result-object p1

    return-object p1
.end method

.method public decode([BI)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;
    .locals 6

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v1, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-direct {v1, p1, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    .line 5
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->decodeHeader(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$Id3Header;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 7
    invoke-static {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x6

    goto :goto_0

    :cond_1
    const/16 v3, 0xa

    .line 8
    :goto_0
    invoke-static {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$100(Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v4

    .line 9
    invoke-static {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$200(Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 10
    invoke-static {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$100(Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->removeUnsynchronization(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)I

    move-result v4

    :cond_2
    add-int/2addr v2, v4

    .line 11
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 12
    invoke-static {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->validateFrames(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IIZ)Z

    move-result v2

    if-nez v2, :cond_4

    .line 13
    invoke-static {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_3

    const/4 v2, 0x1

    invoke-static {v1, v4, v3, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->validateFrames(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IIZ)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_1

    .line 14
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to validate ID3 tag with majorVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Id3Decoder"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 15
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    if-lt p2, v3, :cond_5

    .line 16
    invoke-static {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result p2

    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->framePredicate:Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    invoke-static {p2, v1, v4, v3, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder;->decodeFrame(ILcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;ZILcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 17
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_5
    new-instance p1, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    invoke-direct {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    return-object p1
.end method
