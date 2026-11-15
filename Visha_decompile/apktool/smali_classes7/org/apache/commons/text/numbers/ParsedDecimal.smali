.class final Lorg/apache/commons/text/numbers/ParsedDecimal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;
    }
.end annotation


# static fields
.field private static final DECIMAL_RADIX:I = 0xa

.field private static final DECIMAL_SEP_CHAR:C = '.'

.field private static final ENG_EXPONENT_MOD:I = 0x3

.field private static final EXPONENT_CHAR:C = 'E'

.field private static final MINUS_CHAR:C = '-'

.field private static final ROUND_CENTER:I = 0x5

.field private static final THOUSANDS_GROUP_SIZE:I = 0x3

.field private static final ZERO_CHAR:C = '0'


# instance fields
.field digitCount:I

.field final digits:[I

.field exponent:I

.field final negative:Z

.field private outputChars:[C

.field private outputIdx:I


# direct methods
.method private constructor <init>(Z[III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->negative:Z

    iput-object p2, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->digits:[I

    iput p3, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->digitCount:I

    iput p4, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->exponent:I

    return-void
.end method

.method private append(C)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->outputChars:[C

    iget v1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->outputIdx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->outputIdx:I

    aput-char p1, v0, v1

    return-void
.end method

.method private append([C)V
    .locals 3

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-char v2, p1, v1

    .line 3
    invoke-direct {p0, v2}, Lorg/apache/commons/text/numbers/ParsedDecimal;->append(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private appendFraction(IILorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;)V
    .locals 4

    invoke-interface {p3}, Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;->getDigits()[C

    move-result-object v0

    const/4 v1, 0x0

    aget-char v2, v0, v1

    iget v3, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->digitCount:I

    if-ge p2, v3, :cond_1

    invoke-interface {p3}, Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;->getDecimalSeparator()C

    move-result p3

    invoke-direct {p0, p3}, Lorg/apache/commons/text/numbers/ParsedDecimal;->append(C)V

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-direct {p0, v2}, Lorg/apache/commons/text/numbers/ParsedDecimal;->append(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget p1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->digitCount:I

    if-ge p2, p1, :cond_2

    iget-object p1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->digits:[I

    aget p1, p1, p2

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/text/numbers/ParsedDecimal;->appendLocalizedDigit(I[C)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p3}, Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;->isIncludeFractionPlaceholder()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p3}, Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;->getDecimalSeparator()C

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/commons/text/numbers/ParsedDecimal;->append(C)V

    invoke-direct {p0, v2}, Lorg/apache/commons/text/numbers/ParsedDecimal;->append(C)V

    :cond_2
    return-void
.end method

.method private appendLocalizedDigit(I[C)V
    .locals 0

    aget-char p1, p2, p1

    invoke-direct {p0, p1}, Lorg/apache/commons/text/numbers/ParsedDecimal;->append(C)V

    return-void
.end method

.method private appendWhole(ILorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;)I
    .locals 4

    invoke-direct {p0, p2}, Lorg/apache/commons/text/numbers/ParsedDecimal;->shouldIncludeMinus(Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;->getMinusSign()C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/text/numbers/ParsedDecimal;->append(C)V

    :cond_0
    invoke-interface {p2}, Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;->getDigits()[C

    move-result-object p2

    const/4 v0, 0x0

    aget-char v1, p2, v0

    iget v2, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->digitCount:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez v2, :cond_2

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->digits:[I

    aget v3, v3, v0

    invoke-direct {p0, v3, p2}, Lorg/apache/commons/text/numbers/ParsedDecimal;->appendLocalizedDigit(I[C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v0, p1, :cond_3

    invoke-direct {p0, v1}, Lorg/apache/commons/text/numbers/ParsedDecimal;->append(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lorg/apache/commons/text/numbers/ParsedDecimal;->append(C)V

    :cond_3
    return v2
.end method

.method private appendWholeGrouped(ILorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;)I
    .locals 6

    invoke-direct {p0, p2}, Lorg/apache/commons/text/numbers/ParsedDecimal;->shouldIncludeMinus(Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;->getMinusSign()C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/text/numbers/ParsedDecimal;->append(C)V

    :cond_0
    invoke-interface {p2}, Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;->getDigits()[C

    move-result-object v0

    const/4 v1, 0x0

    aget-char v2, v0, v1

    invoke-interface {p2}, Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;->getGroupingSeparator()C

    move-result p2

    iget v3, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->digitCount:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-lez v3, :cond_4

    move v4, p1

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v5, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->digits:[I

    aget v5, v5, v1

    invoke-direct {p0, v5, v0}, Lorg/apache/commons/text/numbers/ParsedDecimal;->appendLocalizedDigit(I[C)V

    invoke-direct {p0, v4}, Lorg/apache/commons/text/numbers/ParsedDecimal;->requiresGroupingSeparatorAfterPosition(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, p2}, Lorg/apache/commons/text/numbers/ParsedDecimal;->append(C)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v1, p1, :cond_5

    invoke-direct {p0, v2}, Lorg/apache/commons/text/numbers/ParsedDecimal;->append(C)V

    invoke-direct {p0, v4}, Lorg/apache/commons/text/numbers/ParsedDecimal;->requiresGroupingSeparatorAfterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lorg/apache/commons/text/numbers/ParsedDecimal;->append(C)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0, v2}, Lorg/apache/commons/text/numbers/ParsedDecimal;->append(C)V

    :cond_5
    return v3
.end method

.method private static digitValue(C)I
    .locals 0

    add-int/lit8 p0, p0, -0x30

    return p0
.end method

.method public static from(D)Lorg/apache/commons/text/numbers/ParsedDecimal;
    .locals 10

    invoke-static {p0, p1}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 p1, 0x0

    aget-char v0, p0, p1

    const/16 v1, 0x2d

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    array-length v1, p0

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    new-array v1, v1, [I

    move v4, p1

    move v5, v4

    move v6, v5

    move v7, v6

    move v3, v0

    :goto_1
    array-length v8, p0

    if-ge v3, v8, :cond_7

    aget-char v8, p0, v3

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_1

    move v7, v2

    move v5, v4

    goto :goto_3

    :cond_1
    const/16 v9, 0x45

    if-ne v8, v9, :cond_2

    goto :goto_4

    :cond_2
    const/16 v9, 0x30

    if-ne v8, v9, :cond_4

    if-lez v4, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v7, :cond_6

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {v8}, Lorg/apache/commons/text/numbers/ParsedDecimal;->digitValue(C)I

    move-result v8

    add-int/lit8 v9, v4, 0x1

    aput v8, v1, v4

    if-lez v8, :cond_5

    move v6, v9

    :cond_5
    move v4, v9

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    :goto_4
    if-lez v4, :cond_9

    array-length v4, p0

    if-ge v3, v4, :cond_8

    add-int/2addr v3, v2

    invoke-static {p0, v3}, Lorg/apache/commons/text/numbers/ParsedDecimal;->parseExponent([CI)I

    move-result p1

    :cond_8
    add-int/2addr p1, v5

    sub-int/2addr p1, v6

    new-instance p0, Lorg/apache/commons/text/numbers/ParsedDecimal;

    invoke-direct {p0, v0, v1, v6, p1}, Lorg/apache/commons/text/numbers/ParsedDecimal;-><init>(Z[III)V

    return-object p0

    :cond_9
    new-instance p0, Lorg/apache/commons/text/numbers/ParsedDecimal;

    filled-new-array {p1}, [I

    move-result-object v1

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/apache/commons/text/numbers/ParsedDecimal;-><init>(Z[III)V

    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Double is not finite"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getDigitStringSize(ILorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;)I
    .locals 2

    iget v0, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->digitCount:I

    invoke-direct {p0, p2}, Lorg/apache/commons/text/numbers/ParsedDecimal;->shouldIncludeMinus(Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    goto :goto_0

    :cond_1
    iget p0, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->digitCount:I

    if-lt p1, p0, :cond_2

    sub-int/2addr p1, p0

    add-int/2addr v0, p1

    invoke-interface {p2}, Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;->isIncludeFractionPlaceholder()Z

    move-result p0

    if-eqz p0, :cond_3

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    add-int/2addr v0, v1

    :cond_3
    :goto_0
    return v0
.end method

.method private getPlainStringSize(ILorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/text/numbers/ParsedDecimal;->getDigitStringSize(ILorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;)I

    move-result p0

    invoke-interface {p2}, Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;->isGroupThousands()Z

    move-result p2

    if-eqz p2, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p0, p1

    :cond_0
    return p0
.end method

.method private outputString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->outputChars:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->outputChars:[C

    return-object v0
.end method

.method private static parseExponent([CI)I
    .locals 3

    aget-char v0, p0, p1

    const/16 v1, 0x2d

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    array-length v1, p0

    if-ge p1, v1, :cond_2

    mul-int/lit8 v2, v2, 0xa

    aget-char v1, p0, p1

    invoke-static {v1}, Lorg/apache/commons/text/numbers/ParsedDecimal;->digitValue(C)I

    move-result v1

    add-int/2addr v2, v1

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    neg-int v2, v2

    :cond_3
    return v2
.end method

.method private prepareOutput(I)V
    .locals 0

    new-array p1, p1, [C

    iput-object p1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->outputChars:[C

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->outputIdx:I

    return-void
.end method

.method private requiresGroupingSeparatorAfterPosition(I)Z
    .locals 0

    const/4 p0, 0x1

    if-le p1, p0, :cond_0

    rem-int/lit8 p1, p1, 0x3

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private roundUp(I)V
    .locals 5

    iget v0, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->digitCount:I

    sub-int/2addr v0, p1

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_1

    iget-object v2, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->digits:[I

    aget v3, v2, p1

    add-int/2addr v3, v1

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    aput v3, v2, p1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-gez p1, :cond_2

    iget p1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->exponent:I

    add-int/2addr p1, v0

    invoke-direct {p0, v1, p1}, Lorg/apache/commons/text/numbers/ParsedDecimal;->setSingleDigitValue(II)V

    goto :goto_2

    :cond_2
    iget p1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->digitCount:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lorg/apache/commons/text/numbers/ParsedDecimal;->truncate(I)V

    :goto_2
    return-void
.end method

.method private setSingleDigitValue(II)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->digits:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    iput p1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->digitCount:I

    iput p2, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->exponent:I

    return-void
.end method

.method private shouldIncludeExponent(ILorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;)Z
    .locals 0

    if-nez p1, :cond_1

    invoke-interface {p2}, Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;->isAlwaysIncludeExponent()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private shouldIncludeMinus(Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->negative:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;->isSignedZero()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/text/numbers/ParsedDecimal;->isZero()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private shouldRoundUp(I)Z
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->digits:[I

    aget v1, v0, p1

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-gt v1, v3, :cond_1

    if-ne v1, v3, :cond_0

    iget p0, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->digitCount:I

    sub-int/2addr p0, v2

    if-lt p1, p0, :cond_1

    sub-int/2addr p1, v2

    aget p0, v0, p1

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private toScientificString(ILorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;)Ljava/lang/String;
    .locals 8

    .line 2
    iget v0, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->digitCount:I

    iget v1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->exponent:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/text/numbers/ParsedDecimal;->shouldIncludeExponent(ILorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    .line 5
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/text/numbers/ParsedDecimal;->getDigitStringSize(ILorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;)I

    move-result v5

    if-eqz v2, :cond_2

    if-lez v1, :cond_1

    int-to-double v6, v1

    .line 6
    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/2addr v4, v6

    .line 7
    :cond_1
    invoke-interface {p2}, Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;->getExponentSeparatorChars()[C

    move-result-object v6

    array-length v6, v6

    add-int/2addr v6, v4

    add-int/2addr v5, v6

    if-eqz v0, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 8
    :cond_2
    invoke-direct {p0, v5}, Lorg/apache/commons/text/numbers/ParsedDecimal;->prepareOutput(I)V

    .line 9
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/text/numbers/ParsedDecimal;->appendWhole(ILorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;)I

    move-result p1

    .line 10
    invoke-direct {p0, v3, p1, p2}, Lorg/apache/commons/text/numbers/ParsedDecimal;->appendFraction(IILorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;)V

    if-eqz v2, :cond_5

    .line 11
    invoke-interface {p2}, Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;->getExponentSeparatorChars()[C

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/text/numbers/ParsedDecimal;->append([C)V

    if-eqz v0, :cond_3

    .line 12
    invoke-interface {p2}, Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;->getMinusSign()C

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/commons/text/numbers/ParsedDecimal;->append(C)V

    .line 13
    :cond_3
    invoke-interface {p2}, Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;->getDigits()[C

    move-result-object p1

    add-int/lit8 p2, v5, -0x1

    .line 14
    :goto_1
    iget v0, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->outputIdx:I

    if-lt p2, v0, :cond_4

    .line 15
    iget-object v0, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->outputChars:[C

    rem-int/lit8 v2, v1, 0xa

    aget-char v2, p1, v2

    aput-char v2, v0, p2

    .line 16
    div-int/lit8 v1, v1, 0xa

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 17
    :cond_4
    iput v5, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->outputIdx:I

    .line 18
    :cond_5
    invoke-direct {p0}, Lorg/apache/commons/text/numbers/ParsedDecimal;->outputString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private truncate(I)V
    .locals 2

    add-int/lit8 v0, p1, -0x1

    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->digits:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->exponent:I

    iget v1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->digitCount:I

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->exponent:I

    iput p1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->digitCount:I

    return-void
.end method


# virtual methods
.method public getExponent()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->exponent:I

    return p0
.end method

.method public getScientificExponent()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->digitCount:I

    iget p0, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->exponent:I

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public isZero()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->digits:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public maxPrecision(I)V
    .locals 1

    if-lez p1, :cond_1

    iget v0, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->digitCount:I

    if-ge p1, v0, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/commons/text/numbers/ParsedDecimal;->shouldRoundUp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/text/numbers/ParsedDecimal;->roundUp(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/text/numbers/ParsedDecimal;->truncate(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public round(I)V
    .locals 2

    iget v0, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->exponent:I

    if-le p1, v0, :cond_2

    iget v1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->digitCount:I

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_0

    sub-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lorg/apache/commons/text/numbers/ParsedDecimal;->maxPrecision(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-ne p1, v1, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/commons/text/numbers/ParsedDecimal;->shouldRoundUp(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/text/numbers/ParsedDecimal;->setSingleDigitValue(II)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v0}, Lorg/apache/commons/text/numbers/ParsedDecimal;->setSingleDigitValue(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public toEngineeringString(Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/text/numbers/ParsedDecimal;->getScientificExponent()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->floorMod(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/text/numbers/ParsedDecimal;->toScientificString(ILorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toPlainString(Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->digitCount:I

    iget v1, p0, Lorg/apache/commons/text/numbers/ParsedDecimal;->exponent:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/text/numbers/ParsedDecimal;->getPlainStringSize(ILorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;)I

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/commons/text/numbers/ParsedDecimal;->prepareOutput(I)V

    invoke-interface {p1}, Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;->isGroupThousands()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/text/numbers/ParsedDecimal;->appendWholeGrouped(ILorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;)I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/text/numbers/ParsedDecimal;->appendWhole(ILorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;)I

    move-result v0

    :goto_1
    invoke-direct {p0, v1, v0, p1}, Lorg/apache/commons/text/numbers/ParsedDecimal;->appendFraction(IILorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;)V

    invoke-direct {p0}, Lorg/apache/commons/text/numbers/ParsedDecimal;->outputString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toScientificString(Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/text/numbers/ParsedDecimal;->toScientificString(ILorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
