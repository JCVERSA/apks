.class public Lil;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:Lg1;

.field public c:Lvr4;

.field public d:Lal;

.field public e:Loa;

.field public f:Lg1;

.field public g:Lbl;

.field public h:Ls1;

.field public i:Ls0;

.field public j:Lgk3;


# direct methods
.method public constructor <init>(Ls1;)V
    .locals 5

    invoke-direct {p0}, Lj1;-><init>()V

    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    const/16 v2, 0x9

    if-gt v0, v2, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v2

    instance-of v2, v2, Lg1;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v0

    iput-object v0, p0, Lil;->b:Lg1;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lg1;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Lg1;-><init>(J)V

    iput-object v2, p0, Lil;->b:Lg1;

    :goto_0
    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v2

    invoke-static {v2}, Lvr4;->m(Ljava/lang/Object;)Lvr4;

    move-result-object v2

    iput-object v2, p0, Lil;->c:Lvr4;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ls1;->A(I)Lx0;

    move-result-object v2

    invoke-static {v2}, Lal;->m(Ljava/lang/Object;)Lal;

    move-result-object v2

    iput-object v2, p0, Lil;->d:Lal;

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v2}, Ls1;->A(I)Lx0;

    move-result-object v2

    invoke-static {v2}, Loa;->o(Ljava/lang/Object;)Loa;

    move-result-object v2

    iput-object v2, p0, Lil;->e:Loa;

    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p1, v2}, Ls1;->A(I)Lx0;

    move-result-object v2

    invoke-static {v2}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v2

    iput-object v2, p0, Lil;->f:Lg1;

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {p1, v2}, Ls1;->A(I)Lx0;

    move-result-object v2

    invoke-static {v2}, Lbl;->m(Ljava/lang/Object;)Lbl;

    move-result-object v2

    iput-object v2, p0, Lil;->g:Lbl;

    add-int/lit8 v2, v0, 0x5

    invoke-virtual {p1, v2}, Ls1;->A(I)Lx0;

    move-result-object v2

    invoke-static {v2}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object v2

    iput-object v2, p0, Lil;->h:Ls1;

    add-int/2addr v0, v1

    :goto_1
    invoke-virtual {p1}, Ls1;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v1

    instance-of v2, v1, Ls0;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v1

    invoke-static {v1}, Ls0;->z(Ljava/lang/Object;)Ls0;

    move-result-object v1

    iput-object v1, p0, Lil;->i:Ls0;

    goto :goto_2

    :cond_1
    instance-of v2, v1, Ls1;

    if-nez v2, :cond_2

    instance-of v1, v1, Lgk3;

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v1

    invoke-static {v1}, Lgk3;->t(Ljava/lang/Object;)Lgk3;

    move-result-object v1

    iput-object v1, p0, Lil;->j:Lgk3;

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad sequence size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ls1;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static q(Ljava/lang/Object;)Lil;
    .locals 1

    instance-of v0, p0, Lil;

    if-eqz v0, :cond_0

    check-cast p0, Lil;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lil;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lil;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 3

    new-instance v0, Ly0;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    iget-object v1, p0, Lil;->b:Lg1;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lg1;->B(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lil;->b:Lg1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_0
    iget-object v1, p0, Lil;->c:Lvr4;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lil;->d:Lal;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lil;->e:Loa;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lil;->f:Lg1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lil;->g:Lbl;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lil;->h:Ls1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lil;->i:Ls0;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_1
    iget-object p0, p0, Lil;->j:Lgk3;

    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, Ly0;->a(Lx0;)V

    :cond_2
    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public m()Lbl;
    .locals 0

    iget-object p0, p0, Lil;->g:Lbl;

    return-object p0
.end method

.method public n()Ls1;
    .locals 0

    iget-object p0, p0, Lil;->h:Ls1;

    return-object p0
.end method

.method public o()Lgk3;
    .locals 0

    iget-object p0, p0, Lil;->j:Lgk3;

    return-object p0
.end method

.method public p()Lvr4;
    .locals 0

    iget-object p0, p0, Lil;->c:Lvr4;

    return-object p0
.end method

.method public r()Lal;
    .locals 0

    iget-object p0, p0, Lil;->d:Lal;

    return-object p0
.end method

.method public s()Ls0;
    .locals 0

    iget-object p0, p0, Lil;->i:Ls0;

    return-object p0
.end method

.method public t()Lg1;
    .locals 0

    iget-object p0, p0, Lil;->f:Lg1;

    return-object p0
.end method

.method public u()Loa;
    .locals 0

    iget-object p0, p0, Lil;->e:Loa;

    return-object p0
.end method

.method public v()Lg1;
    .locals 0

    iget-object p0, p0, Lil;->b:Lg1;

    return-object p0
.end method
