.class public Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;
.super Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/tag/id3/framebody/ID3v24FrameBody;


# static fields
.field private static final PRECISION_DAY:I = 0x3

.field private static final PRECISION_HOUR:I = 0x2

.field private static final PRECISION_MINUTE:I = 0x1

.field private static final PRECISION_MONTH:I = 0x4

.field private static final PRECISION_SECOND:I = 0x0

.field private static final PRECISION_YEAR:I = 0x5

.field private static formatDateIn:Ljava/text/SimpleDateFormat;

.field private static formatDateOut:Ljava/text/SimpleDateFormat;

.field private static formatHoursOut:Ljava/text/SimpleDateFormat;

.field private static formatMonthOut:Ljava/text/SimpleDateFormat;

.field private static formatTimeIn:Ljava/text/SimpleDateFormat;

.field private static formatTimeOut:Ljava/text/SimpleDateFormat;

.field private static formatYearIn:Ljava/text/SimpleDateFormat;

.field private static formatYearOut:Ljava/text/SimpleDateFormat;

.field private static final formatters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private date:Ljava/lang/String;

.field private hoursOnly:Z

.field private monthOnly:Z

.field private originalID:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private year:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatters:Ljava/util/List;

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatYearIn:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "ddMM"

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateIn:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HHmm"

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatTimeIn:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatYearOut:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "-MM-dd"

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateOut:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "-MM"

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatMonthOut:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'T\'HH:mm"

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatTimeOut:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'T\'HH"

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatHoursOut:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    .line 6
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(BLjava/lang/String;)V

    .line 56
    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    .line 60
    iput-boolean p1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    .line 61
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->findMatchingMaskAndExtractV3Values()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDAT;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    .line 39
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    .line 40
    const-string v1, "TDAT"

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->originalID:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDAT;->isMonthOnly()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->setMonthOnly(Z)V

    .line 43
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "TextEncoding"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    const-string p1, "Text"

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->getFormattedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;)V

    .line 8
    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    .line 12
    iput-boolean p1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTIME;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    .line 28
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    .line 29
    const-string v1, "TIME"

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->originalID:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTIME;->isHoursOnly()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->setHoursOnly(Z)V

    .line 32
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "TextEncoding"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    const-string p1, "Text"

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->getFormattedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTRDA;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    .line 50
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    .line 51
    const-string v1, "TRDA"

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->originalID:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    .line 53
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "TextEncoding"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    const-string p1, "Text"

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->getFormattedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTYER;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    .line 18
    iput-boolean v0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    .line 19
    const-string v1, "TYER"

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->originalID:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const-string v0, "TextEncoding"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    const-string p1, "Text"

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->getFormattedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidTagException;
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 63
    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    .line 67
    iput-boolean p1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    .line 68
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->findMatchingMaskAndExtractV3Values()V

    return-void
.end method

.method private extractID3v23Formats(Ljava/util/Date;I)V
    .locals 3

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Precision is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "for date:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->setYear(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->setYear(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->setDate(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->setYear(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->setDate(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->setYear(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->setDate(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->setTime(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    goto :goto_0

    :cond_3
    if-ne p2, v1, :cond_4

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->setYear(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->setDate(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->setTime(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsYear(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->setYear(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->setDate(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateAsTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->setTime(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private static declared-synchronized formatAndParse(Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    :try_start_1
    sget-object p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const-string p0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static declared-synchronized formatDateAsDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateIn:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static declared-synchronized formatDateAsTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatTimeIn:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static declared-synchronized formatDateAsYear(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatYearIn:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public findMatchingMaskAndExtractV3Values()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    monitor-enter v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-direct {p0, v1, v0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->extractID3v23Formats(Ljava/util/Date;I)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    sget-object v2, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Date Formatter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatters:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/SimpleDateFormat;

    invoke-virtual {v5}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "failed to parse:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_1
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    return-void
.end method

.method public getDate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    return-object p0
.end method

.method public getFormattedText()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->originalID:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatYearOut:Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatYearIn:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatAndParse(Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->isMonthOnly()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatMonthOut:Ljava/text/SimpleDateFormat;

    sget-object v3, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateIn:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatAndParse(Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateOut:Ljava/text/SimpleDateFormat;

    sget-object v3, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatDateIn:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatAndParse(Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->isHoursOnly()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatHoursOut:Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatTimeIn:Ljava/text/SimpleDateFormat;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    invoke-static {v1, v2, p0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatAndParse(Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatTimeOut:Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatTimeIn:Ljava/text/SimpleDateFormat;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    invoke-static {v1, v2, p0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->formatAndParse(Ljava/text/SimpleDateFormat;Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 0

    const-string p0, "TDRC"

    return-object p0
.end method

.method public getOriginalID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->originalID:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    return-object p0
.end method

.method public getYear()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    return-object p0
.end method

.method public isHoursOnly()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    return p0
.end method

.method public isMonthOnly()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    return p0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting date to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->date:Ljava/lang/String;

    return-void
.end method

.method public setHoursOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->hoursOnly:Z

    return-void
.end method

.method public setMonthOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->monthOnly:Z

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting time to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->time:Ljava/lang/String;

    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting year to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTDRC;->year:Ljava/lang/String;

    return-void
.end method
