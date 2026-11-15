.class public abstract Lhx3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lt43;)I
    .locals 1

    invoke-virtual {p0}, Lt43;->u()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lt43;->r()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static b(Li53;)Lgx3;
    .locals 3

    invoke-virtual {p0}, Li53;->i()Lt43;

    move-result-object v0

    new-instance v1, Lhx3$a;

    invoke-direct {v1, v0, p0}, Lhx3$a;-><init>(Lt43;Li53;)V

    const-string v2, "bc_fixed_point"

    invoke-virtual {v0, p0, v2, v1}, Lt43;->y(Li53;Ljava/lang/String;Lpd8;)Lqd8;

    move-result-object p0

    check-cast p0, Lgx3;

    return-object p0
.end method
