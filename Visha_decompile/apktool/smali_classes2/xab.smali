.class public final Lxab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Z

.field public d:I

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:F

.field public l:Ljava/lang/String;

.field public m:I

.field public n:I

.field public o:Landroid/text/Layout$Alignment;

.field public p:Landroid/text/Layout$Alignment;

.field public q:I

.field public r:Leha;

.field public s:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lxab;->f:I

    iput v0, p0, Lxab;->g:I

    iput v0, p0, Lxab;->h:I

    iput v0, p0, Lxab;->i:I

    iput v0, p0, Lxab;->j:I

    iput v0, p0, Lxab;->m:I

    iput v0, p0, Lxab;->n:I

    iput v0, p0, Lxab;->q:I

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lxab;->s:F

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lxab;
    .locals 0

    iput-object p1, p0, Lxab;->l:Ljava/lang/String;

    return-object p0
.end method

.method public B(Z)Lxab;
    .locals 0

    iput p1, p0, Lxab;->i:I

    return-object p0
.end method

.method public C(Z)Lxab;
    .locals 0

    iput p1, p0, Lxab;->f:I

    return-object p0
.end method

.method public D(Landroid/text/Layout$Alignment;)Lxab;
    .locals 0

    iput-object p1, p0, Lxab;->p:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public E(I)Lxab;
    .locals 0

    iput p1, p0, Lxab;->n:I

    return-object p0
.end method

.method public F(I)Lxab;
    .locals 0

    iput p1, p0, Lxab;->m:I

    return-object p0
.end method

.method public G(F)Lxab;
    .locals 0

    iput p1, p0, Lxab;->s:F

    return-object p0
.end method

.method public H(Landroid/text/Layout$Alignment;)Lxab;
    .locals 0

    iput-object p1, p0, Lxab;->o:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public I(Z)Lxab;
    .locals 0

    iput p1, p0, Lxab;->q:I

    return-object p0
.end method

.method public J(Leha;)Lxab;
    .locals 0

    iput-object p1, p0, Lxab;->r:Leha;

    return-object p0
.end method

.method public K(Z)Lxab;
    .locals 0

    iput p1, p0, Lxab;->g:I

    return-object p0
.end method

.method public a(Lxab;)Lxab;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lxab;->r(Lxab;Z)Lxab;

    move-result-object p0

    return-object p0
.end method

.method public b()I
    .locals 1

    iget-boolean v0, p0, Lxab;->e:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lxab;->d:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Background color has not been defined."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c()I
    .locals 1

    iget-boolean v0, p0, Lxab;->c:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lxab;->b:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Font color has not been defined."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lxab;->a:Ljava/lang/String;

    return-object p0
.end method

.method public e()F
    .locals 0

    iget p0, p0, Lxab;->k:F

    return p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lxab;->j:I

    return p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lxab;->l:Ljava/lang/String;

    return-object p0
.end method

.method public h()Landroid/text/Layout$Alignment;
    .locals 0

    iget-object p0, p0, Lxab;->p:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public i()I
    .locals 0

    iget p0, p0, Lxab;->n:I

    return p0
.end method

.method public j()I
    .locals 0

    iget p0, p0, Lxab;->m:I

    return p0
.end method

.method public k()F
    .locals 0

    iget p0, p0, Lxab;->s:F

    return p0
.end method

.method public l()I
    .locals 3

    iget v0, p0, Lxab;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Lxab;->i:I

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
    iget p0, p0, Lxab;->i:I

    if-ne p0, v2, :cond_2

    const/4 v1, 0x2

    :cond_2
    or-int p0, v0, v1

    return p0
.end method

.method public m()Landroid/text/Layout$Alignment;
    .locals 0

    iget-object p0, p0, Lxab;->o:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public n()Z
    .locals 1

    iget p0, p0, Lxab;->q:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()Leha;
    .locals 0

    iget-object p0, p0, Lxab;->r:Leha;

    return-object p0
.end method

.method public p()Z
    .locals 0

    iget-boolean p0, p0, Lxab;->e:Z

    return p0
.end method

.method public q()Z
    .locals 0

    iget-boolean p0, p0, Lxab;->c:Z

    return p0
.end method

.method public final r(Lxab;Z)Lxab;
    .locals 3

    if-eqz p1, :cond_e

    iget-boolean v0, p0, Lxab;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lxab;->c:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lxab;->b:I

    invoke-virtual {p0, v0}, Lxab;->w(I)Lxab;

    :cond_0
    iget v0, p0, Lxab;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p1, Lxab;->h:I

    iput v0, p0, Lxab;->h:I

    :cond_1
    iget v0, p0, Lxab;->i:I

    if-ne v0, v1, :cond_2

    iget v0, p1, Lxab;->i:I

    iput v0, p0, Lxab;->i:I

    :cond_2
    iget-object v0, p0, Lxab;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p1, Lxab;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    iput-object v0, p0, Lxab;->a:Ljava/lang/String;

    :cond_3
    iget v0, p0, Lxab;->f:I

    if-ne v0, v1, :cond_4

    iget v0, p1, Lxab;->f:I

    iput v0, p0, Lxab;->f:I

    :cond_4
    iget v0, p0, Lxab;->g:I

    if-ne v0, v1, :cond_5

    iget v0, p1, Lxab;->g:I

    iput v0, p0, Lxab;->g:I

    :cond_5
    iget v0, p0, Lxab;->n:I

    if-ne v0, v1, :cond_6

    iget v0, p1, Lxab;->n:I

    iput v0, p0, Lxab;->n:I

    :cond_6
    iget-object v0, p0, Lxab;->o:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_7

    iget-object v0, p1, Lxab;->o:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_7

    iput-object v0, p0, Lxab;->o:Landroid/text/Layout$Alignment;

    :cond_7
    iget-object v0, p0, Lxab;->p:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_8

    iget-object v0, p1, Lxab;->p:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_8

    iput-object v0, p0, Lxab;->p:Landroid/text/Layout$Alignment;

    :cond_8
    iget v0, p0, Lxab;->q:I

    if-ne v0, v1, :cond_9

    iget v0, p1, Lxab;->q:I

    iput v0, p0, Lxab;->q:I

    :cond_9
    iget v0, p0, Lxab;->j:I

    if-ne v0, v1, :cond_a

    iget v0, p1, Lxab;->j:I

    iput v0, p0, Lxab;->j:I

    iget v0, p1, Lxab;->k:F

    iput v0, p0, Lxab;->k:F

    :cond_a
    iget-object v0, p0, Lxab;->r:Leha;

    if-nez v0, :cond_b

    iget-object v0, p1, Lxab;->r:Leha;

    iput-object v0, p0, Lxab;->r:Leha;

    :cond_b
    iget v0, p0, Lxab;->s:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v2

    if-nez v0, :cond_c

    iget v0, p1, Lxab;->s:F

    iput v0, p0, Lxab;->s:F

    :cond_c
    if-eqz p2, :cond_d

    iget-boolean v0, p0, Lxab;->e:Z

    if-nez v0, :cond_d

    iget-boolean v0, p1, Lxab;->e:Z

    if-eqz v0, :cond_d

    iget v0, p1, Lxab;->d:I

    invoke-virtual {p0, v0}, Lxab;->u(I)Lxab;

    :cond_d
    if-eqz p2, :cond_e

    iget p2, p0, Lxab;->m:I

    if-ne p2, v1, :cond_e

    iget p1, p1, Lxab;->m:I

    if-eq p1, v1, :cond_e

    iput p1, p0, Lxab;->m:I

    :cond_e
    return-object p0
.end method

.method public s()Z
    .locals 1

    iget p0, p0, Lxab;->f:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t()Z
    .locals 1

    iget p0, p0, Lxab;->g:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u(I)Lxab;
    .locals 0

    iput p1, p0, Lxab;->d:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lxab;->e:Z

    return-object p0
.end method

.method public v(Z)Lxab;
    .locals 0

    iput p1, p0, Lxab;->h:I

    return-object p0
.end method

.method public w(I)Lxab;
    .locals 0

    iput p1, p0, Lxab;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lxab;->c:Z

    return-object p0
.end method

.method public x(Ljava/lang/String;)Lxab;
    .locals 0

    iput-object p1, p0, Lxab;->a:Ljava/lang/String;

    return-object p0
.end method

.method public y(F)Lxab;
    .locals 0

    iput p1, p0, Lxab;->k:F

    return-object p0
.end method

.method public z(I)Lxab;
    .locals 0

    iput p1, p0, Lxab;->j:I

    return-object p0
.end method
