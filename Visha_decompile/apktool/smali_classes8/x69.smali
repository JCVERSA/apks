.class public Lx69;
.super Lw43$b;
.source "SourceFile"


# static fields
.field public static final h:Ljava/math/BigInteger;


# instance fields
.field public g:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFF"

    invoke-static {v1}, Ljp4;->b(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lx69;->h:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lw43$b;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lx69;->h:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {p1}, Lw69;->d(Ljava/math/BigInteger;)[I

    move-result-object p1

    iput-object p1, p0, Lx69;->g:[I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for SecP192R1FieldElement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lw43$b;-><init>()V

    iput-object p1, p0, Lx69;->g:[I

    return-void
.end method


# virtual methods
.method public a(Lw43;)Lw43;
    .locals 1

    invoke-static {}, Lny6;->h()[I

    move-result-object v0

    iget-object p0, p0, Lx69;->g:[I

    check-cast p1, Lx69;

    iget-object p1, p1, Lx69;->g:[I

    invoke-static {p0, p1, v0}, Lw69;->a([I[I[I)V

    new-instance p0, Lx69;

    invoke-direct {p0, v0}, Lx69;-><init>([I)V

    return-object p0
.end method

.method public b()Lw43;
    .locals 1

    invoke-static {}, Lny6;->h()[I

    move-result-object v0

    iget-object p0, p0, Lx69;->g:[I

    invoke-static {p0, v0}, Lw69;->b([I[I)V

    new-instance p0, Lx69;

    invoke-direct {p0, v0}, Lx69;-><init>([I)V

    return-object p0
.end method

.method public d(Lw43;)Lw43;
    .locals 1

    invoke-static {}, Lny6;->h()[I

    move-result-object v0

    check-cast p1, Lx69;

    iget-object p1, p1, Lx69;->g:[I

    invoke-static {p1, v0}, Lw69;->e([I[I)V

    iget-object p0, p0, Lx69;->g:[I

    invoke-static {v0, p0, v0}, Lw69;->g([I[I[I)V

    new-instance p0, Lx69;

    invoke-direct {p0, v0}, Lx69;-><init>([I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lx69;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lx69;

    iget-object p0, p0, Lx69;->g:[I

    iget-object p1, p1, Lx69;->g:[I

    invoke-static {p0, p1}, Lny6;->m([I[I)Z

    move-result p0

    return p0
.end method

.method public f()I
    .locals 0

    sget-object p0, Lx69;->h:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public g()Lw43;
    .locals 1

    invoke-static {}, Lny6;->h()[I

    move-result-object v0

    iget-object p0, p0, Lx69;->g:[I

    invoke-static {p0, v0}, Lw69;->e([I[I)V

    new-instance p0, Lx69;

    invoke-direct {p0, v0}, Lx69;-><init>([I)V

    return-object p0
.end method

.method public h()Z
    .locals 0

    iget-object p0, p0, Lx69;->g:[I

    invoke-static {p0}, Lny6;->s([I)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 3

    sget-object v0, Lx69;->h:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object p0, p0, Lx69;->g:[I

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p0, v1, v2}, Lci;->z([III)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public i()Z
    .locals 0

    iget-object p0, p0, Lx69;->g:[I

    invoke-static {p0}, Lny6;->u([I)Z

    move-result p0

    return p0
.end method

.method public j(Lw43;)Lw43;
    .locals 1

    invoke-static {}, Lny6;->h()[I

    move-result-object v0

    iget-object p0, p0, Lx69;->g:[I

    check-cast p1, Lx69;

    iget-object p1, p1, Lx69;->g:[I

    invoke-static {p0, p1, v0}, Lw69;->g([I[I[I)V

    new-instance p0, Lx69;

    invoke-direct {p0, v0}, Lx69;-><init>([I)V

    return-object p0
.end method

.method public m()Lw43;
    .locals 1

    invoke-static {}, Lny6;->h()[I

    move-result-object v0

    iget-object p0, p0, Lx69;->g:[I

    invoke-static {p0, v0}, Lw69;->i([I[I)V

    new-instance p0, Lx69;

    invoke-direct {p0, v0}, Lx69;-><init>([I)V

    return-object p0
.end method

.method public n()Lw43;
    .locals 3

    iget-object v0, p0, Lx69;->g:[I

    invoke-static {v0}, Lny6;->u([I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lny6;->s([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lny6;->h()[I

    move-result-object p0

    invoke-static {}, Lny6;->h()[I

    move-result-object v1

    invoke-static {v0, p0}, Lw69;->n([I[I)V

    invoke-static {p0, v0, p0}, Lw69;->g([I[I[I)V

    const/4 v2, 0x2

    invoke-static {p0, v2, v1}, Lw69;->o([II[I)V

    invoke-static {v1, p0, v1}, Lw69;->g([I[I[I)V

    const/4 v2, 0x4

    invoke-static {v1, v2, p0}, Lw69;->o([II[I)V

    invoke-static {p0, v1, p0}, Lw69;->g([I[I[I)V

    const/16 v2, 0x8

    invoke-static {p0, v2, v1}, Lw69;->o([II[I)V

    invoke-static {v1, p0, v1}, Lw69;->g([I[I[I)V

    const/16 v2, 0x10

    invoke-static {v1, v2, p0}, Lw69;->o([II[I)V

    invoke-static {p0, v1, p0}, Lw69;->g([I[I[I)V

    const/16 v2, 0x20

    invoke-static {p0, v2, v1}, Lw69;->o([II[I)V

    invoke-static {v1, p0, v1}, Lw69;->g([I[I[I)V

    const/16 v2, 0x40

    invoke-static {v1, v2, p0}, Lw69;->o([II[I)V

    invoke-static {p0, v1, p0}, Lw69;->g([I[I[I)V

    const/16 v2, 0x3e

    invoke-static {p0, v2, p0}, Lw69;->o([II[I)V

    invoke-static {p0, v1}, Lw69;->n([I[I)V

    invoke-static {v0, v1}, Lny6;->m([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lx69;

    invoke-direct {v0, p0}, Lx69;-><init>([I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public o()Lw43;
    .locals 1

    invoke-static {}, Lny6;->h()[I

    move-result-object v0

    iget-object p0, p0, Lx69;->g:[I

    invoke-static {p0, v0}, Lw69;->n([I[I)V

    new-instance p0, Lx69;

    invoke-direct {p0, v0}, Lx69;-><init>([I)V

    return-object p0
.end method

.method public r(Lw43;)Lw43;
    .locals 1

    invoke-static {}, Lny6;->h()[I

    move-result-object v0

    iget-object p0, p0, Lx69;->g:[I

    check-cast p1, Lx69;

    iget-object p1, p1, Lx69;->g:[I

    invoke-static {p0, p1, v0}, Lw69;->q([I[I[I)V

    new-instance p0, Lx69;

    invoke-direct {p0, v0}, Lx69;-><init>([I)V

    return-object p0
.end method

.method public s()Z
    .locals 2

    iget-object p0, p0, Lx69;->g:[I

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lny6;->p([II)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public t()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lx69;->g:[I

    invoke-static {p0}, Lny6;->H([I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
