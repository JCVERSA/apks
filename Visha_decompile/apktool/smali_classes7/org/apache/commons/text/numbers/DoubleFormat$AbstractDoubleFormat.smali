.class abstract Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/DoubleFunction;
.implements Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/numbers/DoubleFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractDoubleFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/DoubleFunction<",
        "Ljava/lang/String;",
        ">;",
        "Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;"
    }
.end annotation


# instance fields
.field private final alwaysIncludeExponent:Z

.field private final decimalSeparator:C

.field private final digits:[C

.field private final exponentSeparatorChars:[C

.field private final fractionPlaceholder:Z

.field private final groupThousands:Z

.field private final groupingSeparator:C

.field private final maxPrecision:I

.field private final minDecimalExponent:I

.field private final minusSign:C

.field private final nan:Ljava/lang/String;

.field private final negativeInfinity:Ljava/lang/String;

.field private final positiveInfinity:Ljava/lang/String;

.field private final signedZero:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->access$000(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->maxPrecision:I

    invoke-static {p1}, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->access$100(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->minDecimalExponent:I

    invoke-static {p1}, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->access$200(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->positiveInfinity:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->access$300(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->access$200(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->negativeInfinity:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->access$400(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->nan:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->access$500(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->fractionPlaceholder:Z

    invoke-static {p1}, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->access$600(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->signedZero:Z

    invoke-static {p1}, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->access$700(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->digits:[C

    invoke-static {p1}, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->access$800(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)C

    move-result v0

    iput-char v0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->decimalSeparator:C

    invoke-static {p1}, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->access$900(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)C

    move-result v0

    iput-char v0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->groupingSeparator:C

    invoke-static {p1}, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->access$1000(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->groupThousands:Z

    invoke-static {p1}, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->access$300(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)C

    move-result v0

    iput-char v0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->minusSign:C

    invoke-static {p1}, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->access$1100(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->exponentSeparatorChars:[C

    invoke-static {p1}, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->access$1200(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->alwaysIncludeExponent:Z

    return-void
.end method

.method private applyFinite(D)Ljava/lang/String;
    .locals 2

    invoke-static {p1, p2}, Lorg/apache/commons/text/numbers/ParsedDecimal;->from(D)Lorg/apache/commons/text/numbers/ParsedDecimal;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/text/numbers/ParsedDecimal;->getExponent()I

    move-result p2

    iget v0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->minDecimalExponent:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->maxPrecision:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/text/numbers/ParsedDecimal;->getScientificExponent()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->maxPrecision:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    :cond_0
    invoke-virtual {p1, p2}, Lorg/apache/commons/text/numbers/ParsedDecimal;->round(I)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->applyFiniteInternal(Lorg/apache/commons/text/numbers/ParsedDecimal;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic apply(D)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->apply(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public apply(D)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->applyFinite(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    cmpl-double p1, p1, v0

    if-lez p1, :cond_1

    .line 5
    iget-object p0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->positiveInfinity:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->negativeInfinity:Ljava/lang/String;

    :goto_0
    return-object p0

    .line 6
    :cond_2
    iget-object p0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->nan:Ljava/lang/String;

    return-object p0
.end method

.method public abstract applyFiniteInternal(Lorg/apache/commons/text/numbers/ParsedDecimal;)Ljava/lang/String;
.end method

.method public getDecimalSeparator()C
    .locals 0

    iget-char p0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->decimalSeparator:C

    return p0
.end method

.method public getDigits()[C
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->digits:[C

    return-object p0
.end method

.method public getExponentSeparatorChars()[C
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->exponentSeparatorChars:[C

    return-object p0
.end method

.method public getGroupingSeparator()C
    .locals 0

    iget-char p0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->groupingSeparator:C

    return p0
.end method

.method public getMinusSign()C
    .locals 0

    iget-char p0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->minusSign:C

    return p0
.end method

.method public isAlwaysIncludeExponent()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->alwaysIncludeExponent:Z

    return p0
.end method

.method public isGroupThousands()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->groupThousands:Z

    return p0
.end method

.method public isIncludeFractionPlaceholder()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->fractionPlaceholder:Z

    return p0
.end method

.method public isSignedZero()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;->signedZero:Z

    return p0
.end method
