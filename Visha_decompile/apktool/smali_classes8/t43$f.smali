.class public Lt43$f;
.super Lt43$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt43;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field public static final l:Ljava/util/Set;

.field public static final m:Lge0$a;


# instance fields
.field public i:Ljava/math/BigInteger;

.field public j:Ljava/math/BigInteger;

.field public k:Li53$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lt43$f;->l:Ljava/util/Set;

    new-instance v0, Lge0$a;

    invoke-direct {v0}, Lge0$a;-><init>()V

    sput-object v0, Lt43$f;->m:Lge0$a;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2
    invoke-direct/range {v0 .. v6}, Lt43$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V
    .locals 3

    .line 3
    invoke-direct {p0, p1}, Lt43$c;-><init>(Ljava/math/BigInteger;)V

    if-eqz p6, :cond_0

    iput-object p1, p0, Lt43$f;->i:Ljava/math/BigInteger;

    sget-object p6, Lt43$f;->l:Ljava/util/Set;

    invoke-interface {p6, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    sget-object p6, Lt43$f;->l:Ljava/util/Set;

    invoke-interface {p6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_2

    sget-object p6, Lt43$f;->m:Lge0$a;

    invoke-virtual {p6, p1}, Lge0$a;->b(Ljava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "org.bouncycastle.ec.fp_max_size"

    const/16 v1, 0x412

    invoke-static {v0, v1}, Lqi8;->a(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "org.bouncycastle.ec.fp_certainty"

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lqi8;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-lt v0, v2, :cond_4

    invoke-static {p1}, Laf8;->c(Ljava/math/BigInteger;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lzl1;->d()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-static {v2, v1}, Lt43;->a(II)I

    move-result v1

    invoke-static {p1, v0, v1}, Laf8;->f(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p6, p1}, Lge0$a;->a(Ljava/math/BigInteger;)V

    :cond_2
    :goto_0
    iput-object p1, p0, Lt43$f;->i:Ljava/math/BigInteger;

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Fp q value not prime"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Fp q value out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    invoke-static {p1}, Lw43$d;->u(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lt43$f;->j:Ljava/math/BigInteger;

    new-instance p1, Li53$e;

    const/4 p6, 0x0

    invoke-direct {p1, p0, p6, p6}, Li53$e;-><init>(Lt43;Lw43;Lw43;)V

    iput-object p1, p0, Lt43$f;->k:Li53$e;

    invoke-virtual {p0, p2}, Lt43$f;->l(Ljava/math/BigInteger;)Lw43;

    move-result-object p1

    iput-object p1, p0, Lt43;->b:Lw43;

    invoke-virtual {p0, p3}, Lt43$f;->l(Ljava/math/BigInteger;)Lw43;

    move-result-object p1

    iput-object p1, p0, Lt43;->c:Lw43;

    iput-object p4, p0, Lt43;->d:Ljava/math/BigInteger;

    iput-object p5, p0, Lt43;->e:Ljava/math/BigInteger;

    const/4 p1, 0x4

    iput p1, p0, Lt43;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lw43;Lw43;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lt43$c;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lt43$f;->i:Ljava/math/BigInteger;

    iput-object p2, p0, Lt43$f;->j:Ljava/math/BigInteger;

    new-instance p1, Li53$e;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p2}, Li53$e;-><init>(Lt43;Lw43;Lw43;)V

    iput-object p1, p0, Lt43$f;->k:Li53$e;

    iput-object p3, p0, Lt43;->b:Lw43;

    iput-object p4, p0, Lt43;->c:Lw43;

    iput-object p5, p0, Lt43;->d:Ljava/math/BigInteger;

    iput-object p6, p0, Lt43;->e:Ljava/math/BigInteger;

    const/4 p1, 0x4

    iput p1, p0, Lt43;->f:I

    return-void
.end method


# virtual methods
.method public A(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, p0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public d()Lt43;
    .locals 8

    new-instance v7, Lt43$f;

    iget-object v1, p0, Lt43$f;->i:Ljava/math/BigInteger;

    iget-object v2, p0, Lt43$f;->j:Ljava/math/BigInteger;

    iget-object v3, p0, Lt43;->b:Lw43;

    iget-object v4, p0, Lt43;->c:Lw43;

    iget-object v5, p0, Lt43;->d:Ljava/math/BigInteger;

    iget-object v6, p0, Lt43;->e:Ljava/math/BigInteger;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lt43$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lw43;Lw43;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v7
.end method

.method public h(Lw43;Lw43;)Li53;
    .locals 1

    new-instance v0, Li53$e;

    invoke-direct {v0, p0, p1, p2}, Li53$e;-><init>(Lt43;Lw43;Lw43;)V

    return-object v0
.end method

.method public l(Ljava/math/BigInteger;)Lw43;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lt43$f;->i:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Lw43$d;

    iget-object v1, p0, Lt43$f;->i:Ljava/math/BigInteger;

    iget-object p0, p0, Lt43$f;->j:Ljava/math/BigInteger;

    invoke-direct {v0, v1, p0, p1}, Lw43$d;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for Fp field element"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public r()I
    .locals 0

    iget-object p0, p0, Lt43$f;->i:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public s()Li53;
    .locals 0

    iget-object p0, p0, Lt43$f;->k:Li53$e;

    return-object p0
.end method

.method public v(Li53;)Li53;
    .locals 4

    invoke-virtual {p1}, Li53;->i()Lt43;

    move-result-object v0

    if-eq p0, v0, :cond_1

    invoke-virtual {p0}, Lt43;->p()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Li53;->t()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Li53;->i()Lt43;

    move-result-object v0

    invoke-virtual {v0}, Lt43;->p()I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Li53$e;

    iget-object v1, p1, Li53;->b:Lw43;

    invoke-virtual {v1}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lt43$f;->l(Ljava/math/BigInteger;)Lw43;

    move-result-object v1

    iget-object v2, p1, Li53;->c:Lw43;

    invoke-virtual {v2}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Lt43$f;->l(Ljava/math/BigInteger;)Lw43;

    move-result-object v2

    iget-object p1, p1, Li53;->d:[Lw43;

    const/4 v3, 0x0

    aget-object p1, p1, v3

    invoke-virtual {p1}, Lw43;->t()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lt43$f;->l(Ljava/math/BigInteger;)Lw43;

    move-result-object p1

    filled-new-array {p1}, [Lw43;

    move-result-object p1

    invoke-direct {v0, p0, v1, v2, p1}, Li53$e;-><init>(Lt43;Lw43;Lw43;[Lw43;)V

    return-object v0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lt43;->v(Li53;)Li53;

    move-result-object p0

    return-object p0
.end method
