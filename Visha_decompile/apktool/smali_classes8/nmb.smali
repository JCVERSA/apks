.class public Lnmb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ldq1;

.field public b:Lg1;

.field public c:Loa;

.field public d:Lcqc;

.field public e:Lmna;

.field public f:Lmna;

.field public g:Lcqc;

.field public h:Ls1a;

.field public i:Lgk3;

.field public j:Z

.field public k:Lnp1;

.field public l:Lnp1;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldq1;

    new-instance v1, Lg1;

    const-wide/16 v2, 0x2

    invoke-direct {v1, v2, v3}, Lg1;-><init>(J)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Ldq1;-><init>(ZILx0;)V

    iput-object v0, p0, Lnmb;->a:Ldq1;

    return-void
.end method


# virtual methods
.method public a()Lnca;
    .locals 1

    iget-object v0, p0, Lnmb;->b:Lg1;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnmb;->c:Loa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnmb;->d:Lcqc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnmb;->e:Lmna;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnmb;->f:Lmna;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnmb;->g:Lcqc;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnmb;->j:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnmb;->h:Ls1a;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnmb;->b()Ls1;

    move-result-object p0

    invoke-static {p0}, Lnca;->o(Ljava/lang/Object;)Lnca;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "not all mandatory fields set in V3 TBScertificate generator"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Ls1;
    .locals 6

    new-instance v0, Ly0;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    iget-object v1, p0, Lnmb;->a:Ldq1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lnmb;->b:Lg1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lnmb;->c:Loa;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_0
    iget-object v1, p0, Lnmb;->d:Lcqc;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Ly0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ly0;-><init>(I)V

    iget-object v3, p0, Lnmb;->e:Lmna;

    invoke-virtual {v1, v3}, Ly0;->a(Lx0;)V

    iget-object v3, p0, Lnmb;->f:Lmna;

    invoke-virtual {v1, v3}, Ly0;->a(Lx0;)V

    new-instance v3, Laq1;

    invoke-direct {v3, v1}, Laq1;-><init>(Ly0;)V

    invoke-virtual {v0, v3}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lnmb;->g:Lcqc;

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    goto :goto_1

    :cond_1
    new-instance v1, Laq1;

    invoke-direct {v1}, Laq1;-><init>()V

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lnmb;->h:Ls1a;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lnmb;->k:Lnp1;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    new-instance v5, Ldq1;

    invoke-direct {v5, v4, v3, v1}, Ldq1;-><init>(ZILx0;)V

    invoke-virtual {v0, v5}, Ly0;->a(Lx0;)V

    :cond_2
    iget-object v1, p0, Lnmb;->l:Lnp1;

    if-eqz v1, :cond_3

    new-instance v5, Ldq1;

    invoke-direct {v5, v4, v2, v1}, Ldq1;-><init>(ZILx0;)V

    invoke-virtual {v0, v5}, Ly0;->a(Lx0;)V

    :cond_3
    iget-object p0, p0, Lnmb;->i:Lgk3;

    if-eqz p0, :cond_4

    new-instance v1, Ldq1;

    const/4 v2, 0x3

    invoke-direct {v1, v3, v2, p0}, Ldq1;-><init>(ZILx0;)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_4
    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public c(Lmna;)V
    .locals 0

    iput-object p1, p0, Lnmb;->f:Lmna;

    return-void
.end method

.method public d(Lgk3;)V
    .locals 1

    iput-object p1, p0, Lnmb;->i:Lgk3;

    if-eqz p1, :cond_0

    sget-object v0, Lbk3;->i:Ll1;

    invoke-virtual {p1, v0}, Lgk3;->n(Ll1;)Lbk3;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbk3;->r()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnmb;->j:Z

    :cond_0
    return-void
.end method

.method public e(Lcqc;)V
    .locals 0

    iput-object p1, p0, Lnmb;->d:Lcqc;

    return-void
.end method

.method public f(Lg1;)V
    .locals 0

    iput-object p1, p0, Lnmb;->b:Lg1;

    return-void
.end method

.method public g(Loa;)V
    .locals 0

    iput-object p1, p0, Lnmb;->c:Loa;

    return-void
.end method

.method public h(Lmna;)V
    .locals 0

    iput-object p1, p0, Lnmb;->e:Lmna;

    return-void
.end method

.method public i(Lcqc;)V
    .locals 0

    iput-object p1, p0, Lnmb;->g:Lcqc;

    return-void
.end method

.method public j(Ls1a;)V
    .locals 0

    iput-object p1, p0, Lnmb;->h:Ls1a;

    return-void
.end method
