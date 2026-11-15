.class public Lpy8;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:[B

.field public d:[B

.field public e:Lqy8;


# direct methods
.method public constructor <init>(Ls1;)V
    .locals 2

    invoke-direct {p0}, Lj1;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v0

    invoke-virtual {v0}, Lg1;->F()I

    move-result v0

    iput v0, p0, Lpy8;->b:I

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

    iput-object v0, p0, Lpy8;->c:[B

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v0

    invoke-virtual {v0}, Lm1;->z()[B

    move-result-object v0

    invoke-static {v0}, Lci;->f([B)[B

    move-result-object v0

    iput-object v0, p0, Lpy8;->d:[B

    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object p1

    invoke-static {p1}, Lqy8;->m(Ljava/lang/Object;)Lqy8;

    move-result-object p1

    iput-object p1, p0, Lpy8;->e:Lqy8;

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unrecognized version"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static m(Ljava/lang/Object;)Lpy8;
    .locals 1

    instance-of v0, p0, Lpy8;

    if-eqz v0, :cond_0

    check-cast p0, Lpy8;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lpy8;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lpy8;-><init>(Ls1;)V

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

    iget v2, p0, Lpy8;->b:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lg1;-><init>(J)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lwp1;

    iget-object v2, p0, Lpy8;->c:[B

    invoke-direct {v1, v2}, Lwp1;-><init>([B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lwp1;

    iget-object v2, p0, Lpy8;->d:[B

    invoke-direct {v1, v2}, Lwp1;-><init>([B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lpy8;->e:Lqy8;

    if-eqz v1, :cond_0

    new-instance v2, Lqy8;

    invoke-virtual {v1}, Lqy8;->o()[B

    move-result-object v1

    iget-object p0, p0, Lpy8;->e:Lqy8;

    invoke-virtual {p0}, Lqy8;->n()[B

    move-result-object p0

    invoke-direct {v2, v1, p0}, Lqy8;-><init>([B[B)V

    invoke-virtual {v0, v2}, Ly0;->a(Lx0;)V

    :cond_0
    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public n()Lqy8;
    .locals 0

    iget-object p0, p0, Lpy8;->e:Lqy8;

    return-object p0
.end method

.method public o()[B
    .locals 0

    iget-object p0, p0, Lpy8;->d:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public p()[B
    .locals 0

    iget-object p0, p0, Lpy8;->c:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method
