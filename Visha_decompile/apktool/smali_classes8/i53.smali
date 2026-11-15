.class public abstract Li53;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li53$b;,
        Li53$c;,
        Li53$d;,
        Li53$e;
    }
.end annotation


# static fields
.field public static final f:[Lw43;


# instance fields
.field public a:Lt43;

.field public b:Lw43;

.field public c:Lw43;

.field public d:[Lw43;

.field public e:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lw43;

    sput-object v0, Li53;->f:[Lw43;

    return-void
.end method

.method public constructor <init>(Lt43;Lw43;Lw43;)V
    .locals 1

    .line 1
    invoke-static {p1}, Li53;->m(Lt43;)[Lw43;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Li53;-><init>(Lt43;Lw43;Lw43;[Lw43;)V

    return-void
.end method

.method public constructor <init>(Lt43;Lw43;Lw43;[Lw43;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Li53;->e:Ljava/util/Hashtable;

    iput-object p1, p0, Li53;->a:Lt43;

    iput-object p2, p0, Li53;->b:Lw43;

    iput-object p3, p0, Li53;->c:Lw43;

    iput-object p4, p0, Li53;->d:[Lw43;

    return-void
.end method

.method public static m(Lt43;)[Lw43;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lt43;->p()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    sget-object v1, Ls43;->b:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Lt43;->l(Ljava/math/BigInteger;)Lw43;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 p0, 0x6

    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown coordinate system"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p0}, Lt43;->m()Lw43;

    move-result-object p0

    filled-new-array {v1, p0}, [Lw43;

    move-result-object p0

    return-object p0

    :cond_3
    filled-new-array {v1, v1, v1}, [Lw43;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    filled-new-array {v1}, [Lw43;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object p0, Li53;->f:[Lw43;

    return-object p0
.end method


# virtual methods
.method public abstract A()Z
.end method

.method public B()Z
    .locals 2

    sget-object v0, Ls43;->b:Ljava/math/BigInteger;

    iget-object v1, p0, Li53;->a:Lt43;

    invoke-virtual {v1}, Lt43;->o()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Li53;->a:Lt43;

    invoke-virtual {v0}, Lt43;->u()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0, v0}, Lr43;->h(Li53;Ljava/math/BigInteger;)Li53;

    move-result-object p0

    invoke-virtual {p0}, Li53;->t()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public abstract C(Li53;)Li53;
.end method

.method public D(I)Li53;
    .locals 0

    if-ltz p1, :cond_1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Li53;->E()Li53;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'e\' cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract E()Li53;
.end method

.method public abstract F(Li53;)Li53;
.end method

.method public abstract a(Li53;)Li53;
.end method

.method public b()V
    .locals 1

    invoke-virtual {p0}, Li53;->u()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "point not in normal form"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(Lw43;Lw43;)Li53;
    .locals 2

    invoke-virtual {p0}, Li53;->i()Lt43;

    move-result-object v0

    invoke-virtual {p0}, Li53;->n()Lw43;

    move-result-object v1

    invoke-virtual {v1, p1}, Lw43;->j(Lw43;)Lw43;

    move-result-object p1

    invoke-virtual {p0}, Li53;->o()Lw43;

    move-result-object p0

    invoke-virtual {p0, p2}, Lw43;->j(Lw43;)Lw43;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lt43;->h(Lw43;Lw43;)Li53;

    move-result-object p0

    return-object p0
.end method

.method public abstract d()Li53;
.end method

.method public e(Li53;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Li53;->i()Lt43;

    move-result-object v1

    invoke-virtual {p1}, Li53;->i()Lt43;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    if-nez v2, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v0

    :goto_1
    invoke-virtual {p0}, Li53;->t()Z

    move-result v6

    invoke-virtual {p1}, Li53;->t()Z

    move-result v7

    if-nez v6, :cond_9

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {p1}, Li53;->y()Li53;

    move-result-object p1

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {p0}, Li53;->y()Li53;

    move-result-object p0

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v2}, Lt43;->k(Lt43;)Z

    move-result v2

    if-nez v2, :cond_7

    return v0

    :cond_7
    invoke-virtual {v1, p1}, Lt43;->v(Li53;)Li53;

    move-result-object p1

    filled-new-array {p0, p1}, [Li53;

    move-result-object p0

    invoke-virtual {v1, p0}, Lt43;->w([Li53;)V

    aget-object p1, p0, v0

    aget-object p0, p0, v3

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    :goto_2
    invoke-virtual {p0}, Li53;->p()Lw43;

    move-result-object v1

    invoke-virtual {p1}, Li53;->p()Lw43;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Li53;->q()Lw43;

    move-result-object p0

    invoke-virtual {p1}, Li53;->q()Lw43;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    move v0, v3

    :cond_8
    return v0

    :cond_9
    :goto_3
    if-eqz v6, :cond_b

    if-eqz v7, :cond_b

    if-nez v4, :cond_a

    if-nez v5, :cond_a

    invoke-virtual {v1, v2}, Lt43;->k(Lt43;)Z

    move-result p0

    if-eqz p0, :cond_b

    :cond_a
    move v0, v3

    :cond_b
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Li53;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Li53;

    invoke-virtual {p0, p1}, Li53;->e(Li53;)Z

    move-result p0

    return p0
.end method

.method public f()Lw43;
    .locals 0

    invoke-virtual {p0}, Li53;->b()V

    invoke-virtual {p0}, Li53;->p()Lw43;

    move-result-object p0

    return-object p0
.end method

.method public g()Lw43;
    .locals 0

    invoke-virtual {p0}, Li53;->b()V

    invoke-virtual {p0}, Li53;->q()Lw43;

    move-result-object p0

    return-object p0
.end method

.method public abstract h()Z
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Li53;->i()Lt43;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lt43;->hashCode()I

    move-result v0

    not-int v0, v0

    :goto_0
    invoke-virtual {p0}, Li53;->t()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Li53;->y()Li53;

    move-result-object p0

    invoke-virtual {p0}, Li53;->p()Lw43;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Li53;->q()Lw43;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit16 p0, p0, 0x101

    xor-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public i()Lt43;
    .locals 0

    iget-object p0, p0, Li53;->a:Lt43;

    return-object p0
.end method

.method public j()I
    .locals 0

    iget-object p0, p0, Li53;->a:Lt43;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lt43;->p()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final k()Li53;
    .locals 0

    invoke-virtual {p0}, Li53;->y()Li53;

    move-result-object p0

    invoke-virtual {p0}, Li53;->d()Li53;

    move-result-object p0

    return-object p0
.end method

.method public l(Z)[B
    .locals 4

    invoke-virtual {p0}, Li53;->t()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-array p0, v1, [B

    return-object p0

    :cond_0
    invoke-virtual {p0}, Li53;->y()Li53;

    move-result-object p0

    invoke-virtual {p0}, Li53;->p()Lw43;

    move-result-object v0

    invoke-virtual {v0}, Lw43;->e()[B

    move-result-object v0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    array-length p1, v0

    add-int/2addr p1, v1

    new-array p1, p1, [B

    invoke-virtual {p0}, Li53;->h()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    int-to-byte p0, p0

    aput-byte p0, p1, v2

    array-length p0, v0

    invoke-static {v0, v2, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_2
    invoke-virtual {p0}, Li53;->q()Lw43;

    move-result-object p0

    invoke-virtual {p0}, Lw43;->e()[B

    move-result-object p0

    array-length p1, v0

    array-length v3, p0

    add-int/2addr p1, v3

    add-int/2addr p1, v1

    new-array p1, p1, [B

    const/4 v3, 0x4

    aput-byte v3, p1, v2

    array-length v3, v0

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v1

    array-length v1, p0

    invoke-static {p0, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public final n()Lw43;
    .locals 0

    iget-object p0, p0, Li53;->b:Lw43;

    return-object p0
.end method

.method public final o()Lw43;
    .locals 0

    iget-object p0, p0, Li53;->c:Lw43;

    return-object p0
.end method

.method public p()Lw43;
    .locals 0

    iget-object p0, p0, Li53;->b:Lw43;

    return-object p0
.end method

.method public q()Lw43;
    .locals 0

    iget-object p0, p0, Li53;->c:Lw43;

    return-object p0
.end method

.method public r(I)Lw43;
    .locals 1

    if-ltz p1, :cond_1

    iget-object p0, p0, Li53;->d:[Lw43;

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, p0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public s(ZZ)Z
    .locals 3

    invoke-virtual {p0}, Li53;->t()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Li53;->i()Lt43;

    move-result-object v0

    new-instance v2, Li53$a;

    invoke-direct {v2, p0, p1, p2}, Li53$a;-><init>(Li53;ZZ)V

    const-string p1, "bc_validity"

    invoke-virtual {v0, p0, p1, v2}, Lt43;->y(Li53;Ljava/lang/String;Lpd8;)Lqd8;

    move-result-object p0

    check-cast p0, Lgnb;

    invoke-virtual {p0}, Lgnb;->b()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public t()Z
    .locals 2

    iget-object v0, p0, Li53;->b:Lw43;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li53;->c:Lw43;

    if-eqz v0, :cond_0

    iget-object p0, p0, Li53;->d:[Lw43;

    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lw43;->i()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Li53;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "INF"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Li53;->n()Lw43;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Li53;->o()Lw43;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Li53;->d:[Lw43;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Li53;->d:[Lw43;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()Z
    .locals 2

    invoke-virtual {p0}, Li53;->j()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Li53;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Li53;->d:[Lw43;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lw43;->h()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public v()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Li53;->s(ZZ)Z

    move-result p0

    return p0
.end method

.method public w()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Li53;->s(ZZ)Z

    move-result p0

    return p0
.end method

.method public abstract x()Li53;
.end method

.method public y()Li53;
    .locals 3

    invoke-virtual {p0}, Li53;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Li53;->j()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Li53;->r(I)Lw43;

    move-result-object v0

    invoke-virtual {v0}, Lw43;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    iget-object v1, p0, Li53;->a:Lt43;

    if-eqz v1, :cond_2

    invoke-static {}, Lzl1;->d()Ljava/security/SecureRandom;

    move-result-object v1

    iget-object v2, p0, Li53;->a:Lt43;

    invoke-virtual {v2, v1}, Lt43;->z(Ljava/security/SecureRandom;)Lw43;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw43;->j(Lw43;)Lw43;

    move-result-object v0

    invoke-virtual {v0}, Lw43;->g()Lw43;

    move-result-object v0

    invoke-virtual {v0, v1}, Lw43;->j(Lw43;)Lw43;

    move-result-object v0

    invoke-virtual {p0, v0}, Li53;->z(Lw43;)Li53;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Detached points must be in affine coordinates"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object p0
.end method

.method public z(Lw43;)Li53;
    .locals 2

    invoke-virtual {p0}, Li53;->j()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not a projective coordinate system"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Lw43;->o()Lw43;

    move-result-object v0

    invoke-virtual {v0, p1}, Lw43;->j(Lw43;)Lw43;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Li53;->c(Lw43;Lw43;)Li53;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p1}, Li53;->c(Lw43;Lw43;)Li53;

    move-result-object p0

    return-object p0
.end method
