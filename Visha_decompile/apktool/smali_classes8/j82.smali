.class public Lj82;
.super Lj1;
.source "SourceFile"


# instance fields
.field public final b:Lg1;

.field public c:Loa;

.field public d:Lcqc;

.field public e:Ls1;

.field public f:Lcqc;

.field public g:Ls1a;

.field public h:Lgk3;

.field public final i:Ls0;


# direct methods
.method public constructor <init>(Ls1;)V
    .locals 7

    invoke-direct {p0}, Lj1;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v1

    invoke-static {v1}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v1

    iput-object v1, p0, Lj82;->b:Lg1;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object v2

    move v3, v1

    :goto_0
    instance-of v4, v2, Ly1;

    if-eqz v4, :cond_4

    invoke-static {v2}, Ly1;->H(Ljava/lang/Object;)Ly1;

    move-result-object v2

    invoke-virtual {v2}, Ly1;->J()I

    move-result v4

    if-eqz v4, :cond_3

    if-eq v4, v1, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v2, v1}, Lcqc;->m(Ly1;Z)Lcqc;

    move-result-object v2

    iput-object v2, p0, Lj82;->f:Lcqc;

    goto :goto_1

    :cond_1
    invoke-static {v2, v0}, Ls1;->y(Ly1;Z)Ls1;

    move-result-object v2

    iput-object v2, p0, Lj82;->e:Ls1;

    goto :goto_1

    :cond_2
    invoke-static {v2, v1}, Lcqc;->m(Ly1;Z)Lcqc;

    move-result-object v2

    iput-object v2, p0, Lj82;->d:Lcqc;

    goto :goto_1

    :cond_3
    invoke-static {v2, v0}, Loa;->n(Ly1;Z)Loa;

    move-result-object v2

    iput-object v2, p0, Lj82;->c:Loa;

    :goto_1
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1, v3}, Ls1;->A(I)Lx0;

    move-result-object v3

    move-object v6, v3

    move v3, v2

    move-object v2, v6

    goto :goto_0

    :cond_4
    invoke-static {v2}, Ls1a;->n(Ljava/lang/Object;)Ls1a;

    move-result-object v1

    iput-object v1, p0, Lj82;->g:Ls1a;

    invoke-virtual {p1, v3}, Ls1;->A(I)Lx0;

    move-result-object v1

    :goto_2
    instance-of v2, v1, Ly1;

    if-eqz v2, :cond_6

    invoke-static {v1}, Ly1;->H(Ljava/lang/Object;)Ly1;

    move-result-object v1

    invoke-virtual {v1}, Ly1;->J()I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v1, v0}, Lgk3;->s(Ly1;Z)Lgk3;

    move-result-object v1

    iput-object v1, p0, Lj82;->h:Lgk3;

    :goto_3
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v3}, Ls1;->A(I)Lx0;

    move-result-object v2

    move v3, v1

    move-object v1, v2

    goto :goto_2

    :cond_6
    invoke-static {v1}, Ls0;->z(Ljava/lang/Object;)Ls0;

    move-result-object p1

    iput-object p1, p0, Lj82;->i:Ls0;

    return-void
.end method

.method public static n(Ljava/lang/Object;)Lj82;
    .locals 1

    instance-of v0, p0, Lj82;

    if-eqz v0, :cond_0

    check-cast p0, Lj82;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lj82;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lj82;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 5

    new-instance v0, Ly0;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    iget-object v1, p0, Lj82;->b:Lg1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lj82;->c:Loa;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v2, v1}, Lj82;->m(Ly0;IZLj1;)V

    iget-object v1, p0, Lj82;->d:Lcqc;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3, v3, v1}, Lj82;->m(Ly0;IZLj1;)V

    const/4 v1, 0x2

    iget-object v4, p0, Lj82;->e:Ls1;

    invoke-virtual {p0, v0, v1, v2, v4}, Lj82;->m(Ly0;IZLj1;)V

    const/4 v1, 0x3

    iget-object v4, p0, Lj82;->f:Lcqc;

    invoke-virtual {p0, v0, v1, v3, v4}, Lj82;->m(Ly0;IZLj1;)V

    iget-object v1, p0, Lj82;->g:Ls1a;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    const/4 v1, 0x4

    iget-object v3, p0, Lj82;->h:Lgk3;

    invoke-virtual {p0, v0, v1, v2, v3}, Lj82;->m(Ly0;IZLj1;)V

    iget-object p0, p0, Lj82;->i:Ls0;

    invoke-virtual {v0, p0}, Ly0;->a(Lx0;)V

    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public final m(Ly0;IZLj1;)V
    .locals 0

    if-eqz p4, :cond_0

    new-instance p0, Ldq1;

    invoke-direct {p0, p3, p2, p4}, Ldq1;-><init>(ZILx0;)V

    invoke-virtual {p1, p0}, Ly0;->a(Lx0;)V

    :cond_0
    return-void
.end method

.method public o(Lnca;Lgk3;)Lj82;
    .locals 11

    iget-object v0, p1, Lnca;->e:Loa;

    iget-object v1, p1, Lnca;->f:Lcqc;

    new-instance v2, Laq1;

    iget-object v3, p1, Lnca;->g:Lmna;

    iget-object v4, p1, Lnca;->h:Lmna;

    const/4 v5, 0x2

    new-array v6, v5, [Lx0;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v4, v6, v3

    invoke-direct {v2, v6}, Laq1;-><init>([Lx0;)V

    iget-object p1, p1, Lnca;->i:Lcqc;

    invoke-virtual {p0}, Lj82;->j()Lp1;

    move-result-object p0

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    new-instance v4, Ly0;

    invoke-direct {v4}, Ly0;-><init>()V

    invoke-virtual {p0}, Ls1;->B()Ljava/util/Enumeration;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lx0;

    :goto_0
    invoke-virtual {v4, v6}, Ly0;->a(Lx0;)V

    :cond_0
    :goto_1
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lx0;

    instance-of v8, v6, Ly1;

    if-eqz v8, :cond_5

    invoke-static {v6}, Ly1;->H(Ljava/lang/Object;)Ly1;

    move-result-object v8

    invoke-virtual {v8}, Ly1;->J()I

    move-result v9

    if-eqz v9, :cond_4

    if-eq v9, v3, :cond_3

    if-eq v9, v5, :cond_2

    const/4 v10, 0x3

    if-eq v9, v10, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v8, v3}, Lcqc;->m(Ly1;Z)Lcqc;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcqc;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    :goto_2
    goto :goto_0

    :cond_2
    invoke-static {v8, v7}, Ls1;->y(Ly1;Z)Ls1;

    move-result-object v8

    invoke-virtual {v8, v2}, Lp1;->s(Lp1;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_2

    :cond_3
    invoke-static {v8, v3}, Lcqc;->m(Ly1;Z)Lcqc;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcqc;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_2

    :cond_4
    invoke-static {v8, v7}, Loa;->n(Ly1;Z)Loa;

    move-result-object v8

    invoke-virtual {v8, v0}, Lj1;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v6}, Ly0;->a(Lx0;)V

    :cond_6
    :goto_3
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx0;

    instance-of v0, p1, Ly1;

    if-eqz v0, :cond_a

    invoke-static {p1}, Ly1;->H(Ljava/lang/Object;)Ly1;

    move-result-object p1

    invoke-virtual {p1}, Ly1;->J()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {p1, v7}, Lgk3;->s(Ly1;Z)Lgk3;

    move-result-object p1

    new-instance v0, Lik3;

    invoke-direct {v0}, Lik3;-><init>()V

    invoke-virtual {p1}, Lgk3;->v()Ljava/util/Enumeration;

    move-result-object v2

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll1;

    invoke-virtual {p1, v3}, Lgk3;->n(Ll1;)Lbk3;

    move-result-object v3

    invoke-virtual {v3}, Lbk3;->n()Ll1;

    move-result-object v5

    invoke-virtual {p2, v5}, Lgk3;->n(Ll1;)Lbk3;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v3, v5}, Lbk3;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v0, v3}, Lik3;->a(Lbk3;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Lik3;->e()Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Ldq1;

    invoke-virtual {v0}, Lik3;->b()Lgk3;

    move-result-object v0

    invoke-direct {p1, v7, v1, v0}, Ldq1;-><init>(ZILx0;)V

    invoke-virtual {v4, p1}, Ly0;->a(Lx0;)V

    goto :goto_3

    :cond_a
    invoke-virtual {v4, p1}, Ly0;->a(Lx0;)V

    new-instance p0, Lj82;

    new-instance p1, Laq1;

    invoke-direct {p1, v4}, Laq1;-><init>(Ly0;)V

    invoke-direct {p0, p1}, Lj82;-><init>(Ls1;)V

    return-object p0
.end method
