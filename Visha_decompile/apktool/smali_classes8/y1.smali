.class public abstract Ly1;
.super Lp1;
.source "SourceFile"

# interfaces
.implements Lx0;
.implements Lyy4;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Lx0;


# direct methods
.method public constructor <init>(IIILx0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp1;-><init>()V

    if-eqz p4, :cond_2

    if-eqz p2, :cond_1

    and-int/lit16 v0, p2, 0xc0

    if-ne v0, p2, :cond_1

    instance-of v0, p4, Lv0;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput p1, p0, Ly1;->b:I

    iput p2, p0, Ly1;->c:I

    iput p3, p0, Ly1;->d:I

    iput-object p4, p0, Ly1;->e:Lx0;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid tag class: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'obj\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(ZIILx0;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 2
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Ly1;-><init>(IIILx0;)V

    return-void
.end method

.method public constructor <init>(ZILx0;)V
    .locals 1

    const/16 v0, 0x80

    .line 3
    invoke-direct {p0, p1, v0, p2, p3}, Ly1;-><init>(ZIILx0;)V

    return-void
.end method

.method public static A(II[B)Lp1;
    .locals 2

    new-instance v0, Lcr1;

    new-instance v1, Lwp1;

    invoke-direct {v1, p2}, Lwp1;-><init>([B)V

    const/4 p2, 0x4

    invoke-direct {v0, p2, p0, p1, v1}, Lcr1;-><init>(IIILx0;)V

    return-object v0
.end method

.method public static G(Ly1;Z)Ly1;
    .locals 0

    invoke-static {p0, p1}, Ly1;->w(Ly1;Z)Ly1;

    move-result-object p0

    invoke-static {p0}, Lf2;->d(Ly1;)Ly1;

    move-result-object p0

    return-object p0
.end method

.method public static H(Ljava/lang/Object;)Ly1;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Ly1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lx0;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lx0;

    invoke-interface {v0}, Lx0;->j()Lp1;

    move-result-object v0

    instance-of v1, v0, Ly1;

    if-eqz v1, :cond_2

    check-cast v0, Ly1;

    return-object v0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lp1;->t([B)Lp1;

    move-result-object p0

    invoke-static {p0}, Ly1;->x(Lp1;)Ly1;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct tagged object from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    check-cast p0, Ly1;

    return-object p0
.end method

.method public static w(Ly1;Z)Ly1;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'taggedObject\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "this method not valid for implicitly tagged tagged objects"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static x(Lp1;)Ly1;
    .locals 3

    instance-of v0, p0, Ly1;

    if-eqz v0, :cond_0

    check-cast p0, Ly1;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static y(IILy0;)Lp1;
    .locals 2

    invoke-virtual {p2}, Ly0;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcr1;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ly0;->d(I)Lx0;

    move-result-object p2

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1, p2}, Lcr1;-><init>(IIILx0;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcr1;

    const/4 v1, 0x4

    invoke-static {p2}, Lvq1;->a(Ly0;)Lyq1;

    move-result-object p2

    invoke-direct {v0, v1, p0, p1, p2}, Lcr1;-><init>(IIILx0;)V

    :goto_0
    return-object v0
.end method

.method public static z(IILy0;)Lp1;
    .locals 2

    invoke-virtual {p2}, Ly0;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lp40;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ly0;->d(I)Lx0;

    move-result-object p2

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1, p2}, Lp40;-><init>(IIILx0;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lp40;

    const/4 v1, 0x4

    invoke-static {p2}, Li40;->a(Ly0;)Ll40;

    move-result-object p2

    invoke-direct {v0, v1, p0, p1, p2}, Lp40;-><init>(IIILx0;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public B()Lj1;
    .locals 1

    iget-object p0, p0, Ly1;->e:Lx0;

    instance-of v0, p0, Lj1;

    if-eqz v0, :cond_0

    check-cast p0, Lj1;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lx0;->j()Lp1;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public C(ZI)Lp1;
    .locals 1

    invoke-static {p2}, Le2;->a(I)Ld2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Ly1;->D(ZLd2;)Lp1;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unsupported UNIVERSAL tag number: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public D(ZLd2;)Lp1;
    .locals 2

    const-string v0, "object explicit - implicit expected."

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ly1;->N()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Ly1;->e:Lx0;

    invoke-interface {p0}, Lx0;->j()Lp1;

    move-result-object p0

    invoke-virtual {p2, p0}, Ld2;->a(Lp1;)Lp1;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p1, 0x1

    iget v1, p0, Ly1;->b:I

    if-eq p1, v1, :cond_5

    iget-object p1, p0, Ly1;->e:Lx0;

    invoke-interface {p1}, Lx0;->j()Lp1;

    move-result-object p1

    iget v0, p0, Ly1;->b:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 p0, 0x4

    if-eq v0, p0, :cond_2

    invoke-virtual {p2, p1}, Ld2;->a(Lp1;)Lp1;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of p0, p1, Ls1;

    if-eqz p0, :cond_3

    check-cast p1, Ls1;

    invoke-virtual {p2, p1}, Ld2;->c(Ls1;)Lp1;

    move-result-object p0

    return-object p0

    :cond_3
    check-cast p1, Lwp1;

    invoke-virtual {p2, p1}, Ld2;->d(Lwp1;)Lp1;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0, p1}, Ly1;->P(Lp1;)Ls1;

    move-result-object p0

    invoke-virtual {p2, p0}, Ld2;->c(Ls1;)Lp1;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public E()Lj1;
    .locals 1

    invoke-virtual {p0}, Ly1;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Ly1;->e:Lx0;

    instance-of v0, p0, Lj1;

    if-eqz v0, :cond_0

    check-cast p0, Lj1;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lx0;->j()Lp1;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "object implicit - explicit expected."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public F()Ly1;
    .locals 1

    invoke-virtual {p0}, Ly1;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ly1;->e:Lx0;

    invoke-interface {p0}, Lx0;->j()Lp1;

    move-result-object p0

    invoke-static {p0}, Ly1;->x(Lp1;)Ly1;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "object implicit - explicit expected."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public I()I
    .locals 0

    iget p0, p0, Ly1;->c:I

    return p0
.end method

.method public J()I
    .locals 0

    iget p0, p0, Ly1;->d:I

    return p0
.end method

.method public K()Z
    .locals 1

    iget p0, p0, Ly1;->c:I

    const/16 v0, 0x80

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public L(I)Z
    .locals 2

    iget v0, p0, Ly1;->c:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iget p0, p0, Ly1;->d:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public M(I)Z
    .locals 0

    iget p0, p0, Ly1;->c:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public N()Z
    .locals 2

    iget p0, p0, Ly1;->b:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public O()Z
    .locals 1

    iget p0, p0, Ly1;->b:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public abstract P(Lp1;)Ls1;
.end method

.method public final b()Lp1;
    .locals 0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ly1;->c:I

    mul-int/lit16 v0, v0, 0x1eef

    iget v1, p0, Ly1;->d:I

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Ly1;->N()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto :goto_0

    :cond_0
    const/16 v1, 0xf0

    :goto_0
    xor-int/2addr v0, v1

    iget-object p0, p0, Ly1;->e:Lx0;

    invoke-interface {p0}, Lx0;->j()Lp1;

    move-result-object p0

    invoke-virtual {p0}, Lp1;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final m(Lp1;)Z
    .locals 4

    instance-of v0, p1, Ly1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ly1;

    iget v0, p0, Ly1;->d:I

    iget v2, p1, Ly1;->d:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Ly1;->c:I

    iget v2, p1, Ly1;->c:I

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Ly1;->b:I

    iget v2, p1, Ly1;->b:I

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Ly1;->N()Z

    move-result v0

    invoke-virtual {p1}, Ly1;->N()Z

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Ly1;->e:Lx0;

    invoke-interface {v0}, Lx0;->j()Lp1;

    move-result-object v0

    iget-object v2, p1, Ly1;->e:Lx0;

    invoke-interface {v2}, Lx0;->j()Lp1;

    move-result-object v2

    if-ne v0, v2, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    invoke-virtual {p0}, Ly1;->N()Z

    move-result v3

    if-nez v3, :cond_4

    :try_start_0
    invoke-virtual {p0}, Lj1;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1}, Lj1;->getEncoded()[B

    move-result-object p1

    invoke-static {p0, p1}, Lci;->b([B[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1

    :cond_4
    invoke-virtual {v0, v2}, Lp1;->m(Lp1;)Z

    move-result p0

    return p0

    :cond_5
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ly1;->c:I

    iget v2, p0, Ly1;->d:I

    invoke-static {v1, v2}, Lf2;->g(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ly1;->e:Lx0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()Lp1;
    .locals 4

    new-instance v0, Ldq1;

    iget v1, p0, Ly1;->b:I

    iget v2, p0, Ly1;->c:I

    iget v3, p0, Ly1;->d:I

    iget-object p0, p0, Ly1;->e:Lx0;

    invoke-direct {v0, v1, v2, v3, p0}, Ldq1;-><init>(IIILx0;)V

    return-object v0
.end method

.method public v()Lp1;
    .locals 4

    new-instance v0, Lcr1;

    iget v1, p0, Ly1;->b:I

    iget v2, p0, Ly1;->c:I

    iget v3, p0, Ly1;->d:I

    iget-object p0, p0, Ly1;->e:Lx0;

    invoke-direct {v0, v1, v2, v3, p0}, Lcr1;-><init>(IIILx0;)V

    return-object v0
.end method
