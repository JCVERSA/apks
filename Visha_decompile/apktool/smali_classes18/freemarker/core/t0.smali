.class public abstract Lfreemarker/core/t0;
.super Lfreemarker/core/t1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/t0$a;
    }
.end annotation


# instance fields
.field public g:Lzfa;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/t1;-><init>()V

    return-void
.end method

.method public static H(Lzfa;Lfreemarker/core/t0;Lfreemarker/core/Environment;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lfreemarker/core/q0;->c(Lzfa;Lfreemarker/core/t0;Ljava/lang/String;Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static S(Lzfa;)Z
    .locals 3

    instance-of v0, p0, Lrd0;

    if-eqz v0, :cond_0

    check-cast p0, Lrd0;

    invoke-virtual {p0}, Lrd0;->isEmpty()Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Lnga;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    check-cast p0, Lnga;

    invoke-interface {p0}, Lnga;->size()I

    move-result p0

    if-nez p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    instance-of v0, p0, Lmga;

    if-eqz v0, :cond_5

    check-cast p0, Lmga;

    invoke-interface {p0}, Lmga;->getAsString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1

    :cond_5
    if-nez p0, :cond_6

    return v2

    :cond_6
    instance-of v0, p0, Lbfa;

    if-eqz v0, :cond_7

    check-cast p0, Lbfa;

    invoke-interface {p0}, Lbfa;->iterator()Lbga;

    move-result-object p0

    invoke-interface {p0}, Lbga;->hasNext()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_7
    instance-of v0, p0, Lofa;

    if-eqz v0, :cond_8

    check-cast p0, Lofa;

    invoke-interface {p0}, Lofa;->isEmpty()Z

    move-result p0

    return p0

    :cond_8
    instance-of v0, p0, Lhga;

    if-nez v0, :cond_a

    instance-of v0, p0, Lffa;

    if-nez v0, :cond_a

    instance-of p0, p0, Lfreemarker/template/a;

    if-eqz p0, :cond_9

    goto :goto_0

    :cond_9
    return v2

    :cond_a
    :goto_0
    return v1
.end method


# virtual methods
.method public abstract F(Lfreemarker/core/Environment;)Lzfa;
.end method

.method public G(Lzfa;Lfreemarker/core/Environment;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p2}, Lfreemarker/core/InvalidReferenceException;->getInstance(Lfreemarker/core/t0;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object p0

    throw p0
.end method

.method public final I(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/t0;->J(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;

    move-result-object p1

    iget p2, p1, Lfreemarker/core/t1;->d:I

    if-nez p2, :cond_0

    invoke-virtual {p1, p0}, Lfreemarker/core/t1;->l(Lfreemarker/core/t1;)Lfreemarker/core/t1;

    :cond_0
    return-object p1
.end method

.method public abstract J(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;
.end method

.method public final K(Lfreemarker/core/Environment;)Lzfa;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/t0;->g:Lzfa;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lfreemarker/core/t0;->F(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public L(Lfreemarker/core/Environment;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lfreemarker/core/q0;->c(Lzfa;Lfreemarker/core/t0;Ljava/lang/String;Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public M(Lfreemarker/core/Environment;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    invoke-static {v0, p0, p2, p1}, Lfreemarker/core/q0;->c(Lzfa;Lfreemarker/core/t0;Ljava/lang/String;Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public N(Lxe1;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lfreemarker/core/t0;->P(Lfreemarker/core/Environment;Lxe1;)Z

    move-result p0

    return p0
.end method

.method public O(Lfreemarker/core/Environment;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lfreemarker/core/t0;->P(Lfreemarker/core/Environment;Lxe1;)Z

    move-result p0

    return p0
.end method

.method public final P(Lfreemarker/core/Environment;Lxe1;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lfreemarker/core/t0;->V(Lzfa;Lfreemarker/core/Environment;Lxe1;)Z

    move-result p0

    return p0
.end method

.method public Q(Lfreemarker/core/Environment;)Lzfa;
    .locals 1

    invoke-virtual {p0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lfreemarker/core/t0;->G(Lzfa;Lfreemarker/core/Environment;)V

    return-object v0
.end method

.method public R(Lfreemarker/core/Environment;)Ljava/lang/Number;
    .locals 1

    invoke-virtual {p0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lfreemarker/core/t0;->W(Lzfa;Lfreemarker/core/Environment;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public abstract T()Z
.end method

.method public U(Lzfa;Lfreemarker/core/Environment;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lfreemarker/core/t0;->V(Lzfa;Lfreemarker/core/Environment;Lxe1;)Z

    move-result p0

    return p0
.end method

.method public final V(Lzfa;Lfreemarker/core/Environment;Lxe1;)Z
    .locals 1

    instance-of v0, p1, Lfreemarker/template/a;

    if-eqz v0, :cond_0

    check-cast p1, Lfreemarker/template/a;

    invoke-interface {p1}, Lfreemarker/template/a;->getAsBoolean()Z

    move-result p0

    return p0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lfreemarker/core/Configurable;->J()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lfreemarker/core/Configurable;->J()Z

    move-result p3

    if-eqz p3, :cond_3

    :goto_0
    if-eqz p1, :cond_2

    invoke-static {p1}, Lfreemarker/core/t0;->S(Lzfa;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0

    :cond_3
    new-instance p3, Lfreemarker/core/NonBooleanException;

    invoke-direct {p3, p0, p1, p2}, Lfreemarker/core/NonBooleanException;-><init>(Lfreemarker/core/t0;Lzfa;Lfreemarker/core/Environment;)V

    throw p3
.end method

.method public W(Lzfa;Lfreemarker/core/Environment;)Ljava/lang/Number;
    .locals 1

    instance-of v0, p1, Lhga;

    if-eqz v0, :cond_0

    check-cast p1, Lhga;

    invoke-static {p1, p0}, Lfreemarker/core/q0;->g(Lhga;Lfreemarker/core/t0;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lfreemarker/core/NonNumericalException;

    invoke-direct {v0, p0, p1, p2}, Lfreemarker/core/NonNumericalException;-><init>(Lfreemarker/core/t0;Lzfa;Lfreemarker/core/Environment;)V

    throw v0
.end method

.method public z(Lfreemarker/template/Template;IIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lfreemarker/core/t1;->z(Lfreemarker/template/Template;IIII)V

    invoke-virtual {p0}, Lfreemarker/core/t0;->T()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lfreemarker/core/t0;->F(Lfreemarker/core/Environment;)Lzfa;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/t0;->g:Lzfa;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
