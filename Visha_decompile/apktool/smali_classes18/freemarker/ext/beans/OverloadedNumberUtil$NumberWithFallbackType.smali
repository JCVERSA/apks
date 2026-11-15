.class abstract Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;
.super Ljava/lang/Number;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NumberWithFallbackType"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method


# virtual methods
.method public byteValue()B
    .locals 0

    invoke-virtual {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;->getSourceNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    return p0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;->getSourceNumber()Ljava/lang/Number;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Comparable;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Comparable;

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " is not Comparable."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public doubleValue()D
    .locals 2

    invoke-virtual {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;->getSourceNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;->getSourceNumber()Ljava/lang/Number;

    move-result-object p0

    check-cast p1, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;

    invoke-virtual {p1}, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;->getSourceNumber()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public floatValue()F
    .locals 0

    invoke-virtual {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;->getSourceNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public abstract getSourceNumber()Ljava/lang/Number;
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;->getSourceNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public intValue()I
    .locals 0

    invoke-virtual {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;->getSourceNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public longValue()J
    .locals 2

    invoke-virtual {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;->getSourceNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public shortValue()S
    .locals 0

    invoke-virtual {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;->getSourceNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;->getSourceNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
