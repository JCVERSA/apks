.class public abstract Ls44;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;JJ)Landroid/text/SpannableString;
    .locals 7

    sub-long v0, p3, p1

    invoke-static {p1, p2}, Ls44;->c(J)J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ls44;->c(J)J

    move-result-wide v2

    :goto_0
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/transsion/playercommon/R$string;->download_size_info:I

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v3

    const/16 v6, 0x11

    invoke-virtual {v2, v4, v3, p1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, p0

    invoke-virtual {v2, p1, p0, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    long-to-float p1, v0

    long-to-float p3, p3

    const p4, 0x3d4ccccd    # 0.05f

    mul-float/2addr p3, p4

    cmpg-float p1, p1, p3

    if-gez p1, :cond_1

    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const p3, -0x83f0

    invoke-direct {p1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p0

    invoke-virtual {v2, p1, p0, p2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-object v2
.end method

.method public static b(Landroid/content/Context;J)Landroid/text/SpannableString;
    .locals 7

    invoke-static {}, Lb23;->h()J

    move-result-wide v0

    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/transsion/playercommon/R$string;->download_size_info:I

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v3

    const/16 v6, 0x11

    invoke-virtual {v2, v4, v3, p1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, p0

    invoke-virtual {v2, p1, p0, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-static {}, Lb23;->q()J

    move-result-wide v3

    long-to-float p1, v0

    long-to-float v0, v3

    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const v0, -0x83f0

    invoke-direct {p1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p0

    invoke-virtual {v2, p1, p0, p2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-object v2
.end method

.method public static c(J)J
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    return-wide p0

    :cond_0
    invoke-static {p0, p1}, Ls44;->f(J)I

    move-result v0

    if-lez v0, :cond_1

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    long-to-double p0, p0

    mul-double/2addr p0, v2

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    :cond_1
    return-wide p0
.end method

.method public static d(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0, p1, p2, v0, v1}, Ls44;->e(Landroid/content/Context;JZLjava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;JZLjava/util/Locale;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    long-to-float p0, p1

    const/high16 p1, 0x44610000    # 900.0f

    cmpl-float p2, p0, p1

    const/high16 v0, 0x44800000    # 1024.0f

    if-lez p2, :cond_1

    div-float/2addr p0, v0

    const-string p2, "KB"

    goto :goto_0

    :cond_1
    const-string p2, "B"

    :goto_0
    cmpl-float v1, p0, p1

    if-lez v1, :cond_2

    div-float/2addr p0, v0

    const-string p2, "MB"

    :cond_2
    cmpl-float v1, p0, p1

    if-lez v1, :cond_3

    div-float/2addr p0, v0

    const-string p2, "GB"

    :cond_3
    cmpl-float v1, p0, p1

    if-lez v1, :cond_4

    div-float/2addr p0, v0

    const-string p2, "TB"

    :cond_4
    cmpl-float p1, p0, p1

    if-lez p1, :cond_5

    div-float/2addr p0, v0

    const-string p2, "PB"

    :cond_5
    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p0, p1

    const-string v0, "%.2f"

    if-gez p1, :cond_6

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p4, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_6
    const/high16 p1, 0x41200000    # 10.0f

    cmpg-float p1, p0, p1

    if-gez p1, :cond_8

    if-eqz p3, :cond_7

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.1f"

    invoke-static {p4, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_7
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p4, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_8
    const/high16 p1, 0x42c80000    # 100.0f

    cmpg-float p1, p0, p1

    const-string v1, "%.0f"

    if-gez p1, :cond_a

    if-eqz p3, :cond_9

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p4, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_9
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p4, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_a
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p4, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string p1, "%s%s"

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(J)I
    .locals 2

    const-wide/16 v0, 0x384

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-wide/32 v0, 0xe1000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-wide/32 v0, 0x38400000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-wide v0, 0xe100000000L

    cmp-long v0, p0, v0

    if-gtz v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const-wide v0, 0x3840000000000L

    cmp-long p0, p0, v0

    if-gtz p0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, 0x5

    return p0
.end method
