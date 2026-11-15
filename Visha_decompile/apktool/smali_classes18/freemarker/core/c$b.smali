.class public Lfreemarker/core/c$b;
.super Lfreemarker/core/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final n:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lfreemarker/core/c$b;->m()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lfreemarker/core/c$b;->n:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/c;-><init>()V

    return-void
.end method

.method public static m()Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Lfreemarker/core/c;->f:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "java.lang.Byte"

    invoke-static {v2}, Lfreemarker/core/c;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lfreemarker/core/c;->f:Ljava/lang/Class;

    :cond_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lfreemarker/core/c;->g:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "java.lang.Short"

    invoke-static {v2}, Lfreemarker/core/c;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lfreemarker/core/c;->g:Ljava/lang/Class;

    :cond_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lfreemarker/core/c;->h:Ljava/lang/Class;

    if-nez v2, :cond_2

    const-string v2, "java.lang.Integer"

    invoke-static {v2}, Lfreemarker/core/c;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lfreemarker/core/c;->h:Ljava/lang/Class;

    :cond_2
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lfreemarker/core/c;->i:Ljava/lang/Class;

    if-nez v1, :cond_3

    const-string v1, "java.lang.Long"

    invoke-static {v1}, Lfreemarker/core/c;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/core/c;->i:Ljava/lang/Class;

    :cond_3
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lfreemarker/core/c;->j:Ljava/lang/Class;

    if-nez v1, :cond_4

    const-string v1, "java.lang.Float"

    invoke-static {v1}, Lfreemarker/core/c;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/core/c;->j:Ljava/lang/Class;

    :cond_4
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lfreemarker/core/c;->k:Ljava/lang/Class;

    if-nez v1, :cond_5

    const-string v1, "java.lang.Double"

    invoke-static {v1}, Lfreemarker/core/c;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/core/c;->k:Ljava/lang/Class;

    :cond_5
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lfreemarker/core/c;->l:Ljava/lang/Class;

    if-nez v1, :cond_6

    const-string v1, "java.math.BigInteger"

    invoke-static {v1}, Lfreemarker/core/c;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/core/c;->l:Ljava/lang/Class;

    :cond_6
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lfreemarker/core/c;->m:Ljava/lang/Class;

    if-nez v1, :cond_7

    const-string v1, "java.math.BigDecimal"

    invoke-static {v1}, Lfreemarker/core/c;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/core/c;->m:Ljava/lang/Class;

    :cond_7
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static n(Ljava/lang/Number;)I
    .locals 2

    :try_start_0
    sget-object v0, Lfreemarker/core/c$b;->n:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    if-nez p0, :cond_0

    new-instance p0, Lfreemarker/core/_MiscTemplateException;

    const-string v0, "The Number object was null."

    invoke-direct {p0, v0}, Lfreemarker/core/_MiscTemplateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unknown number type "

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/core/_MiscTemplateException;-><init>([Ljava/lang/Object;)V

    throw v0
.end method

.method public static o(Ljava/lang/Number;Ljava/lang/Number;)I
    .locals 4

    invoke-static {p0}, Lfreemarker/core/c$b;->n(Ljava/lang/Number;)I

    move-result p0

    invoke-static {p1}, Lfreemarker/core/c$b;->n(Ljava/lang/Number;)I

    move-result p1

    if-le p0, p1, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    goto :goto_3

    :cond_1
    if-ge p0, p1, :cond_2

    goto :goto_1

    :cond_2
    move p0, p1

    :goto_1
    if-eq p0, v1, :cond_3

    if-ne p0, v2, :cond_6

    :cond_3
    const/4 p0, 0x5

    return p0

    :cond_4
    if-ge p0, p1, :cond_5

    goto :goto_2

    :cond_5
    move p0, p1

    :goto_2
    const/4 p1, 0x1

    if-ne p0, p1, :cond_6

    return v1

    :cond_6
    :goto_3
    return v0
.end method

.method public static p(Ljava/lang/Number;)Ljava/math/BigInteger;
    .locals 1

    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 8

    invoke-static {p1, p2}, Lfreemarker/core/c$b;->o(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result p0

    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lfreemarker/core/c;->a(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p2}, Lfreemarker/core/c;->a(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/Error;

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    throw p0

    :cond_1
    invoke-static {p1}, Lfreemarker/core/c$b;->p(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p2}, Lfreemarker/core/c$b;->p(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-direct {p0, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    add-float/2addr p1, p2

    invoke-direct {p0, p1}, Ljava/lang/Float;-><init>(F)V

    return-object p0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long v4, v0, v2

    xor-long/2addr v0, v4

    const-wide/16 v6, 0x0

    cmp-long p0, v0, v6

    if-gez p0, :cond_5

    xor-long v0, v4, v2

    cmp-long p0, v0, v6

    if-gez p0, :cond_5

    invoke-static {p1}, Lfreemarker/core/c$b;->p(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p2}, Lfreemarker/core/c$b;->p(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/Long;

    invoke-direct {p0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    :goto_0
    return-object p0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int p2, p0, p1

    xor-int v0, p2, p0

    if-gez v0, :cond_7

    xor-int v0, p2, p1

    if-gez v0, :cond_7

    new-instance p2, Ljava/lang/Long;

    int-to-long v0, p0

    int-to-long p0, p1

    add-long/2addr v0, p0

    invoke-direct {p2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1

    :cond_7
    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object p2, p0

    :goto_1
    return-object p2
.end method

.method public e(Ljava/lang/Number;Ljava/lang/Number;)I
    .locals 5

    invoke-static {p1, p2}, Lfreemarker/core/c$b;->o(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p0, :cond_b

    if-eq p0, v2, :cond_8

    const/4 v3, 0x2

    if-eq p0, v3, :cond_5

    const/4 v3, 0x3

    if-eq p0, v3, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lfreemarker/core/c;->a(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p2}, Lfreemarker/core/c;->a(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/Error;

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    throw p0

    :cond_1
    invoke-static {p1}, Lfreemarker/core/c$b;->p(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p2}, Lfreemarker/core/c$b;->p(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    cmpg-double p2, p0, v3

    if-gez p2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    cmpl-double p0, p0, v3

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    return v0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    cmpg-float p2, p0, p1

    if-gez p2, :cond_6

    move v0, v1

    goto :goto_1

    :cond_6
    cmpl-float p0, p0, p1

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    move v0, v2

    :goto_1
    return v0

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    cmp-long p0, p0, v3

    if-gez p0, :cond_9

    move v0, v1

    goto :goto_2

    :cond_9
    if-nez p0, :cond_a

    goto :goto_2

    :cond_a
    move v0, v2

    :goto_2
    return v0

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ge p0, p1, :cond_c

    move v0, v1

    goto :goto_3

    :cond_c
    if-ne p0, p1, :cond_d

    goto :goto_3

    :cond_d
    move v0, v2

    :goto_3
    return v0
.end method

.method public f(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 6

    invoke-static {p1, p2}, Lfreemarker/core/c$b;->o(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lfreemarker/core/c;->a(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p2}, Lfreemarker/core/c;->a(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lfreemarker/core/c;->a:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget p0, p0, Lfreemarker/core/c;->c:I

    invoke-virtual {p1, p2, v0, p0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/Error;

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    throw p0

    :cond_1
    invoke-static {p1}, Lfreemarker/core/c$b;->p(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p2}, Lfreemarker/core/c$b;->p(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    aget-object v1, v0, v1

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x0

    aget-object p0, v0, p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    iget p2, p0, Lfreemarker/core/c;->a:I

    iget p0, p0, Lfreemarker/core/c;->c:I

    invoke-virtual {v0, p1, p2, p0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    div-double/2addr v0, p1

    invoke-direct {p0, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    div-float/2addr p1, p2

    invoke-direct {p0, p1}, Ljava/lang/Float;-><init>(F)V

    return-object p0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    rem-long v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-nez p2, :cond_6

    new-instance p2, Ljava/lang/Long;

    div-long/2addr p0, v0

    invoke-direct {p2, p0, p1}, Ljava/lang/Long;-><init>(J)V

    return-object p2

    :cond_6
    new-instance p2, Ljava/lang/Double;

    long-to-double p0, p0

    long-to-double v0, v0

    div-double/2addr p0, v0

    invoke-direct {p2, p0, p1}, Ljava/lang/Double;-><init>(D)V

    return-object p2

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    rem-int p2, p0, p1

    if-nez p2, :cond_8

    new-instance p2, Ljava/lang/Integer;

    div-int/2addr p0, p1

    invoke-direct {p2, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p2

    :cond_8
    new-instance p2, Ljava/lang/Double;

    int-to-double v0, p0

    int-to-double p0, p1

    div-double/2addr v0, p0

    invoke-direct {p2, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p2
.end method

.method public g(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 2

    invoke-static {p1, p2}, Lfreemarker/core/c$b;->o(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result p0

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 p1, 0x5

    if-eq p0, p1, :cond_0

    new-instance p0, Lfreemarker/core/BugException;

    invoke-direct {p0}, Lfreemarker/core/BugException;-><init>()V

    throw p0

    :cond_0
    new-instance p0, Lfreemarker/core/_MiscTemplateException;

    const-string p1, "Can\'t calculate remainder on BigDecimals"

    invoke-direct {p0, p1}, Lfreemarker/core/_MiscTemplateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lfreemarker/core/c$b;->p(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p2}, Lfreemarker/core/c$b;->p(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    rem-double/2addr v0, p1

    invoke-direct {p0, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    rem-float/2addr p1, p2

    invoke-direct {p0, p1}, Ljava/lang/Float;-><init>(F)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    rem-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    rem-int/2addr p1, p2

    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p0
.end method

.method public h(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 8

    invoke-static {p1, p2}, Lfreemarker/core/c$b;->o(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lfreemarker/core/c;->a(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p2}, Lfreemarker/core/c;->a(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result p2

    iget v0, p0, Lfreemarker/core/c;->b:I

    if-le p2, v0, :cond_0

    iget p0, p0, Lfreemarker/core/c;->c:I

    invoke-virtual {p1, v0, p0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    :cond_0
    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/Error;

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    throw p0

    :cond_2
    invoke-static {p1}, Lfreemarker/core/c$b;->p(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p2}, Lfreemarker/core/c$b;->p(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    mul-double/2addr v0, p1

    invoke-direct {p0, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    mul-float/2addr p1, p2

    invoke-direct {p0, p1}, Ljava/lang/Float;-><init>(F)V

    return-object p0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    mul-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long p0, v0, v6

    if-eqz p0, :cond_7

    div-long v0, v4, v0

    cmp-long p0, v0, v2

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {p1}, Lfreemarker/core/c$b;->p(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p2}, Lfreemarker/core/c$b;->p(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_1

    :cond_7
    :goto_0
    new-instance p0, Ljava/lang/Long;

    invoke-direct {p0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    :goto_1
    return-object p0

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    mul-int p2, p0, p1

    if-eqz p0, :cond_a

    div-int v0, p2, p0

    if-ne v0, p1, :cond_9

    goto :goto_2

    :cond_9
    new-instance p2, Ljava/lang/Long;

    int-to-long v0, p0

    int-to-long p0, p1

    mul-long/2addr v0, p0

    invoke-direct {p2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    goto :goto_3

    :cond_a
    :goto_2
    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object p2, p0

    :goto_3
    return-object p2
.end method

.method public i(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 8

    invoke-static {p1, p2}, Lfreemarker/core/c$b;->o(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result p0

    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lfreemarker/core/c;->a(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p2}, Lfreemarker/core/c;->a(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/Error;

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    throw p0

    :cond_1
    invoke-static {p1}, Lfreemarker/core/c$b;->p(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p2}, Lfreemarker/core/c$b;->p(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    sub-double/2addr v0, p1

    invoke-direct {p0, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-direct {p0, p1}, Ljava/lang/Float;-><init>(F)V

    return-object p0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long v4, v0, v2

    xor-long/2addr v0, v4

    const-wide/16 v6, 0x0

    cmp-long p0, v0, v6

    if-gez p0, :cond_5

    not-long v0, v2

    xor-long/2addr v0, v4

    cmp-long p0, v0, v6

    if-gez p0, :cond_5

    invoke-static {p1}, Lfreemarker/core/c$b;->p(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p2}, Lfreemarker/core/c$b;->p(Ljava/lang/Number;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/Long;

    invoke-direct {p0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    :goto_0
    return-object p0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    sub-int p2, p0, p1

    xor-int v0, p2, p0

    if-gez v0, :cond_7

    not-int v0, p1

    xor-int/2addr v0, p2

    if-gez v0, :cond_7

    new-instance p2, Ljava/lang/Long;

    int-to-long v0, p0

    int-to-long p0, p1

    sub-long/2addr v0, p0

    invoke-direct {p2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1

    :cond_7
    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object p2, p0

    :goto_1
    return-object p2
.end method

.method public l(Ljava/lang/String;)Ljava/lang/Number;
    .locals 0

    invoke-static {p1}, Lfreemarker/core/c;->b(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0

    instance-of p1, p0, Ljava/math/BigDecimal;

    if-eqz p1, :cond_0

    invoke-static {p0}, Lms7;->a(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    :cond_0
    return-object p0
.end method
