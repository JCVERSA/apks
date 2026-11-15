.class public Lo55;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:Lcd2;

.field public c:Z

.field public d:Z

.field public e:Lmo8;

.field public f:Z

.field public g:Z

.field public h:Ls1;


# direct methods
.method public constructor <init>(Ls1;)V
    .locals 5

    invoke-direct {p0}, Lj1;-><init>()V

    iput-object p1, p0, Lo55;->h:Ls1;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ls1;->size()I

    move-result v2

    if-eq v1, v2, :cond_6

    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object v2

    invoke-static {v2}, Ly1;->H(Ljava/lang/Object;)Ly1;

    move-result-object v2

    invoke-virtual {v2}, Ly1;->J()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    invoke-static {v2, v0}, Lu0;->x(Ly1;Z)Lu0;

    move-result-object v2

    invoke-virtual {v2}, Lu0;->A()Z

    move-result v2

    iput-boolean v2, p0, Lo55;->g:Z

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown tag in IssuingDistributionPoint"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {v2, v0}, Lu0;->x(Ly1;Z)Lu0;

    move-result-object v2

    invoke-virtual {v2}, Lu0;->A()Z

    move-result v2

    iput-boolean v2, p0, Lo55;->f:Z

    goto :goto_1

    :cond_2
    new-instance v3, Lmo8;

    invoke-static {v2, v0}, Ls0;->y(Ly1;Z)Ls0;

    move-result-object v2

    invoke-direct {v3, v2}, Lmo8;-><init>(Ls0;)V

    iput-object v3, p0, Lo55;->e:Lmo8;

    goto :goto_1

    :cond_3
    invoke-static {v2, v0}, Lu0;->x(Ly1;Z)Lu0;

    move-result-object v2

    invoke-virtual {v2}, Lu0;->A()Z

    move-result v2

    iput-boolean v2, p0, Lo55;->d:Z

    goto :goto_1

    :cond_4
    invoke-static {v2, v0}, Lu0;->x(Ly1;Z)Lu0;

    move-result-object v2

    invoke-virtual {v2}, Lu0;->A()Z

    move-result v2

    iput-boolean v2, p0, Lo55;->c:Z

    goto :goto_1

    :cond_5
    invoke-static {v2, v4}, Lcd2;->n(Ly1;Z)Lcd2;

    move-result-object v2

    iput-object v2, p0, Lo55;->b:Lcd2;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private m(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p0, "    "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static o(Ljava/lang/Object;)Lo55;
    .locals 1

    instance-of v0, p0, Lo55;

    if-eqz v0, :cond_0

    check-cast p0, Lo55;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lo55;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lo55;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 0

    iget-object p0, p0, Lo55;->h:Ls1;

    return-object p0
.end method

.method public final n(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    return-object p0
.end method

.method public p()Z
    .locals 0

    iget-boolean p0, p0, Lo55;->f:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lu0a;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "IssuingDistributionPoint: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lo55;->b:Lcd2;

    if-eqz v2, :cond_0

    const-string v3, "distributionPoint"

    invoke-virtual {v2}, Lcd2;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v3, v2}, Lo55;->m(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v2, p0, Lo55;->c:Z

    if-eqz v2, :cond_1

    const-string v3, "onlyContainsUserCerts"

    invoke-virtual {p0, v2}, Lo55;->n(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v3, v2}, Lo55;->m(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v2, p0, Lo55;->d:Z

    if-eqz v2, :cond_2

    const-string v3, "onlyContainsCACerts"

    invoke-virtual {p0, v2}, Lo55;->n(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v3, v2}, Lo55;->m(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lo55;->e:Lmo8;

    if-eqz v2, :cond_3

    const-string v3, "onlySomeReasons"

    invoke-virtual {v2}, Ls0;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v3, v2}, Lo55;->m(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-boolean v2, p0, Lo55;->g:Z

    if-eqz v2, :cond_4

    const-string v3, "onlyContainsAttributeCerts"

    invoke-virtual {p0, v2}, Lo55;->n(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v3, v2}, Lo55;->m(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-boolean v2, p0, Lo55;->f:Z

    if-eqz v2, :cond_5

    const-string v3, "indirectCRL"

    invoke-virtual {p0, v2}, Lo55;->n(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v3, v2}, Lo55;->m(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
