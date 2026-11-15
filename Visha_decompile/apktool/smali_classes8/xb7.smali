.class public Lxb7;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:Lz0;

.field public c:Ll1;

.field public d:Loa;

.field public e:Ls0;


# direct methods
.method public constructor <init>(Ls1;)V
    .locals 3

    invoke-direct {p0}, Lj1;-><init>()V

    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v2

    invoke-static {v2}, Lz0;->x(Ljava/lang/Object;)Lz0;

    move-result-object v2

    iput-object v2, p0, Lxb7;->b:Lz0;

    invoke-virtual {p1}, Ls1;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v1

    invoke-static {v1}, Ll1;->D(Ljava/lang/Object;)Ll1;

    move-result-object v1

    iput-object v1, p0, Lxb7;->c:Ll1;

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object v1

    invoke-static {v1}, Loa;->o(Ljava/lang/Object;)Loa;

    move-result-object v1

    iput-object v1, p0, Lxb7;->d:Loa;

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object p1

    invoke-static {p1}, Ls0;->z(Ljava/lang/Object;)Ls0;

    move-result-object p1

    iput-object p1, p0, Lxb7;->e:Ls0;

    return-void

    :cond_1
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

.method public static m(Ly1;Z)Lxb7;
    .locals 0

    invoke-static {p0, p1}, Ls1;->y(Ly1;Z)Ls1;

    move-result-object p0

    invoke-static {p0}, Lxb7;->n(Ljava/lang/Object;)Lxb7;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/Object;)Lxb7;
    .locals 1

    instance-of v0, p0, Lxb7;

    if-eqz v0, :cond_0

    check-cast p0, Lxb7;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lxb7;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lxb7;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 2

    new-instance v0, Ly0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    iget-object v1, p0, Lxb7;->b:Lz0;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Lxb7;->c:Ll1;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_0
    iget-object v1, p0, Lxb7;->d:Loa;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object p0, p0, Lxb7;->e:Ls0;

    invoke-virtual {v0, p0}, Ly0;->a(Lx0;)V

    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method
