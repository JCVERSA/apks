.class public Lms0;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:Ls1;

.field public c:Lnca;

.field public d:Loa;

.field public e:Ls0;


# direct methods
.method public constructor <init>(Ls1;)V
    .locals 2

    invoke-direct {p0}, Lj1;-><init>()V

    iput-object p1, p0, Lms0;->b:Ls1;

    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Lnca;->o(Ljava/lang/Object;)Lnca;

    move-result-object v0

    iput-object v0, p0, Lms0;->c:Lnca;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Loa;->o(Ljava/lang/Object;)Loa;

    move-result-object v0

    iput-object v0, p0, Lms0;->d:Loa;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object p1

    invoke-static {p1}, Ls0;->z(Ljava/lang/Object;)Ls0;

    move-result-object p1

    iput-object p1, p0, Lms0;->e:Ls0;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sequence wrong size for a certificate"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static n(Ljava/lang/Object;)Lms0;
    .locals 1

    instance-of v0, p0, Lms0;

    if-eqz v0, :cond_0

    check-cast p0, Lms0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lms0;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lms0;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 0

    iget-object p0, p0, Lms0;->b:Ls1;

    return-object p0
.end method

.method public m()Lmna;
    .locals 0

    iget-object p0, p0, Lms0;->c:Lnca;

    invoke-virtual {p0}, Lnca;->m()Lmna;

    move-result-object p0

    return-object p0
.end method

.method public o()Lcqc;
    .locals 0

    iget-object p0, p0, Lms0;->c:Lnca;

    invoke-virtual {p0}, Lnca;->p()Lcqc;

    move-result-object p0

    return-object p0
.end method

.method public p()Lg1;
    .locals 0

    iget-object p0, p0, Lms0;->c:Lnca;

    invoke-virtual {p0}, Lnca;->r()Lg1;

    move-result-object p0

    return-object p0
.end method

.method public q()Ls0;
    .locals 0

    iget-object p0, p0, Lms0;->e:Ls0;

    return-object p0
.end method

.method public r()Loa;
    .locals 0

    iget-object p0, p0, Lms0;->d:Loa;

    return-object p0
.end method

.method public s()Lmna;
    .locals 0

    iget-object p0, p0, Lms0;->c:Lnca;

    invoke-virtual {p0}, Lnca;->t()Lmna;

    move-result-object p0

    return-object p0
.end method

.method public t()Lcqc;
    .locals 0

    iget-object p0, p0, Lms0;->c:Lnca;

    invoke-virtual {p0}, Lnca;->u()Lcqc;

    move-result-object p0

    return-object p0
.end method

.method public u()Ls1a;
    .locals 0

    iget-object p0, p0, Lms0;->c:Lnca;

    invoke-virtual {p0}, Lnca;->v()Ls1a;

    move-result-object p0

    return-object p0
.end method

.method public v()Lnca;
    .locals 0

    iget-object p0, p0, Lms0;->c:Lnca;

    return-object p0
.end method

.method public w()I
    .locals 0

    iget-object p0, p0, Lms0;->c:Lnca;

    invoke-virtual {p0}, Lnca;->x()I

    move-result p0

    return p0
.end method
