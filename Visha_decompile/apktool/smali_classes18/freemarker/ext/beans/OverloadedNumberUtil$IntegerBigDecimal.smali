.class final Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerBigDecimal;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntegerBigDecimal"
.end annotation


# instance fields
.field private final n:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 0

    invoke-direct {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;-><init>()V

    iput-object p1, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerBigDecimal;->n:Ljava/math/BigDecimal;

    return-void
.end method


# virtual methods
.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerBigDecimal;->n:Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getSourceNumber()Ljava/lang/Number;
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerBigDecimal;->n:Ljava/math/BigDecimal;

    return-object p0
.end method
