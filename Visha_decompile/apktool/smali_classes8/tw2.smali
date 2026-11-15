.class public Ltw2;
.super Lj1;
.source "SourceFile"


# instance fields
.field public final b:Lg1;

.field public final c:Lg1;

.field public final d:Lg1;

.field public final e:Lg1;

.field public final f:Lenb;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lenb;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    new-instance v0, Lg1;

    invoke-direct {v0, p1}, Lg1;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Ltw2;->b:Lg1;

    new-instance p1, Lg1;

    invoke-direct {p1, p2}, Lg1;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Ltw2;->c:Lg1;

    new-instance p1, Lg1;

    invoke-direct {p1, p3}, Lg1;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Ltw2;->d:Lg1;

    if-eqz p4, :cond_0

    new-instance p1, Lg1;

    invoke-direct {p1, p4}, Lg1;-><init>(Ljava/math/BigInteger;)V

    :goto_0
    iput-object p1, p0, Ltw2;->e:Lg1;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iput-object p5, p0, Ltw2;->f:Lenb;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'q\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'g\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'p\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ls1;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lj1;-><init>()V

    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    invoke-virtual {p1}, Ls1;->B()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v0

    iput-object v0, p0, Ltw2;->b:Lg1;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v0

    iput-object v0, p0, Ltw2;->c:Lg1;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v0

    iput-object v0, p0, Ltw2;->d:Lg1;

    invoke-static {p1}, Ltw2;->p(Ljava/util/Enumeration;)Lx0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lg1;

    if-eqz v2, :cond_0

    invoke-static {v0}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v0

    iput-object v0, p0, Ltw2;->e:Lg1;

    invoke-static {p1}, Ltw2;->p(Ljava/util/Enumeration;)Lx0;

    move-result-object v0

    goto :goto_0

    :cond_0
    iput-object v1, p0, Ltw2;->e:Lg1;

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lx0;->j()Lp1;

    move-result-object p1

    invoke-static {p1}, Lenb;->m(Ljava/lang/Object;)Lenb;

    move-result-object p1

    iput-object p1, p0, Ltw2;->f:Lenb;

    goto :goto_1

    :cond_1
    iput-object v1, p0, Ltw2;->f:Lenb;

    :goto_1
    return-void

    :cond_2
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

.method public static n(Ljava/lang/Object;)Ltw2;
    .locals 1

    instance-of v0, p0, Ltw2;

    if-eqz v0, :cond_0

    check-cast p0, Ltw2;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Ltw2;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Ltw2;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static p(Ljava/util/Enumeration;)Lx0;
    .locals 1

    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx0;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 2

    new-instance v0, Ly0;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    iget-object v1, p0, Ltw2;->b:Lg1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Ltw2;->c:Lg1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Ltw2;->d:Lg1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Ltw2;->e:Lg1;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_0
    iget-object p0, p0, Ltw2;->f:Lenb;

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Ly0;->a(Lx0;)V

    :cond_1
    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public m()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Ltw2;->c:Lg1;

    invoke-virtual {p0}, Lg1;->z()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public o()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Ltw2;->e:Lg1;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lg1;->z()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public q()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Ltw2;->b:Lg1;

    invoke-virtual {p0}, Lg1;->z()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Ltw2;->d:Lg1;

    invoke-virtual {p0}, Lg1;->z()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public s()Lenb;
    .locals 0

    iget-object p0, p0, Ltw2;->f:Lenb;

    return-object p0
.end method
