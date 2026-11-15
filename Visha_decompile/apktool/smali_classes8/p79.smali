.class public Lp79;
.super Lt43$c;
.source "SourceFile"


# static fields
.field public static final j:Ljava/math/BigInteger;

.field public static final k:[Lw43;


# instance fields
.field public i:Ls79;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lr79;->h:Ljava/math/BigInteger;

    sput-object v0, Lp79;->j:Ljava/math/BigInteger;

    new-instance v0, Lr79;

    sget-object v1, Ls43;->b:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lr79;-><init>(Ljava/math/BigInteger;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lw43;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lp79;->k:[Lw43;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lp79;->j:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lt43$c;-><init>(Ljava/math/BigInteger;)V

    new-instance v0, Ls79;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Ls79;-><init>(Lt43;Lw43;Lw43;)V

    iput-object v0, p0, Lp79;->i:Ls79;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFC"

    invoke-static {v1}, Ljp4;->b(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lp79;->l(Ljava/math/BigInteger;)Lw43;

    move-result-object v0

    iput-object v0, p0, Lt43;->b:Lw43;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "B3312FA7E23EE7E4988E056BE3F82D19181D9C6EFE8141120314088F5013875AC656398D8A2ED19D2A85C8EDD3EC2AEF"

    invoke-static {v1}, Ljp4;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lp79;->l(Ljava/math/BigInteger;)Lw43;

    move-result-object v0

    iput-object v0, p0, Lt43;->c:Lw43;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7634D81F4372DDF581A0DB248B0A77AECEC196ACCC52973"

    invoke-static {v1}, Ljp4;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lt43;->d:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lt43;->e:Ljava/math/BigInteger;

    const/4 v0, 0x2

    iput v0, p0, Lt43;->f:I

    return-void
.end method

.method public static synthetic D()[Lw43;
    .locals 1

    sget-object v0, Lp79;->k:[Lw43;

    return-object v0
.end method


# virtual methods
.method public A(I)Z
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public E(Lw43;Lw43;[Lw43;)Li53;
    .locals 1

    new-instance v0, Ls79;

    invoke-direct {v0, p0, p1, p2, p3}, Ls79;-><init>(Lt43;Lw43;Lw43;[Lw43;)V

    return-object v0
.end method

.method public d()Lt43;
    .locals 0

    new-instance p0, Lp79;

    invoke-direct {p0}, Lp79;-><init>()V

    return-object p0
.end method

.method public f([Li53;II)Lb53;
    .locals 7

    mul-int/lit8 v0, p3, 0x18

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p3, :cond_0

    add-int v4, p2, v2

    aget-object v4, p1, v4

    invoke-virtual {v4}, Li53;->n()Lw43;

    move-result-object v5

    check-cast v5, Lr79;

    iget-object v5, v5, Lr79;->g:[I

    const/16 v6, 0xc

    invoke-static {v6, v5, v1, v0, v3}, Lvy6;->k(I[II[II)V

    add-int/lit8 v5, v3, 0xc

    invoke-virtual {v4}, Li53;->o()Lw43;

    move-result-object v4

    check-cast v4, Lr79;

    iget-object v4, v4, Lr79;->g:[I

    invoke-static {v6, v4, v1, v0, v5}, Lvy6;->k(I[II[II)V

    add-int/lit8 v3, v3, 0x18

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lp79$a;

    invoke-direct {p1, p0, p3, v0}, Lp79$a;-><init>(Lp79;I[I)V

    return-object p1
.end method

.method public h(Lw43;Lw43;)Li53;
    .locals 1

    new-instance v0, Ls79;

    invoke-direct {v0, p0, p1, p2}, Ls79;-><init>(Lt43;Lw43;Lw43;)V

    return-object v0
.end method

.method public l(Ljava/math/BigInteger;)Lw43;
    .locals 0

    new-instance p0, Lr79;

    invoke-direct {p0, p1}, Lr79;-><init>(Ljava/math/BigInteger;)V

    return-object p0
.end method

.method public r()I
    .locals 0

    sget-object p0, Lp79;->j:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public s()Li53;
    .locals 0

    iget-object p0, p0, Lp79;->i:Ls79;

    return-object p0
.end method

.method public z(Ljava/security/SecureRandom;)Lw43;
    .locals 0

    const/16 p0, 0xc

    invoke-static {p0}, Lvy6;->l(I)[I

    move-result-object p0

    invoke-static {p1, p0}, Lq79;->l(Ljava/security/SecureRandom;[I)V

    new-instance p1, Lr79;

    invoke-direct {p1, p0}, Lr79;-><init>([I)V

    return-object p1
.end method
