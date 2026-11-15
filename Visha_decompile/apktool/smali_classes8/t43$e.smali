.class public Lt43$e;
.super Lt43$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt43;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Li53$d;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lt43$b;-><init>(IIII)V

    iput p1, p0, Lt43$e;->j:I

    iput p2, p0, Lt43$e;->k:I

    iput p3, p0, Lt43$e;->l:I

    iput p4, p0, Lt43$e;->m:I

    iput-object p7, p0, Lt43;->d:Ljava/math/BigInteger;

    iput-object p8, p0, Lt43;->e:Ljava/math/BigInteger;

    new-instance p1, Li53$d;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p2}, Li53$d;-><init>(Lt43;Lw43;Lw43;)V

    iput-object p1, p0, Lt43$e;->n:Li53$d;

    invoke-virtual {p0, p5}, Lt43$e;->l(Ljava/math/BigInteger;)Lw43;

    move-result-object p1

    iput-object p1, p0, Lt43;->b:Lw43;

    invoke-virtual {p0, p6}, Lt43$e;->l(Ljava/math/BigInteger;)Lw43;

    move-result-object p1

    iput-object p1, p0, Lt43;->c:Lw43;

    const/4 p1, 0x6

    iput p1, p0, Lt43;->f:I

    return-void
.end method

.method public constructor <init>(IIIILw43;Lw43;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lt43$b;-><init>(IIII)V

    iput p1, p0, Lt43$e;->j:I

    iput p2, p0, Lt43$e;->k:I

    iput p3, p0, Lt43$e;->l:I

    iput p4, p0, Lt43$e;->m:I

    iput-object p7, p0, Lt43;->d:Ljava/math/BigInteger;

    iput-object p8, p0, Lt43;->e:Ljava/math/BigInteger;

    new-instance p1, Li53$d;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p2}, Li53$d;-><init>(Lt43;Lw43;Lw43;)V

    iput-object p1, p0, Lt43$e;->n:Li53$d;

    iput-object p5, p0, Lt43;->b:Lw43;

    iput-object p6, p0, Lt43;->c:Lw43;

    const/4 p1, 0x6

    iput p1, p0, Lt43;->f:I

    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 3
    invoke-direct/range {v0 .. v8}, Lt43$e;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public static synthetic F(Lt43$e;)I
    .locals 0

    iget p0, p0, Lt43$e;->j:I

    return p0
.end method


# virtual methods
.method public A(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, p0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public G()Z
    .locals 1

    iget v0, p0, Lt43$e;->l:I

    if-nez v0, :cond_0

    iget p0, p0, Lt43$e;->m:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d()Lt43;
    .locals 10

    new-instance v9, Lt43$e;

    iget v1, p0, Lt43$e;->j:I

    iget v2, p0, Lt43$e;->k:I

    iget v3, p0, Lt43$e;->l:I

    iget v4, p0, Lt43$e;->m:I

    iget-object v5, p0, Lt43;->b:Lw43;

    iget-object v6, p0, Lt43;->c:Lw43;

    iget-object v7, p0, Lt43;->d:Ljava/math/BigInteger;

    iget-object v8, p0, Lt43;->e:Ljava/math/BigInteger;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lt43$e;-><init>(IIIILw43;Lw43;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v9
.end method

.method public f([Li53;II)Lb53;
    .locals 7

    iget v0, p0, Lt43$e;->j:I

    add-int/lit8 v0, v0, 0x3f

    ushr-int/lit8 v4, v0, 0x6

    invoke-virtual {p0}, Lt43$e;->G()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-array v0, v2, [I

    iget v2, p0, Lt43$e;->k:I

    aput v2, v0, v3

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    iget v5, p0, Lt43$e;->k:I

    aput v5, v0, v3

    iget v5, p0, Lt43$e;->l:I

    aput v5, v0, v2

    iget v2, p0, Lt43$e;->m:I

    aput v2, v0, v1

    goto :goto_0

    :goto_1
    mul-int v0, p3, v4

    mul-int/2addr v0, v1

    new-array v5, v0, [J

    move v0, v3

    :goto_2
    if-ge v3, p3, :cond_1

    add-int v1, p2, v3

    aget-object v1, p1, v1

    invoke-virtual {v1}, Li53;->n()Lw43;

    move-result-object v2

    check-cast v2, Lw43$c;

    iget-object v2, v2, Lw43$c;->j:Lyq5;

    invoke-virtual {v2, v5, v0}, Lyq5;->k([JI)V

    add-int/2addr v0, v4

    invoke-virtual {v1}, Li53;->o()Lw43;

    move-result-object v1

    check-cast v1, Lw43$c;

    iget-object v1, v1, Lw43$c;->j:Lyq5;

    invoke-virtual {v1, v5, v0}, Lyq5;->k([JI)V

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    new-instance p1, Lt43$e$a;

    move-object v1, p1

    move-object v2, p0

    move v3, p3

    invoke-direct/range {v1 .. v6}, Lt43$e$a;-><init>(Lt43$e;II[J[I)V

    return-object p1
.end method

.method public h(Lw43;Lw43;)Li53;
    .locals 1

    new-instance v0, Li53$d;

    invoke-direct {v0, p0, p1, p2}, Li53$d;-><init>(Lt43;Lw43;Lw43;)V

    return-object v0
.end method

.method public l(Ljava/math/BigInteger;)Lw43;
    .locals 6

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget v1, p0, Lt43$e;->j:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lt43$e;->l:I

    iget v2, p0, Lt43$e;->m:I

    or-int v3, v0, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    new-array v0, v5, [I

    iget p0, p0, Lt43$e;->k:I

    aput p0, v0, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    new-array v3, v3, [I

    iget p0, p0, Lt43$e;->k:I

    aput p0, v3, v4

    aput v0, v3, v5

    const/4 p0, 0x2

    aput v2, v3, p0

    move-object v0, v3

    :goto_0
    new-instance p0, Lw43$c;

    new-instance v2, Lyq5;

    invoke-direct {v2, p1}, Lyq5;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {p0, v1, v0, v2}, Lw43$c;-><init>(I[ILyq5;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid in F2m field element"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public r()I
    .locals 0

    iget p0, p0, Lt43$e;->j:I

    return p0
.end method

.method public s()Li53;
    .locals 0

    iget-object p0, p0, Lt43$e;->n:Li53$d;

    return-object p0
.end method
