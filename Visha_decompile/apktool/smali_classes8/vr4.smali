.class public Lvr4;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:Ln55;

.field public c:Lld4;

.field public d:Lxb7;

.field public e:I


# direct methods
.method public constructor <init>(Ls1;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lj1;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lvr4;->e:I

    invoke-virtual {p1}, Ls1;->size()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Ls1;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    invoke-virtual {p1, v2}, Ls1;->A(I)Lx0;

    move-result-object v3

    invoke-static {v3}, Ly1;->H(Ljava/lang/Object;)Ly1;

    move-result-object v3

    invoke-virtual {v3}, Ly1;->J()I

    move-result v4

    if-eqz v4, :cond_2

    if-eq v4, v0, :cond_1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-static {v3, v1}, Lxb7;->m(Ly1;Z)Lxb7;

    move-result-object v3

    iput-object v3, p0, Lvr4;->d:Lxb7;

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown tag in Holder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {v3, v1}, Lld4;->n(Ly1;Z)Lld4;

    move-result-object v3

    iput-object v3, p0, Lvr4;->c:Lld4;

    goto :goto_1

    :cond_2
    invoke-static {v3, v1}, Ln55;->m(Ly1;Z)Ln55;

    move-result-object v3

    iput-object v3, p0, Lvr4;->b:Ln55;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iput v0, p0, Lvr4;->e:I

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

.method public constructor <init>(Ly1;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lvr4;->e:I

    invoke-virtual {p1}, Ly1;->J()I

    move-result v1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    invoke-static {p1, v0}, Lld4;->n(Ly1;Z)Lld4;

    move-result-object p1

    iput-object p1, p0, Lvr4;->c:Lld4;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown tag in Holder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1, v0}, Ln55;->m(Ly1;Z)Ln55;

    move-result-object p1

    iput-object p1, p0, Lvr4;->b:Ln55;

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lvr4;->e:I

    return-void
.end method

.method public static m(Ljava/lang/Object;)Lvr4;
    .locals 1

    instance-of v0, p0, Lvr4;

    if-eqz v0, :cond_0

    check-cast p0, Lvr4;

    return-object p0

    :cond_0
    instance-of v0, p0, Ly1;

    if-eqz v0, :cond_1

    new-instance v0, Lvr4;

    invoke-static {p0}, Ly1;->H(Ljava/lang/Object;)Ly1;

    move-result-object p0

    invoke-direct {v0, p0}, Lvr4;-><init>(Ly1;)V

    return-object v0

    :cond_1
    if-eqz p0, :cond_2

    new-instance v0, Lvr4;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lvr4;-><init>(Ls1;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 5

    iget v0, p0, Lvr4;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    new-instance v0, Ly0;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Ly0;-><init>(I)V

    iget-object v3, p0, Lvr4;->b:Ln55;

    if-eqz v3, :cond_0

    new-instance v4, Ldq1;

    invoke-direct {v4, v1, v1, v3}, Ldq1;-><init>(ZILx0;)V

    invoke-virtual {v0, v4}, Ly0;->a(Lx0;)V

    :cond_0
    iget-object v3, p0, Lvr4;->c:Lld4;

    if-eqz v3, :cond_1

    new-instance v4, Ldq1;

    invoke-direct {v4, v1, v2, v3}, Ldq1;-><init>(ZILx0;)V

    invoke-virtual {v0, v4}, Ly0;->a(Lx0;)V

    :cond_1
    iget-object p0, p0, Lvr4;->d:Lxb7;

    if-eqz p0, :cond_2

    new-instance v2, Ldq1;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3, p0}, Ldq1;-><init>(ZILx0;)V

    invoke-virtual {v0, v2}, Ly0;->a(Lx0;)V

    :cond_2
    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0

    :cond_3
    iget-object v0, p0, Lvr4;->c:Lld4;

    if-eqz v0, :cond_4

    new-instance p0, Ldq1;

    invoke-direct {p0, v2, v2, v0}, Ldq1;-><init>(ZILx0;)V

    return-object p0

    :cond_4
    new-instance v0, Ldq1;

    iget-object p0, p0, Lvr4;->b:Ln55;

    invoke-direct {v0, v2, v1, p0}, Ldq1;-><init>(ZILx0;)V

    return-object v0
.end method
