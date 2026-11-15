.class public Lmca;
.super Lj1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmca$b;,
        Lmca$c;,
        Lmca$d;
    }
.end annotation


# instance fields
.field public b:Lg1;

.field public c:Loa;

.field public d:Lcqc;

.field public e:Lmna;

.field public f:Lmna;

.field public g:Ls1;

.field public h:Lgk3;


# direct methods
.method public constructor <init>(Ls1;)V
    .locals 4

    invoke-direct {p0}, Lj1;-><init>()V

    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v1

    instance-of v1, v1, Lg1;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v0

    iput-object v0, p0, Lmca;->b:Lg1;

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lmca;->b:Lg1;

    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v3

    invoke-static {v3}, Loa;->o(Ljava/lang/Object;)Loa;

    move-result-object v3

    iput-object v3, p0, Lmca;->c:Loa;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object v1

    invoke-static {v1}, Lcqc;->o(Ljava/lang/Object;)Lcqc;

    move-result-object v1

    iput-object v1, p0, Lmca;->d:Lcqc;

    add-int/lit8 v1, v0, 0x3

    invoke-virtual {p1, v3}, Ls1;->A(I)Lx0;

    move-result-object v3

    invoke-static {v3}, Lmna;->n(Ljava/lang/Object;)Lmna;

    move-result-object v3

    iput-object v3, p0, Lmca;->e:Lmna;

    invoke-virtual {p1}, Ls1;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object v3

    instance-of v3, v3, La2;

    if-nez v3, :cond_1

    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object v3

    instance-of v3, v3, Lc1;

    if-nez v3, :cond_1

    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object v3

    instance-of v3, v3, Lmna;

    if-eqz v3, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object v1

    invoke-static {v1}, Lmna;->n(Ljava/lang/Object;)Lmna;

    move-result-object v1

    iput-object v1, p0, Lmca;->f:Lmna;

    move v1, v0

    :cond_2
    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object v0

    instance-of v0, v0, Ly1;

    if-nez v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object v1

    invoke-static {v1}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object v1

    iput-object v1, p0, Lmca;->g:Ls1;

    move v1, v0

    :cond_3
    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object v0

    instance-of v0, v0, Ly1;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object p1

    check-cast p1, Ly1;

    invoke-static {p1, v2}, Ls1;->y(Ly1;Z)Ls1;

    move-result-object p1

    invoke-static {p1}, Lgk3;->t(Ljava/lang/Object;)Lgk3;

    move-result-object p1

    iput-object p1, p0, Lmca;->h:Lgk3;

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

.method public static n(Ljava/lang/Object;)Lmca;
    .locals 1

    instance-of v0, p0, Lmca;

    if-eqz v0, :cond_0

    check-cast p0, Lmca;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lmca;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lmca;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 3

    new-instance v0, Ly0;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    iget-object v1, p0, Lmca;->b:Lg1;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_0
    iget-object v1, p0, Lmca;->c:Loa;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lmca;->d:Lcqc;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lmca;->e:Lmna;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lmca;->f:Lmna;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_1
    iget-object v1, p0, Lmca;->g:Ls1;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_2
    iget-object p0, p0, Lmca;->h:Lgk3;

    if-eqz p0, :cond_3

    new-instance v1, Ldq1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Ldq1;-><init>(ILx0;)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_3
    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public m()Lgk3;
    .locals 0

    iget-object p0, p0, Lmca;->h:Lgk3;

    return-object p0
.end method

.method public o()Lcqc;
    .locals 0

    iget-object p0, p0, Lmca;->d:Lcqc;

    return-object p0
.end method

.method public p()Lmna;
    .locals 0

    iget-object p0, p0, Lmca;->f:Lmna;

    return-object p0
.end method

.method public q()Ljava/util/Enumeration;
    .locals 1

    iget-object p0, p0, Lmca;->g:Ls1;

    if-nez p0, :cond_0

    new-instance p0, Lmca$c;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmca$c;-><init>(Lmca$a;)V

    return-object p0

    :cond_0
    new-instance v0, Lmca$d;

    invoke-virtual {p0}, Ls1;->B()Ljava/util/Enumeration;

    move-result-object p0

    invoke-direct {v0, p0}, Lmca$d;-><init>(Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public r()[Lmca$b;
    .locals 4

    iget-object v0, p0, Lmca;->g:Ls1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Lmca$b;

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ls1;->size()I

    move-result v0

    new-array v2, v0, [Lmca$b;

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lmca;->g:Ls1;

    invoke-virtual {v3, v1}, Ls1;->A(I)Lx0;

    move-result-object v3

    invoke-static {v3}, Lmca$b;->n(Ljava/lang/Object;)Lmca$b;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public s()Loa;
    .locals 0

    iget-object p0, p0, Lmca;->c:Loa;

    return-object p0
.end method

.method public t()Lmna;
    .locals 0

    iget-object p0, p0, Lmca;->e:Lmna;

    return-object p0
.end method
