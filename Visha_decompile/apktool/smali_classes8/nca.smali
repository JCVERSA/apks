.class public Lnca;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:Ls1;

.field public c:Lg1;

.field public d:Lg1;

.field public e:Loa;

.field public f:Lcqc;

.field public g:Lmna;

.field public h:Lmna;

.field public i:Lcqc;

.field public j:Ls1a;

.field public k:Ls0;

.field public l:Ls0;

.field public m:Lgk3;


# direct methods
.method public constructor <init>(Ls1;)V
    .locals 9

    invoke-direct {p0}, Lj1;-><init>()V

    iput-object p1, p0, Lnca;->b:Ls1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v1

    instance-of v1, v1, Ly1;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v1

    check-cast v1, Ly1;

    invoke-static {v1, v2}, Lg1;->x(Ly1;Z)Lg1;

    move-result-object v1

    iput-object v1, p0, Lnca;->c:Lg1;

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lg1;

    const-wide/16 v3, 0x0

    invoke-direct {v1, v3, v4}, Lg1;-><init>(J)V

    iput-object v1, p0, Lnca;->c:Lg1;

    const/4 v1, -0x1

    :goto_0
    iget-object v3, p0, Lnca;->c:Lg1;

    invoke-virtual {v3, v0}, Lg1;->B(I)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    move v5, v0

    move v3, v2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lnca;->c:Lg1;

    invoke-virtual {v3, v2}, Lg1;->B(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v0

    move v5, v2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lnca;->c:Lg1;

    invoke-virtual {v3, v4}, Lg1;->B(I)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v0

    move v5, v3

    :goto_1
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v6}, Ls1;->A(I)Lx0;

    move-result-object v6

    invoke-static {v6}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v6

    iput-object v6, p0, Lnca;->d:Lg1;

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {p1, v6}, Ls1;->A(I)Lx0;

    move-result-object v6

    invoke-static {v6}, Loa;->o(Ljava/lang/Object;)Loa;

    move-result-object v6

    iput-object v6, p0, Lnca;->e:Loa;

    add-int/lit8 v6, v1, 0x3

    invoke-virtual {p1, v6}, Ls1;->A(I)Lx0;

    move-result-object v6

    invoke-static {v6}, Lcqc;->o(Ljava/lang/Object;)Lcqc;

    move-result-object v6

    iput-object v6, p0, Lnca;->f:Lcqc;

    add-int/lit8 v6, v1, 0x4

    invoke-virtual {p1, v6}, Ls1;->A(I)Lx0;

    move-result-object v6

    check-cast v6, Ls1;

    invoke-virtual {v6, v0}, Ls1;->A(I)Lx0;

    move-result-object v7

    invoke-static {v7}, Lmna;->n(Ljava/lang/Object;)Lmna;

    move-result-object v7

    iput-object v7, p0, Lnca;->g:Lmna;

    invoke-virtual {v6, v2}, Ls1;->A(I)Lx0;

    move-result-object v6

    invoke-static {v6}, Lmna;->n(Ljava/lang/Object;)Lmna;

    move-result-object v6

    iput-object v6, p0, Lnca;->h:Lmna;

    add-int/lit8 v6, v1, 0x5

    invoke-virtual {p1, v6}, Ls1;->A(I)Lx0;

    move-result-object v6

    invoke-static {v6}, Lcqc;->o(Ljava/lang/Object;)Lcqc;

    move-result-object v6

    iput-object v6, p0, Lnca;->i:Lcqc;

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object v6

    invoke-static {v6}, Ls1a;->n(Ljava/lang/Object;)Ls1a;

    move-result-object v6

    iput-object v6, p0, Lnca;->j:Ls1a;

    invoke-virtual {p1}, Ls1;->size()I

    move-result v6

    sub-int/2addr v6, v1

    sub-int/2addr v6, v2

    if-eqz v6, :cond_4

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "version 1 certificate contains extra data"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    if-lez v6, :cond_9

    add-int v3, v1, v6

    invoke-virtual {p1, v3}, Ls1;->A(I)Lx0;

    move-result-object v3

    check-cast v3, Ly1;

    invoke-virtual {v3}, Ly1;->J()I

    move-result v7

    if-eq v7, v2, :cond_8

    if-eq v7, v4, :cond_7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    if-nez v5, :cond_5

    invoke-static {v3, v2}, Ls1;->y(Ly1;Z)Ls1;

    move-result-object v3

    invoke-static {v3}, Lgk3;->t(Ljava/lang/Object;)Lgk3;

    move-result-object v3

    iput-object v3, p0, Lnca;->m:Lgk3;

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "version 2 certificate cannot contain extensions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown tag encountered in structure: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ly1;->J()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-static {v3, v0}, Ls0;->y(Ly1;Z)Ls0;

    move-result-object v3

    iput-object v3, p0, Lnca;->l:Ls0;

    goto :goto_3

    :cond_8
    invoke-static {v3, v0}, Ls0;->y(Ly1;Z)Ls0;

    move-result-object v3

    iput-object v3, p0, Lnca;->k:Ls0;

    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_9
    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "version number not recognised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static o(Ljava/lang/Object;)Lnca;
    .locals 1

    instance-of v0, p0, Lnca;

    if-eqz v0, :cond_0

    check-cast p0, Lnca;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lnca;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lnca;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 6

    const-string v0, "org.bouncycastle.x509.allow_non-der_tbscert"

    invoke-static {v0}, Lqi8;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Lqi8;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnca;->b:Ls1;

    return-object p0

    :cond_0
    new-instance v0, Ly0;

    invoke-direct {v0}, Ly0;-><init>()V

    iget-object v1, p0, Lnca;->c:Lg1;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lg1;->B(I)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    new-instance v1, Ldq1;

    iget-object v4, p0, Lnca;->c:Lg1;

    invoke-direct {v1, v3, v2, v4}, Ldq1;-><init>(ZILx0;)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_1
    iget-object v1, p0, Lnca;->d:Lg1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lnca;->e:Loa;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lnca;->f:Lcqc;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Ly0;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Ly0;-><init>(I)V

    iget-object v5, p0, Lnca;->g:Lmna;

    invoke-virtual {v1, v5}, Ly0;->a(Lx0;)V

    iget-object v5, p0, Lnca;->h:Lmna;

    invoke-virtual {v1, v5}, Ly0;->a(Lx0;)V

    new-instance v5, Laq1;

    invoke-direct {v5, v1}, Laq1;-><init>(Ly0;)V

    invoke-virtual {v0, v5}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lnca;->i:Lcqc;

    if-eqz v1, :cond_2

    :goto_0
    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    goto :goto_1

    :cond_2
    new-instance v1, Laq1;

    invoke-direct {v1}, Laq1;-><init>()V

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lnca;->j:Ls1a;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lnca;->k:Ls0;

    if-eqz v1, :cond_3

    new-instance v5, Ldq1;

    invoke-direct {v5, v2, v3, v1}, Ldq1;-><init>(ZILx0;)V

    invoke-virtual {v0, v5}, Ly0;->a(Lx0;)V

    :cond_3
    iget-object v1, p0, Lnca;->l:Ls0;

    if-eqz v1, :cond_4

    new-instance v5, Ldq1;

    invoke-direct {v5, v2, v4, v1}, Ldq1;-><init>(ZILx0;)V

    invoke-virtual {v0, v5}, Ly0;->a(Lx0;)V

    :cond_4
    iget-object p0, p0, Lnca;->m:Lgk3;

    if-eqz p0, :cond_5

    new-instance v1, Ldq1;

    const/4 v2, 0x3

    invoke-direct {v1, v3, v2, p0}, Ldq1;-><init>(ZILx0;)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_5
    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0

    :cond_6
    iget-object p0, p0, Lnca;->b:Ls1;

    return-object p0
.end method

.method public m()Lmna;
    .locals 0

    iget-object p0, p0, Lnca;->h:Lmna;

    return-object p0
.end method

.method public n()Lgk3;
    .locals 0

    iget-object p0, p0, Lnca;->m:Lgk3;

    return-object p0
.end method

.method public p()Lcqc;
    .locals 0

    iget-object p0, p0, Lnca;->f:Lcqc;

    return-object p0
.end method

.method public q()Ls0;
    .locals 0

    iget-object p0, p0, Lnca;->k:Ls0;

    return-object p0
.end method

.method public r()Lg1;
    .locals 0

    iget-object p0, p0, Lnca;->d:Lg1;

    return-object p0
.end method

.method public s()Loa;
    .locals 0

    iget-object p0, p0, Lnca;->e:Loa;

    return-object p0
.end method

.method public t()Lmna;
    .locals 0

    iget-object p0, p0, Lnca;->g:Lmna;

    return-object p0
.end method

.method public u()Lcqc;
    .locals 0

    iget-object p0, p0, Lnca;->i:Lcqc;

    return-object p0
.end method

.method public v()Ls1a;
    .locals 0

    iget-object p0, p0, Lnca;->j:Ls1a;

    return-object p0
.end method

.method public w()Ls0;
    .locals 0

    iget-object p0, p0, Lnca;->l:Ls0;

    return-object p0
.end method

.method public x()I
    .locals 0

    iget-object p0, p0, Lnca;->c:Lg1;

    invoke-virtual {p0}, Lg1;->F()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method
