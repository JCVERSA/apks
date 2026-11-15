.class public Ln55;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:Lld4;

.field public c:Lg1;

.field public d:Ls0;


# direct methods
.method public constructor <init>(Ls1;)V
    .locals 3

    invoke-direct {p0}, Lj1;-><init>()V

    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
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

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Lld4;->o(Ljava/lang/Object;)Lld4;

    move-result-object v0

    iput-object v0, p0, Ln55;->b:Lld4;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v0

    iput-object v0, p0, Ln55;->c:Lg1;

    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p1, v2}, Ls1;->A(I)Lx0;

    move-result-object p1

    invoke-static {p1}, Ls0;->z(Ljava/lang/Object;)Ls0;

    move-result-object p1

    iput-object p1, p0, Ln55;->d:Ls0;

    :cond_2
    return-void
.end method

.method public static m(Ly1;Z)Ln55;
    .locals 0

    invoke-static {p0, p1}, Ls1;->y(Ly1;Z)Ls1;

    move-result-object p0

    invoke-static {p0}, Ln55;->n(Ljava/lang/Object;)Ln55;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/Object;)Ln55;
    .locals 1

    instance-of v0, p0, Ln55;

    if-eqz v0, :cond_0

    check-cast p0, Ln55;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Ln55;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Ln55;-><init>(Ls1;)V

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

    iget-object v1, p0, Ln55;->b:Lld4;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Ln55;->c:Lg1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object p0, p0, Ln55;->d:Ls0;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ly0;->a(Lx0;)V

    :cond_0
    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method
