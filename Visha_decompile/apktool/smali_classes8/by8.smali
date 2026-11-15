.class public Lby8;
.super Lt43$c;
.source "SourceFile"


# static fields
.field public static final j:Ljava/math/BigInteger;

.field public static final k:[Lw43;


# instance fields
.field public i:Ley8;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ldy8;->h:Ljava/math/BigInteger;

    sput-object v0, Lby8;->j:Ljava/math/BigInteger;

    new-instance v0, Ldy8;

    sget-object v1, Ls43;->b:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ldy8;-><init>(Ljava/math/BigInteger;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lw43;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lby8;->k:[Lw43;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lby8;->j:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lt43$c;-><init>(Ljava/math/BigInteger;)V

    new-instance v0, Ley8;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Ley8;-><init>(Lt43;Lw43;Lw43;)V

    iput-object v0, p0, Lby8;->i:Ley8;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFC"

    invoke-static {v1}, Ljp4;->b(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lby8;->l(Ljava/math/BigInteger;)Lw43;

    move-result-object v0

    iput-object v0, p0, Lt43;->b:Lw43;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "28E9FA9E9D9F5E344D5A9E4BCF6509A7F39789F515AB8F92DDBCBD414D940E93"

    invoke-static {v1}, Ljp4;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lby8;->l(Ljava/math/BigInteger;)Lw43;

    move-result-object v0

    iput-object v0, p0, Lt43;->c:Lw43;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF7203DF6B21C6052B53BBF40939D54123"

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

    sget-object v0, Lby8;->k:[Lw43;

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

    new-instance v0, Ley8;

    invoke-direct {v0, p0, p1, p2, p3}, Ley8;-><init>(Lt43;Lw43;Lw43;[Lw43;)V

    return-object v0
.end method

.method public d()Lt43;
    .locals 0

    new-instance p0, Lby8;

    invoke-direct {p0}, Lby8;-><init>()V

    return-object p0
.end method

.method public f([Li53;II)Lb53;
    .locals 6

    mul-int/lit8 v0, p3, 0x10

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

    check-cast v5, Ldy8;

    iget-object v5, v5, Ldy8;->g:[I

    invoke-static {v5, v1, v0, v3}, Lpy6;->f([II[II)V

    add-int/lit8 v5, v3, 0x8

    invoke-virtual {v4}, Li53;->o()Lw43;

    move-result-object v4

    check-cast v4, Ldy8;

    iget-object v4, v4, Ldy8;->g:[I

    invoke-static {v4, v1, v0, v5}, Lpy6;->f([II[II)V

    add-int/lit8 v3, v3, 0x10

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lby8$a;

    invoke-direct {p1, p0, p3, v0}, Lby8$a;-><init>(Lby8;I[I)V

    return-object p1
.end method

.method public h(Lw43;Lw43;)Li53;
    .locals 1

    new-instance v0, Ley8;

    invoke-direct {v0, p0, p1, p2}, Ley8;-><init>(Lt43;Lw43;Lw43;)V

    return-object v0
.end method

.method public l(Ljava/math/BigInteger;)Lw43;
    .locals 0

    new-instance p0, Ldy8;

    invoke-direct {p0, p1}, Ldy8;-><init>(Ljava/math/BigInteger;)V

    return-object p0
.end method

.method public r()I
    .locals 0

    sget-object p0, Lby8;->j:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public s()Li53;
    .locals 0

    iget-object p0, p0, Lby8;->i:Ley8;

    return-object p0
.end method

.method public z(Ljava/security/SecureRandom;)Lw43;
    .locals 0

    invoke-static {}, Lpy6;->i()[I

    move-result-object p0

    invoke-static {p1, p0}, Lcy8;->k(Ljava/security/SecureRandom;[I)V

    new-instance p1, Ldy8;

    invoke-direct {p1, p0}, Ldy8;-><init>([I)V

    return-object p1
.end method
