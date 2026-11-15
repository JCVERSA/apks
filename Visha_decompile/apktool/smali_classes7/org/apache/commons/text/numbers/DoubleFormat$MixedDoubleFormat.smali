.class final Lorg/apache/commons/text/numbers/DoubleFormat$MixedDoubleFormat;
.super Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/numbers/DoubleFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MixedDoubleFormat"
.end annotation


# instance fields
.field private final plainMaxExponent:I

.field private final plainMinExponent:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;-><init>(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)V

    invoke-static {p1}, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->access$1300(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/text/numbers/DoubleFormat$MixedDoubleFormat;->plainMaxExponent:I

    invoke-static {p1}, Lorg/apache/commons/text/numbers/DoubleFormat$Builder;->access$1400(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$MixedDoubleFormat;->plainMinExponent:I

    return-void
.end method


# virtual methods
.method public applyFiniteInternal(Lorg/apache/commons/text/numbers/ParsedDecimal;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lorg/apache/commons/text/numbers/ParsedDecimal;->getScientificExponent()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$MixedDoubleFormat;->plainMaxExponent:I

    if-gt v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/text/numbers/DoubleFormat$MixedDoubleFormat;->plainMinExponent:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p1, p0}, Lorg/apache/commons/text/numbers/ParsedDecimal;->toPlainString(Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1, p0}, Lorg/apache/commons/text/numbers/ParsedDecimal;->toScientificString(Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
