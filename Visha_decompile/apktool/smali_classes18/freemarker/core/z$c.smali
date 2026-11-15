.class public Lfreemarker/core/z$c;
.super Lfreemarker/core/z$a;
.source "SourceFile"

# interfaces
.implements Leu4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/z$c$a;
    }
.end annotation


# instance fields
.field public final k:Lfreemarker/core/z$c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lfreemarker/core/z$a;-><init>()V

    new-instance v0, Lfreemarker/core/z$c$a;

    invoke-direct {v0}, Lfreemarker/core/z$c$a;-><init>()V

    iput-object v0, p0, Lfreemarker/core/z$c;->k:Lfreemarker/core/z$c$a;

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 7

    iget-object v0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v3

    instance-of v0, v3, Lhga;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v3}, Lfreemarker/core/z$c;->h0(Lfreemarker/core/Environment;Lzfa;)Lzfa;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, v3, Lfreemarker/template/a;

    if-eqz v0, :cond_2

    new-instance p0, Lfreemarker/template/SimpleScalar;

    check-cast v3, Lfreemarker/template/a;

    invoke-interface {v3}, Lfreemarker/template/a;->getAsBoolean()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    invoke-direct {p0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_2
    new-instance v0, Lfreemarker/core/UnexpectedTypeException;

    iget-object v2, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    sget-object p0, Lfreemarker/core/z;->a:Ljava/lang/Class;

    if-nez p0, :cond_3

    const-string p0, "freemarker.template.TemplateNumberModel"

    invoke-static {p0}, Lfreemarker/core/z;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lfreemarker/core/z;->a:Ljava/lang/Class;

    :cond_3
    sget-object v1, Lfreemarker/core/z;->b:Ljava/lang/Class;

    if-nez v1, :cond_4

    const-string v1, "freemarker.template.TemplateBooleanModel"

    invoke-static {v1}, Lfreemarker/core/z;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/core/z;->b:Ljava/lang/Class;

    :cond_4
    filled-new-array {p0, v1}, [Ljava/lang/Class;

    move-result-object v5

    const-string v4, "number or boolean"

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/t0;Lzfa;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/Environment;)V

    throw v0
.end method

.method public c()I
    .locals 0

    sget p0, Ld1d;->d:I

    return p0
.end method

.method public e()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/z$c;->k:Lfreemarker/core/z$c$a;

    return-object p0
.end method

.method public h0(Lfreemarker/core/Environment;Lzfa;)Lzfa;
    .locals 7

    check-cast p2, Lhga;

    iget-object p0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-static {p2, p0}, Lfreemarker/core/q0;->g(Lhga;Lfreemarker/core/t0;)Ljava/lang/Number;

    move-result-object p0

    instance-of p2, p0, Ljava/lang/Integer;

    if-nez p2, :cond_7

    instance-of p2, p0, Ljava/lang/Long;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    instance-of p2, p0, Ljava/lang/Double;

    const-string v0, "NaN"

    const-string v1, "-INF"

    const-string v2, "INF"

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double p2, v3, v5

    if-nez p2, :cond_1

    new-instance p0, Lfreemarker/template/SimpleScalar;

    invoke-direct {p0, v2}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    const-wide/high16 v5, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double p2, v3, v5

    if-nez p2, :cond_2

    new-instance p0, Lfreemarker/template/SimpleScalar;

    invoke-direct {p0, v1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p0, Lfreemarker/template/SimpleScalar;

    invoke-direct {p0, v0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_3
    instance-of p2, p0, Ljava/lang/Float;

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p2

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v3, p2, v3

    if-nez v3, :cond_4

    new-instance p0, Lfreemarker/template/SimpleScalar;

    invoke-direct {p0, v2}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_4
    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v2, p2, v2

    if-nez v2, :cond_5

    new-instance p0, Lfreemarker/template/SimpleScalar;

    invoke-direct {p0, v1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_5
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p0, Lfreemarker/template/SimpleScalar;

    invoke-direct {p0, v0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_6
    new-instance p2, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p1}, Lfreemarker/core/Environment;->u0()Ljava/text/NumberFormat;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_7
    :goto_0
    new-instance p1, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
