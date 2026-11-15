.class public Lgd0;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:Lu0;

.field public c:Lg1;


# direct methods
.method public constructor <init>(Ls1;)V
    .locals 3

    invoke-direct {p0}, Lj1;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lu0;->z(Z)Lu0;

    move-result-object v1

    iput-object v1, p0, Lgd0;->b:Lu0;

    const/4 v1, 0x0

    iput-object v1, p0, Lgd0;->c:Lg1;

    invoke-virtual {p1}, Ls1;->size()I

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, p0, Lgd0;->b:Lu0;

    iput-object v1, p0, Lgd0;->c:Lg1;

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v2

    instance-of v2, v2, Lu0;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Lu0;->y(Ljava/lang/Object;)Lu0;

    move-result-object v0

    iput-object v0, p0, Lgd0;->b:Lu0;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lgd0;->b:Lu0;

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    invoke-static {v0}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v0

    iput-object v0, p0, Lgd0;->c:Lg1;

    :goto_0
    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lgd0;->b:Lu0;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object p1

    invoke-static {p1}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object p1

    iput-object p1, p0, Lgd0;->c:Lg1;

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong sequence in constructor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public static m(Ljava/lang/Object;)Lgd0;
    .locals 1

    instance-of v0, p0, Lgd0;

    if-eqz v0, :cond_0

    check-cast p0, Lgd0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lgd0;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lgd0;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 2

    new-instance v0, Ly0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    iget-object v1, p0, Lgd0;->b:Lu0;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_0
    iget-object p0, p0, Lgd0;->c:Lg1;

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Ly0;->a(Lx0;)V

    :cond_1
    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public n()Lg1;
    .locals 0

    iget-object p0, p0, Lgd0;->c:Lg1;

    return-object p0
.end method

.method public o()Z
    .locals 0

    iget-object p0, p0, Lgd0;->b:Lu0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lu0;->A()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lgd0;->c:Lg1;

    const-string v1, "BasicConstraints: isCa("

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgd0;->o()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgd0;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "), pathLenConstraint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lgd0;->c:Lg1;

    invoke-virtual {p0}, Lg1;->A()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
