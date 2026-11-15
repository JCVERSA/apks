.class public Ly89;
.super Lw43$a;
.source "SourceFile"


# instance fields
.field public g:[J


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lw43$a;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xe9

    if-gt v0, v1, :cond_0

    invoke-static {p1}, Lx89;->e(Ljava/math/BigInteger;)[J

    move-result-object p1

    iput-object p1, p0, Ly89;->g:[J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for SecT233FieldElement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lw43$a;-><init>()V

    iput-object p1, p0, Ly89;->g:[J

    return-void
.end method


# virtual methods
.method public a(Lw43;)Lw43;
    .locals 1

    invoke-static {}, Lpy6;->j()[J

    move-result-object v0

    iget-object p0, p0, Ly89;->g:[J

    check-cast p1, Ly89;

    iget-object p1, p1, Ly89;->g:[J

    invoke-static {p0, p1, v0}, Lx89;->a([J[J[J)V

    new-instance p0, Ly89;

    invoke-direct {p0, v0}, Ly89;-><init>([J)V

    return-object p0
.end method

.method public b()Lw43;
    .locals 1

    invoke-static {}, Lpy6;->j()[J

    move-result-object v0

    iget-object p0, p0, Ly89;->g:[J

    invoke-static {p0, v0}, Lx89;->c([J[J)V

    new-instance p0, Ly89;

    invoke-direct {p0, v0}, Ly89;-><init>([J)V

    return-object p0
.end method

.method public d(Lw43;)Lw43;
    .locals 0

    invoke-virtual {p1}, Lw43;->g()Lw43;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly89;->j(Lw43;)Lw43;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Ly89;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Ly89;

    iget-object p0, p0, Ly89;->g:[J

    iget-object p1, p1, Ly89;->g:[J

    invoke-static {p0, p1}, Lpy6;->o([J[J)Z

    move-result p0

    return p0
.end method

.method public f()I
    .locals 0

    const/16 p0, 0xe9

    return p0
.end method

.method public g()Lw43;
    .locals 1

    invoke-static {}, Lpy6;->j()[J

    move-result-object v0

    iget-object p0, p0, Ly89;->g:[J

    invoke-static {p0, v0}, Lx89;->l([J[J)V

    new-instance p0, Ly89;

    invoke-direct {p0, v0}, Ly89;-><init>([J)V

    return-object p0
.end method

.method public h()Z
    .locals 0

    iget-object p0, p0, Ly89;->g:[J

    invoke-static {p0}, Lpy6;->u([J)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object p0, p0, Ly89;->g:[J

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lci;->A([JII)I

    move-result p0

    const v0, 0x238dda

    xor-int/2addr p0, v0

    return p0
.end method

.method public i()Z
    .locals 0

    iget-object p0, p0, Ly89;->g:[J

    invoke-static {p0}, Lpy6;->w([J)Z

    move-result p0

    return p0
.end method

.method public j(Lw43;)Lw43;
    .locals 1

    invoke-static {}, Lpy6;->j()[J

    move-result-object v0

    iget-object p0, p0, Ly89;->g:[J

    check-cast p1, Ly89;

    iget-object p1, p1, Ly89;->g:[J

    invoke-static {p0, p1, v0}, Lx89;->m([J[J[J)V

    new-instance p0, Ly89;

    invoke-direct {p0, v0}, Ly89;-><init>([J)V

    return-object p0
.end method

.method public k(Lw43;Lw43;Lw43;)Lw43;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ly89;->l(Lw43;Lw43;Lw43;)Lw43;

    move-result-object p0

    return-object p0
.end method

.method public l(Lw43;Lw43;Lw43;)Lw43;
    .locals 1

    iget-object p0, p0, Ly89;->g:[J

    check-cast p1, Ly89;

    iget-object p1, p1, Ly89;->g:[J

    check-cast p2, Ly89;

    iget-object p2, p2, Ly89;->g:[J

    check-cast p3, Ly89;

    iget-object p3, p3, Ly89;->g:[J

    invoke-static {}, Lpy6;->l()[J

    move-result-object v0

    invoke-static {p0, p1, v0}, Lx89;->n([J[J[J)V

    invoke-static {p2, p3, v0}, Lx89;->n([J[J[J)V

    invoke-static {}, Lpy6;->j()[J

    move-result-object p0

    invoke-static {v0, p0}, Lx89;->o([J[J)V

    new-instance p1, Ly89;

    invoke-direct {p1, p0}, Ly89;-><init>([J)V

    return-object p1
.end method

.method public m()Lw43;
    .locals 0

    return-object p0
.end method

.method public n()Lw43;
    .locals 1

    invoke-static {}, Lpy6;->j()[J

    move-result-object v0

    iget-object p0, p0, Ly89;->g:[J

    invoke-static {p0, v0}, Lx89;->p([J[J)V

    new-instance p0, Ly89;

    invoke-direct {p0, v0}, Ly89;-><init>([J)V

    return-object p0
.end method

.method public o()Lw43;
    .locals 1

    invoke-static {}, Lpy6;->j()[J

    move-result-object v0

    iget-object p0, p0, Ly89;->g:[J

    invoke-static {p0, v0}, Lx89;->q([J[J)V

    new-instance p0, Ly89;

    invoke-direct {p0, v0}, Ly89;-><init>([J)V

    return-object p0
.end method

.method public p(Lw43;Lw43;)Lw43;
    .locals 1

    iget-object p0, p0, Ly89;->g:[J

    check-cast p1, Ly89;

    iget-object p1, p1, Ly89;->g:[J

    check-cast p2, Ly89;

    iget-object p2, p2, Ly89;->g:[J

    invoke-static {}, Lpy6;->l()[J

    move-result-object v0

    invoke-static {p0, v0}, Lx89;->r([J[J)V

    invoke-static {p1, p2, v0}, Lx89;->n([J[J[J)V

    invoke-static {}, Lpy6;->j()[J

    move-result-object p0

    invoke-static {v0, p0}, Lx89;->o([J[J)V

    new-instance p1, Ly89;

    invoke-direct {p1, p0}, Ly89;-><init>([J)V

    return-object p1
.end method

.method public q(I)Lw43;
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lpy6;->j()[J

    move-result-object v0

    iget-object p0, p0, Ly89;->g:[J

    invoke-static {p0, p1, v0}, Lx89;->s([JI[J)V

    new-instance p0, Ly89;

    invoke-direct {p0, v0}, Ly89;-><init>([J)V

    return-object p0
.end method

.method public r(Lw43;)Lw43;
    .locals 0

    invoke-virtual {p0, p1}, Ly89;->a(Lw43;)Lw43;

    move-result-object p0

    return-object p0
.end method

.method public s()Z
    .locals 5

    iget-object p0, p0, Ly89;->g:[J

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

    iget-object p0, p0, Ly89;->g:[J

    invoke-static {p0}, Lpy6;->K([J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public u()Lw43;
    .locals 1

    invoke-static {}, Lpy6;->j()[J

    move-result-object v0

    iget-object p0, p0, Ly89;->g:[J

    invoke-static {p0, v0}, Lx89;->f([J[J)V

    new-instance p0, Ly89;

    invoke-direct {p0, v0}, Ly89;-><init>([J)V

    return-object p0
.end method

.method public v()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public w()I
    .locals 0

    iget-object p0, p0, Ly89;->g:[J

    invoke-static {p0}, Lx89;->t([J)I

    move-result p0

    return p0
.end method
