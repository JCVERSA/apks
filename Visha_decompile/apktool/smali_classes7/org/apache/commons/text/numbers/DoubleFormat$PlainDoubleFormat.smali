.class Lorg/apache/commons/text/numbers/DoubleFormat$PlainDoubleFormat;
.super Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/numbers/DoubleFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlainDoubleFormat"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;-><init>(Lorg/apache/commons/text/numbers/DoubleFormat$Builder;)V

    return-void
.end method


# virtual methods
.method public applyFiniteInternal(Lorg/apache/commons/text/numbers/ParsedDecimal;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/commons/text/numbers/ParsedDecimal;->toPlainString(Lorg/apache/commons/text/numbers/ParsedDecimal$FormatOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
