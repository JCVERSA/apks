.class public abstract Lt43$b;
.super Lt43;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt43;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field public i:[Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lt43$b;->C(IIII)Lvv3;

    move-result-object p1

    invoke-direct {p0, p1}, Lt43;-><init>(Lvv3;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lt43$b;->i:[Ljava/math/BigInteger;

    const-string p0, "org.bouncycastle.ec.disable"

    invoke-static {p0}, Lqi8;->c(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "org.bouncycastle.ec.disable_f2m"

    invoke-static {p0}, Lqi8;->c(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "F2M disabled by \"org.bouncycastle.ec.disable_f2m\""

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "F2M disabled by \"org.bouncycastle.ec.disable\""

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static C(IIII)Lvv3;
    .locals 5

    const-string v0, "org.bouncycastle.ec.max_f2m_field_size"

    const/16 v1, 0x476

    invoke-static {v0, v1}, Lqi8;->a(Ljava/lang/String;I)I

    move-result v0

    if-gt p0, v0, :cond_1

    or-int v0, p2, p3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-nez v0, :cond_0

    new-array p2, v3, [I

    aput v4, p2, v4

    aput p1, p2, v2

    aput p0, p2, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [I

    aput v4, v0, v4

    aput p1, v0, v2

    aput p2, v0, v1

    aput p3, v0, v3

    const/4 p1, 0x4

    aput p0, v0, p1

    move-object p2, v0

    :goto_0
    invoke-static {p2}, Lwv3;->a([I)Lsc8;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "field size out of range: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static D(Ljava/security/SecureRandom;I)Ljava/math/BigInteger;
    .locals 2

    :cond_0
    invoke-static {p1, p0}, Lge0;->d(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0
.end method


# virtual methods
.method public E(Lw43;)Lw43;
    .locals 9

    move-object v0, p1

    check-cast v0, Lw43$a;

    invoke-virtual {v0}, Lw43$a;->v()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lw43$a;->w()I

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lt43;->r()I

    move-result v3

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lw43$a;->u()Lw43;

    move-result-object p0

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lw43;->o()Lw43;

    move-result-object v0

    invoke-virtual {v0, p0}, Lw43;->a(Lw43;)Lw43;

    move-result-object v0

    invoke-virtual {v0, p1}, Lw43;->a(Lw43;)Lw43;

    move-result-object p1

    invoke-virtual {p1}, Lw43;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    invoke-virtual {p1}, Lw43;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p1

    :cond_4
    sget-object v0, Ls43;->a:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lt43;->l(Ljava/math/BigInteger;)Lw43;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    :cond_5
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3, v1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {p0, v4}, Lt43;->l(Ljava/math/BigInteger;)Lw43;

    move-result-object v4

    const/4 v5, 0x1

    move-object v6, p1

    move-object v7, v0

    :goto_1
    if-ge v5, v3, :cond_6

    invoke-virtual {v6}, Lw43;->o()Lw43;

    move-result-object v6

    invoke-virtual {v7}, Lw43;->o()Lw43;

    move-result-object v7

    invoke-virtual {v6, v4}, Lw43;->j(Lw43;)Lw43;

    move-result-object v8

    invoke-virtual {v7, v8}, Lw43;->a(Lw43;)Lw43;

    move-result-object v7

    invoke-virtual {v6, p1}, Lw43;->a(Lw43;)Lw43;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v6}, Lw43;->i()Z

    move-result v4

    if-nez v4, :cond_7

    return-object v2

    :cond_7
    invoke-virtual {v7}, Lw43;->o()Lw43;

    move-result-object v4

    invoke-virtual {v4, v7}, Lw43;->a(Lw43;)Lw43;

    move-result-object v4

    invoke-virtual {v4}, Lw43;->i()Z

    move-result v4

    if-nez v4, :cond_5

    return-object v7
.end method

.method public g(Ljava/math/BigInteger;Ljava/math/BigInteger;)Li53;
    .locals 2

    invoke-virtual {p0, p1}, Lt43;->l(Ljava/math/BigInteger;)Lw43;

    move-result-object p1

    invoke-virtual {p0, p2}, Lt43;->l(Ljava/math/BigInteger;)Lw43;

    move-result-object p2

    invoke-virtual {p0}, Lt43;->p()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lw43;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lw43;->o()Lw43;

    move-result-object v0

    invoke-virtual {p0}, Lt43;->n()Lw43;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    invoke-virtual {p2, p1}, Lw43;->d(Lw43;)Lw43;

    move-result-object p2

    invoke-virtual {p2, p1}, Lw43;->a(Lw43;)Lw43;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lt43;->h(Lw43;Lw43;)Li53;

    move-result-object p0

    return-object p0
.end method

.method public j(ILjava/math/BigInteger;)Li53;
    .locals 3

    invoke-virtual {p0, p2}, Lt43;->l(Ljava/math/BigInteger;)Lw43;

    move-result-object p2

    invoke-virtual {p2}, Lw43;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lt43;->n()Lw43;

    move-result-object p1

    invoke-virtual {p1}, Lw43;->n()Lw43;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lw43;->o()Lw43;

    move-result-object v0

    invoke-virtual {v0}, Lw43;->g()Lw43;

    move-result-object v0

    invoke-virtual {p0}, Lt43;->n()Lw43;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw43;->j(Lw43;)Lw43;

    move-result-object v0

    invoke-virtual {p0}, Lt43;->m()Lw43;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw43;->a(Lw43;)Lw43;

    move-result-object v0

    invoke-virtual {v0, p2}, Lw43;->a(Lw43;)Lw43;

    move-result-object v0

    invoke-virtual {p0, v0}, Lt43$b;->E(Lw43;)Lw43;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lw43;->s()Z

    move-result v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lw43;->b()Lw43;

    move-result-object v0

    :cond_2
    invoke-virtual {p0}, Lt43;->p()I

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    const/4 v1, 0x6

    if-eq p1, v1, :cond_3

    invoke-virtual {v0, p2}, Lw43;->j(Lw43;)Lw43;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p2}, Lw43;->a(Lw43;)Lw43;

    move-result-object p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p0, p2, p1}, Lt43;->h(Lw43;Lw43;)Li53;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid point compression"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public z(Ljava/security/SecureRandom;)Lw43;
    .locals 2

    invoke-virtual {p0}, Lt43;->r()I

    move-result v0

    invoke-static {p1, v0}, Lt43$b;->D(Ljava/security/SecureRandom;I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lt43;->l(Ljava/math/BigInteger;)Lw43;

    move-result-object v1

    invoke-static {p1, v0}, Lt43$b;->D(Ljava/security/SecureRandom;I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lt43;->l(Ljava/math/BigInteger;)Lw43;

    move-result-object p0

    invoke-virtual {v1, p0}, Lw43;->j(Lw43;)Lw43;

    move-result-object p0

    return-object p0
.end method
