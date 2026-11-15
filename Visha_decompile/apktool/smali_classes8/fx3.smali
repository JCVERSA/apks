.class public Lfx3;
.super Lv2;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lv2;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Li53;Ljava/math/BigInteger;)Li53;
    .locals 9

    invoke-virtual {p1}, Li53;->i()Lt43;

    move-result-object p0

    invoke-static {p0}, Lhx3;->a(Lt43;)I

    move-result v0

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    if-gt v1, v0, :cond_2

    invoke-static {p1}, Lhx3;->b(Li53;)Lgx3;

    move-result-object p1

    invoke-virtual {p1}, Lgx3;->a()Lb53;

    move-result-object v1

    invoke-virtual {p1}, Lgx3;->c()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v2

    invoke-virtual {p0}, Lt43;->s()Li53;

    move-result-object p0

    mul-int/2addr v2, v0

    invoke-static {v2, p2}, Lvy6;->q(ILjava/math/BigInteger;)[I

    move-result-object p2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    sub-int v5, v2, v4

    move v6, v3

    :goto_1
    if-ltz v5, :cond_0

    ushr-int/lit8 v7, v5, 0x5

    aget v7, p2, v7

    and-int/lit8 v8, v5, 0x1f

    ushr-int/2addr v7, v8

    ushr-int/lit8 v8, v7, 0x1

    xor-int/2addr v6, v8

    shl-int/lit8 v6, v6, 0x1

    xor-int/2addr v6, v7

    sub-int/2addr v5, v0

    goto :goto_1

    :cond_0
    invoke-interface {v1, v6}, Lb53;->a(I)Li53;

    move-result-object v5

    invoke-virtual {p0, v5}, Li53;->F(Li53;)Li53;

    move-result-object p0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lgx3;->b()Li53;

    move-result-object p1

    invoke-virtual {p0, p1}, Li53;->a(Li53;)Li53;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "fixed-point comb doesn\'t support scalars larger than the curve order"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
