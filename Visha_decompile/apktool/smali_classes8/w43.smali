.class public abstract Lw43;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls43;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw43$a;,
        Lw43$b;,
        Lw43$c;,
        Lw43$d;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lw43;)Lw43;
.end method

.method public abstract b()Lw43;
.end method

.method public c()I
    .locals 0

    invoke-virtual {p0}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public abstract d(Lw43;)Lw43;
.end method

.method public e()[B
    .locals 1

    invoke-virtual {p0}, Lw43;->f()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {v0, p0}, Lge0;->a(ILjava/math/BigInteger;)[B

    move-result-object p0

    return-object p0
.end method

.method public abstract f()I
.end method

.method public abstract g()Lw43;
.end method

.method public h()Z
    .locals 1

    invoke-virtual {p0}, Lw43;->c()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 0

    invoke-virtual {p0}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract j(Lw43;)Lw43;
.end method

.method public k(Lw43;Lw43;Lw43;)Lw43;
    .locals 0

    invoke-virtual {p0, p1}, Lw43;->j(Lw43;)Lw43;

    move-result-object p0

    invoke-virtual {p2, p3}, Lw43;->j(Lw43;)Lw43;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw43;->r(Lw43;)Lw43;

    move-result-object p0

    return-object p0
.end method

.method public l(Lw43;Lw43;Lw43;)Lw43;
    .locals 0

    invoke-virtual {p0, p1}, Lw43;->j(Lw43;)Lw43;

    move-result-object p0

    invoke-virtual {p2, p3}, Lw43;->j(Lw43;)Lw43;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw43;->a(Lw43;)Lw43;

    move-result-object p0

    return-object p0
.end method

.method public abstract m()Lw43;
.end method

.method public abstract n()Lw43;
.end method

.method public abstract o()Lw43;
.end method

.method public p(Lw43;Lw43;)Lw43;
    .locals 0

    invoke-virtual {p0}, Lw43;->o()Lw43;

    move-result-object p0

    invoke-virtual {p1, p2}, Lw43;->j(Lw43;)Lw43;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw43;->a(Lw43;)Lw43;

    move-result-object p0

    return-object p0
.end method

.method public q(I)Lw43;
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Lw43;->o()Lw43;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public abstract r(Lw43;)Lw43;
.end method

.method public s()Z
    .locals 1

    invoke-virtual {p0}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p0

    return p0
.end method

.method public abstract t()Ljava/math/BigInteger;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
