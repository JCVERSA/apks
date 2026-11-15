.class public final Lorg/apache/commons/text/numbers/DoubleFormat$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/numbers/DoubleFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_DECIMAL_DIGITS:Ljava/lang/String; = "0123456789"

.field private static final DEFAULT_PLAIN_FORMAT_MAX_DECIMAL_EXPONENT:I = 0x6

.field private static final DEFAULT_PLAIN_FORMAT_MIN_DECIMAL_EXPONENT:I = -0x3


# instance fields
.field private alwaysIncludeExponent:Z

.field private decimalSeparator:C

.field private digits:Ljava/lang/String;

.field private exponentSeparator:Ljava/lang/String;

.field private final factory:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lorg/apache/commons/text/numbers/DoubleFormat$Builder;",
            "Ljava/util/function/DoubleFunction<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private fractionPlaceholder:Z

.field private groupThousands:Z

.field private groupingSeparator:C

.field private infinity:Ljava/lang/String;

.field private maxPrecision:I

.field private minDecimalExponent:I

.field private minusSign:C

.field private nan:Ljava/lang/String;

.field private plainFormatMaxDecimalExponent:I

.field private plainFormatMinDecimalExponent:I

.field private signedZero:Z


# direct methods
.method private constructor <init>(Ljava/util/function/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lorg/apache/commons/text/numbers/DoubleFormat$Builder;",
            "Ljava/util/function/DoubleFunction<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->maxPrecision:I

    const/high16 v1, -0x80000000

    .line 4
    iput v1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->minDecimalExponent:I

    const/4 v1, 0x6

    .line 5
    iput v1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->plainFormatMaxDecimalExponent:I

    const/4 v1, -0x3

    .line 6
    iput v1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->plainFormatMinDecimalExponent:I

    .line 7
    const-string v1, "Infinity"

    iput-object v1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->infinity:Ljava/lang/String;

    .line 8
    const-string v1, "NaN"

    iput-object v1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->nan:Ljava/lang/String;

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->fractionPlaceholder:Z

    .line 10
    iput-boolean v1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->signedZero:Z

    .line 11
    const-string v1, "0123456789"

    iput-object v1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->digits:Ljava/lang/String;

    const/16 v1, 0x2e

    .line 12
    iput-char v1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->decimalSeparator:C

    const/16 v1, 0x2c

    .line 13
    iput-char v1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->groupingSeparator:C

    .line 14
    iput-boolean v0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->groupThousands:Z

    const/16 v1, 0x2d

    .line 15
    iput-char v1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->minusSign:C

    .line 16
    const-string v1, "E"

    iput-object v1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->exponentSeparator:Ljava/lang/String;

    .line 17
    iput-boolean v0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->alwaysIncludeExponent:Z

    .line 18
    iput-object p1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->factory:Ljava/util/function/Function;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/function/Function;Lorg/apache/commons/text/numbers/DoubleFormat$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;-><init>(Ljava/util/function/Function;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)I
    .locals 0

    iget p0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->maxPrecision:I

    return p0
.end method

.method public static synthetic access$100(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)I
    .locals 0

    iget p0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->minDecimalExponent:I

    return p0
.end method

.method public static synthetic access$1000(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->groupThousands:Z

    return p0
.end method

.method public static synthetic access$1100(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->exponentSeparator:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1200(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->alwaysIncludeExponent:Z

    return p0
.end method

.method public static synthetic access$1300(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)I
    .locals 0

    iget p0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->plainFormatMaxDecimalExponent:I

    return p0
.end method

.method public static synthetic access$1400(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)I
    .locals 0

    iget p0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->plainFormatMinDecimalExponent:I

    return p0
.end method

.method public static synthetic access$200(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->infinity:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)C
    .locals 0

    iget-char p0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->minusSign:C

    return p0
.end method

.method public static synthetic access$400(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->nan:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->fractionPlaceholder:Z

    return p0
.end method

.method public static synthetic access$600(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->signedZero:Z

    return p0
.end method

.method public static synthetic access$700(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->digits:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$800(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)C
    .locals 0

    iget-char p0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->decimalSeparator:C

    return p0
.end method

.method public static synthetic access$900(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)C
    .locals 0

    iget-char p0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->groupingSeparator:C

    return p0
.end method

.method private getDigitString(Ljava/text/DecimalFormatSymbols;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result p0

    const-string p1, "0123456789"

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr p0, v1

    const/16 v1, 0xa

    new-array v2, v1, [C

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v3, p0

    int-to-char v3, v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public allowSignedZero(Z)Lorg/apache/commons/text/numbers/DoubleFormat$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->signedZero:Z

    return-object p0
.end method

.method public alwaysIncludeExponent(Z)Lorg/apache/commons/text/numbers/DoubleFormat$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->alwaysIncludeExponent:Z

    return-object p0
.end method

.method public build()Ljava/util/function/DoubleFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/DoubleFunction<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->factory:Ljava/util/function/Function;

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/DoubleFunction;

    return-object p0
.end method

.method public decimalSeparator(C)Lorg/apache/commons/text/numbers/DoubleFormat$Builder;
    .locals 0

    iput-char p1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->decimalSeparator:C

    return-object p0
.end method

.method public digits(Ljava/lang/String;)Lorg/apache/commons/text/numbers/DoubleFormat$Builder;
    .locals 2

    const-string v0, "Digits string cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->digits:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Digits string must contain exactly "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " characters."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public exponentSeparator(Ljava/lang/String;)Lorg/apache/commons/text/numbers/DoubleFormat$Builder;
    .locals 1

    const-string v0, "Exponent separator cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->exponentSeparator:Ljava/lang/String;

    return-object p0
.end method

.method public formatSymbols(Ljava/text/DecimalFormatSymbols;)Lorg/apache/commons/text/numbers/DoubleFormat$Builder;
    .locals 1

    const-string v0, "Decimal format symbols cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->getDigitString(Ljava/text/DecimalFormatSymbols;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->digits(Ljava/lang/String;)Lorg/apache/commons/text/numbers/DoubleFormat$Builder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->decimalSeparator(C)Lorg/apache/commons/text/numbers/DoubleFormat$Builder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->groupingSeparator(C)Lorg/apache/commons/text/numbers/DoubleFormat$Builder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->minusSign(C)Lorg/apache/commons/text/numbers/DoubleFormat$Builder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->exponentSeparator(Ljava/lang/String;)Lorg/apache/commons/text/numbers/DoubleFormat$Builder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->infinity(Ljava/lang/String;)Lorg/apache/commons/text/numbers/DoubleFormat$Builder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->nan(Ljava/lang/String;)Lorg/apache/commons/text/numbers/DoubleFormat$Builder;

    move-result-object p0

    return-object p0
.end method

.method public groupThousands(Z)Lorg/apache/commons/text/numbers/DoubleFormat$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->groupThousands:Z

    return-object p0
.end method

.method public groupingSeparator(C)Lorg/apache/commons/text/numbers/DoubleFormat$Builder;
    .locals 0

    iput-char p1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->groupingSeparator:C

    return-object p0
.end method

.method public includeFractionPlaceholder(Z)Lorg/apache/commons/text/numbers/DoubleFormat$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->fractionPlaceholder:Z

    return-object p0
.end method

.method public infinity(Ljava/lang/String;)Lorg/apache/commons/text/numbers/DoubleFormat$Builder;
    .locals 1

    const-string v0, "Infinity string cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->infinity:Ljava/lang/String;

    return-object p0
.end method

.method public maxPrecision(I)Lorg/apache/commons/text/numbers/DoubleFormat$Builder;
    .locals 0

    iput p1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->maxPrecision:I

    return-object p0
.end method

.method public minDecimalExponent(I)Lorg/apache/commons/text/numbers/DoubleFormat$Builder;
    .locals 0

    iput p1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->minDecimalExponent:I

    return-object p0
.end method

.method public minusSign(C)Lorg/apache/commons/text/numbers/DoubleFormat$Builder;
    .locals 0

    iput-char p1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->minusSign:C

    return-object p0
.end method

.method public nan(Ljava/lang/String;)Lorg/apache/commons/text/numbers/DoubleFormat$Builder;
    .locals 1

    const-string v0, "NaN string cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->nan:Ljava/lang/String;

    return-object p0
.end method

.method public plainFormatMaxDecimalExponent(I)Lorg/apache/commons/text/numbers/DoubleFormat$Builder;
    .locals 0

    iput p1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->plainFormatMaxDecimalExponent:I

    return-object p0
.end method

.method public plainFormatMinDecimalExponent(I)Lorg/apache/commons/text/numbers/DoubleFormat$Builder;
    .locals 0

    iput p1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->plainFormatMinDecimalExponent:I

    return-object p0
.end method
