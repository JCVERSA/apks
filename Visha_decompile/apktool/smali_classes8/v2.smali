.class public abstract Lv2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc53;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li53;)Li53;
    .locals 0

    invoke-static {p1}, Lr43;->a(Li53;)Li53;

    move-result-object p0

    return-object p0
.end method

.method public b(Li53;Ljava/math/BigInteger;)Li53;
    .locals 2

    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Li53;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lv2;->c(Li53;Ljava/math/BigInteger;)Li53;

    move-result-object p1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Li53;->x()Li53;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lv2;->a(Li53;)Li53;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Li53;->i()Lt43;

    move-result-object p0

    invoke-virtual {p0}, Lt43;->s()Li53;

    move-result-object p0

    return-object p0
.end method

.method public abstract c(Li53;Ljava/math/BigInteger;)Li53;
.end method
