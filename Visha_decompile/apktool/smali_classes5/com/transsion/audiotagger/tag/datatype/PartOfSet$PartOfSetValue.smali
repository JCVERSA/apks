.class public Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audiotagger/tag/datatype/PartOfSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PartOfSetValue"
.end annotation


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = "/"

.field private static final trackNoPattern:Ljava/util/regex/Pattern;

.field private static final trackNoPatternWithTotalCount:Ljava/util/regex/Pattern;


# instance fields
.field private count:Ljava/lang/Integer;

.field private extra:Ljava/lang/String;

.field private rawCount:Ljava/lang/String;

.field private rawText:Ljava/lang/String;

.field private rawTotal:Ljava/lang/String;

.field private total:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "([0-9]+)/([0-9]+)(.*)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->trackNoPatternWithTotalCount:Ljava/util/regex/Pattern;

    const-string v0, "([0-9]+)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->trackNoPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawCount:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    .line 10
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawTotal:Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->resetValueFromCounts()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawText:Ljava/lang/String;

    .line 5
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->initFromValue(Ljava/lang/String;)V

    return-void
.end method

.method private initFromValue(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->trackNoPatternWithTotalCount:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 p1, 0x3

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->extra:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawCount:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawTotal:Ljava/lang/String;

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->trackNoPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->extra:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawCount:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    :cond_1
    :goto_0
    return-void
.end method

.method private padNumber(Ljava/lang/StringBuffer;Ljava/lang/Integer;Lcom/transsion/audiotagger/tag/options/PadNumberOption;)V
    .locals 5

    if-eqz p2, :cond_8

    sget-object p0, Lcom/transsion/audiotagger/tag/options/PadNumberOption;->PAD_ONE_ZERO:Lcom/transsion/audiotagger/tag/options/PadNumberOption;

    const-string v0, "0"

    const/16 v1, 0xa

    if-ne p3, p0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez p0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ge p0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_1
    sget-object p0, Lcom/transsion/audiotagger/tag/options/PadNumberOption;->PAD_TWO_ZERO:Lcom/transsion/audiotagger/tag/options/PadNumberOption;

    const/16 v2, 0x64

    const/16 v3, 0x9

    const-string v4, "00"

    if-ne p3, p0, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez p0, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ge p0, v1, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-le p0, v3, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ge p0, v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/transsion/audiotagger/tag/options/PadNumberOption;->PAD_THREE_ZERO:Lcom/transsion/audiotagger/tag/options/PadNumberOption;

    if-ne p3, p0, :cond_8

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez p0, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ge p0, v1, :cond_5

    const-string p0, "000"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-le p0, v3, :cond_6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ge p0, v2, :cond_6

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p3, 0x63

    if-le p0, p3, :cond_7

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p3, 0x3e8

    if-ge p0, p3, :cond_7

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_8
    :goto_0
    return-void
.end method

.method private resetValueFromCounts()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawCount:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawTotal:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawTotal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->extra:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->getCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->getCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/audiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->getTotal()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->getTotal()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/audiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getCount()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    return-object p0
.end method

.method public getCountAsText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isPadNumbers()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawCount:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getPadNumberTotalLength()Lcom/transsion/audiotagger/tag/options/PadNumberOption;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->padNumber(Ljava/lang/StringBuffer;Ljava/lang/Integer;Lcom/transsion/audiotagger/tag/options/PadNumberOption;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRawValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawText:Ljava/lang/String;

    return-object p0
.end method

.method public getTotal()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    return-object p0
.end method

.method public getTotalAsText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isPadNumbers()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawTotal:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getPadNumberTotalLength()Lcom/transsion/audiotagger/tag/options/PadNumberOption;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->padNumber(Ljava/lang/StringBuffer;Ljava/lang/Integer;Lcom/transsion/audiotagger/tag/options/PadNumberOption;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawCount:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->resetValueFromCounts()V

    return-void
.end method

.method public setCount(Ljava/lang/String;)V
    .locals 1

    .line 4
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    .line 5
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawCount:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->resetValueFromCounts()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setRawValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawText:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->initFromValue(Ljava/lang/String;)V

    return-void
.end method

.method public setTotal(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawTotal:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->resetValueFromCounts()V

    return-void
.end method

.method public setTotal(Ljava/lang/String;)V
    .locals 1

    .line 4
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    .line 5
    iput-object p1, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawTotal:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->resetValueFromCounts()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isPadNumbers()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->rawText:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getPadNumberTotalLength()Lcom/transsion/audiotagger/tag/options/PadNumberOption;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->padNumber(Ljava/lang/StringBuffer;Ljava/lang/Integer;Lcom/transsion/audiotagger/tag/options/PadNumberOption;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getPadNumberTotalLength()Lcom/transsion/audiotagger/tag/options/PadNumberOption;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->padNumber(Ljava/lang/StringBuffer;Ljava/lang/Integer;Lcom/transsion/audiotagger/tag/options/PadNumberOption;)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getPadNumberTotalLength()Lcom/transsion/audiotagger/tag/options/PadNumberOption;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->padNumber(Ljava/lang/StringBuffer;Ljava/lang/Integer;Lcom/transsion/audiotagger/tag/options/PadNumberOption;)V

    :cond_3
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/datatype/PartOfSet$PartOfSetValue;->extra:Ljava/lang/String;

    if-eqz p0, :cond_4

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
