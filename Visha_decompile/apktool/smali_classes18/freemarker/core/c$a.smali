.class public Lfreemarker/core/c$a;
.super Lfreemarker/core/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 0

    invoke-static {p1}, Lfreemarker/core/c;->a(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p2}, Lfreemarker/core/c;->a(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public e(Ljava/lang/Number;Ljava/lang/Number;)I
    .locals 2

    invoke-static {p1}, La47;->b(Ljava/lang/Number;)I

    move-result p0

    invoke-static {p2}, La47;->b(Ljava/lang/Number;)I

    move-result v0

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    if-ge p0, v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    if-le p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-nez p0, :cond_3

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-static {p1}, Lfreemarker/core/c;->a(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p2}, Lfreemarker/core/c;->a(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    return p0
.end method

.method public f(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 0

    invoke-static {p1}, Lfreemarker/core/c;->a(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p2}, Lfreemarker/core/c;->a(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lfreemarker/core/c$a;->m(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public g(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    new-instance p2, Ljava/lang/Long;

    rem-long/2addr p0, v0

    invoke-direct {p2, p0, p1}, Ljava/lang/Long;-><init>(J)V

    return-object p2
.end method

.method public h(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 1

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
.end method

.method public i(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 0

    invoke-static {p1}, Lfreemarker/core/c;->a(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p2}, Lfreemarker/core/c;->a(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public l(Ljava/lang/String;)Ljava/lang/Number;
    .locals 0

    invoke-static {p1}, Lfreemarker/core/c;->b(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public final m(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 2

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
.end method
