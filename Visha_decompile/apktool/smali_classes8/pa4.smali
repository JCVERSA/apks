.class public Lpa4;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:Ll1;

.field public c:Ll1;

.field public d:Ll1;


# direct methods
.method public constructor <init>(Ll1;Ll1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj1;-><init>()V

    iput-object p1, p0, Lpa4;->b:Ll1;

    iput-object p2, p0, Lpa4;->c:Ll1;

    const/4 p1, 0x0

    iput-object p1, p0, Lpa4;->d:Ll1;

    return-void
.end method

.method public constructor <init>(Ll1;Ll1;Ll1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    iput-object p1, p0, Lpa4;->b:Ll1;

    iput-object p2, p0, Lpa4;->c:Ll1;

    iput-object p3, p0, Lpa4;->d:Ll1;

    return-void
.end method

.method public constructor <init>(Ls1;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Lj1;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Ll1;->D(Ljava/lang/Object;)Ll1;

    move-result-object v0

    iput-object v0, p0, Lpa4;->b:Ll1;

    sget-object v1, Lwv8;->o:Ll1;

    invoke-virtual {v0, v1}, Lp1;->s(Lp1;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    if-le v0, v1, :cond_3

    :goto_0
    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Ll1;->D(Ljava/lang/Object;)Ll1;

    move-result-object v0

    iput-object v0, p0, Lpa4;->c:Ll1;

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lpa4;->b:Ll1;

    sget-object v2, Lwv8;->p:Ll1;

    invoke-virtual {v0, v2}, Lp1;->s(Lp1;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lpa4;->b:Ll1;

    sget-object v2, Lwv8;->q:Ll1;

    invoke-virtual {v0, v2}, Lp1;->s(Lp1;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lpa4;->b:Ll1;

    sget-object v2, Lwv8;->r:Ll1;

    invoke-virtual {v0, v2}, Lp1;->s(Lp1;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    if-le v0, v1, :cond_3

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    if-gt v0, v1, :cond_5

    :cond_3
    :goto_2
    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object p1

    check-cast p1, Ll1;

    iput-object p1, p0, Lpa4;->d:Ll1;

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "digestParamSet expected to be absent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static o(Ljava/lang/Object;)Lpa4;
    .locals 1

    instance-of v0, p0, Lpa4;

    if-eqz v0, :cond_0

    check-cast p0, Lpa4;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lpa4;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lpa4;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 2

    new-instance v0, Ly0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    iget-object v1, p0, Lpa4;->b:Ll1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lpa4;->c:Ll1;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_0
    iget-object p0, p0, Lpa4;->d:Ll1;

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Ly0;->a(Lx0;)V

    :cond_1
    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public m()Ll1;
    .locals 0

    iget-object p0, p0, Lpa4;->c:Ll1;

    return-object p0
.end method

.method public n()Ll1;
    .locals 0

    iget-object p0, p0, Lpa4;->d:Ll1;

    return-object p0
.end method

.method public p()Ll1;
    .locals 0

    iget-object p0, p0, Lpa4;->b:Ll1;

    return-object p0
.end method
