.class public Lf79;
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

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000001"

    invoke-static {v1}, Ljp4;->b(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lf79;->h:Ljava/math/BigInteger;

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

    sget-object v0, Lf79;->h:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {p1}, Le79;->d(Ljava/math/BigInteger;)[I

    move-result-object p1

    iput-object p1, p0, Lf79;->g:[I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for SecP224R1FieldElement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lw43$b;-><init>()V

    iput-object p1, p0, Lf79;->g:[I

    return-void
.end method

.method public static u([I[I[I[I[I[I[I)V
    .locals 0

    invoke-static {p4, p2, p6}, Le79;->g([I[I[I)V

    invoke-static {p6, p0, p6}, Le79;->g([I[I[I)V

    invoke-static {p3, p1, p5}, Le79;->g([I[I[I)V

    invoke-static {p5, p6, p5}, Le79;->a([I[I[I)V

    invoke-static {p3, p2, p6}, Le79;->g([I[I[I)V

    invoke-static {p5, p3}, Loy6;->d([I[I)V

    invoke-static {p4, p1, p4}, Le79;->g([I[I[I)V

    invoke-static {p4, p6, p4}, Le79;->a([I[I[I)V

    invoke-static {p4, p5}, Le79;->n([I[I)V

    invoke-static {p5, p0, p5}, Le79;->g([I[I[I)V

    return-void
.end method

.method public static v([I[I[I[I[I)V
    .locals 10

    invoke-static {p0, p3}, Loy6;->d([I[I)V

    invoke-static {}, Loy6;->e()[I

    move-result-object v7

    invoke-static {}, Loy6;->e()[I

    move-result-object v8

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    const/4 v0, 0x7

    if-ge v9, v0, :cond_1

    invoke-static {p1, v7}, Loy6;->d([I[I)V

    invoke-static {p2, v8}, Loy6;->d([I[I)V

    const/4 v0, 0x1

    shl-int/2addr v0, v9

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lf79;->w([I[I[I[I)V

    goto :goto_1

    :cond_0
    move-object v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lf79;->u([I[I[I[I[I[I[I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static w([I[I[I[I)V
    .locals 0

    invoke-static {p1, p0, p1}, Le79;->g([I[I[I)V

    invoke-static {p1, p1}, Le79;->r([I[I)V

    invoke-static {p0, p3}, Le79;->n([I[I)V

    invoke-static {p2, p3, p0}, Le79;->a([I[I[I)V

    invoke-static {p2, p3, p2}, Le79;->g([I[I[I)V

    const/4 p0, 0x2

    const/4 p1, 0x0

    const/4 p3, 0x7

    invoke-static {p3, p2, p0, p1}, Lvy6;->L(I[III)I

    move-result p0

    invoke-static {p0, p2}, Le79;->m(I[I)V

    return-void
.end method

.method public static x([I)Z
    .locals 3

    invoke-static {}, Loy6;->e()[I

    move-result-object v0

    invoke-static {}, Loy6;->e()[I

    move-result-object v1

    invoke-static {p0, v0}, Loy6;->d([I[I)V

    const/4 p0, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge p0, v2, :cond_0

    invoke-static {v0, v1}, Loy6;->d([I[I)V

    const/4 v2, 0x1

    shl-int/2addr v2, p0

    invoke-static {v0, v2, v0}, Le79;->o([II[I)V

    invoke-static {v0, v1, v0}, Le79;->g([I[I[I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x5f

    invoke-static {v0, p0, v0}, Le79;->o([II[I)V

    invoke-static {v0}, Loy6;->k([I)Z

    move-result p0

    return p0
.end method

.method public static y([I[I[I)Z
    .locals 7

    invoke-static {}, Loy6;->e()[I

    move-result-object v0

    invoke-static {p1, v0}, Loy6;->d([I[I)V

    invoke-static {}, Loy6;->e()[I

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, p1, v1

    invoke-static {}, Loy6;->e()[I

    move-result-object v3

    invoke-static {p0, v0, p1, v3, p2}, Lf79;->v([I[I[I[I[I)V

    invoke-static {}, Loy6;->e()[I

    move-result-object p0

    invoke-static {}, Loy6;->e()[I

    move-result-object v4

    move v5, v2

    :goto_0
    const/16 v6, 0x60

    if-ge v5, v6, :cond_1

    invoke-static {v0, p0}, Loy6;->d([I[I)V

    invoke-static {p1, v4}, Loy6;->d([I[I)V

    invoke-static {v0, p1, v3, p2}, Lf79;->w([I[I[I[I)V

    invoke-static {v0}, Loy6;->l([I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v4, p2}, Le79;->e([I[I)V

    invoke-static {p2, p0, p2}, Le79;->g([I[I[I)V

    return v2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public a(Lw43;)Lw43;
    .locals 1

    invoke-static {}, Loy6;->e()[I

    move-result-object v0

    iget-object p0, p0, Lf79;->g:[I

    check-cast p1, Lf79;

    iget-object p1, p1, Lf79;->g:[I

    invoke-static {p0, p1, v0}, Le79;->a([I[I[I)V

    new-instance p0, Lf79;

    invoke-direct {p0, v0}, Lf79;-><init>([I)V

    return-object p0
.end method

.method public b()Lw43;
    .locals 1

    invoke-static {}, Loy6;->e()[I

    move-result-object v0

    iget-object p0, p0, Lf79;->g:[I

    invoke-static {p0, v0}, Le79;->b([I[I)V

    new-instance p0, Lf79;

    invoke-direct {p0, v0}, Lf79;-><init>([I)V

    return-object p0
.end method

.method public d(Lw43;)Lw43;
    .locals 1

    invoke-static {}, Loy6;->e()[I

    move-result-object v0

    check-cast p1, Lf79;

    iget-object p1, p1, Lf79;->g:[I

    invoke-static {p1, v0}, Le79;->e([I[I)V

    iget-object p0, p0, Lf79;->g:[I

    invoke-static {v0, p0, v0}, Le79;->g([I[I[I)V

    new-instance p0, Lf79;

    invoke-direct {p0, v0}, Lf79;-><init>([I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lf79;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lf79;

    iget-object p0, p0, Lf79;->g:[I

    iget-object p1, p1, Lf79;->g:[I

    invoke-static {p0, p1}, Loy6;->g([I[I)Z

    move-result p0

    return p0
.end method

.method public f()I
    .locals 0

    sget-object p0, Lf79;->h:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public g()Lw43;
    .locals 1

    invoke-static {}, Loy6;->e()[I

    move-result-object v0

    iget-object p0, p0, Lf79;->g:[I

    invoke-static {p0, v0}, Le79;->e([I[I)V

    new-instance p0, Lf79;

    invoke-direct {p0, v0}, Lf79;-><init>([I)V

    return-object p0
.end method

.method public h()Z
    .locals 0

    iget-object p0, p0, Lf79;->g:[I

    invoke-static {p0}, Loy6;->k([I)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 3

    sget-object v0, Lf79;->h:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object p0, p0, Lf79;->g:[I

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {p0, v1, v2}, Lci;->z([III)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public i()Z
    .locals 0

    iget-object p0, p0, Lf79;->g:[I

    invoke-static {p0}, Loy6;->l([I)Z

    move-result p0

    return p0
.end method

.method public j(Lw43;)Lw43;
    .locals 1

    invoke-static {}, Loy6;->e()[I

    move-result-object v0

    iget-object p0, p0, Lf79;->g:[I

    check-cast p1, Lf79;

    iget-object p1, p1, Lf79;->g:[I

    invoke-static {p0, p1, v0}, Le79;->g([I[I[I)V

    new-instance p0, Lf79;

    invoke-direct {p0, v0}, Lf79;-><init>([I)V

    return-object p0
.end method

.method public m()Lw43;
    .locals 1

    invoke-static {}, Loy6;->e()[I

    move-result-object v0

    iget-object p0, p0, Lf79;->g:[I

    invoke-static {p0, v0}, Le79;->i([I[I)V

    new-instance p0, Lf79;

    invoke-direct {p0, v0}, Lf79;-><init>([I)V

    return-object p0
.end method

.method public n()Lw43;
    .locals 5

    iget-object v0, p0, Lf79;->g:[I

    invoke-static {v0}, Loy6;->l([I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Loy6;->k([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Loy6;->e()[I

    move-result-object p0

    invoke-static {v0, p0}, Le79;->i([I[I)V

    sget-object v1, Le79;->a:[I

    invoke-static {v1}, Lcq6;->r([I)[I

    move-result-object v1

    invoke-static {}, Loy6;->e()[I

    move-result-object v2

    invoke-static {v0}, Lf79;->x([I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    return-object v4

    :cond_1
    :goto_0
    invoke-static {p0, v1, v2}, Lf79;->y([I[I[I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1, v1}, Le79;->b([I[I)V

    goto :goto_0

    :cond_2
    invoke-static {v2, v1}, Le79;->n([I[I)V

    invoke-static {v0, v1}, Loy6;->g([I[I)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance v4, Lf79;

    invoke-direct {v4, v2}, Lf79;-><init>([I)V

    :cond_3
    return-object v4

    :cond_4
    :goto_1
    return-object p0
.end method

.method public o()Lw43;
    .locals 1

    invoke-static {}, Loy6;->e()[I

    move-result-object v0

    iget-object p0, p0, Lf79;->g:[I

    invoke-static {p0, v0}, Le79;->n([I[I)V

    new-instance p0, Lf79;

    invoke-direct {p0, v0}, Lf79;-><init>([I)V

    return-object p0
.end method

.method public r(Lw43;)Lw43;
    .locals 1

    invoke-static {}, Loy6;->e()[I

    move-result-object v0

    iget-object p0, p0, Lf79;->g:[I

    check-cast p1, Lf79;

    iget-object p1, p1, Lf79;->g:[I

    invoke-static {p0, p1, v0}, Le79;->q([I[I[I)V

    new-instance p0, Lf79;

    invoke-direct {p0, v0}, Lf79;-><init>([I)V

    return-object p0
.end method

.method public s()Z
    .locals 2

    iget-object p0, p0, Lf79;->g:[I

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

    iget-object p0, p0, Lf79;->g:[I

    invoke-static {p0}, Loy6;->u([I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
