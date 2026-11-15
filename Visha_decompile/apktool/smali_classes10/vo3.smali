.class public Lvo3;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:[B

.field public d:[B

.field public e:[B

.field public f:Lxo3;


# direct methods
.method public constructor <init>(I[B[B[BLxo3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj1;-><init>()V

    iput p1, p0, Lvo3;->b:I

    iput-object p2, p0, Lvo3;->c:[B

    iput-object p3, p0, Lvo3;->d:[B

    iput-object p4, p0, Lvo3;->e:[B

    iput-object p5, p0, Lvo3;->f:Lxo3;

    return-void
.end method

.method public constructor <init>(Ls1;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v0

    invoke-virtual {v0}, Lg1;->F()I

    move-result v0

    iput v0, p0, Lvo3;->b:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v0

    invoke-virtual {v0}, Lm1;->z()[B

    move-result-object v0

    invoke-static {v0}, Lci;->f([B)[B

    move-result-object v0

    iput-object v0, p0, Lvo3;->c:[B

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v0

    invoke-virtual {v0}, Lm1;->z()[B

    move-result-object v0

    invoke-static {v0}, Lci;->f([B)[B

    move-result-object v0

    iput-object v0, p0, Lvo3;->d:[B

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v0

    invoke-virtual {v0}, Lm1;->z()[B

    move-result-object v0

    invoke-static {v0}, Lci;->f([B)[B

    move-result-object v0

    iput-object v0, p0, Lvo3;->e:[B

    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object p1

    invoke-static {p1}, Lxo3;->n(Ljava/lang/Object;)Lxo3;

    move-result-object p1

    iput-object p1, p0, Lvo3;->f:Lxo3;

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unrecognized version"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static o(Ljava/lang/Object;)Lvo3;
    .locals 1

    instance-of v0, p0, Lvo3;

    if-eqz v0, :cond_0

    check-cast p0, Lvo3;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lvo3;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lvo3;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 4

    new-instance v0, Ly0;

    invoke-direct {v0}, Ly0;-><init>()V

    new-instance v1, Lg1;

    iget v2, p0, Lvo3;->b:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lg1;-><init>(J)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lwp1;

    iget-object v2, p0, Lvo3;->c:[B

    invoke-direct {v1, v2}, Lwp1;-><init>([B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lwp1;

    iget-object v2, p0, Lvo3;->d:[B

    invoke-direct {v1, v2}, Lwp1;-><init>([B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lwp1;

    iget-object v2, p0, Lvo3;->e:[B

    invoke-direct {v1, v2}, Lwp1;-><init>([B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object p0, p0, Lvo3;->f:Lxo3;

    if-eqz p0, :cond_0

    new-instance v1, Lxo3;

    invoke-virtual {p0}, Lxo3;->m()[B

    move-result-object p0

    invoke-direct {v1, p0}, Lxo3;-><init>([B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_0
    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public m()[B
    .locals 0

    iget-object p0, p0, Lvo3;->e:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public n()[B
    .locals 0

    iget-object p0, p0, Lvo3;->d:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public p()Lxo3;
    .locals 0

    iget-object p0, p0, Lvo3;->f:Lxo3;

    return-object p0
.end method

.method public q()[B
    .locals 0

    iget-object p0, p0, Lvo3;->c:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method
