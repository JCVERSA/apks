.class public final Lwic;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/Set;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Z

.field public h:I

.field public i:Z

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:F

.field public p:I

.field public q:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lwic;->a:Ljava/lang/String;

    iput-object v0, p0, Lwic;->b:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lwic;->c:Ljava/util/Set;

    iput-object v0, p0, Lwic;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lwic;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lwic;->g:Z

    iput-boolean v0, p0, Lwic;->i:Z

    const/4 v1, -0x1

    iput v1, p0, Lwic;->j:I

    iput v1, p0, Lwic;->k:I

    iput v1, p0, Lwic;->l:I

    iput v1, p0, Lwic;->m:I

    iput v1, p0, Lwic;->n:I

    iput v1, p0, Lwic;->p:I

    iput-boolean v0, p0, Lwic;->q:Z

    return-void
.end method

.method public static B(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int v0, p0, p3

    :cond_1
    return v0

    :cond_2
    :goto_0
    return p0
.end method


# virtual methods
.method public A(Z)Lwic;
    .locals 0

    iput p1, p0, Lwic;->k:I

    return-object p0
.end method

.method public a()I
    .locals 1

    iget-boolean v0, p0, Lwic;->i:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lwic;->h:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Background color not defined."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()Z
    .locals 0

    iget-boolean p0, p0, Lwic;->q:Z

    return p0
.end method

.method public c()I
    .locals 1

    iget-boolean v0, p0, Lwic;->g:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lwic;->f:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Font color not defined"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lwic;->e:Ljava/lang/String;

    return-object p0
.end method

.method public e()F
    .locals 0

    iget p0, p0, Lwic;->o:F

    return p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lwic;->n:I

    return p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lwic;->p:I

    return p0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lwic;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwic;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwic;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwic;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lwic;->a:Ljava/lang/String;

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    invoke-static {v2, v0, p1, v1}, Lwic;->B(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lwic;->b:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v0, p2, v1}, Lwic;->B(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lwic;->d:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {p1, p2, p4, v0}, Lwic;->B(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    iget-object p2, p0, Lwic;->c:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lwic;->c:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    mul-int/2addr p0, v0

    add-int/2addr p1, p0

    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method public i()I
    .locals 3

    iget v0, p0, Lwic;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Lwic;->m:I

    if-ne v2, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget p0, p0, Lwic;->m:I

    if-ne p0, v2, :cond_2

    const/4 v1, 0x2

    :cond_2
    or-int p0, v0, v1

    return p0
.end method

.method public j()Z
    .locals 0

    iget-boolean p0, p0, Lwic;->i:Z

    return p0
.end method

.method public k()Z
    .locals 0

    iget-boolean p0, p0, Lwic;->g:Z

    return p0
.end method

.method public l()Z
    .locals 1

    iget p0, p0, Lwic;->j:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 1

    iget p0, p0, Lwic;->k:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n(I)Lwic;
    .locals 0

    iput p1, p0, Lwic;->h:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lwic;->i:Z

    return-object p0
.end method

.method public o(Z)Lwic;
    .locals 0

    iput p1, p0, Lwic;->l:I

    return-object p0
.end method

.method public p(Z)Lwic;
    .locals 0

    iput-boolean p1, p0, Lwic;->q:Z

    return-object p0
.end method

.method public q(I)Lwic;
    .locals 0

    iput p1, p0, Lwic;->f:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lwic;->g:Z

    return-object p0
.end method

.method public r(Ljava/lang/String;)Lwic;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lui;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lwic;->e:Ljava/lang/String;

    return-object p0
.end method

.method public s(F)Lwic;
    .locals 0

    iput p1, p0, Lwic;->o:F

    return-object p0
.end method

.method public t(I)Lwic;
    .locals 0

    iput p1, p0, Lwic;->n:I

    return-object p0
.end method

.method public u(Z)Lwic;
    .locals 0

    iput p1, p0, Lwic;->m:I

    return-object p0
.end method

.method public v(I)Lwic;
    .locals 0

    iput p1, p0, Lwic;->p:I

    return-object p0
.end method

.method public w([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lwic;->c:Ljava/util/Set;

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lwic;->a:Ljava/lang/String;

    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lwic;->b:Ljava/lang/String;

    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lwic;->d:Ljava/lang/String;

    return-void
.end method
