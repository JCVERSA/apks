.class public Lmmb;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:Lld4;

.field public c:Ln55;

.field public d:Lxb7;


# direct methods
.method public constructor <init>(Ls1;)V
    .locals 5

    invoke-direct {p0}, Lj1;-><init>()V

    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v1

    instance-of v1, v1, Ly1;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v1

    invoke-static {v1}, Lld4;->o(Ljava/lang/Object;)Lld4;

    move-result-object v1

    iput-object v1, p0, Lmmb;->b:Lld4;

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ls1;->size()I

    move-result v3

    if-eq v1, v3, :cond_3

    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object v3

    invoke-static {v3}, Ly1;->H(Ljava/lang/Object;)Ly1;

    move-result-object v3

    invoke-virtual {v3}, Ly1;->J()I

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3, v0}, Ln55;->m(Ly1;Z)Ln55;

    move-result-object v3

    iput-object v3, p0, Lmmb;->c:Ln55;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ly1;->J()I

    move-result v4

    if-ne v4, v2, :cond_2

    invoke-static {v3, v0}, Lxb7;->m(Ly1;Z)Lxb7;

    move-result-object v3

    iput-object v3, p0, Lmmb;->d:Lxb7;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad tag number: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ly1;->J()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void

    :cond_4
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

.method public static m(Ly1;Z)Lmmb;
    .locals 0

    invoke-static {p0, p1}, Ls1;->y(Ly1;Z)Ls1;

    move-result-object p0

    invoke-static {p0}, Lmmb;->n(Ljava/lang/Object;)Lmmb;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/Object;)Lmmb;
    .locals 1

    instance-of v0, p0, Lmmb;

    if-eqz v0, :cond_0

    check-cast p0, Lmmb;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lmmb;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lmmb;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 4

    new-instance v0, Ly0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    iget-object v1, p0, Lmmb;->b:Lld4;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_0
    iget-object v1, p0, Lmmb;->c:Ln55;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v3, Ldq1;

    invoke-direct {v3, v2, v2, v1}, Ldq1;-><init>(ZILx0;)V

    invoke-virtual {v0, v3}, Ly0;->a(Lx0;)V

    :cond_1
    iget-object p0, p0, Lmmb;->d:Lxb7;

    if-eqz p0, :cond_2

    new-instance v1, Ldq1;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p0}, Ldq1;-><init>(ZILx0;)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_2
    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method
