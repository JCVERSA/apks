.class public Lfreemarker/core/b0$b;
.super Ljl0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljl0;-><init>()V

    return-void
.end method


# virtual methods
.method public h0(Ljava/lang/Number;Lzfa;)Lzfa;
    .locals 2

    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gez p0, :cond_0

    new-instance p1, Lfreemarker/template/SimpleNumber;

    neg-int p0, p0

    invoke-direct {p1, p0}, Lfreemarker/template/SimpleNumber;-><init>(I)V

    return-object p1

    :cond_0
    return-object p2

    :cond_1
    instance-of p0, p1, Ljava/math/BigDecimal;

    if-eqz p0, :cond_3

    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result p0

    if-gez p0, :cond_2

    new-instance p0, Lfreemarker/template/SimpleNumber;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/template/SimpleNumber;-><init>(Ljava/lang/Number;)V

    return-object p0

    :cond_2
    return-object p2

    :cond_3
    instance-of p0, p1, Ljava/lang/Double;

    if-eqz p0, :cond_5

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_4

    new-instance p2, Lfreemarker/template/SimpleNumber;

    neg-double p0, p0

    invoke-direct {p2, p0, p1}, Lfreemarker/template/SimpleNumber;-><init>(D)V

    :cond_4
    return-object p2

    :cond_5
    instance-of p0, p1, Ljava/lang/Float;

    if-eqz p0, :cond_7

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 p1, 0x0

    cmpg-float p1, p0, p1

    if-gez p1, :cond_6

    new-instance p1, Lfreemarker/template/SimpleNumber;

    neg-float p0, p0

    invoke-direct {p1, p0}, Lfreemarker/template/SimpleNumber;-><init>(F)V

    return-object p1

    :cond_6
    return-object p2

    :cond_7
    instance-of p0, p1, Ljava/lang/Long;

    if-eqz p0, :cond_9

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_8

    new-instance p2, Lfreemarker/template/SimpleNumber;

    neg-long p0, p0

    invoke-direct {p2, p0, p1}, Lfreemarker/template/SimpleNumber;-><init>(J)V

    :cond_8
    return-object p2

    :cond_9
    instance-of p0, p1, Ljava/lang/Short;

    if-eqz p0, :cond_b

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p0

    if-gez p0, :cond_a

    new-instance p1, Lfreemarker/template/SimpleNumber;

    neg-int p0, p0

    invoke-direct {p1, p0}, Lfreemarker/template/SimpleNumber;-><init>(I)V

    return-object p1

    :cond_a
    return-object p2

    :cond_b
    instance-of p0, p1, Ljava/lang/Byte;

    if-eqz p0, :cond_d

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-gez p0, :cond_c

    new-instance p1, Lfreemarker/template/SimpleNumber;

    neg-int p0, p0

    invoke-direct {p1, p0}, Lfreemarker/template/SimpleNumber;-><init>(I)V

    return-object p1

    :cond_c
    return-object p2

    :cond_d
    instance-of p0, p1, Ljava/math/BigInteger;

    if-eqz p0, :cond_f

    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-gez p0, :cond_e

    new-instance p0, Lfreemarker/template/SimpleNumber;

    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/template/SimpleNumber;-><init>(Ljava/lang/Number;)V

    return-object p0

    :cond_e
    return-object p2

    :cond_f
    new-instance p0, Lfreemarker/core/_TemplateModelException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "Unsupported number class: "

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    throw p0
.end method
