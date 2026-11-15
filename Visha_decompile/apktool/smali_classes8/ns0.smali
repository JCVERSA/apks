.class public Lns0;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:Lmca;

.field public c:Loa;

.field public d:Ls0;

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>(Ls1;)V
    .locals 3

    invoke-direct {p0}, Lj1;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lns0;->e:Z

    invoke-virtual {p1}, Ls1;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Lmca;->n(Ljava/lang/Object;)Lmca;

    move-result-object v0

    iput-object v0, p0, Lns0;->b:Lmca;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Loa;->o(Ljava/lang/Object;)Loa;

    move-result-object v0

    iput-object v0, p0, Lns0;->c:Loa;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object p1

    invoke-static {p1}, Ls0;->z(Ljava/lang/Object;)Ls0;

    move-result-object p1

    iput-object p1, p0, Lns0;->d:Ls0;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sequence wrong size for CertificateList"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static m(Ljava/lang/Object;)Lns0;
    .locals 1

    instance-of v0, p0, Lns0;

    if-eqz v0, :cond_0

    check-cast p0, Lns0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lns0;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lns0;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lns0;->e:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lj1;->hashCode()I

    move-result v0

    iput v0, p0, Lns0;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lns0;->e:Z

    :cond_0
    iget p0, p0, Lns0;->f:I

    return p0
.end method

.method public j()Lp1;
    .locals 2

    new-instance v0, Ly0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    iget-object v1, p0, Lns0;->b:Lmca;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lns0;->c:Loa;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object p0, p0, Lns0;->d:Ls0;

    invoke-virtual {v0, p0}, Ly0;->a(Lx0;)V

    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public n()Lcqc;
    .locals 0

    iget-object p0, p0, Lns0;->b:Lmca;

    invoke-virtual {p0}, Lmca;->o()Lcqc;

    move-result-object p0

    return-object p0
.end method

.method public o()Lmna;
    .locals 0

    iget-object p0, p0, Lns0;->b:Lmca;

    invoke-virtual {p0}, Lmca;->p()Lmna;

    move-result-object p0

    return-object p0
.end method

.method public p()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lns0;->b:Lmca;

    invoke-virtual {p0}, Lmca;->q()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public q()[Lmca$b;
    .locals 0

    iget-object p0, p0, Lns0;->b:Lmca;

    invoke-virtual {p0}, Lmca;->r()[Lmca$b;

    move-result-object p0

    return-object p0
.end method

.method public r()Loa;
    .locals 0

    iget-object p0, p0, Lns0;->c:Loa;

    return-object p0
.end method

.method public s()Lmca;
    .locals 0

    iget-object p0, p0, Lns0;->b:Lmca;

    return-object p0
.end method

.method public t()Lmna;
    .locals 0

    iget-object p0, p0, Lns0;->b:Lmca;

    invoke-virtual {p0}, Lmca;->t()Lmna;

    move-result-object p0

    return-object p0
.end method
