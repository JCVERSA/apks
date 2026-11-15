.class public Lcp0;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:[B


# direct methods
.method public constructor <init>(Ls1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lj1;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object p1

    invoke-static {p1}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object p1

    invoke-virtual {p1}, Lm1;->z()[B

    move-result-object p1

    invoke-static {p1}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lcp0;->b:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    iput-object p1, p0, Lcp0;->b:[B

    return-void
.end method

.method public static m(Ljava/lang/Object;)Lcp0;
    .locals 1

    instance-of v0, p0, Lcp0;

    if-eqz v0, :cond_0

    check-cast p0, Lcp0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lcp0;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lcp0;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 2

    new-instance v0, Ly0;

    invoke-direct {v0}, Ly0;-><init>()V

    new-instance v1, Lwp1;

    iget-object p0, p0, Lcp0;->b:[B

    invoke-direct {v1, p0}, Lwp1;-><init>([B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public n()[B
    .locals 0

    iget-object p0, p0, Lcp0;->b:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method
