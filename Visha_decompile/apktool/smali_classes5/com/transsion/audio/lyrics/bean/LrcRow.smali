.class public Lcom/transsion/audio/lyrics/bean/LrcRow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/transsion/audio/lyrics/bean/LrcRow;",
        ">;"
    }
.end annotation


# static fields
.field public static final GRAVITY_CENTER:I = 0x0

.field public static final GRAVITY_LEFT:I = 0x1

.field public static final GRAVITY_RIGHT:I = 0x2


# instance fields
.field public content:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mContent"
    .end annotation
.end field

.field public contentHeight:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mContentHeight"
    .end annotation
.end field

.field public noTimeText:Z

.field public offset:F

.field private staticLayout:Landroid/text/StaticLayout;

.field public time:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mTime"
    .end annotation
.end field

.field public timeStr:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mTimeStr"
    .end annotation
.end field

.field public totalHeight:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mTotalHeight"
    .end annotation
.end field

.field public totalTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mTotalTime"
    .end annotation
.end field

.field public translate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mTranslate"
    .end annotation
.end field

.field public translateHeight:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mTranslateHeight"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->time:I

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->totalTime:J

    .line 4
    iput v0, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->contentHeight:I

    .line 5
    iput v0, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->translateHeight:I

    .line 6
    iput v0, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->totalHeight:I

    const/4 v1, 0x1

    .line 7
    iput v1, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->offset:F

    .line 8
    iput-boolean v0, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->noTimeText:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->totalTime:J

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->contentHeight:I

    .line 12
    iput v0, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->translateHeight:I

    .line 13
    iput v0, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->totalHeight:I

    const/4 v1, 0x1

    .line 14
    iput v1, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->offset:F

    .line 15
    iput-boolean v0, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->noTimeText:Z

    .line 16
    iput-object p1, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->timeStr:Ljava/lang/String;

    .line 17
    iput p2, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->time:I

    .line 18
    iput-object p3, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->content:Ljava/lang/String;

    return-void
.end method

.method public static createRows(Ljava/lang/String;II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/transsion/audio/lyrics/bean/LrcRow;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {p0}, Lcom/transsion/audio/lyrics/bean/LrcRow;->isValidBrackets(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v1

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p2, "-"

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_4
    move-object v5, v4

    :goto_1
    :try_start_0
    new-instance v6, Lcom/transsion/audio/lyrics/bean/LrcRow;

    invoke-static {v4}, Lcom/transsion/audio/lyrics/bean/LrcRow;->formatTime(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v4, p1

    invoke-direct {v6, v5, v4, v3}, Lcom/transsion/audio/lyrics/bean/LrcRow;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :catch_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object p2

    :cond_6
    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/transsion/audio/lyrics/bean/LrcRow;

    const-string v1, ""

    invoke-direct {v0, v1, p2, p0}, Lcom/transsion/audio/lyrics/bean/LrcRow;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-boolean v3, v0, Lcom/transsion/audio/lyrics/bean/LrcRow;->noTimeText:Z

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public static formatTime(Ljava/lang/String;)I
    .locals 5

    const/16 v0, 0x2e

    const/16 v1, 0x3a

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 2
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3
    array-length v0, p0

    const/4 v1, 0x1

    const v2, 0xea60

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-le v0, v4, :cond_0

    .line 4
    aget-object v0, p0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/2addr v0, v2

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0

    .line 5
    :cond_0
    aget-object v0, p0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/2addr v0, v2

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    goto :goto_0
.end method

.method public static formatTime(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 6
    const-string p0, "00:00"

    return-object p0

    :cond_0
    long-to-int p0, p0

    .line 7
    div-int/lit16 p0, p0, 0x3e8

    .line 8
    rem-int/lit8 p1, p0, 0x3c

    .line 9
    rem-int/lit16 v0, p0, 0xe10

    div-int/lit8 v0, v0, 0x3c

    .line 10
    div-int/lit16 p0, p0, 0xe10

    if-nez p0, :cond_1

    .line 11
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/audio/R$string;->music_timer_format_hm:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$string;->music_timer_format_hms:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isValidBrackets(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_1

    if-lez v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public compareTo(Lcom/transsion/audio/lyrics/bean/LrcRow;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->time:I

    iget p1, p1, Lcom/transsion/audio/lyrics/bean/LrcRow;->time:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/audio/lyrics/bean/LrcRow;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/lyrics/bean/LrcRow;->compareTo(Lcom/transsion/audio/lyrics/bean/LrcRow;)I

    move-result p0

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->staticLayout:Landroid/text/StaticLayout;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getShowText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->translate:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->translate:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->content:Ljava/lang/String;

    return-object p0
.end method

.method public getStaticLayout()Landroid/text/StaticLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->staticLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method public hasTranslate()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->translate:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public init(Landroid/text/TextPaint;II)V
    .locals 8

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_0
    move-object v4, p3

    goto :goto_1

    :cond_0
    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :goto_1
    new-instance p3, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Lcom/transsion/audio/lyrics/bean/LrcRow;->getShowText()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p3

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p3, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->staticLayout:Landroid/text/StaticLayout;

    const/4 p1, 0x1

    iput p1, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->offset:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LrcRow [mTimeStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->timeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTotalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->totalTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audio/lyrics/bean/LrcRow;->content:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
