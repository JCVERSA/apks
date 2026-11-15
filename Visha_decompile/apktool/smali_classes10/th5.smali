.class public Lth5;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:[B

.field public c:[B


# direct methods
.method public constructor <init>(Ls1;)V
    .locals 1

    invoke-direct {p0}, Lj1;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v0

    invoke-virtual {v0}, Lm1;->z()[B

    move-result-object v0

    invoke-static {v0}, Lci;->f([B)[B

    move-result-object v0

    iput-object v0, p0, Lth5;->b:[B

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object p1

    invoke-static {p1}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object p1

    invoke-virtual {p1}, Lm1;->z()[B

    move-result-object p1

    invoke-static {p1}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lth5;->c:[B

    return-void
.end method

.method public static m(Ljava/lang/Object;)Lth5;
    .locals 1

    instance-of v0, p0, Lth5;

    if-eqz v0, :cond_0

    check-cast p0, Lth5;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth5;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lth5;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 3

    new-instance v0, Ly0;

    invoke-direct {v0}, Ly0;-><init>()V

    new-instance v1, Lwp1;

    iget-object v2, p0, Lth5;->b:[B

    invoke-direct {v1, v2}, Lwp1;-><init>([B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lwp1;

    iget-object p0, p0, Lth5;->c:[B

    invoke-direct {v1, p0}, Lwp1;-><init>([B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public n()[B
    .locals 0

    iget-object p0, p0, Lth5;->c:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public o()[B
    .locals 0

    iget-object p0, p0, Lth5;->b:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method
