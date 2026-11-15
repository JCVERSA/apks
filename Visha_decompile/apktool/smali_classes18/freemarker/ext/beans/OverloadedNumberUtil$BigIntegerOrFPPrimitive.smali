.class abstract Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrFPPrimitive;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrPrimitive;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BigIntegerOrFPPrimitive"
.end annotation


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0, p1}, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrPrimitive;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method public doubleValue()D
    .locals 2

    iget-object p0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrPrimitive;->n:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    iget-object p0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$BigIntegerOrPrimitive;->n:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    long-to-float p0, v0

    return p0
.end method
