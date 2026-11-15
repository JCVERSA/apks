.class public Lb79;
.super Lw43$b;
.source "SourceFile"


# static fields
.field public static final h:Ljava/math/BigInteger;

.field public static final i:[I


# instance fields
.field public g:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE56D"

    invoke-static {v1}, Ljp4;->b(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lb79;->h:Ljava/math/BigInteger;

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lb79;->i:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x33bfd202
        -0x23052ecd
        0x2287624a
        -0x3c7ee458
        -0x57aaa704
        0x1eaef5d7
        -0x7120eab4
    .end array-data
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lw43$b;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lb79;->h:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {p1}, La79;->c(Ljava/math/BigInteger;)[I

    move-result-object p1

    iput-object p1, p0, Lb79;->g:[I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for SecP224K1FieldElement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lw43$b;-><init>()V

    iput-object p1, p0, Lb79;->g:[I

    return-void
.end method


# virtual methods
.method public a(Lw43;)Lw43;
    .locals 1

    invoke-static {}, Loy6;->e()[I

    move-result-object v0

    iget-object p0, p0, Lb79;->g:[I

    check-cast p1, Lb79;

    iget-object p1, p1, Lb79;->g:[I

    invoke-static {p0, p1, v0}, La79;->a([I[I[I)V

    new-instance p0, Lb79;

    invoke-direct {p0, v0}, Lb79;-><init>([I)V

    return-object p0
.end method

.method public b()Lw43;
    .locals 1

    invoke-static {}, Loy6;->e()[I

    move-result-object v0

    iget-object p0, p0, Lb79;->g:[I

    invoke-static {p0, v0}, La79;->b([I[I)V

    new-instance p0, Lb79;

    invoke-direct {p0, v0}, Lb79;-><init>([I)V

    return-object p0
.end method

.method public d(Lw43;)Lw43;
    .locals 1

    invoke-static {}, Loy6;->e()[I

    move-result-object v0

    check-cast p1, Lb79;

    iget-object p1, p1, Lb79;->g:[I

    invoke-static {p1, v0}, La79;->d([I[I)V

    iget-object p0, p0, Lb79;->g:[I

    invoke-static {v0, p0, v0}, La79;->f([I[I[I)V

    new-instance p0, Lb79;

    invoke-direct {p0, v0}, Lb79;-><init>([I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lb79;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lb79;

    iget-object p0, p0, Lb79;->g:[I

    iget-object p1, p1, Lb79;->g:[I

    invoke-static {p0, p1}, Loy6;->g([I[I)Z

    move-result p0

    return p0
.end method

.method public f()I
    .locals 0

    sget-object p0, Lb79;->h:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public g()Lw43;
    .locals 1

    invoke-static {}, Loy6;->e()[I

    move-result-object v0

    iget-object p0, p0, Lb79;->g:[I

    invoke-static {p0, v0}, La79;->d([I[I)V

    new-instance p0, Lb79;

    invoke-direct {p0, v0}, Lb79;-><init>([I)V

    return-object p0
.end method

.method public h()Z
    .locals 0

    iget-object p0, p0, Lb79;->g:[I

    invoke-static {p0}, Loy6;->k([I)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 3

    sget-object v0, Lb79;->h:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object p0, p0, Lb79;->g:[I

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {p0, v1, v2}, Lci;->z([III)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public i()Z
    .locals 0

    iget-object p0, p0, Lb79;->g:[I

    invoke-static {p0}, Loy6;->l([I)Z

    move-result p0

    return p0
.end method

.method public j(Lw43;)Lw43;
    .locals 1

    invoke-static {}, Loy6;->e()[I

    move-result-object v0

    iget-object p0, p0, Lb79;->g:[I

    check-cast p1, Lb79;

    iget-object p1, p1, Lb79;->g:[I

    invoke-static {p0, p1, v0}, La79;->f([I[I[I)V

    new-instance p0, Lb79;

    invoke-direct {p0, v0}, Lb79;-><init>([I)V

    return-object p0
.end method

.method public m()Lw43;
    .locals 1

    invoke-static {}, Loy6;->e()[I

    move-result-object v0

    iget-object p0, p0, Lb79;->g:[I

    invoke-static {p0, v0}, La79;->h([I[I)V

    new-instance p0, Lb79;

    invoke-direct {p0, v0}, Lb79;-><init>([I)V

    return-object p0
.end method

.method public n()Lw43;
    .locals 8

    iget-object v0, p0, Lb79;->g:[I

    invoke-static {v0}, Loy6;->l([I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Loy6;->k([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Loy6;->e()[I

    move-result-object p0

    invoke-static {v0, p0}, La79;->m([I[I)V

    invoke-static {p0, v0, p0}, La79;->f([I[I[I)V

    invoke-static {p0, p0}, La79;->m([I[I)V

    invoke-static {p0, v0, p0}, La79;->f([I[I[I)V

    invoke-static {}, Loy6;->e()[I

    move-result-object v1

    invoke-static {p0, v1}, La79;->m([I[I)V

    invoke-static {v1, v0, v1}, La79;->f([I[I[I)V

    invoke-static {}, Loy6;->e()[I

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v1, v3, v2}, La79;->n([II[I)V

    invoke-static {v2, v1, v2}, La79;->f([I[I[I)V

    invoke-static {}, Loy6;->e()[I

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v2, v5, v4}, La79;->n([II[I)V

    invoke-static {v4, p0, v4}, La79;->f([I[I[I)V

    const/16 v6, 0x8

    invoke-static {v4, v6, v4}, La79;->n([II[I)V

    invoke-static {v4, v2, v4}, La79;->f([I[I[I)V

    invoke-static {v4, v3, v2}, La79;->n([II[I)V

    invoke-static {v2, v1, v2}, La79;->f([I[I[I)V

    const/16 v6, 0x13

    invoke-static {v2, v6, v1}, La79;->n([II[I)V

    invoke-static {v1, v4, v1}, La79;->f([I[I[I)V

    invoke-static {}, Loy6;->e()[I

    move-result-object v6

    const/16 v7, 0x2a

    invoke-static {v1, v7, v6}, La79;->n([II[I)V

    invoke-static {v6, v1, v6}, La79;->f([I[I[I)V

    const/16 v7, 0x17

    invoke-static {v6, v7, v1}, La79;->n([II[I)V

    invoke-static {v1, v2, v1}, La79;->f([I[I[I)V

    const/16 v7, 0x54

    invoke-static {v1, v7, v2}, La79;->n([II[I)V

    invoke-static {v2, v6, v2}, La79;->f([I[I[I)V

    const/16 v1, 0x14

    invoke-static {v2, v1, v2}, La79;->n([II[I)V

    invoke-static {v2, v4, v2}, La79;->f([I[I[I)V

    invoke-static {v2, v5, v2}, La79;->n([II[I)V

    invoke-static {v2, v0, v2}, La79;->f([I[I[I)V

    const/4 v1, 0x2

    invoke-static {v2, v1, v2}, La79;->n([II[I)V

    invoke-static {v2, v0, v2}, La79;->f([I[I[I)V

    invoke-static {v2, v3, v2}, La79;->n([II[I)V

    invoke-static {v2, p0, v2}, La79;->f([I[I[I)V

    invoke-static {v2, v2}, La79;->m([I[I)V

    invoke-static {v2, v6}, La79;->m([I[I)V

    invoke-static {v0, v6}, Loy6;->g([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lb79;

    invoke-direct {p0, v2}, Lb79;-><init>([I)V

    return-object p0

    :cond_1
    sget-object p0, Lb79;->i:[I

    invoke-static {v2, p0, v2}, La79;->f([I[I[I)V

    invoke-static {v2, v6}, La79;->m([I[I)V

    invoke-static {v0, v6}, Loy6;->g([I[I)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lb79;

    invoke-direct {p0, v2}, Lb79;-><init>([I)V

    return-object p0

    :cond_2
    const/4 p0, 0x0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public o()Lw43;
    .locals 1

    invoke-static {}, Loy6;->e()[I

    move-result-object v0

    iget-object p0, p0, Lb79;->g:[I

    invoke-static {p0, v0}, La79;->m([I[I)V

    new-instance p0, Lb79;

    invoke-direct {p0, v0}, Lb79;-><init>([I)V

    return-object p0
.end method

.method public r(Lw43;)Lw43;
    .locals 1

    invoke-static {}, Loy6;->e()[I

    move-result-object v0

    iget-object p0, p0, Lb79;->g:[I

    check-cast p1, Lb79;

    iget-object p1, p1, Lb79;->g:[I

    invoke-static {p0, p1, v0}, La79;->o([I[I[I)V

    new-instance p0, Lb79;

    invoke-direct {p0, v0}, Lb79;-><init>([I)V

    return-object p0
.end method

.method public s()Z
    .locals 2

    iget-object p0, p0, Lb79;->g:[I

    const/4 v0, 0x0

    invoke-static {p0, v0}, Loy6;->i([II)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public t()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lb79;->g:[I

    invoke-static {p0}, Loy6;->u([I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
