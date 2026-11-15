.class public abstract Lt43$c;
.super Lt43;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt43;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    invoke-static {p1}, Lwv3;->b(Ljava/math/BigInteger;)Lvv3;

    move-result-object p1

    invoke-direct {p0, p1}, Lt43;-><init>(Lvv3;)V

    return-void
.end method

.method public static C(Ljava/security/SecureRandom;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0, p0}, Lge0;->d(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_0

    return-object v0
.end method


# virtual methods
.method public j(ILjava/math/BigInteger;)Li53;
    .locals 3

    invoke-virtual {p0, p2}, Lt43;->l(Ljava/math/BigInteger;)Lw43;

    move-result-object p2

    invoke-virtual {p2}, Lw43;->o()Lw43;

    move-result-object v0

    iget-object v1, p0, Lt43;->b:Lw43;

    invoke-virtual {v0, v1}, Lw43;->a(Lw43;)Lw43;

    move-result-object v0

    invoke-virtual {v0, p2}, Lw43;->j(Lw43;)Lw43;

    move-result-object v0

    iget-object v1, p0, Lt43;->c:Lw43;

    invoke-virtual {v0, v1}, Lw43;->a(Lw43;)Lw43;

    move-result-object v0

    invoke-virtual {v0}, Lw43;->n()Lw43;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lw43;->s()Z

    move-result v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lw43;->m()Lw43;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, p2, v0}, Lt43;->h(Lw43;Lw43;)Li53;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid point compression"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public z(Ljava/security/SecureRandom;)Lw43;
    .locals 2

    invoke-virtual {p0}, Lt43;->q()Lvv3;

    move-result-object v0

    invoke-interface {v0}, Lvv3;->b()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p1, v0}, Lt43$c;->C(Ljava/security/SecureRandom;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lt43;->l(Ljava/math/BigInteger;)Lw43;

    move-result-object v1

    invoke-static {p1, v0}, Lt43$c;->C(Ljava/security/SecureRandom;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lt43;->l(Ljava/math/BigInteger;)Lw43;

    move-result-object p0

    invoke-virtual {v1, p0}, Lw43;->j(Lw43;)Lw43;

    move-result-object p0

    return-object p0
.end method
