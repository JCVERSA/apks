.class public final Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;
.super Lcom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleDecoder;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;,
        Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    }
.end annotation


# static fields
.field private static final ATTR_BEGIN:Ljava/lang/String; = "begin"

.field private static final ATTR_DURATION:Ljava/lang/String; = "dur"

.field private static final ATTR_END:Ljava/lang/String; = "end"

.field private static final ATTR_REGION:Ljava/lang/String; = "region"

.field private static final ATTR_STYLE:Ljava/lang/String; = "style"

.field private static final CELL_RESOLUTION:Ljava/util/regex/Pattern;

.field private static final CLOCK_TIME:Ljava/util/regex/Pattern;

.field private static final DEFAULT_CELL_RESOLUTION:Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

.field private static final DEFAULT_FRAME_AND_TICK_RATE:Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

.field private static final DEFAULT_FRAME_RATE:I = 0x1e

.field private static final FONT_SIZE:Ljava/util/regex/Pattern;

.field private static final OFFSET_TIME:Ljava/util/regex/Pattern;

.field private static final PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "TtmlDecoder"

.field private static final TTP:Ljava/lang/String; = "http://www.w3.org/ns/ttml#parameter"


# instance fields
.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->CLOCK_TIME:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->OFFSET_TIME:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    const-string v0, "^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$"

    .line 26
    .line 27
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    .line 32
    .line 33
    const-string v0, "^(\\d+) (\\d+)$"

    .line 34
    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->CELL_RESOLUTION:Ljava/util/regex/Pattern;

    .line 40
    .line 41
    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    .line 42
    .line 43
    const/high16 v1, 0x41f00000    # 30.0f

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;-><init>(FII)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    .line 50
    .line 51
    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    .line 52
    .line 53
    const/16 v1, 0x20

    .line 54
    .line 55
    const/16 v2, 0xf

    .line 56
    .line 57
    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;-><init>(II)V

    .line 58
    .line 59
    .line 60
    sput-object v0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_CELL_RESOLUTION:Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    .line 61
    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const-string v0, "TtmlDecoder"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    new-instance v1, Ljava/lang/RuntimeException;

    .line 19
    .line 20
    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    .line 21
    .line 22
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    throw v1
.end method

.method private createIfNull(Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 4
    .line 5
    invoke-direct {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-object p1
.end method

.method private static isSupportedTag(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "tt"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "head"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, "body"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, "div"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    const-string v0, "p"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    const-string v0, "span"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    const-string v0, "br"

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    const-string v0, "style"

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    const-string v0, "styling"

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    const-string v0, "layout"

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_1

    .line 80
    .line 81
    const-string v0, "region"

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_1

    .line 88
    .line 89
    const-string v0, "metadata"

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_1

    .line 96
    .line 97
    const-string v0, "smpte:image"

    .line 98
    .line 99
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_1

    .line 104
    .line 105
    const-string v0, "smpte:data"

    .line 106
    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_1

    .line 112
    .line 113
    const-string v0, "smpte:information"

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-eqz p0, :cond_0

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_0
    const/4 p0, 0x0

    .line 123
    goto :goto_1

    .line 124
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 125
    :goto_1
    return p0
.end method

.method private parseCellResolution(Lorg/xmlpull/v1/XmlPullParser;Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 1
    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    .line 2
    .line 3
    const-string v1, "cellResolution"

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-object p2

    .line 12
    :cond_0
    sget-object v0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->CELL_RESOLUTION:Ljava/util/regex/Pattern;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const-string v2, "TtmlDecoder"

    .line 23
    .line 24
    const-string v3, "Ignoring malformed cell resolution: "

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return-object p2

    .line 47
    :cond_1
    const/4 v1, 0x1

    .line 48
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    const/4 v4, 0x2

    .line 57
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    new-instance v4, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    .line 70
    .line 71
    invoke-direct {v4, v1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;-><init>(II)V

    .line 72
    .line 73
    .line 74
    return-object v4

    .line 75
    :cond_2
    new-instance v4, Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;

    .line 76
    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v6, "Invalid cell resolution "

    .line 83
    .line 84
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, " "

    .line 91
    .line 92
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-direct {v4, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    return-object p2
.end method

.method private static parseFontSize(Ljava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 1
    const-string v0, "\\s+"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-ne v1, v3, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    array-length v1, v0

    .line 20
    if-ne v1, v2, :cond_5

    .line 21
    .line 22
    sget-object v1, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    .line 23
    .line 24
    aget-object v0, v0, v3

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "TtmlDecoder"

    .line 31
    .line 32
    const-string v4, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    .line 33
    .line 34
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const-string v4, "\'."

    .line 42
    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    const/4 p0, 0x3

    .line 46
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 51
    .line 52
    .line 53
    const/4 v5, -0x1

    .line 54
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    sparse-switch v6, :sswitch_data_0

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :sswitch_0
    const-string v6, "px"

    .line 63
    .line 64
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-nez v6, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    move v5, v2

    .line 72
    goto :goto_1

    .line 73
    :sswitch_1
    const-string v6, "em"

    .line 74
    .line 75
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-nez v6, :cond_2

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move v5, v3

    .line 83
    goto :goto_1

    .line 84
    :sswitch_2
    const-string v6, "%"

    .line 85
    .line 86
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-nez v6, :cond_3

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    const/4 v5, 0x0

    .line 94
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 95
    .line 96
    .line 97
    new-instance p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;

    .line 98
    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v0, "Invalid unit for fontSize: \'"

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p0

    .line 123
    :pswitch_0
    invoke-virtual {p1, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :pswitch_1
    invoke-virtual {p1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :pswitch_2
    invoke-virtual {p1, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 132
    .line 133
    .line 134
    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    invoke-virtual {p1, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setFontSize(F)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_4
    new-instance p1, Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;

    .line 151
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v1, "Invalid expression for fontSize: \'"

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-direct {p1, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p1

    .line 176
    :cond_5
    new-instance p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;

    .line 177
    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    const-string v1, "Invalid number of entries for fontSize: "

    .line 184
    .line 185
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    array-length v0, v0

    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v0, "."

    .line 193
    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw p0

    .line 205
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0xca8 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseFrameAndTickRates(Lorg/xmlpull/v1/XmlPullParser;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 1
    const-string v0, "frameRate"

    .line 2
    .line 3
    const-string v1, "http://www.w3.org/ns/ttml#parameter"

    .line 4
    .line 5
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 v0, 0x1e

    .line 17
    .line 18
    :goto_0
    const-string v2, "frameRateMultiplier"

    .line 19
    .line 20
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    const-string v3, " "

    .line 27
    .line 28
    invoke-static {v2, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    array-length v3, v2

    .line 33
    const/4 v4, 0x2

    .line 34
    if-ne v3, v4, :cond_1

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    aget-object v3, v2, v3

    .line 38
    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    int-to-float v3, v3

    .line 44
    const/4 v4, 0x1

    .line 45
    aget-object v2, v2, v4

    .line 46
    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    int-to-float v2, v2

    .line 52
    div-float/2addr v3, v2

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance p1, Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;

    .line 55
    .line 56
    const-string v0, "frameRateMultiplier doesn\'t have 2 parts"

    .line 57
    .line 58
    invoke-direct {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    .line 63
    .line 64
    :goto_1
    sget-object v2, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    .line 65
    .line 66
    iget v4, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->subFrameRate:I

    .line 67
    .line 68
    const-string v5, "subFrameRate"

    .line 69
    .line 70
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    if-eqz v5, :cond_3

    .line 75
    .line 76
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    :cond_3
    iget v2, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->tickRate:I

    .line 81
    .line 82
    const-string v5, "tickRate"

    .line 83
    .line 84
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    :cond_4
    new-instance p1, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    .line 95
    .line 96
    int-to-float v0, v0

    .line 97
    mul-float/2addr v0, v3

    .line 98
    invoke-direct {p1, v0, v4, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;-><init>(FII)V

    .line 99
    .line 100
    .line 101
    return-object p1
.end method

.method private parseHeader(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlRegion;",
            ">;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 2
    .line 3
    .line 4
    const-string v0, "style"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 17
    .line 18
    invoke-direct {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    array-length v2, v0

    .line 32
    const/4 v3, 0x0

    .line 33
    :goto_0
    if-ge v3, v2, :cond_1

    .line 34
    .line 35
    aget-object v4, v0, v3

    .line 36
    .line 37
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 42
    .line 43
    invoke-virtual {v1, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->chain(Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 44
    .line 45
    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->getId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->getId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const-string v0, "region"

    .line 64
    .line 65
    invoke-static {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-direct {p0, p1, p4}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->parseRegionAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlRegion;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    iget-object v1, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlRegion;->id:Ljava/lang/String;

    .line 78
    .line 79
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_1
    const-string v0, "head"

    .line 83
    .line 84
    invoke-static {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    .line 90
    return-object p2
.end method

.method private parseNode(Lorg/xmlpull/v1/XmlPullParser;Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlRegion;",
            ">;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;",
            ")",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    const/4 v6, 0x0

    .line 15
    invoke-direct {v0, v1, v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 16
    .line 17
    .line 18
    move-result-object v12

    .line 19
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    const-string v9, ""

    .line 25
    .line 26
    move-object v13, v6

    .line 27
    move-wide v15, v7

    .line 28
    move-wide/from16 v17, v15

    .line 29
    .line 30
    move-wide/from16 v19, v17

    .line 31
    .line 32
    move-object v14, v9

    .line 33
    const/4 v6, 0x0

    .line 34
    :goto_0
    if-ge v6, v5, :cond_7

    .line 35
    .line 36
    invoke-interface {v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    invoke-interface {v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v11

    .line 44
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 45
    .line 46
    .line 47
    const/16 v21, -0x1

    .line 48
    .line 49
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v22

    .line 53
    sparse-switch v22, :sswitch_data_0

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :sswitch_0
    const-string v10, "style"

    .line 58
    .line 59
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    if-nez v9, :cond_0

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    const/16 v21, 0x4

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :sswitch_1
    const-string v10, "begin"

    .line 70
    .line 71
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    if-nez v9, :cond_1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    const/16 v21, 0x3

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :sswitch_2
    const-string v10, "end"

    .line 82
    .line 83
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    if-nez v9, :cond_2

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    const/16 v21, 0x2

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :sswitch_3
    const-string v10, "dur"

    .line 94
    .line 95
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-nez v9, :cond_3

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    move/from16 v21, v4

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :sswitch_4
    const-string v10, "region"

    .line 106
    .line 107
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    if-nez v9, :cond_4

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    const/16 v21, 0x0

    .line 115
    .line 116
    :goto_1
    packed-switch v21, :pswitch_data_0

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :pswitch_0
    invoke-direct {v0, v11}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    array-length v10, v9

    .line 125
    if-lez v10, :cond_5

    .line 126
    .line 127
    move-object v13, v9

    .line 128
    :cond_5
    :goto_2
    move-object/from16 v9, p3

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :pswitch_1
    invoke-static {v11, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    .line 132
    .line 133
    .line 134
    move-result-wide v15

    .line 135
    goto :goto_2

    .line 136
    :pswitch_2
    invoke-static {v11, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    .line 137
    .line 138
    .line 139
    move-result-wide v17

    .line 140
    goto :goto_2

    .line 141
    :pswitch_3
    invoke-static {v11, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    .line 142
    .line 143
    .line 144
    move-result-wide v19

    .line 145
    goto :goto_2

    .line 146
    :pswitch_4
    move-object/from16 v9, p3

    .line 147
    .line 148
    invoke-interface {v9, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v10

    .line 152
    if-eqz v10, :cond_6

    .line 153
    .line 154
    move-object v14, v11

    .line 155
    :cond_6
    :goto_3
    add-int/2addr v6, v4

    .line 156
    goto :goto_0

    .line 157
    :cond_7
    if-eqz v2, :cond_9

    .line 158
    .line 159
    iget-wide v3, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;->startTimeUs:J

    .line 160
    .line 161
    cmp-long v5, v3, v7

    .line 162
    .line 163
    if-eqz v5, :cond_9

    .line 164
    .line 165
    cmp-long v5, v15, v7

    .line 166
    .line 167
    if-eqz v5, :cond_8

    .line 168
    .line 169
    add-long/2addr v15, v3

    .line 170
    :cond_8
    cmp-long v5, v17, v7

    .line 171
    .line 172
    if-eqz v5, :cond_9

    .line 173
    .line 174
    add-long v17, v17, v3

    .line 175
    .line 176
    :cond_9
    cmp-long v3, v17, v7

    .line 177
    .line 178
    if-nez v3, :cond_b

    .line 179
    .line 180
    cmp-long v3, v19, v7

    .line 181
    .line 182
    if-eqz v3, :cond_a

    .line 183
    .line 184
    add-long v19, v15, v19

    .line 185
    .line 186
    move-wide/from16 v10, v19

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_a
    if-eqz v2, :cond_b

    .line 190
    .line 191
    iget-wide v2, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;->endTimeUs:J

    .line 192
    .line 193
    cmp-long v4, v2, v7

    .line 194
    .line 195
    if-eqz v4, :cond_b

    .line 196
    .line 197
    move-wide v10, v2

    .line 198
    goto :goto_4

    .line 199
    :cond_b
    move-wide/from16 v10, v17

    .line 200
    .line 201
    :goto_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    move-wide v8, v15

    .line 206
    invoke-static/range {v7 .. v14}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;->buildNode(Ljava/lang/String;JJLcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    return-object v1

    .line 211
    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_4
        0x18601 -> :sswitch_3
        0x188db -> :sswitch_2
        0x59478a9 -> :sswitch_1
        0x68b1db1 -> :sswitch_0
    .end sparse-switch

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseRegionAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlRegion;
    .locals 11

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    const-string v1, "origin"

    .line 12
    .line 13
    invoke-static {p1, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v3, "TtmlDecoder"

    .line 18
    .line 19
    if-eqz v1, :cond_7

    .line 20
    .line 21
    sget-object v4, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    .line 22
    .line 23
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_6

    .line 32
    .line 33
    const/4 v6, 0x1

    .line 34
    :try_start_0
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    const/high16 v8, 0x42c80000    # 100.0f

    .line 43
    .line 44
    div-float/2addr v7, v8

    .line 45
    const/4 v9, 0x2

    .line 46
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 51
    .line 52
    .line 53
    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    div-float/2addr v5, v8

    .line 55
    const-string v10, "extent"

    .line 56
    .line 57
    invoke-static {p1, v10}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    if-eqz v10, :cond_5

    .line 62
    .line 63
    invoke-virtual {v4, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    if-eqz v10, :cond_4

    .line 72
    .line 73
    :try_start_1
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    div-float/2addr v10, v8

    .line 82
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 87
    .line 88
    .line 89
    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    div-float/2addr v0, v8

    .line 91
    const-string v1, "displayAlign"

    .line 92
    .line 93
    invoke-static {p1, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-eqz p1, :cond_3

    .line 98
    .line 99
    invoke-static {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 104
    .line 105
    .line 106
    const-string v1, "center"

    .line 107
    .line 108
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_2

    .line 113
    .line 114
    const-string v1, "after"

    .line 115
    .line 116
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-nez p1, :cond_1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_1
    add-float/2addr v5, v0

    .line 124
    move v4, v5

    .line 125
    move v6, v9

    .line 126
    goto :goto_2

    .line 127
    :cond_2
    const/high16 p1, 0x40000000    # 2.0f

    .line 128
    .line 129
    div-float/2addr v0, p1

    .line 130
    add-float/2addr v5, v0

    .line 131
    :goto_0
    move v4, v5

    .line 132
    goto :goto_2

    .line 133
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 134
    move v6, p1

    .line 135
    goto :goto_0

    .line 136
    :goto_2
    iget p1, p2, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;->rows:I

    .line 137
    .line 138
    int-to-float p1, p1

    .line 139
    const/high16 p2, 0x3f800000    # 1.0f

    .line 140
    .line 141
    div-float v9, p2, p1

    .line 142
    .line 143
    new-instance p1, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlRegion;

    .line 144
    .line 145
    const/4 v5, 0x0

    .line 146
    const/4 v8, 0x1

    .line 147
    move-object v1, p1

    .line 148
    move v3, v7

    .line 149
    move v7, v10

    .line 150
    invoke-direct/range {v1 .. v9}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;FFIIFIF)V

    .line 151
    .line 152
    .line 153
    return-object p1

    .line 154
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string p2, "Ignoring region with malformed extent: "

    .line 160
    .line 161
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    return-object v0

    .line 175
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    const-string p2, "Ignoring region with unsupported extent: "

    .line 181
    .line 182
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    return-object v0

    .line 196
    :cond_5
    const-string p1, "Ignoring region without an extent"

    .line 197
    .line 198
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    return-object v0

    .line 202
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    const-string p2, "Ignoring region with malformed origin: "

    .line 208
    .line 209
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    return-object v0

    .line 223
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    const-string p2, "Ignoring region with unsupported origin: "

    .line 229
    .line 230
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    return-object v0

    .line 244
    :cond_7
    const-string p1, "Ignoring region without an origin"

    .line 245
    .line 246
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    return-object v0
.end method

.method private parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;
    .locals 12

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, -0x1

    .line 5
    const/4 v4, 0x1

    .line 6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 7
    .line 8
    .line 9
    move-result v5

    .line 10
    const/4 v6, 0x0

    .line 11
    move v7, v6

    .line 12
    :goto_0
    if-ge v7, v5, :cond_13

    .line 13
    .line 14
    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v8

    .line 18
    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v9

    .line 22
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 23
    .line 24
    .line 25
    const-string v10, "TtmlDecoder"

    .line 26
    .line 27
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v11

    .line 31
    sparse-switch v11, :sswitch_data_0

    .line 32
    .line 33
    .line 34
    :goto_1
    move v9, v3

    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :sswitch_0
    const-string v11, "backgroundColor"

    .line 38
    .line 39
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    if-nez v9, :cond_0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const/16 v9, 0x8

    .line 47
    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :sswitch_1
    const-string v11, "fontSize"

    .line 51
    .line 52
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    if-nez v9, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/4 v9, 0x7

    .line 60
    goto :goto_2

    .line 61
    :sswitch_2
    const-string v11, "color"

    .line 62
    .line 63
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    if-nez v9, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    const/4 v9, 0x6

    .line 71
    goto :goto_2

    .line 72
    :sswitch_3
    const-string v11, "id"

    .line 73
    .line 74
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    if-nez v9, :cond_3

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    const/4 v9, 0x5

    .line 82
    goto :goto_2

    .line 83
    :sswitch_4
    const-string v11, "fontWeight"

    .line 84
    .line 85
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    if-nez v9, :cond_4

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    move v9, v0

    .line 93
    goto :goto_2

    .line 94
    :sswitch_5
    const-string v11, "textDecoration"

    .line 95
    .line 96
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    if-nez v9, :cond_5

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    move v9, v1

    .line 104
    goto :goto_2

    .line 105
    :sswitch_6
    const-string v11, "textAlign"

    .line 106
    .line 107
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    if-nez v9, :cond_6

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_6
    move v9, v2

    .line 115
    goto :goto_2

    .line 116
    :sswitch_7
    const-string v11, "fontFamily"

    .line 117
    .line 118
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v9

    .line 122
    if-nez v9, :cond_7

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_7
    move v9, v4

    .line 126
    goto :goto_2

    .line 127
    :sswitch_8
    const-string v11, "fontStyle"

    .line 128
    .line 129
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    if-nez v9, :cond_8

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_8
    move v9, v6

    .line 137
    :goto_2
    packed-switch v9, :pswitch_data_0

    .line 138
    .line 139
    .line 140
    goto/16 :goto_7

    .line 141
    .line 142
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    :try_start_0
    invoke-static {v8}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ColorParser;->parseTtmlColor(Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    invoke-virtual {p2, v9}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setBackgroundColor(I)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .line 152
    .line 153
    goto/16 :goto_7

    .line 154
    .line 155
    :catch_0
    new-instance v9, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    const-string v11, "Failed parsing background value: "

    .line 161
    .line 162
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    goto/16 :goto_7

    .line 176
    .line 177
    :pswitch_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-static {v8, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->parseFontSize(Ljava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)V
    :try_end_1
    .catch Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    .line 183
    .line 184
    goto/16 :goto_7

    .line 185
    .line 186
    :catch_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v11, "Failed parsing fontSize value: "

    .line 192
    .line 193
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    goto/16 :goto_7

    .line 207
    .line 208
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    :try_start_2
    invoke-static {v8}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ColorParser;->parseTtmlColor(Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    move-result v9

    .line 216
    invoke-virtual {p2, v9}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setFontColor(I)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 217
    .line 218
    .line 219
    goto/16 :goto_7

    .line 220
    .line 221
    :catch_2
    new-instance v9, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    const-string v11, "Failed parsing color value: "

    .line 227
    .line 228
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    goto/16 :goto_7

    .line 242
    .line 243
    :pswitch_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v9

    .line 247
    const-string v10, "style"

    .line 248
    .line 249
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v9

    .line 253
    if-eqz v9, :cond_12

    .line 254
    .line 255
    invoke-direct {p0, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 256
    .line 257
    .line 258
    move-result-object p2

    .line 259
    invoke-virtual {p2, v8}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setId(Ljava/lang/String;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    goto/16 :goto_7

    .line 264
    .line 265
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    const-string v9, "bold"

    .line 270
    .line 271
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 272
    .line 273
    .line 274
    move-result v8

    .line 275
    invoke-virtual {p2, v8}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setBold(Z)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    goto/16 :goto_7

    .line 280
    .line 281
    :pswitch_5
    invoke-static {v8}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v8

    .line 285
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 286
    .line 287
    .line 288
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 289
    .line 290
    .line 291
    move-result v9

    .line 292
    sparse-switch v9, :sswitch_data_1

    .line 293
    .line 294
    .line 295
    :goto_3
    move v8, v3

    .line 296
    goto :goto_4

    .line 297
    :sswitch_9
    const-string v9, "linethrough"

    .line 298
    .line 299
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v8

    .line 303
    if-nez v8, :cond_9

    .line 304
    .line 305
    goto :goto_3

    .line 306
    :cond_9
    move v8, v1

    .line 307
    goto :goto_4

    .line 308
    :sswitch_a
    const-string v9, "nolinethrough"

    .line 309
    .line 310
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v8

    .line 314
    if-nez v8, :cond_a

    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_a
    move v8, v2

    .line 318
    goto :goto_4

    .line 319
    :sswitch_b
    const-string v9, "underline"

    .line 320
    .line 321
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v8

    .line 325
    if-nez v8, :cond_b

    .line 326
    .line 327
    goto :goto_3

    .line 328
    :cond_b
    move v8, v4

    .line 329
    goto :goto_4

    .line 330
    :sswitch_c
    const-string v9, "nounderline"

    .line 331
    .line 332
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v8

    .line 336
    if-nez v8, :cond_c

    .line 337
    .line 338
    goto :goto_3

    .line 339
    :cond_c
    move v8, v6

    .line 340
    :goto_4
    packed-switch v8, :pswitch_data_1

    .line 341
    .line 342
    .line 343
    goto/16 :goto_7

    .line 344
    .line 345
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 346
    .line 347
    .line 348
    move-result-object p2

    .line 349
    invoke-virtual {p2, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setLinethrough(Z)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 350
    .line 351
    .line 352
    move-result-object p2

    .line 353
    goto/16 :goto_7

    .line 354
    .line 355
    :pswitch_7
    invoke-direct {p0, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 356
    .line 357
    .line 358
    move-result-object p2

    .line 359
    invoke-virtual {p2, v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setLinethrough(Z)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 360
    .line 361
    .line 362
    move-result-object p2

    .line 363
    goto/16 :goto_7

    .line 364
    .line 365
    :pswitch_8
    invoke-direct {p0, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 366
    .line 367
    .line 368
    move-result-object p2

    .line 369
    invoke-virtual {p2, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setUnderline(Z)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 370
    .line 371
    .line 372
    move-result-object p2

    .line 373
    goto/16 :goto_7

    .line 374
    .line 375
    :pswitch_9
    invoke-direct {p0, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 376
    .line 377
    .line 378
    move-result-object p2

    .line 379
    invoke-virtual {p2, v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setUnderline(Z)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 380
    .line 381
    .line 382
    move-result-object p2

    .line 383
    goto/16 :goto_7

    .line 384
    .line 385
    :pswitch_a
    invoke-static {v8}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v8

    .line 389
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 390
    .line 391
    .line 392
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 393
    .line 394
    .line 395
    move-result v9

    .line 396
    sparse-switch v9, :sswitch_data_2

    .line 397
    .line 398
    .line 399
    :goto_5
    move v8, v3

    .line 400
    goto :goto_6

    .line 401
    :sswitch_d
    const-string v9, "start"

    .line 402
    .line 403
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v8

    .line 407
    if-nez v8, :cond_d

    .line 408
    .line 409
    goto :goto_5

    .line 410
    :cond_d
    move v8, v0

    .line 411
    goto :goto_6

    .line 412
    :sswitch_e
    const-string v9, "right"

    .line 413
    .line 414
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result v8

    .line 418
    if-nez v8, :cond_e

    .line 419
    .line 420
    goto :goto_5

    .line 421
    :cond_e
    move v8, v1

    .line 422
    goto :goto_6

    .line 423
    :sswitch_f
    const-string v9, "left"

    .line 424
    .line 425
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    move-result v8

    .line 429
    if-nez v8, :cond_f

    .line 430
    .line 431
    goto :goto_5

    .line 432
    :cond_f
    move v8, v2

    .line 433
    goto :goto_6

    .line 434
    :sswitch_10
    const-string v9, "end"

    .line 435
    .line 436
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v8

    .line 440
    if-nez v8, :cond_10

    .line 441
    .line 442
    goto :goto_5

    .line 443
    :cond_10
    move v8, v4

    .line 444
    goto :goto_6

    .line 445
    :sswitch_11
    const-string v9, "center"

    .line 446
    .line 447
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result v8

    .line 451
    if-nez v8, :cond_11

    .line 452
    .line 453
    goto :goto_5

    .line 454
    :cond_11
    move v8, v6

    .line 455
    :goto_6
    packed-switch v8, :pswitch_data_2

    .line 456
    .line 457
    .line 458
    goto :goto_7

    .line 459
    :pswitch_b
    invoke-direct {p0, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 460
    .line 461
    .line 462
    move-result-object p2

    .line 463
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 464
    .line 465
    invoke-virtual {p2, v8}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 466
    .line 467
    .line 468
    move-result-object p2

    .line 469
    goto :goto_7

    .line 470
    :pswitch_c
    invoke-direct {p0, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 471
    .line 472
    .line 473
    move-result-object p2

    .line 474
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 475
    .line 476
    invoke-virtual {p2, v8}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 477
    .line 478
    .line 479
    move-result-object p2

    .line 480
    goto :goto_7

    .line 481
    :pswitch_d
    invoke-direct {p0, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 482
    .line 483
    .line 484
    move-result-object p2

    .line 485
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 486
    .line 487
    invoke-virtual {p2, v8}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 488
    .line 489
    .line 490
    move-result-object p2

    .line 491
    goto :goto_7

    .line 492
    :pswitch_e
    invoke-direct {p0, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 493
    .line 494
    .line 495
    move-result-object p2

    .line 496
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 497
    .line 498
    invoke-virtual {p2, v8}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 499
    .line 500
    .line 501
    move-result-object p2

    .line 502
    goto :goto_7

    .line 503
    :pswitch_f
    invoke-direct {p0, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 504
    .line 505
    .line 506
    move-result-object p2

    .line 507
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 508
    .line 509
    invoke-virtual {p2, v8}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 510
    .line 511
    .line 512
    move-result-object p2

    .line 513
    goto :goto_7

    .line 514
    :pswitch_10
    invoke-direct {p0, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 515
    .line 516
    .line 517
    move-result-object p2

    .line 518
    invoke-virtual {p2, v8}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setFontFamily(Ljava/lang/String;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 519
    .line 520
    .line 521
    move-result-object p2

    .line 522
    goto :goto_7

    .line 523
    :pswitch_11
    invoke-direct {p0, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 524
    .line 525
    .line 526
    move-result-object p2

    .line 527
    const-string v9, "italic"

    .line 528
    .line 529
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 530
    .line 531
    .line 532
    move-result v8

    .line 533
    invoke-virtual {p2, v8}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setItalic(Z)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 534
    .line 535
    .line 536
    move-result-object p2

    .line 537
    :cond_12
    :goto_7
    add-int/2addr v7, v4

    .line 538
    goto/16 :goto_0

    .line 539
    .line 540
    :cond_13
    return-object p2

    .line 541
    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_8
        -0x48ff636d -> :sswitch_7
        -0x3f826a28 -> :sswitch_6
        -0x3468fa43 -> :sswitch_5
        -0x2bc67c59 -> :sswitch_4
        0xd1b -> :sswitch_3
        0x5a72f63 -> :sswitch_2
        0x15caa0f0 -> :sswitch_1
        0x4cb7f6d5 -> :sswitch_0
    .end sparse-switch

    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    :sswitch_data_1
    .sparse-switch
        -0x57195dd5 -> :sswitch_c
        -0x3d363934 -> :sswitch_b
        0x36723ff0 -> :sswitch_a
        0x641ec051 -> :sswitch_9
    .end sparse-switch

    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    :sswitch_data_2
    .sparse-switch
        -0x514d33ab -> :sswitch_11
        0x188db -> :sswitch_10
        0x32a007 -> :sswitch_f
        0x677c21c -> :sswitch_e
        0x68ac462 -> :sswitch_d
    .end sparse-switch

    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method private parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    new-array p1, p1, [Ljava/lang/String;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v0, "\\s+"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    return-object p1
.end method

.method private static parseTimeExpression(Ljava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    sget-object v2, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->CLOCK_TIME:Ljava/util/regex/Pattern;

    .line 4
    .line 5
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const/4 v6, 0x2

    .line 19
    const/4 v7, 0x1

    .line 20
    if-eqz v3, :cond_3

    .line 21
    .line 22
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v7

    .line 30
    const-wide/16 v9, 0xe10

    .line 31
    .line 32
    mul-long/2addr v7, v9

    .line 33
    long-to-double v7, v7

    .line 34
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v9

    .line 42
    const-wide/16 v11, 0x3c

    .line 43
    .line 44
    mul-long/2addr v9, v11

    .line 45
    long-to-double v9, v9

    .line 46
    add-double/2addr v7, v9

    .line 47
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v9

    .line 55
    long-to-double v9, v9

    .line 56
    add-double/2addr v7, v9

    .line 57
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-wide/16 v0, 0x0

    .line 62
    .line 63
    if-eqz p0, :cond_0

    .line 64
    .line 65
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 66
    .line 67
    .line 68
    move-result-wide v9

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    move-wide v9, v0

    .line 71
    :goto_0
    add-double/2addr v7, v9

    .line 72
    const/4 p0, 0x5

    .line 73
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    if-eqz p0, :cond_1

    .line 78
    .line 79
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v9

    .line 83
    long-to-float p0, v9

    .line 84
    iget v3, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    .line 85
    .line 86
    div-float/2addr p0, v3

    .line 87
    float-to-double v9, p0

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    move-wide v9, v0

    .line 90
    :goto_1
    add-double/2addr v7, v9

    .line 91
    const/4 p0, 0x6

    .line 92
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    if-eqz p0, :cond_2

    .line 97
    .line 98
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 99
    .line 100
    .line 101
    move-result-wide v0

    .line 102
    long-to-double v0, v0

    .line 103
    iget p0, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->subFrameRate:I

    .line 104
    .line 105
    int-to-double v2, p0

    .line 106
    div-double/2addr v0, v2

    .line 107
    iget p0, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    .line 108
    .line 109
    float-to-double p0, p0

    .line 110
    div-double/2addr v0, p0

    .line 111
    :cond_2
    add-double/2addr v7, v0

    .line 112
    mul-double/2addr v7, v4

    .line 113
    double-to-long p0, v7

    .line 114
    return-wide p0

    .line 115
    :cond_3
    sget-object v2, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->OFFSET_TIME:Ljava/util/regex/Pattern;

    .line 116
    .line 117
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_9

    .line 126
    .line 127
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 132
    .line 133
    .line 134
    move-result-wide v8

    .line 135
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 140
    .line 141
    .line 142
    const/4 v2, -0x1

    .line 143
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    sparse-switch v3, :sswitch_data_0

    .line 148
    .line 149
    .line 150
    :goto_2
    move v0, v2

    .line 151
    goto :goto_3

    .line 152
    :sswitch_0
    const-string v1, "ms"

    .line 153
    .line 154
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    if-nez p0, :cond_8

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :sswitch_1
    const-string v0, "t"

    .line 162
    .line 163
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    if-nez p0, :cond_4

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_4
    move v0, v1

    .line 171
    goto :goto_3

    .line 172
    :sswitch_2
    const-string v0, "m"

    .line 173
    .line 174
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    if-nez p0, :cond_5

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_5
    move v0, v6

    .line 182
    goto :goto_3

    .line 183
    :sswitch_3
    const-string v0, "h"

    .line 184
    .line 185
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result p0

    .line 189
    if-nez p0, :cond_6

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_6
    move v0, v7

    .line 193
    goto :goto_3

    .line 194
    :sswitch_4
    const-string v0, "f"

    .line 195
    .line 196
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result p0

    .line 200
    if-nez p0, :cond_7

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_7
    const/4 v0, 0x0

    .line 204
    :cond_8
    :goto_3
    packed-switch v0, :pswitch_data_0

    .line 205
    .line 206
    .line 207
    goto :goto_6

    .line 208
    :pswitch_0
    const-wide p0, 0x408f400000000000L    # 1000.0

    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    :goto_4
    div-double/2addr v8, p0

    .line 214
    goto :goto_6

    .line 215
    :pswitch_1
    iget p0, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->tickRate:I

    .line 216
    .line 217
    int-to-double p0, p0

    .line 218
    goto :goto_4

    .line 219
    :pswitch_2
    const-wide/high16 p0, 0x404e000000000000L    # 60.0

    .line 220
    .line 221
    :goto_5
    mul-double/2addr v8, p0

    .line 222
    goto :goto_6

    .line 223
    :pswitch_3
    const-wide p0, 0x40ac200000000000L    # 3600.0

    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    goto :goto_5

    .line 229
    :pswitch_4
    iget p0, p1, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    .line 230
    .line 231
    float-to-double p0, p0

    .line 232
    goto :goto_4

    .line 233
    :goto_6
    mul-double/2addr v8, v4

    .line 234
    double-to-long p0, v8

    .line 235
    return-wide p0

    .line 236
    :cond_9
    new-instance p1, Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;

    .line 237
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    const-string v1, "Malformed time expression: "

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    invoke-direct {p1, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw p1

    .line 259
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6d -> :sswitch_2
        0x74 -> :sswitch_1
        0xda6 -> :sswitch_0
    .end sparse-switch

    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected bridge synthetic decode([BIZ)Lcom/mbridge/msdk/playercommon/exoplayer2/text/Subtitle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->decode([BIZ)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlSubtitle;

    move-result-object p1

    return-object p1
.end method

.method protected decode([BIZ)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlSubtitle;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object p3, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {p3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p3

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    const-string v2, ""

    new-instance v3, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlRegion;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 7
    invoke-interface {p3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 8
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 9
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p2

    .line 10
    sget-object v2, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    .line 11
    sget-object v5, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_CELL_RESOLUTION:Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    :goto_0
    const/4 v6, 0x1

    if-eq p2, v6, :cond_9

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-nez v3, :cond_6

    .line 13
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "tt"

    if-ne p2, v8, :cond_3

    .line 14
    :try_start_1
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 15
    invoke-direct {p0, p3}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->parseFrameAndTickRates(Lorg/xmlpull/v1/XmlPullParser;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    move-result-object v2

    .line 16
    sget-object p2, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_CELL_RESOLUTION:Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    invoke-direct {p0, p3, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->parseCellResolution(Lorg/xmlpull/v1/XmlPullParser;Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    move-result-object v5

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_5

    .line 17
    :cond_0
    :goto_1
    invoke-static {v9}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->isSupportedTag(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring unsupported tag: "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 19
    :cond_1
    const-string p2, "head"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 20
    invoke-direct {p0, p3, v0, v1, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->parseHeader(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;)Ljava/util/Map;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 21
    :cond_2
    :try_start_2
    invoke-direct {p0, p3, v6, v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->parseNode(Lorg/xmlpull/v1/XmlPullParser;Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;

    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    if-eqz v6, :cond_8

    .line 23
    invoke-virtual {v6, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;->addChild(Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;)V
    :try_end_2
    .catch Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_2
    move-exception p2

    .line 24
    :try_start_3
    const-string v6, "TtmlDecoder"

    const-string v7, "Suppressing parser error"

    invoke-static {v6, v7, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_3
    const/4 v8, 0x4

    if-ne p2, v8, :cond_4

    .line 25
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;->buildTextNode(Ljava/lang/String;)Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;->addChild(Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;)V

    goto :goto_3

    :cond_4
    if-ne p2, v7, :cond_8

    .line 26
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 27
    new-instance v4, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlSubtitle;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;

    invoke-direct {v4, p2, v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlSubtitle;-><init>(Lcom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Ljava/util/Map;)V

    .line 28
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_3

    :cond_6
    if-ne p2, v8, :cond_7

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    if-ne p2, v7, :cond_8

    add-int/lit8 v3, v3, -0x1

    .line 29
    :cond_8
    :goto_3
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 30
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p2
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_9
    return-object v4

    .line 31
    :goto_4
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Unexpected error when reading input."

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 32
    :goto_5
    new-instance p2, Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;

    const-string p3, "Unable to decode source"

    invoke-direct {p2, p3, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
