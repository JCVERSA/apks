.class public Lu99;
.super Lw43$a;
.source "SourceFile"


# instance fields
.field public g:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lw43$a;-><init>()V

    invoke-static {}, Luy6;->c()[J

    move-result-object v0

    iput-object v0, p0, Lu99;->g:[J

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lw43$a;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x23b

    if-gt v0, v1, :cond_0

    invoke-static {p1}, Lt99;->h(Ljava/math/BigInteger;)[J

    move-result-object p1

    iput-object p1, p0, Lu99;->g:[J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for SecT571FieldElement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lw43$a;-><init>()V

    iput-object p1, p0, Lu99;->g:[J

    return-void
.end method


# virtual methods
.method public a(Lw43;)Lw43;
    .locals 1

    invoke-static {}, Luy6;->c()[J

    move-result-object v0

    iget-object p0, p0, Lu99;->g:[J

    check-cast p1, Lu99;

    iget-object p1, p1, Lu99;->g:[J

    invoke-static {p0, p1, v0}, Lt99;->b([J[J[J)V

    new-instance p0, Lu99;

    invoke-direct {p0, v0}, Lu99;-><init>([J)V

    return-object p0
.end method

.method public b()Lw43;
    .locals 1

    invoke-static {}, Luy6;->c()[J

    move-result-object v0

    iget-object p0, p0, Lu99;->g:[J

    invoke-static {p0, v0}, Lt99;->f([J[J)V

    new-instance p0, Lu99;

    invoke-direct {p0, v0}, Lu99;-><init>([J)V

    return-object p0
.end method

.method public d(Lw43;)Lw43;
    .locals 0

    invoke-virtual {p1}, Lw43;->g()Lw43;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu99;->j(Lw43;)Lw43;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lu99;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lu99;

    iget-object p0, p0, Lu99;->g:[J

    iget-object p1, p1, Lu99;->g:[J

    invoke-static {p0, p1}, Luy6;->e([J[J)Z

    move-result p0

    return p0
.end method

.method public f()I
    .locals 0

    const/16 p0, 0x23b

    return p0
.end method

.method public g()Lw43;
    .locals 1

    invoke-static {}, Luy6;->c()[J

    move-result-object v0

    iget-object p0, p0, Lu99;->g:[J

    invoke-static {p0, v0}, Lt99;->n([J[J)V

    new-instance p0, Lu99;

    invoke-direct {p0, v0}, Lu99;-><init>([J)V

    return-object p0
.end method

.method public h()Z
    .locals 0

    iget-object p0, p0, Lu99;->g:[J

    invoke-static {p0}, Luy6;->f([J)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object p0, p0, Lu99;->g:[J

    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-static {p0, v0, v1}, Lci;->A([JII)I

    move-result p0

    const v0, 0x5724cc

    xor-int/2addr p0, v0

    return p0
.end method

.method public i()Z
    .locals 0

    iget-object p0, p0, Lu99;->g:[J

    invoke-static {p0}, Luy6;->g([J)Z

    move-result p0

    return p0
.end method

.method public j(Lw43;)Lw43;
    .locals 1

    invoke-static {}, Luy6;->c()[J

    move-result-object v0

    iget-object p0, p0, Lu99;->g:[J

    check-cast p1, Lu99;

    iget-object p1, p1, Lu99;->g:[J

    invoke-static {p0, p1, v0}, Lt99;->o([J[J[J)V

    new-instance p0, Lu99;

    invoke-direct {p0, v0}, Lu99;-><init>([J)V

    return-object p0
.end method

.method public k(Lw43;Lw43;Lw43;)Lw43;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lu99;->l(Lw43;Lw43;Lw43;)Lw43;

    move-result-object p0

    return-object p0
.end method

.method public l(Lw43;Lw43;Lw43;)Lw43;
    .locals 1

    iget-object p0, p0, Lu99;->g:[J

    check-cast p1, Lu99;

    iget-object p1, p1, Lu99;->g:[J

    check-cast p2, Lu99;

    iget-object p2, p2, Lu99;->g:[J

    check-cast p3, Lu99;

    iget-object p3, p3, Lu99;->g:[J

    invoke-static {}, Luy6;->d()[J

    move-result-object v0

    invoke-static {p0, p1, v0}, Lt99;->p([J[J[J)V

    invoke-static {p2, p3, v0}, Lt99;->p([J[J[J)V

    invoke-static {}, Luy6;->c()[J

    move-result-object p0

    invoke-static {v0, p0}, Lt99;->t([J[J)V

    new-instance p1, Lu99;

    invoke-direct {p1, p0}, Lu99;-><init>([J)V

    return-object p1
.end method

.method public m()Lw43;
    .locals 0

    return-object p0
.end method

.method public n()Lw43;
    .locals 1

    invoke-static {}, Luy6;->c()[J

    move-result-object v0

    iget-object p0, p0, Lu99;->g:[J

    invoke-static {p0, v0}, Lt99;->v([J[J)V

    new-instance p0, Lu99;

    invoke-direct {p0, v0}, Lu99;-><init>([J)V

    return-object p0
.end method

.method public o()Lw43;
    .locals 1

    invoke-static {}, Luy6;->c()[J

    move-result-object v0

    iget-object p0, p0, Lu99;->g:[J

    invoke-static {p0, v0}, Lt99;->w([J[J)V

    new-instance p0, Lu99;

    invoke-direct {p0, v0}, Lu99;-><init>([J)V

    return-object p0
.end method

.method public p(Lw43;Lw43;)Lw43;
    .locals 1

    iget-object p0, p0, Lu99;->g:[J

    check-cast p1, Lu99;

    iget-object p1, p1, Lu99;->g:[J

    check-cast p2, Lu99;

    iget-object p2, p2, Lu99;->g:[J

    invoke-static {}, Luy6;->d()[J

    move-result-object v0

    invoke-static {p0, v0}, Lt99;->x([J[J)V

    invoke-static {p1, p2, v0}, Lt99;->p([J[J[J)V

    invoke-static {}, Luy6;->c()[J

    move-result-object p0

    invoke-static {v0, p0}, Lt99;->t([J[J)V

    new-instance p1, Lu99;

    invoke-direct {p1, p0}, Lu99;-><init>([J)V

    return-object p1
.end method

.method public q(I)Lw43;
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Luy6;->c()[J

    move-result-object v0

    iget-object p0, p0, Lu99;->g:[J

    invoke-static {p0, p1, v0}, Lt99;->y([JI[J)V

    new-instance p0, Lu99;

    invoke-direct {p0, v0}, Lu99;-><init>([J)V

    return-object p0
.end method

.method public r(Lw43;)Lw43;
    .locals 0

    invoke-virtual {p0, p1}, Lu99;->a(Lw43;)Lw43;

    move-result-object p0

    return-object p0
.end method

.method public s()Z
    .locals 5

    iget-object p0, p0, Lu99;->g:[J

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public t()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lu99;->g:[J

    invoke-static {p0}, Luy6;->h([J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public u()Lw43;
    .locals 1

    invoke-static {}, Luy6;->c()[J

    move-result-object v0

    iget-object p0, p0, Lu99;->g:[J

    invoke-static {p0, v0}, Lt99;->i([J[J)V

    new-instance p0, Lu99;

    invoke-direct {p0, v0}, Lu99;-><init>([J)V

    return-object p0
.end method

.method public v()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public w()I
    .locals 0

    iget-object p0, p0, Lu99;->g:[J

    invoke-static {p0}, Lt99;->z([J)I

    move-result p0

    return p0
.end method
