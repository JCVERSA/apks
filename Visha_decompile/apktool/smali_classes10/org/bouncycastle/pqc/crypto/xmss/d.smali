.class public final Lorg/bouncycastle/pqc/crypto/xmss/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhgc;

.field public final b:Lcg5;

.field public c:[B

.field public d:[B


# direct methods
.method public constructor <init>(Lhgc;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/d;->a:Lhgc;

    invoke-virtual {p1}, Lhgc;->c()I

    move-result v0

    new-instance v1, Lcg5;

    invoke-virtual {p1}, Lhgc;->b()Ll1;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcg5;-><init>(Ll1;I)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/d;->b:Lcg5;

    new-array p1, v0, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/d;->c:[B

    new-array p1, v0, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/d;->d:[B

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "params == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a([BIILorg/bouncycastle/pqc/crypto/xmss/c;)[B
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/d;->a:Lhgc;

    invoke-virtual {v0}, Lhgc;->c()I

    move-result v0

    if-eqz p1, :cond_6

    array-length v1, p1

    if-ne v1, v0, :cond_5

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/xmss/c;->d()[B

    move-result-object v1

    if-eqz v1, :cond_3

    add-int v1, p2, p3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/d;->a:Lhgc;

    invoke-virtual {v2}, Lhgc;->d()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_2

    if-nez p3, :cond_0

    return-object p1

    :cond_0
    sub-int/2addr p3, v3

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/xmss/d;->a([BIILorg/bouncycastle/pqc/crypto/xmss/c;)[B

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/pqc/crypto/xmss/c$b;

    invoke-direct {p2}, Lorg/bouncycastle/pqc/crypto/xmss/c$b;-><init>()V

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/xmss/e;->b()I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->g(I)Lorg/bouncycastle/pqc/crypto/xmss/e$a;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/pqc/crypto/xmss/c$b;

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/xmss/e;->c()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->h(J)Lorg/bouncycastle/pqc/crypto/xmss/e$a;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/pqc/crypto/xmss/c$b;

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/xmss/c;->g()I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->p(I)Lorg/bouncycastle/pqc/crypto/xmss/c$b;

    move-result-object p2

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/xmss/c;->e()I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->n(I)Lorg/bouncycastle/pqc/crypto/xmss/c$b;

    move-result-object p2

    sub-int/2addr v1, v3

    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->o(I)Lorg/bouncycastle/pqc/crypto/xmss/c$b;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->f(I)Lorg/bouncycastle/pqc/crypto/xmss/e$a;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/pqc/crypto/xmss/c$b;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->l()Lorg/bouncycastle/pqc/crypto/xmss/e;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/pqc/crypto/xmss/c;

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/xmss/d;->b:Lcg5;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/d;->d:[B

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/c;->d()[B

    move-result-object v2

    invoke-virtual {p4, v1, v2}, Lcg5;->c([B[B)[B

    move-result-object p4

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/c$b;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/xmss/c$b;-><init>()V

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/e;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->g(I)Lorg/bouncycastle/pqc/crypto/xmss/e$a;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/c$b;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/e;->c()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->h(J)Lorg/bouncycastle/pqc/crypto/xmss/e$a;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/c$b;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/c;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->p(I)Lorg/bouncycastle/pqc/crypto/xmss/c$b;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/c;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->n(I)Lorg/bouncycastle/pqc/crypto/xmss/c$b;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/c;->f()I

    move-result p2

    invoke-virtual {v1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->o(I)Lorg/bouncycastle/pqc/crypto/xmss/c$b;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->f(I)Lorg/bouncycastle/pqc/crypto/xmss/e$a;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/pqc/crypto/xmss/c$b;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->l()Lorg/bouncycastle/pqc/crypto/xmss/e;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/pqc/crypto/xmss/c;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/d;->b:Lcg5;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/d;->d:[B

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/c;->d()[B

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcg5;->c([B[B)[B

    move-result-object p2

    new-array v1, v0, [B

    :goto_0
    if-ge p3, v0, :cond_1

    aget-byte v2, p1, p3

    aget-byte v3, p2, p3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/d;->b:Lcg5;

    invoke-virtual {p0, p4, v1}, Lcg5;->a([B[B)[B

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "max chain length must not be greater than w"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "otsHashAddress byte array == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "otsHashAddress == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startHash needs to be "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "bytes"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "startHash == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(I)[B
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/d;->a:Lhgc;

    invoke-virtual {v0}, Lhgc;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/d;->b:Lcg5;

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/d;->c:[B

    int-to-long v1, p1

    const/16 p1, 0x20

    invoke-static {v1, v2, p1}, Lnrc;->q(JI)[B

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcg5;->c([B[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "index out of bounds"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c()Lcg5;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/d;->b:Lcg5;

    return-object p0
.end method

.method public d()Lhgc;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/d;->a:Lhgc;

    return-object p0
.end method

.method public e(Lorg/bouncycastle/pqc/crypto/xmss/c;)Ligc;
    .locals 6

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/d;->a:Lhgc;

    invoke-virtual {v0}, Lhgc;->a()I

    move-result v0

    new-array v0, v0, [[B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/d;->a:Lhgc;

    invoke-virtual {v3}, Lhgc;->a()I

    move-result v3

    if-ge v2, v3, :cond_0

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/c$b;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/xmss/c$b;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/e;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->g(I)Lorg/bouncycastle/pqc/crypto/xmss/e$a;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/c$b;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/e;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->h(J)Lorg/bouncycastle/pqc/crypto/xmss/e$a;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/c$b;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/c;->g()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->p(I)Lorg/bouncycastle/pqc/crypto/xmss/c$b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->n(I)Lorg/bouncycastle/pqc/crypto/xmss/c$b;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/c;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->o(I)Lorg/bouncycastle/pqc/crypto/xmss/c$b;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/e;->a()I

    move-result p1

    invoke-virtual {v3, p1}, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->f(I)Lorg/bouncycastle/pqc/crypto/xmss/e$a;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/c$b;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->l()Lorg/bouncycastle/pqc/crypto/xmss/e;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/c;

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/xmss/d;->b(I)[B

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/d;->a:Lhgc;

    invoke-virtual {v4}, Lhgc;->d()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v1, v4, p1}, Lorg/bouncycastle/pqc/crypto/xmss/d;->a([BIILorg/bouncycastle/pqc/crypto/xmss/c;)[B

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ligc;

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/d;->a:Lhgc;

    invoke-direct {p1, p0, v0}, Ligc;-><init>(Lhgc;[[B)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "otsHashAddress == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public f()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/d;->d:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public g([BLorg/bouncycastle/pqc/crypto/xmss/c;)[B
    .locals 3

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/c$b;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/xmss/c$b;-><init>()V

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/e;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->g(I)Lorg/bouncycastle/pqc/crypto/xmss/e$a;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/c$b;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/e;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/e$a;->h(J)Lorg/bouncycastle/pqc/crypto/xmss/e$a;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/c$b;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/c;->g()I

    move-result p2

    invoke-virtual {v0, p2}, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->p(I)Lorg/bouncycastle/pqc/crypto/xmss/c$b;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/c$b;->l()Lorg/bouncycastle/pqc/crypto/xmss/e;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/pqc/crypto/xmss/c;

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/d;->b:Lcg5;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/c;->d()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcg5;->c([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public h([B[B)V
    .locals 2

    if-eqz p1, :cond_3

    array-length v0, p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/d;->a:Lhgc;

    invoke-virtual {v1}, Lhgc;->c()I

    move-result v1

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_1

    array-length v0, p2

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/d;->a:Lhgc;

    invoke-virtual {v1}, Lhgc;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/d;->c:[B

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/d;->d:[B

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size of publicSeed needs to be equal to size of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "publicSeed == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size of secretKeySeed needs to be equal to size of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "secretKeySeed == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
